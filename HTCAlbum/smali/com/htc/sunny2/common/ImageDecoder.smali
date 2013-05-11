.class public Lcom/htc/sunny2/common/ImageDecoder;
.super Ljava/lang/Object;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;,
        Lcom/htc/sunny2/common/ImageDecoder$STATE;
    }
.end annotation


# static fields
.field public static final DECODE_FLAG_ALLOW_EXIF_THUMB:I = 0x10

.field public static final DECODE_FLAG_ALLOW_LOAD_ITERATE:I = 0x40

.field public static final DECODE_FLAG_ALLOW_SPMO:I = 0x20

.field public static final DECODE_FLAG_BITMAP_COLOR_DEPTH:I = 0x400

.field public static final DECODE_FLAG_DECODE_SCALADO_BITMAP:I = 0x2000

.field public static final DECODE_FLAG_DECODE_SOURCE_WIDTH_HEIGHT:I = 0x1000

.field public static final DECODE_FLAG_NO_PROGRESSIVE_JPEG:I = 0x100

.field public static final DECODE_FLAG_SCALE_FOR_3D:I = 0x1

.field public static final DECODE_FLAG_SCALE_TO_FILL:I = 0x4

.field public static final DECODE_FLAG_SCALE_TO_FIT:I = 0x2

.field public static final DECODE_FLAG_SIDE_BY_SIDE:I = 0x200

.field public static final DEFAULT_COLOR_DEPTH:I = -0x1

.field private static final LTAG:Ljava/lang/String;

.field public static SCALADO_BITMAP_COUNT:I


# instance fields
.field private decodeHandle:I

.field private mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

.field private mDecodeFlags:I

.field private mFilePath:Ljava/lang/String;

.field private mInputStream:Ljava/io/InputStream;

.field private mIsLoadFromExif:Z

.field private mIsProgressiveJpeg:Z

.field private mIsSideBySide:Z

.field private mItemIndex4ImageDecoderCallbackListener:I

.field private mMimeType:Ljava/lang/String;

.field private mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mPhotoHeight:I

.field private mPhotoWidth:I

.field private outputSunnyBitmap:I

.field private outputSunnyTexture:I

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private resultScaladoBitmapHandle:I

.field private state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

.field private toSunnyTexture:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/htc/sunny2/common/ImageDecoder;->SCALADO_BITMAP_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->NOT_SETUP:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 67
    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    .line 68
    iput-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    .line 70
    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    .line 71
    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    .line 72
    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    .line 73
    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyTexture:I

    .line 75
    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 76
    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    .line 78
    iput-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsProgressiveJpeg:Z

    .line 79
    iput-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    .line 80
    iput-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsLoadFromExif:Z

    .line 81
    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    .line 82
    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mDecodeFlags:I

    .line 83
    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mFilePath:Ljava/lang/String;

    .line 84
    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 85
    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 87
    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mItemIndex4ImageDecoderCallbackListener:I

    .line 94
    return-void
.end method

