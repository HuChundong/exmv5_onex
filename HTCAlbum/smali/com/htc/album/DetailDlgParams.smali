.class public Lcom/htc/album/DetailDlgParams;
.super Ljava/lang/Object;
.source "DetailDlgParams.java"


# static fields
.field public static final BITRATE14:Ljava/lang/String; = "BITRATE"

.field public static final CALLERNAME01:Ljava/lang/String; = "CALLERNAME"

.field public static final DATE05:Ljava/lang/String; = "DATE"

.field public static final DETAILCLASS:Ljava/lang/String; = "com.htc.album.DetailDlgActivity"

.field public static final DURATION12:Ljava/lang/String; = "DURATION"

.field public static final EXTRA99:Ljava/lang/String; = "EXTRA99"

.field public static final FILENAME16:Ljava/lang/String; = "FILENAME"

.field public static final FILEPATH03:Ljava/lang/String; = "FILEPATH"

.field public static final FRAMERATE13:Ljava/lang/String; = "FRAMERATE"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final MANUFACTURE10:Ljava/lang/String; = "MANUFACTURE"

.field public static final MODE04:Ljava/lang/String; = "MODE"

.field public static final MODE04_IMG:Ljava/lang/String; = "image"

.field public static final MODE04_VIDEO:Ljava/lang/String; = "video"

.field public static final MODEL11:Ljava/lang/String; = "MODEL"

.field public static final PACKAGENAME:Ljava/lang/String; = "com.htc.album"

.field public static final PARAMVER00:Ljava/lang/String; = "PARAMVERSION"

.field public static final RESOLUTION07:Ljava/lang/String; = "RESOLUTION"

.field public static final SIZE06:Ljava/lang/String; = "SIZE"

.field public static final SOURCE02:Ljava/lang/String; = "SOURCE"

.field public static final SOURCE02_LOCAL:Ljava/lang/String; = "local"

.field public static final SOURCE02_REMOTE:Ljava/lang/String; = "remote"

.field public static final STATUS09:Ljava/lang/String; = "STATUS"

.field public static final THUMBNAIL15:Ljava/lang/String; = "THUMBNAIL"

.field public static final TYPE08:Ljava/lang/String; = "TYPE"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

.field public static final version:Ljava/lang/String; = "1"


# instance fields
.field public mBitrate14:Ljava/lang/String;

.field public mCallername01:Ljava/lang/String;

.field public mDate05:Ljava/lang/String;

.field public mDuration12:Ljava/lang/String;

.field public final mExternalStart:Ljava/lang/String;

.field public mExtra99:Ljava/lang/String;

.field public mFileName16:Ljava/lang/String;

.field public mFilepath03:Ljava/lang/String;

.field public mFramerate13:Ljava/lang/String;

.field public mManufacture10:Ljava/lang/String;

.field public mMode04:Ljava/lang/String;

.field public mModel11:Ljava/lang/String;

.field public final mPhoneStorageStart:Ljava/lang/String;

.field public mResolution07:Ljava/lang/String;

.field public mSize06:Ljava/lang/String;

.field public mSource02:Ljava/lang/String;

.field public mStatus09:Ljava/lang/String;

.field public mThumbnail15:Ljava/lang/String;

.field public mType08:Ljava/lang/String;

.field public mVersion00:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/DetailDlgParams;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mVersion00:Ljava/lang/String;

    .line 141
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mCallername01:Ljava/lang/String;

    .line 142
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mSource02:Ljava/lang/String;

    .line 143
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mFilepath03:Ljava/lang/String;

    .line 144
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mMode04:Ljava/lang/String;

    .line 145
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mDate05:Ljava/lang/String;

    .line 146
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mSize06:Ljava/lang/String;

    .line 147
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mResolution07:Ljava/lang/String;

    .line 148
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mType08:Ljava/lang/String;

    .line 149
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mStatus09:Ljava/lang/String;

    .line 150
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mManufacture10:Ljava/lang/String;

    .line 151
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mModel11:Ljava/lang/String;

    .line 152
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mDuration12:Ljava/lang/String;

    .line 153
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mFramerate13:Ljava/lang/String;

    .line 154
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mBitrate14:Ljava/lang/String;

    .line 155
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mThumbnail15:Ljava/lang/String;

    .line 156
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mFileName16:Ljava/lang/String;

    .line 157
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mExtra99:Ljava/lang/String;

    .line 159
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mExternalStart:Ljava/lang/String;

    .line 160
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mPhoneStorageStart:Ljava/lang/String;

    return-void
.end method