.method private adjustWidthHeightFromSource()V
    .locals 9

    .prologue
    .line 1213
    iget v7, p0, Lcom/htc/sunny2/common/ImageDecoder;->mDecodeFlags:I

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/htc/sunny2/common/ImageDecoder;->mDecodeFlags:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/htc/sunny2/common/ImageDecoder;->mDecodeFlags:I

    and-int/lit16 v7, v7, 0x1000

    if-eqz v7, :cond_0

    .line 1215
    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mFilePath:Ljava/lang/String;

    .line 1216
    .local v4, path:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1217
    .local v5, pfd:Landroid/os/ParcelFileDescriptor;
    iget-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 1218
    .local v2, is:Ljava/io/InputStream;
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    if-nez v2, :cond_1

    .line 1243
    .end local v2           #is:Ljava/io/InputStream;
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    return-void

    .line 1221
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v4       #path:Ljava/lang/String;
    .restart local v5       #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1222
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1223
    if-eqz v4, :cond_3

    .line 1224
    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1233
    :goto_1
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1234
    .local v6, width:I
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1235
    .local v1, height:I
    iget v7, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    if-gt v6, v7, :cond_2

    iget v7, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    if-le v1, v7, :cond_0

    .line 1236
    :cond_2
    iput v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 1237
    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1239
    .end local v1           #height:I
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #width:I
    :catch_0
    move-exception v0

    .line 1240
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1225
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_3
    if-eqz v5, :cond_4

    .line 1226
    :try_start_1
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_1

    .line 1227
    :cond_4
    if-eqz v2, :cond_5

    .line 1228
    const/4 v7, 0x0

    invoke-static {v2, v7, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_1

    .line 1230
    :cond_5
    sget-object v7, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v8, "[ImageDecoder][adjustWidthHeightFromSource] Image source is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private closeMemberParcelFileDescriptor()V
    .locals 2

    .prologue
    .line 1128
    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 1130
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1134
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1136
    :cond_0
    return-void

    .line 1131
    :catch_0
    move-exception v0

    .line 1132
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private doDecode(J)Z
    .locals 5
    .parameter "ticks"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1012
    iget v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v3, :cond_0

    .line 1014
    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v3, "doDecode() NG - null decodeHandle"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 1069
    :goto_0
    return v1

    .line 1019
    :cond_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v3, v4, p1, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v0

    .line 1021
    .local v0, rs:I
    if-nez v0, :cond_1

    move v1, v2

    .line 1023
    goto :goto_0

    .line 1025
    :cond_1
    if-ne v0, v2, :cond_6

    .line 1027
    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mDecodeFlags:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_4

    .line 1029
    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    if-eqz v2, :cond_3

    .line 1031
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEndForScaladoBitmap(II)I

    .line 1052
    :cond_2
    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    .line 1054
    iget-boolean v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    if-eqz v2, :cond_5

    .line 1056
    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder$STATE;->CONVERT_TO_SUNNY_BITMAP:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    .line 1035
    :cond_3
    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v3, "doDecode() NG - decode finish, but null scaladoBitmap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    .line 1042
    :cond_4
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v2, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    .line 1044
    iget-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 1046
    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v3, "doDecode() NG - decode finish, but null bitmap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    .line 1061
    :cond_5
    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder$STATE;->SUCCEEDED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    .line 1067
    :cond_6
    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doDecode() NG - decodeIterate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0
.end method

.method private doLoad(J)Z
    .locals 9
    .parameter "ticks"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 931
    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v5, :cond_0

    .line 933
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "doLoad() NG - null decodeHandle"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    invoke-direct {p0}, Lcom/htc/sunny2/common/ImageDecoder;->closeMemberParcelFileDescriptor()V

    .line 935
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 1006
    :goto_0
    return v3

    .line 939
    :cond_0
    const/4 v2, -0x1

    .line 940
    .local v2, rs:I
    iget-object v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v6, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_FILE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v5, v6, :cond_1

    .line 942
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v5, v6, p1, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFilePathIterate(IJ)I

    move-result v2

    .line 967
    :goto_1
    if-nez v2, :cond_4

    move v3, v4

    .line 969
    goto :goto_0

    .line 944
    :cond_1
    iget-object v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v6, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_FD:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v5, v6, :cond_2

    .line 947
    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v5, v6, p1, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFDIterate(IJ)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .line 948
    :catch_0
    move-exception v0

    .line 949
    .local v0, e:Ljava/lang/OutOfMemoryError;
    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 952
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_2
    iget-object v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v6, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_IS:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v5, v6, :cond_3

    .line 955
    :try_start_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v5, v6, p1, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadInputStreamIterate(IJ)I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_1

    .line 956
    :catch_1
    move-exception v0

    .line 957
    .restart local v0       #e:Ljava/lang/OutOfMemoryError;
    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 962
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_3
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doLoad() NG - unknow state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    .line 971
    :cond_4
    const/4 v5, 0x3

    if-ne v2, v5, :cond_a

    .line 973
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->getWidth(I)I

    move-result v5

    iput v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 974
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->getHeight(I)I

    move-result v5

    iput v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    .line 975
    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-direct {p0, v5}, Lcom/htc/sunny2/common/ImageDecoder;->getIsLoadFromExif(I)V

    .line 976
    invoke-direct {p0}, Lcom/htc/sunny2/common/ImageDecoder;->adjustWidthHeightFromSource()V

    .line 977
    iget-object v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    if-eqz v5, :cond_5

    .line 978
    iget-object v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->mItemIndex4ImageDecoderCallbackListener:I

    iget v7, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    iget v8, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    invoke-interface {v5, p0, v6, v7, v8}, Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;->onLoadComplete(Lcom/htc/sunny2/common/ImageDecoder;III)V

    .line 980
    :cond_5
    sget-boolean v5, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v5, :cond_6

    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doLoad() - load success w/h "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_6
    invoke-direct {p0}, Lcom/htc/sunny2/common/ImageDecoder;->closeMemberParcelFileDescriptor()V

    .line 982
    const-string v5, "image/mpo"

    iget-object v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 984
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v1

    .line 985
    .local v1, mpoPhotoCount:I
    if-lez v1, :cond_9

    .line 987
    iget-boolean v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    if-eqz v5, :cond_8

    .line 988
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v5, v6, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOStereoIndexs(III)I

    .line 998
    .end local v1           #mpoPhotoCount:I
    :cond_7
    :goto_2
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->DECODE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto/16 :goto_0

    .line 990
    .restart local v1       #mpoPhotoCount:I
    :cond_8
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I

    goto :goto_2

    .line 995
    :cond_9
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][ImageDecoder][loadFromFilePathToBitmap]mpo file contains no photos!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1003
    .end local v1           #mpoPhotoCount:I
    :cond_a
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doLoad() NG - loadIterate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    invoke-direct {p0}, Lcom/htc/sunny2/common/ImageDecoder;->closeMemberParcelFileDescriptor()V

    .line 1005
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto/16 :goto_0
.end method

.method private doMakeTexture(J)Z
    .locals 4
    .parameter "ticks"

    .prologue
    const/4 v3, 0x0

    .line 1102
    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    if-nez v0, :cond_0

    .line 1104
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "doMakeTexture() NG - null sunny bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 1124
    :goto_0
    return v3

    .line 1109
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyTexture:I

    if-nez v0, :cond_1

    .line 1111
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "doMakeTexture() NG - null texture"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    .line 1116
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyTexture:I

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/htc/sunnyCore/SunnyCore;->Texture_SetupByBitmap_InRenderThread(IIZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1118
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "doMakeTexture() NG - setup"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    .line 1123
    :cond_2
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->SUCCEEDED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0
.end method

.method private getIsLoadFromExif(I)V
    .locals 1
    .parameter "decodeHandle"

    .prologue
    .line 1147
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/util/ScaladoLib2;->isLoadFromExif(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsLoadFromExif:Z

    .line 1148
    return-void
.end method

.method public static heapBasedComputeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 24
    .parameter "options"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    .line 1163
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v19, v0

    .line 1164
    .local v19, w:I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1166
    .local v11, h:I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1167
    .local v4, candidateW:I
    int-to-float v0, v11

    move/from16 v20, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1169
    .local v3, candidateH:I
    sget-object v20, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "candidateW "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " candidateH "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1173
    .local v2, candidate:I
    if-nez v2, :cond_0

    .line 1174
    const/16 v20, 0x1

    .line 1209
    :goto_0
    return v20

    .line 1176
    :cond_0
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v2, v0, :cond_1

    .line 1177
    move/from16 v0, v19

    move/from16 v1, p1

    if-le v0, v1, :cond_1

    div-int v20, v19, v2

    move/from16 v0, v20

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 1178
    add-int/lit8 v2, v2, -0x1

    .line 1181
    :cond_1
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v2, v0, :cond_2

    .line 1182
    move/from16 v0, p2

    if-le v11, v0, :cond_2

    div-int v20, v11, v2

    move/from16 v0, v20

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    .line 1183
    add-int/lit8 v2, v2, -0x1

    .line 1192
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v16

    .line 1193
    .local v16, runtime:Ljava/lang/Runtime;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v9

    .line 1194
    .local v9, currentHeap:J
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v12

    .line 1195
    .local v12, leftMemory:J
    sget-object v20, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "current Heap "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " left memory "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    const-wide/16 v17, 0x0

    .line 1198
    .local v17, totalPixels:J
    const/4 v15, 0x3

    .line 1199
    .local v15, resampleTryCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_5

    const/4 v14, 0x2

    .line 1200
    .local v14, pixelBytes:I
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 1202
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 1203
    div-int v20, v19, v2

    move/from16 v0, v20

    int-to-long v7, v0

    .line 1204
    .local v7, curW:J
    div-int v20, v11, v2

    move/from16 v0, v20

    int-to-long v5, v0

    .line 1205
    .local v5, curH:J
    mul-long v20, v7, v5

    int-to-long v0, v14

    move-wide/from16 v22, v0

    mul-long v17, v20, v22

    .line 1206
    sget-object v20, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "candidate "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " curW "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", curH "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    cmp-long v20, v17, v12

    if-lez v20, :cond_4

    add-int/lit8 v15, v15, -0x1

    if-gtz v15, :cond_3

    :cond_4
    move/from16 v20, v2

    .line 1209
    goto/16 :goto_0

    .line 1199
    .end local v5           #curH:J
    .end local v7           #curW:J
    .end local v14           #pixelBytes:I
    :cond_5
    const/4 v14, 0x4

    goto :goto_1
.end method

.method private loadFromFilePathToBitmapWithoutFree(Ljava/lang/String;Ljava/lang/String;IIIII)Z
    .locals 14
    .parameter "filePath"
    .parameter "mimeType"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "colorDepth"
    .parameter "decodeFlags"

    .prologue
    .line 281
    const-string v3, "image/webp"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 283
    move/from16 v0, p7

    and-int/lit16 v0, v0, -0x2001

    move/from16 p7, v0

    .line 284
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/htc/sunny2/common/ImageDecoder;->loadWebpFromFilePath(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 285
    .local v12, result:Landroid/graphics/Bitmap;
    if-nez v12, :cond_0

    .line 287
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v4, "loadFromFilePathToSunnyTexture() NG - loadWebpFromFilePath fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 289
    const/4 v3, 0x0

    .line 415
    .end local v12           #result:Landroid/graphics/Bitmap;
    :goto_0
    return v3

    .line 292
    .restart local v12       #result:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 293
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    .line 295
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder$STATE;->SUCCEEDED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 296
    iput-object v12, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    .line 297
    const/4 v3, 0x1

    goto :goto_0

    .line 300
    .end local v12           #result:Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    .line 301
    iget v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v3, :cond_2

    .line 303
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v4, "loadFromFilePathToBitmap() NG - decodeBegin"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 305
    const/4 v3, 0x0

    goto :goto_0

    .line 307
    :cond_2
    move/from16 v0, p7

    and-int/lit16 v3, v0, 0x2000

    if-eqz v3, :cond_4

    const/4 v9, 0x1

    .line 308
    .local v9, isDecodeScaladoBitmap:Z
    :goto_1
    if-eqz v9, :cond_3

    .line 310
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->setUseScaladoBitmap(I)I

    .line 311
    iget v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    if-nez v3, :cond_3

    .line 313
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->createScaladoBitmap()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    .line 314
    sget-boolean v3, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "++SCALADO_BITMAP_COUNT [ImageDecoder][ImageDecoder]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/htc/sunny2/common/ImageDecoder;->SCALADO_BITMAP_COUNT:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/htc/sunny2/common/ImageDecoder;->SCALADO_BITMAP_COUNT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_3
    and-int/lit8 v3, p7, 0x40

    if-eqz v3, :cond_5

    const/4 v10, 0x1

    .line 318
    .local v10, isIterator:Z
    :goto_2
    const/4 v13, -0x1

    .line 319
    .local v13, rs:I
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    .line 320
    move/from16 v0, p7

    and-int/lit16 v3, v0, 0x200

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    :goto_3
    iput-boolean v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    .line 321
    const-string v3, "image/jps"

    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 323
    iget-boolean v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    if-eqz v3, :cond_7

    .line 324
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    .line 331
    :goto_4
    and-int/lit8 p7, p7, -0x11

    move-object v3, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 334
    invoke-direct/range {v3 .. v8}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v3

    if-nez v3, :cond_8

    .line 336
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v4, "loadFromFilePathToBitmap() NG - setupDecodeParameters"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 338
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 307
    .end local v9           #isDecodeScaladoBitmap:Z
    .end local v10           #isIterator:Z
    .end local v13           #rs:I
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 317
    .restart local v9       #isDecodeScaladoBitmap:Z
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 320
    .restart local v10       #isIterator:Z
    .restart local v13       #rs:I
    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    .line 326
    :cond_7
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    goto :goto_4

    .line 340
    :cond_8
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v3, v4, p1, v10}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;Z)I

    move-result v13

    .line 385
    :cond_9
    :goto_5
    if-eqz v13, :cond_10

    .line 387
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadFromFilePathToBitmap() NG - loadFromFilePath "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 389
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 342
    :cond_a
    const-string v3, "image/mpo"

    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 346
    and-int/lit8 p7, p7, -0x11

    move-object v3, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 349
    invoke-direct/range {v3 .. v8}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v3

    if-nez v3, :cond_b

    .line 351
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v4, "loadFromFilePathToBitmap() NG - setupDecodeParameters"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 353
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 355
    :cond_b
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v3, v4, p1, v10}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;Z)I

    move-result v13

    .line 357
    if-nez v10, :cond_9

    .line 359
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v11

    .line 360
    .local v11, mpoPhotoCount:I
    if-lez v11, :cond_d

    .line 362
    iget-boolean v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    if-eqz v3, :cond_c

    .line 363
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOStereoIndexs(III)I

    goto :goto_5

    .line 365
    :cond_c
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I

    goto/16 :goto_5

    .line 370
    :cond_d
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][ImageDecoder][loadFromFilePathToBitmap]mpo file contains no photos!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .end local v11           #mpoPhotoCount:I
    :cond_e
    move-object v3, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 376
    invoke-direct/range {v3 .. v8}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v3

    if-nez v3, :cond_f

    .line 378
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v4, "loadFromFilePathToBitmap() NG - setupDecodeParameters"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 380
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 382
    :cond_f
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v3, v4, p1, v10}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;Z)I

    move-result v13

    goto/16 :goto_5

    .line 392
    :cond_10
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->isProgressiveJpeg(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsProgressiveJpeg:Z

    .line 393
    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsProgressiveJpeg:Z

    if-ne v3, v4, :cond_12

    .line 394
    move/from16 v0, p7

    and-int/lit16 v3, v0, 0x100

    if-eqz v3, :cond_11

    .line 395
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 396
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 398
    :cond_11
    sget-boolean v3, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v3, :cond_12

    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v4, "decode progressive jpeg"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_12
    iput-object p1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mFilePath:Ljava/lang/String;

    .line 402
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    .line 403
    if-eqz v10, :cond_13

    .line 404
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_FILE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 415
    :goto_6
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 406
    :cond_13
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->getWidth(I)I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 407
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->getHeight(I)I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    .line 408
    iget v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-direct {p0, v3}, Lcom/htc/sunny2/common/ImageDecoder;->getIsLoadFromExif(I)V

    .line 409
    invoke-direct {p0}, Lcom/htc/sunny2/common/ImageDecoder;->adjustWidthHeightFromSource()V

    .line 410
    iget-object v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    if-eqz v3, :cond_14

    .line 411
    iget-object v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mItemIndex4ImageDecoderCallbackListener:I

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    invoke-interface {v3, p0, v4, v5, v6}, Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;->onLoadComplete(Lcom/htc/sunny2/common/ImageDecoder;III)V

    .line 413
    :cond_14
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder$STATE;->DECODE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_6
.end method

.method private loadFromInputStreamToBitmapWithoutFree(Ljava/io/InputStream;IIIII)Z
    .locals 11
    .parameter "inputStream"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "colorDepth"
    .parameter "decodeFlags"

    .prologue
    .line 570
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    .line 571
    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v1, :cond_0

    .line 573
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "loadFromInputStream() NG - decodeBegin"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 575
    const/4 v1, 0x0

    .line 623
    :goto_0
    return v1

    :cond_0
    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 578
    invoke-direct/range {v1 .. v6}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v1

    if-nez v1, :cond_1

    .line 580
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "loadFromInputStream() NG - setupDecodeParameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 582
    const/4 v1, 0x0

    goto :goto_0

    .line 585
    :cond_1
    move/from16 v0, p6

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_3

    const/4 v8, 0x1

    .line 586
    .local v8, isDecodeScaladoBitmap:Z
    :goto_1
    if-eqz v8, :cond_2

    .line 588
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->setUseScaladoBitmap(I)I

    .line 589
    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    if-nez v1, :cond_2

    .line 591
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->createScaladoBitmap()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    .line 592
    sget-boolean v1, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "++SCALADO_BITMAP_COUNT [ImageDecoder][ImageDecoder]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/sunny2/common/ImageDecoder;->SCALADO_BITMAP_COUNT:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/htc/sunny2/common/ImageDecoder;->SCALADO_BITMAP_COUNT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_2
    and-int/lit8 v1, p6, 0x40

    if-eqz v1, :cond_4

    const/4 v9, 0x1

    .line 596
    .local v9, isIterator:Z
    :goto_2
    const/4 v10, -0x1

    .line 598
    .local v10, rs:I
    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2, p1, v9}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromInputStream(ILjava/io/InputStream;Z)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 602
    :goto_3
    if-eqz v10, :cond_5

    .line 604
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFromInputStream() NG - loadFromInputStream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 606
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 585
    .end local v8           #isDecodeScaladoBitmap:Z
    .end local v9           #isIterator:Z
    .end local v10           #rs:I
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 595
    .restart local v8       #isDecodeScaladoBitmap:Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 599
    .restart local v9       #isIterator:Z
    .restart local v10       #rs:I
    :catch_0
    move-exception v7

    .line 600
    .local v7, e:Ljava/lang/OutOfMemoryError;
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 608
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    :cond_5
    iput-object p1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 609
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    .line 610
    if-eqz v9, :cond_6

    .line 611
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_IS:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 623
    :goto_4
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 613
    :cond_6
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->getWidth(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 614
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->getHeight(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    .line 615
    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-direct {p0, v1}, Lcom/htc/sunny2/common/ImageDecoder;->getIsLoadFromExif(I)V

    .line 616
    invoke-direct {p0}, Lcom/htc/sunny2/common/ImageDecoder;->adjustWidthHeightFromSource()V

    .line 617
    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    if-eqz v1, :cond_7

    .line 618
    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mItemIndex4ImageDecoderCallbackListener:I

    iget v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    invoke-interface {v1, p0, v2, v3, v4}, Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;->onLoadComplete(Lcom/htc/sunny2/common/ImageDecoder;III)V

    .line 620
    :cond_7
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder$STATE;->DECODE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_4
.end method

.method private loadFromParcelFileDescriptorToBitmapWithoutFree(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;IIIII)Z
    .locals 13
    .parameter "parcelFileDescriptor"
    .parameter "mimeType"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "colorDepth"
    .parameter "decodeFlags"

    .prologue
    .line 434
    iput-object p1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 435
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    .line 437
    .local v8, fileDescriptor:Ljava/io/FileDescriptor;
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    .line 438
    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v1, :cond_0

    .line 440
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "loadFromFileDescriptor() NG - decodeBegin"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 442
    const/4 v1, 0x0

    .line 553
    :goto_0
    return v1

    .line 444
    :cond_0
    move/from16 v0, p7

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_2

    const/4 v9, 0x1

    .line 445
    .local v9, isDecodeScaladoBitmap:Z
    :goto_1
    if-eqz v9, :cond_1

    .line 447
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->setUseScaladoBitmap(I)I

    .line 448
    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    if-nez v1, :cond_1

    .line 450
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->createScaladoBitmap()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    .line 451
    sget-boolean v1, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "++SCALADO_BITMAP_COUNT [ImageDecoder][ImageDecoder]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/sunny2/common/ImageDecoder;->SCALADO_BITMAP_COUNT:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/htc/sunny2/common/ImageDecoder;->SCALADO_BITMAP_COUNT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_1
    and-int/lit8 v1, p7, 0x40

    if-eqz v1, :cond_3

    const/4 v10, 0x1

    .line 455
    .local v10, isIterator:Z
    :goto_2
    const/4 v12, -0x1

    .line 456
    .local v12, rs:I
    iput-object p2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    .line 457
    move/from16 v0, p7

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    .line 458
    const-string v1, "image/jps"

    iget-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 460
    iget-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    if-eqz v1, :cond_5

    .line 461
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    .line 468
    :goto_4
    and-int/lit8 p7, p7, -0x11

    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 471
    invoke-direct/range {v1 .. v6}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v1

    if-nez v1, :cond_6

    .line 473
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "loadFromFilePathToBitmap() NG - setupDecodeParameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 475
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 444
    .end local v9           #isDecodeScaladoBitmap:Z
    .end local v10           #isIterator:Z
    .end local v12           #rs:I
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 454
    .restart local v9       #isDecodeScaladoBitmap:Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 457
    .restart local v10       #isIterator:Z
    .restart local v12       #rs:I
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 463
    :cond_5
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    goto :goto_4

    .line 478
    :cond_6
    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2, v8, v10}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 532
    :goto_5
    if-eqz v12, :cond_d

    .line 534
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFromFileDescriptor() NG - loadFromFileDescriptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 536
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 479
    :catch_0
    move-exception v7

    .line 480
    .local v7, e:Ljava/lang/OutOfMemoryError;
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 483
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    :cond_7
    const-string v1, "image/mpo"

    iget-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 487
    and-int/lit8 p7, p7, -0x11

    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 490
    invoke-direct/range {v1 .. v6}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v1

    if-nez v1, :cond_8

    .line 492
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "loadFromFilePathToBitmap() NG - setupDecodeParameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 494
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 497
    :cond_8
    :try_start_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2, v8, v10}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I

    move-result v12

    .line 500
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v11

    .line 501
    .local v11, mpoPhotoCount:I
    if-lez v11, :cond_a

    .line 503
    iget-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    if-eqz v1, :cond_9

    .line 504
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOStereoIndexs(III)I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    .line 513
    .end local v11           #mpoPhotoCount:I
    :catch_1
    move-exception v7

    .line 514
    .restart local v7       #e:Ljava/lang/OutOfMemoryError;
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 506
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    .restart local v11       #mpoPhotoCount:I
    :cond_9
    :try_start_2
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I

    goto/16 :goto_5

    .line 511
    :cond_a
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ImageDecoder][loadFromFilePathToBitmap]mpo file contains no photos!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5

    .end local v11           #mpoPhotoCount:I
    :cond_b
    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 518
    invoke-direct/range {v1 .. v6}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v1

    if-nez v1, :cond_c

    .line 520
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "loadFromFileDescriptor() NG - setupDecodeParameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 522
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 526
    :cond_c
    :try_start_3
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2, v8, v10}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    move-result v12

    goto/16 :goto_5

    .line 527
    :catch_2
    move-exception v7

    .line 528
    .restart local v7       #e:Ljava/lang/OutOfMemoryError;
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 539
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    :cond_d
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    .line 540
    if-eqz v10, :cond_e

    .line 541
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_FD:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 553
    :goto_6
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 543
    :cond_e
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->getWidth(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 544
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->getHeight(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    .line 545
    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-direct {p0, v1}, Lcom/htc/sunny2/common/ImageDecoder;->getIsLoadFromExif(I)V

    .line 546
    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    if-eqz v1, :cond_f

    .line 547
    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mItemIndex4ImageDecoderCallbackListener:I

    iget v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    invoke-interface {v1, p0, v2, v3, v4}, Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;->onLoadComplete(Lcom/htc/sunny2/common/ImageDecoder;III)V

    .line 549
    :cond_f
    invoke-direct {p0}, Lcom/htc/sunny2/common/ImageDecoder;->closeMemberParcelFileDescriptor()V

    .line 550
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder$STATE;->DECODE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_6
.end method

.method private loadWebpFromFilePath(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "filePath"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 104
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 105
    .local v7, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 106
    iput-boolean v2, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 107
    invoke-static {p1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 110
    iget v3, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v3, v4

    if-eqz v3, :cond_1

    move v9, v2

    .line 111
    .local v9, sourceLandscape:Z
    :goto_0
    div-int v3, p3, p4

    if-eqz v3, :cond_2

    move v8, v2

    .line 112
    .local v8, preferLandscape:Z
    :goto_1
    if-eq v8, v9, :cond_0

    .line 113
    move v10, p3

    .line 114
    .local v10, temp:I
    move p3, p4

    .line 115
    move p4, v10

    .line 117
    .end local v10           #temp:I
    :cond_0
    invoke-static {v7, p3, p4}, Lcom/htc/sunny2/common/ImageDecoder;->heapBasedComputeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 118
    iput-boolean v1, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 119
    invoke-static {p1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    .local v0, result:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 123
    .local v5, matrix:Landroid/graphics/Matrix;
    int-to-float v2, p2

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 124
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .end local v0           #result:Landroid/graphics/Bitmap;
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v8           #preferLandscape:Z
    .end local v9           #sourceLandscape:Z
    :cond_1
    move v9, v1

    .line 110
    goto :goto_0

    .restart local v9       #sourceLandscape:Z
    :cond_2
    move v8, v1

    .line 111
    goto :goto_1
.end method

.method private setupDecodeParameters(IIIII)Z
    .locals 6
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "requireColorDepth"
    .parameter "decodeFlags"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 680
    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v4, :cond_0

    .line 682
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v4, "setupDecodeParameters() NG - null decodeHandle"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :goto_0
    return v2

    .line 686
    :cond_0
    iput p5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mDecodeFlags:I

    .line 688
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, p1}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDegree(II)I

    move-result v0

    .line 689
    .local v0, rs:I
    if-eqz v0, :cond_1

    .line 691
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDecodeParameters() NG - setDegree "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 695
    :cond_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, p2, p3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    move-result v0

    .line 696
    if-eqz v0, :cond_2

    .line 698
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDecodeParameters() NG - setPreferSize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 702
    :cond_2
    const/4 v1, 0x0

    .line 703
    .local v1, scaleType:I
    and-int/lit8 v4, p5, 0x2

    if-eqz v4, :cond_4

    .line 704
    const/4 v1, 0x1

    .line 708
    :cond_3
    :goto_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    move-result v0

    .line 709
    if-eqz v0, :cond_5

    .line 711
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDecodeParameters() NG - setScaleType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 705
    :cond_4
    and-int/lit8 v4, p5, 0x4

    if-eqz v4, :cond_3

    .line 706
    const/4 v1, 0x2

    goto :goto_1

    .line 715
    :cond_5
    and-int/lit8 v4, p5, 0x10

    if-eqz v4, :cond_6

    .line 718
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setLoadFromExifFirst(IZ)I

    move-result v0

    .line 719
    if-eqz v0, :cond_6

    .line 721
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDecodeParameters() NG - setLoadFromExifFirst "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 726
    :cond_6
    and-int/lit8 v4, p5, 0x20

    if-eqz v4, :cond_7

    .line 728
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setLoadFromSPMOFirst(IZ)I

    move-result v0

    .line 729
    if-eqz v0, :cond_7

    .line 731
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDecodeParameters() NG - setLoadFromSPMOFirst "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 736
    :cond_7
    const/4 v4, -0x1

    if-eq p4, v4, :cond_8

    and-int/lit16 v4, p5, 0x400

    if-eqz v4, :cond_8

    .line 738
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, p4}, Lcom/htc/opensense/album/util/ScaladoLib2;->setBitmapColorDepth(II)I

    move-result v0

    .line 739
    if-eqz v0, :cond_8

    .line 741
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDecodeParameters() NG - setBitmapColorDepth "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    move v2, v3

    .line 746
    goto/16 :goto_0
.end method


# virtual methods
.method doConvertToSunnyBitmap(J)Z
    .locals 3
    .parameter "ticks"

    .prologue
    const/4 v2, 0x0

    .line 1075
    iget-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 1077
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "doConvertToSunnyBitmap() NG - null bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 1097
    :goto_0
    return v2

    .line 1082
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    if-nez v0, :cond_1

    .line 1084
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "doConvertToSunnyBitmap() NG - null sunny bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    .line 1089
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/SunnyCore;->Bitmap_Set(ILandroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1091
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "doConvertToSunnyBitmap() NG - set sunny bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    .line 1096
    :cond_2
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->MAKE_TEXTURE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0
.end method

.method public free()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 751
    iput v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    .line 752
    iput v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyTexture:I

    .line 754
    iput v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 755
    iput v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    .line 757
    invoke-direct {p0}, Lcom/htc/sunny2/common/ImageDecoder;->closeMemberParcelFileDescriptor()V

    .line 759
    iget-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 761
    iget-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 762
    iput-object v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    .line 765
    :cond_0
    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-eqz v2, :cond_3

    .line 767
    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mDecodeFlags:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_4

    .line 769
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->createScaladoBitmap()I

    move-result v1

    .line 770
    .local v1, tempScaladoBitmapHandle:I
    sget-boolean v2, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "++SCALADO_BITMAP_COUNT [ImageDecoder][free]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/htc/sunny2/common/ImageDecoder;->SCALADO_BITMAP_COUNT:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/htc/sunny2/common/ImageDecoder;->SCALADO_BITMAP_COUNT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_1
    if-eqz v1, :cond_2

    .line 773
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v2, v3, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEndForScaladoBitmap(II)I

    .line 774
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->destroyScaladoBitmap(I)V

    .line 775
    sget-boolean v2, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "CacheTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--SCALADO_BITMAP_COUNT [ImageDecoder][free]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/htc/sunny2/common/ImageDecoder;->SCALADO_BITMAP_COUNT:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/htc/sunny2/common/ImageDecoder;->SCALADO_BITMAP_COUNT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    .end local v1           #tempScaladoBitmapHandle:I
    :cond_2
    :goto_0
    iput v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    .line 790
    :cond_3
    iput-boolean v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    .line 791
    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder$STATE;->NOT_SETUP:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 792
    iput-boolean v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsProgressiveJpeg:Z

    .line 793
    iput-boolean v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsLoadFromExif:Z

    .line 794
    iput-boolean v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    .line 795
    iput-object v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    .line 796
    iput v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mDecodeFlags:I

    .line 797
    iput-object v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->mFilePath:Ljava/lang/String;

    .line 798
    iput-object v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 799
    return-void

    .line 781
    :cond_4
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v2, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 782
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 784
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public getFullPhotoHeight()I
    .locals 1

    .prologue
    .line 923
    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    return v0
.end method

.method public getFullPhotoWidth()I
    .locals 1

    .prologue
    .line 918
    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    return v0
.end method

.method public isFree()Z
    .locals 2

    .prologue
    .line 818
    iget-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder$STATE;->NOT_SETUP:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadFromExif()Z
    .locals 1

    .prologue
    .line 1143
    iget-boolean v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsLoadFromExif:Z

    return v0
.end method

.method public isProgressiveJpeg()Z
    .locals 1

    .prologue
    .line 1139
    iget-boolean v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsProgressiveJpeg:Z

    return v0
.end method

.method public iterate(J)Z
    .locals 6
    .parameter "ticks"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 823
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v0, v4, p1

    .line 827
    .local v0, timeLimit:J
    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder$STATE;->NOT_SETUP:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v4, v5, :cond_1

    .line 829
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v4, "iterate() NG - not setup"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_0
    :goto_0
    return v2

    .line 834
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_FILE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_FD:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_IS:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v4, v5, :cond_3

    .line 835
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/common/ImageDecoder;->doLoad(J)Z

    move-result v4

    if-ne v4, v3, :cond_3

    move v2, v3

    .line 837
    goto :goto_0

    .line 843
    :cond_3
    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder$STATE;->DECODE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v4, v5, :cond_4

    .line 845
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/common/ImageDecoder;->doDecode(J)Z

    move-result v4

    if-ne v4, v3, :cond_4

    move v2, v3

    .line 847
    goto :goto_0

    .line 853
    :cond_4
    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder$STATE;->CONVERT_TO_SUNNY_BITMAP:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v4, v5, :cond_6

    .line 855
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-ltz v4, :cond_5

    move v2, v3

    .line 857
    goto :goto_0

    .line 860
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/common/ImageDecoder;->doConvertToSunnyBitmap(J)Z

    move-result v4

    if-ne v4, v3, :cond_6

    move v2, v3

    .line 862
    goto :goto_0

    .line 868
    :cond_6
    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder$STATE;->MAKE_TEXTURE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v4, v5, :cond_8

    .line 870
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-ltz v4, :cond_7

    move v2, v3

    .line 872
    goto :goto_0

    .line 875
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/common/ImageDecoder;->doMakeTexture(J)Z

    move-result v4

    if-ne v4, v3, :cond_8

    move v2, v3

    .line 877
    goto :goto_0

    .line 883
    :cond_8
    iget-object v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-eq v3, v4, :cond_0

    .line 890
    iget-object v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->SUCCEEDED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v3, v4, :cond_0

    goto :goto_0
.end method

.method public loadFromFilePathToBitmap(Lcom/htc/sunnyCore/IMediaData;IIII)Z
    .locals 8
    .parameter "mediaItem"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "decodeFlags"

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 268
    invoke-interface {p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, filePath:Ljava/lang/String;
    invoke-interface {p1}, Lcom/htc/sunnyCore/IMediaData;->getMediaMimeType()Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, mimeType:Ljava/lang/String;
    const/4 v6, -0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromFilePathToBitmapWithoutFree(Ljava/lang/String;Ljava/lang/String;IIIII)Z

    move-result v0

    return v0
.end method

.method public loadFromFilePathToBitmap(Ljava/lang/String;Ljava/lang/String;IIIII)Z
    .locals 1
    .parameter "filePath"
    .parameter "mimeType"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "colorDepth"
    .parameter "decodeFlags"

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 276
    invoke-direct/range {p0 .. p7}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromFilePathToBitmapWithoutFree(Ljava/lang/String;Ljava/lang/String;IIIII)Z

    move-result v0

    return v0
.end method

.method public loadFromFilePathToSunnyTexture(Lcom/htc/sunnyCore/IMediaData;IILjava/lang/String;IIII)Z
    .locals 14
    .parameter "mediaItem"
    .parameter "outputSunnyBitmap"
    .parameter "outputSunnyTexture"
    .parameter "filePath"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "decodeFlags"

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 131
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 133
    :cond_0
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "loadFromFilePathToSunnyTexture() NG - zero parameter"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 135
    const/4 v4, 0x0

    .line 261
    :goto_0
    return v4

    .line 138
    :cond_1
    invoke-interface {p1}, Lcom/htc/sunnyCore/IMediaData;->getMediaMimeType()Ljava/lang/String;

    move-result-object v10

    .line 139
    .local v10, mimeType:Ljava/lang/String;
    const-string v4, "image/webp"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 141
    move/from16 v0, p8

    and-int/lit16 v0, v0, -0x2001

    move/from16 p8, v0

    .line 142
    move-object/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/sunny2/common/ImageDecoder;->loadWebpFromFilePath(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 143
    .local v12, result:Landroid/graphics/Bitmap;
    if-nez v12, :cond_2

    .line 145
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "loadFromFilePathToSunnyTexture() NG - loadWebpFromFilePath fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 147
    const/4 v4, 0x0

    goto :goto_0

    .line 150
    :cond_2
    move/from16 v0, p2

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    .line 151
    move/from16 v0, p3

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyTexture:I

    .line 153
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 154
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    .line 159
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    .line 160
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->CONVERT_TO_SUNNY_BITMAP:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 161
    iput-object v12, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    .line 162
    const/4 v4, 0x1

    goto :goto_0

    .line 165
    .end local v12           #result:Landroid/graphics/Bitmap;
    :cond_3
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    .line 166
    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v4, :cond_4

    .line 168
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "loadFromFilePathToSunnyTexture() NG - decodeBegin"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 170
    const/4 v4, 0x0

    goto :goto_0

    .line 176
    :cond_4
    const/4 v13, 0x5

    .line 177
    .local v13, rs:I
    if-eqz v10, :cond_7

    const-string v4, "image/jps"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 179
    move/from16 v0, p8

    and-int/lit16 v4, v0, 0x200

    if-eqz v4, :cond_5

    .line 180
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    .line 187
    :goto_1
    and-int/lit8 p8, p8, -0x11

    .line 190
    const/4 v8, -0x1

    move-object v4, p0

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-direct/range {v4 .. v9}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v4

    if-nez v4, :cond_6

    .line 192
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "loadFromFilePathToBitmap() NG - setupDecodeParameters"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 194
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 182
    :cond_5
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    goto :goto_1

    .line 196
    :cond_6
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    move-object/from16 v0, p4

    invoke-virtual {v4, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v13

    .line 242
    :goto_2
    if-eqz v13, :cond_d

    .line 244
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadFromFilePathToSunnyTexture() NG - loadFromFilePath "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 246
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 198
    :cond_7
    if-eqz v10, :cond_b

    const-string v4, "image/mpo"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 203
    and-int/lit8 p8, p8, -0x11

    .line 206
    const/4 v8, -0x1

    move-object v4, p0

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-direct/range {v4 .. v9}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v4

    if-nez v4, :cond_8

    .line 208
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "loadFromFilePathToBitmap() NG - setupDecodeParameters"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 210
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 212
    :cond_8
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    move-object/from16 v0, p4

    invoke-virtual {v4, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v13

    .line 215
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v11

    .line 216
    .local v11, mpoPhotoCount:I
    if-lez v11, :cond_a

    .line 218
    move/from16 v0, p8

    and-int/lit16 v4, v0, 0x200

    if-eqz v4, :cond_9

    .line 219
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOStereoIndexs(III)I

    goto :goto_2

    .line 221
    :cond_9
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I

    goto/16 :goto_2

    .line 226
    :cond_a
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][ImageDecoder][loadFromFilePathToBitmap]mpo file contains no photos!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 232
    .end local v11           #mpoPhotoCount:I
    :cond_b
    const/4 v8, -0x1

    move-object v4, p0

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-direct/range {v4 .. v9}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v4

    if-nez v4, :cond_c

    .line 234
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "loadFromFilePathToSunnyTexture() NG - setupDecodeParameters"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 236
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 239
    :cond_c
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    move-object/from16 v0, p4

    invoke-virtual {v4, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v13

    goto/16 :goto_2

    .line 249
    :cond_d
    move/from16 v0, p2

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    .line 250
    move/from16 v0, p3

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyTexture:I

    .line 252
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->getWidth(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 253
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->getHeight(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    .line 258
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    .line 259
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->DECODE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 261
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public loadFromInputStreamToBitmap(Ljava/io/InputStream;IIII)Z
    .locals 7
    .parameter "inputStream"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "decodeFlags"

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 559
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromInputStreamToBitmapWithoutFree(Ljava/io/InputStream;IIIII)Z

    move-result v0

    return v0
.end method

.method public loadFromInputStreamToBitmap(Ljava/io/InputStream;IIIII)Z
    .locals 1
    .parameter "inputStream"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "colorDepth"
    .parameter "decodeFlags"

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 565
    invoke-direct/range {p0 .. p6}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromInputStreamToBitmapWithoutFree(Ljava/io/InputStream;IIIII)Z

    move-result v0

    return v0
.end method

.method public loadFromInputStreamToTexture(Ljava/io/InputStream;IIIIII)Z
    .locals 9
    .parameter "inputStream"
    .parameter "outputSunnyBitmap"
    .parameter "outputSunnyTexture"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "decodeFlags"

    .prologue
    .line 628
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 630
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    .line 631
    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v0, :cond_0

    .line 633
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "loadFromInputStream() NG - decodeBegin"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 635
    const/4 v0, 0x0

    .line 675
    :goto_0
    return v0

    .line 638
    :cond_0
    const/4 v4, -0x1

    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 640
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "loadFromInputStream() NG - setupDecodeParameters"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 642
    const/4 v0, 0x0

    goto :goto_0

    .line 645
    :cond_1
    and-int/lit8 v0, p7, 0x40

    if-eqz v0, :cond_2

    const/4 v7, 0x1

    .line 646
    .local v7, isIterator:Z
    :goto_1
    const/4 v8, -0x1

    .line 648
    .local v8, rs:I
    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v0, v1, p1, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromInputStream(ILjava/io/InputStream;Z)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 652
    :goto_2
    if-eqz v8, :cond_3

    .line 654
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFromInputStream() NG - loadFromInputStream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 656
    const/4 v0, 0x0

    goto :goto_0

    .line 645
    .end local v7           #isIterator:Z
    .end local v8           #rs:I
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 649
    .restart local v7       #isIterator:Z
    .restart local v8       #rs:I
    :catch_0
    move-exception v6

    .line 650
    .local v6, e:Ljava/lang/OutOfMemoryError;
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 659
    .end local v6           #e:Ljava/lang/OutOfMemoryError;
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    .line 661
    if-eqz v7, :cond_4

    .line 662
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_IS:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    .line 668
    :goto_3
    iput p2, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    .line 669
    iput p3, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyTexture:I

    .line 671
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->getWidth(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    .line 672
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->getHeight(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    .line 675
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 664
    :cond_4
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->DECODE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_3
.end method

.method public loadFromParcelFileDescriptorToBitmap(Landroid/os/ParcelFileDescriptor;IIII)Z
    .locals 8
    .parameter "parcelFileDescriptor"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "decodeFlags"

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 422
    const/4 v2, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromParcelFileDescriptorToBitmapWithoutFree(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;IIIII)Z

    move-result v0

    return v0
.end method

.method public loadFromParcelFileDescriptorToBitmap(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;IIIII)Z
    .locals 1
    .parameter "parcelFileDescriptor"
    .parameter "mimeType"
    .parameter "rotateDegrees"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "colorDepth"
    .parameter "decodeFlags"

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 429
    invoke-direct/range {p0 .. p7}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromParcelFileDescriptorToBitmapWithoutFree(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;IIIII)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 803
    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    if-eqz v0, :cond_1

    .line 805
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->destroyScaladoBitmap(I)V

    .line 806
    sget-boolean v0, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CacheTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--SCALADO_BITMAP_COUNT [ImageDecoder][release]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/sunny2/common/ImageDecoder;->SCALADO_BITMAP_COUNT:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/htc/sunny2/common/ImageDecoder;->SCALADO_BITMAP_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    .line 810
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 811
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    .line 812
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mItemIndex4ImageDecoderCallbackListener:I

    .line 813
    return-void
.end method

.method public setDegree(I)V
    .locals 2
    .parameter "degree"

    .prologue
    .line 1155
    rem-int/lit16 p1, p1, 0x168

    .line 1156
    if-gez p1, :cond_0

    .line 1157
    add-int/lit16 p1, p1, 0x168

    .line 1159
    :cond_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v0, v1, p1}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDegree(II)I

    .line 1160
    return-void
.end method

.method public setImageDecoderCallbackListener(Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;I)V
    .locals 0
    .parameter "listener"
    .parameter "itemIndex"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    .line 98
    iput p2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mItemIndex4ImageDecoderCallbackListener:I

    .line 99
    return-void
.end method

.method public setPreferSize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1151
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    .line 1152
    return-void
.end method

.method public succeeded()Z
    .locals 2

    .prologue
    .line 900
    iget-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder$STATE;->SUCCEEDED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public takeOutBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 905
    iget-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    .line 906
    .local v0, output:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    .line 908
    return-object v0
.end method

.method public takeOutScaladoBitmapHandle(I)V
    .locals 2
    .parameter "handle"

    .prologue
    .line 913
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    invoke-virtual {v0, v1, p1}, Lcom/htc/opensense/album/util/ScaladoLib2;->swapScaladoBitmap(II)V

    .line 914
    return-void
.end method