.method public static CreateExtraParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "callername01"
    .parameter "source02"
    .parameter "filepath03"
    .parameter "mode04"
    .parameter "date05"
    .parameter "size06"
    .parameter "resolution07"
    .parameter "type08"
    .parameter "status09"
    .parameter "manufacture10"
    .parameter "model11"
    .parameter "duration12"
    .parameter "framerate13"
    .parameter "bitrate14"
    .parameter "thumbnail15"
    .parameter "filename16"
    .parameter "extra99"

    .prologue
    .line 90
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-eqz p7, :cond_0

    if-eqz p8, :cond_0

    if-eqz p9, :cond_0

    if-eqz p10, :cond_0

    if-eqz p11, :cond_0

    if-eqz p12, :cond_0

    if-eqz p13, :cond_0

    if-eqz p14, :cond_0

    if-eqz p15, :cond_0

    if-nez p16, :cond_1

    .line 108
    :cond_0
    const/4 v1, 0x0

    .line 136
    :goto_0
    return-object v1

    .line 111
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 112
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.album"

    const-string v3, "com.htc.album.DetailDlgActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v2, "PARAMVERSION"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v2, "CALLERNAME"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v2, "SOURCE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v2, "FILEPATH"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v2, "MODE"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v2, "DATE"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v2, "SIZE"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v2, "RESOLUTION"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v2, "TYPE"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v2, "STATUS"

    invoke-virtual {v1, v2, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v2, "MANUFACTURE"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v2, "MODEL"

    invoke-virtual {v1, v2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v2, "DURATION"

    invoke-virtual {v1, v2, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v2, "FRAMERATE"

    move-object/from16 v0, p12

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v2, "BITRATE"

    move-object/from16 v0, p13

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string v2, "THUMBNAIL"

    move-object/from16 v0, p14

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v2, "FILENAME"

    move-object/from16 v0, p15

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v2, "EXTRA99"

    move-object/from16 v0, p16

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static findDecodeScale(Ljava/io/FileDescriptor;)I
    .locals 6
    .parameter "fd"

    .prologue
    .line 514
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 515
    .local v2, op:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 516
    const/4 v5, 0x0

    invoke-static {p0, v5, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 518
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 519
    .local v4, originalWidth:I
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 521
    .local v3, originalHeight:I
    const/16 v1, 0x60

    .line 522
    .local v1, newWidth:I
    const/16 v0, 0x60

    .line 524
    .local v0, newHeight:I
    invoke-static {v4, v3, v1, v0}, Lcom/htc/opensense2/album/util/ImageUtils;->countSampleValue(IIII)I

    move-result v5

    return v5
.end method

.method public static getBitmapInFD(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "filePath"
    .parameter "ctx"

    .prologue
    const/4 v7, 0x0

    .line 465
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v1, v7

    .line 507
    :goto_0
    return-object v1

    .line 468
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "content://dlna/images"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 472
    .local v2, cpClient:Landroid/content/ContentProviderClient;
    if-nez v2, :cond_2

    move-object v1, v7

    .line 473
    goto :goto_0

    .line 475
    :cond_2
    const/4 v1, 0x0

    .line 478
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 479
    .local v6, uri:Landroid/net/Uri;
    const-string v8, "r"

    invoke-virtual {v2, v6, v8}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 482
    .local v0, aFD:Landroid/content/res/AssetFileDescriptor;
    if-nez v0, :cond_3

    .line 499
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    move-object v1, v7

    goto :goto_0

    .line 485
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 487
    .local v4, fd:Ljava/io/FileDescriptor;
    if-eqz v4, :cond_4

    .line 488
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 489
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x0

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 490
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v7, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 491
    invoke-static {v4}, Lcom/htc/album/DetailDlgParams;->findDecodeScale(Ljava/io/FileDescriptor;)I

    move-result v7

    iput v7, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 493
    const/4 v7, 0x0

    invoke-static {v4, v7, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 499
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_4
    :try_start_2
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 504
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 499
    .end local v4           #fd:Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v7

    :try_start_3
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 501
    .end local v0           #aFD:Landroid/content/res/AssetFileDescriptor;
    .end local v6           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 502
    .local v3, e:Ljava/lang/Exception;
    :try_start_4
    sget-object v7, Lcom/htc/album/DetailDlgParams;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBitmapByFD fail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 504
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .end local v3           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    throw v7
.end method


# virtual methods
.method public GetDataLocation()Lcom/htc/opensense2/album/util/ImageManager$DataLocation;
    .locals 2

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/htc/album/DetailDlgParams;->IsLocalFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    sget-object v0, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    .line 280
    :goto_0
    return-object v0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mSource02:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/album/DetailDlgParams;->mExternalStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    sget-object v0, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->EXTERNAL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    goto :goto_0

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mSource02:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/album/DetailDlgParams;->mPhoneStorageStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    sget-object v0, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->PHONE:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    goto :goto_0

    .line 280
    :cond_2
    sget-object v0, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    goto :goto_0
.end method

.method public GetExtraParam(Landroid/content/Intent;)Z
    .locals 6
    .parameter "intent"

    .prologue
    .line 165
    if-nez p1, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 227
    :goto_0
    return v0

    .line 169
    :cond_0
    const/4 v0, 0x0

    .line 174
    .local v0, bRet:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 176
    .local v2, extras:Landroid/os/Bundle;
    const-string v3, "PARAMVERSION"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mVersion00:Ljava/lang/String;

    .line 177
    const-string v3, "CALLERNAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mCallername01:Ljava/lang/String;

    .line 178
    const-string v3, "SOURCE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mSource02:Ljava/lang/String;

    .line 179
    const-string v3, "FILEPATH"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mFilepath03:Ljava/lang/String;

    .line 180
    const-string v3, "MODE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mMode04:Ljava/lang/String;

    .line 181
    const-string v3, "DATE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mDate05:Ljava/lang/String;

    .line 182
    const-string v3, "SIZE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mSize06:Ljava/lang/String;

    .line 183
    const-string v3, "RESOLUTION"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mResolution07:Ljava/lang/String;

    .line 184
    const-string v3, "TYPE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mType08:Ljava/lang/String;

    .line 185
    const-string v3, "STATUS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mStatus09:Ljava/lang/String;

    .line 186
    const-string v3, "MANUFACTURE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mManufacture10:Ljava/lang/String;

    .line 187
    const-string v3, "MODEL"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mModel11:Ljava/lang/String;

    .line 188
    const-string v3, "DURATION"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mDuration12:Ljava/lang/String;

    .line 189
    const-string v3, "FRAMERATE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mFramerate13:Ljava/lang/String;

    .line 190
    const-string v3, "BITRATE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mBitrate14:Ljava/lang/String;

    .line 191
    const-string v3, "THUMBNAIL"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mThumbnail15:Ljava/lang/String;

    .line 192
    const-string v3, "FILENAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mFileName16:Ljava/lang/String;

    .line 193
    const-string v3, "EXTRA99"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mExtra99:Ljava/lang/String;

    .line 196
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 198
    sget-object v3, Lcom/htc/album/DetailDlgParams;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PARAMVERSION:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/DetailDlgParams;->mVersion00:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object v3, Lcom/htc/album/DetailDlgParams;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CALLERNAME:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/DetailDlgParams;->mCallername01:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-object v3, Lcom/htc/album/DetailDlgParams;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SOURCE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/DetailDlgParams;->mSource02:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    sget-object v3, Lcom/htc/album/DetailDlgParams;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FILEPATH:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/DetailDlgParams;->mFilepath03:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-object v3, Lcom/htc/album/DetailDlgParams;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MODE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/DetailDlgParams;->mMode04:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sget-object v3, Lcom/htc/album/DetailDlgParams;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DATE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/DetailDlgParams;->mDate05:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    sget-object v3, Lcom/htc/album/DetailDlgParams;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIZE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/DetailDlgParams;->mSize06:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    sget-object v3, Lcom/htc/album/DetailDlgParams;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RESOLUTION:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/DetailDlgParams;->mResolution07:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sget-object v3, Lcom/htc/album/DetailDlgParams;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TYPE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/DetailDlgParams;->mType08:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    sget-object v3, Lcom/htc/album/DetailDlgParams;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATUS:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/DetailDlgParams;->mStatus09:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sget-object v3, Lcom/htc/album/DetailDlgParams;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MANUFACTURE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/DetailDlgParams;->mManufacture10:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object v3, Lcom/htc/album/DetailDlgParams;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MODEL:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/DetailDlgParams;->mModel11:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-object v3, Lcom/htc/album/DetailDlgParams;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DURATION:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/DetailDlgParams;->mDuration12:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget-object v3, Lcom/htc/album/DetailDlgParams;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FRAMERATE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/DetailDlgParams;->mFramerate13:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    sget-object v3, Lcom/htc/album/DetailDlgParams;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BITRATE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/DetailDlgParams;->mBitrate14:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    sget-object v3, Lcom/htc/album/DetailDlgParams;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "THUMBNAIL:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/DetailDlgParams;->mThumbnail15:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-object v3, Lcom/htc/album/DetailDlgParams;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FILENAME:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/DetailDlgParams;->mFileName16:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sget-object v3, Lcom/htc/album/DetailDlgParams;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EXTRA99:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/DetailDlgParams;->mExtra99:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_1
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 220
    .end local v2           #extras:Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 221
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v3, Lcom/htc/album/DetailDlgParams;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DetailDlgParams.GetExtraParam():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 223
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    throw v3
.end method

.method public GetIncludes()I
    .locals 3

    .prologue
    const/16 v0, 0xff

    .line 232
    iget-object v1, p0, Lcom/htc/album/DetailDlgParams;->mMode04:Ljava/lang/String;

    const-string v2, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/htc/album/DetailDlgParams;->mMode04:Ljava/lang/String;

    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    const/4 v0, 0x1

    goto :goto_0

    .line 240
    :cond_2
    iget-object v1, p0, Lcom/htc/album/DetailDlgParams;->mMode04:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    const/16 v0, 0x10

    goto :goto_0
.end method

.method public GetWhere()Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mFilepath03:Ljava/lang/String;

    const-string v1, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    const-string v0, ""

    .line 289
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(_data like \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/DetailDlgParams;->mFilepath03:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public IsLocalFile()Z
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mSource02:Ljava/lang/String;

    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const/4 v0, 0x1

    .line 253
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsRemoteFile()Z
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mSource02:Ljava/lang/String;

    const-string v1, "remote"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    const/4 v0, 0x1

    .line 262
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitrate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mBitrate14:Ljava/lang/String;

    const-string v1, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    const-string v0, ""

    .line 461
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mBitrate14:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 324
    iget-object v2, p0, Lcom/htc/album/DetailDlgParams;->mFilepath03:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 326
    .local v0, end:I
    iget-object v2, p0, Lcom/htc/album/DetailDlgParams;->mFilepath03:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, s:Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 330
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getDateString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mDate05:Ljava/lang/String;

    const-string v1, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    const-string v0, ""

    .line 406
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mDate05:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 298
    iget-object v5, p0, Lcom/htc/album/DetailDlgParams;->mFileName16:Ljava/lang/String;

    const-string v6, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 300
    iget-object v5, p0, Lcom/htc/album/DetailDlgParams;->mFilepath03:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 302
    .local v0, end:I
    iget-object v5, p0, Lcom/htc/album/DetailDlgParams;->mFilepath03:Ljava/lang/String;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, imgName:Ljava/lang/String;
    const-string v2, ""

    .line 305
    .local v2, imgSubName:Ljava/lang/String;
    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 307
    .local v3, subFileIndex:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 308
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, tmpSubName:Ljava/lang/String;
    move-object v2, v4

    .line 310
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 318
    .end local v0           #end:I
    .end local v1           #imgName:Ljava/lang/String;
    .end local v2           #imgSubName:Ljava/lang/String;
    .end local v3           #subFileIndex:I
    .end local v4           #tmpSubName:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 312
    .restart local v0       #end:I
    .restart local v1       #imgName:Ljava/lang/String;
    .restart local v2       #imgSubName:Ljava/lang/String;
    .restart local v3       #subFileIndex:I
    :cond_0
    const-string v2, ""

    goto :goto_0

    .line 318
    .end local v0           #end:I
    .end local v1           #imgName:Ljava/lang/String;
    .end local v2           #imgSubName:Ljava/lang/String;
    .end local v3           #subFileIndex:I
    :cond_1
    iget-object v1, p0, Lcom/htc/album/DetailDlgParams;->mFileName16:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mDuration12:Ljava/lang/String;

    const-string v1, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    const-string v0, ""

    .line 443
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mDuration12:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFramerate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mFramerate13:Ljava/lang/String;

    const-string v1, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    const-string v0, ""

    .line 452
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mFramerate13:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mType08:Ljava/lang/String;

    const-string v1, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    const-string v0, ""

    .line 339
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mType08:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mFilepath03:Ljava/lang/String;

    const-string v1, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    const-string v0, ""

    .line 415
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mFilepath03:Ljava/lang/String;

    goto :goto_0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mResolution07:Ljava/lang/String;

    const-string v1, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    const-string v0, ""

    .line 379
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mResolution07:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSize(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "ctx"

    .prologue
    .line 344
    if-nez p1, :cond_0

    .line 345
    const-string v3, ""

    .line 370
    :goto_0
    return-object v3

    .line 348
    :cond_0
    iget-object v4, p0, Lcom/htc/album/DetailDlgParams;->mSize06:Ljava/lang/String;

    const-string v5, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 349
    const-string v3, ""

    goto :goto_0

    .line 352
    :cond_1
    const-string v3, ""

    .line 356
    .local v3, sRes:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/htc/album/DetailDlgParams;->mSize06:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 358
    .local v0, a:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_2

    .line 359
    const-string v3, ""

    goto :goto_0

    .line 362
    :cond_2
    invoke-static {p1, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 364
    .end local v0           #a:J
    :catch_0
    move-exception v2

    .line 366
    .local v2, e:Ljava/lang/Exception;
    sget-object v4, Lcom/htc/album/DetailDlgParams;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DetailDlgParams:getSize():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mThumbnail15:Ljava/lang/String;

    const-string v1, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    const-string v0, ""

    .line 424
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mThumbnail15:Ljava/lang/String;

    goto :goto_0
.end method

.method public isVideio()Z
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mMode04:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    const/4 v0, 0x1

    .line 433
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
