.class public Lcom/htc/videowidget/videoDMC/CacheImageView;
.super Landroid/widget/ImageView;
.source "CacheImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/videowidget/videoDMC/CacheImageView$1;,
        Lcom/htc/videowidget/videoDMC/CacheImageView$OpenResourceIdResult;,
        Lcom/htc/videowidget/videoDMC/CacheImageView$LoadImageTask;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/htc/videowidget/videoDMC/CacheImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/videowidget/videoDMC/CacheImageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/htc/videowidget/videoDMC/CacheImageView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;Landroid/net/Uri;)Lcom/htc/videowidget/videoDMC/CacheImageView$OpenResourceIdResult;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/htc/videowidget/videoDMC/CacheImageView;->getResourceId(Landroid/content/Context;Landroid/net/Uri;)Lcom/htc/videowidget/videoDMC/CacheImageView$OpenResourceIdResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/videowidget/videoDMC/CacheImageView;Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/htc/videowidget/videoDMC/CacheImageView;->getDMSThumbNail(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 232
    if-eqz p0, :cond_0

    .line 234
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getDMSThumbNail(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 11
    .parameter "uri"
    .parameter "context"

    .prologue
    .line 311
    const/4 v1, 0x0

    .line 313
    .local v1, bitmapDrawableResult:Landroid/graphics/drawable/BitmapDrawable;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 315
    sget-object v8, Lcom/htc/videowidget/videoDMC/CacheImageView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getDMSThumbNail(), Uri = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    if-nez p2, :cond_0

    .line 319
    sget-object v8, Lcom/htc/videowidget/videoDMC/CacheImageView;->TAG:Ljava/lang/String;

    const-string v9, "getDMSThumbNail(), context Null!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 387
    .end local v1           #bitmapDrawableResult:Landroid/graphics/drawable/BitmapDrawable;
    .local v2, bitmapDrawableResult:Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object v2

    .line 323
    .end local v2           #bitmapDrawableResult:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v1       #bitmapDrawableResult:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    const-string v7, "content://dlna/images"

    .line 325
    .local v7, sDlnaAuthority:Ljava/lang/String;
    sget-object v8, Lcom/htc/videowidget/videoDMC/CacheImageView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getDMSThumbNail(), DLNA Authority = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3

    .line 329
    .local v3, cpClient:Landroid/content/ContentProviderClient;
    if-nez v3, :cond_1

    .line 331
    sget-object v8, Lcom/htc/videowidget/videoDMC/CacheImageView;->TAG:Ljava/lang/String;

    const-string v9, "getDMSThumbNail(), acquireContentProviderClient Null!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 332
    .end local v1           #bitmapDrawableResult:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #bitmapDrawableResult:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0

    .line 336
    .end local v2           #bitmapDrawableResult:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v1       #bitmapDrawableResult:Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    sget-object v8, Lcom/htc/videowidget/videoDMC/CacheImageView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getDMSThumbNail(), cpClient = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :try_start_0
    const-string v8, "r"

    invoke-virtual {v3, p1, v8}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 343
    .local v0, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    if-eqz v0, :cond_4

    .line 345
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 347
    .local v6, pfDescriptor:Landroid/os/ParcelFileDescriptor;
    if-eqz v6, :cond_3

    .line 349
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 351
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput v8, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 352
    const/4 v8, 0x0

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 353
    const/4 v8, 0x0

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 354
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v8, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 356
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    .end local v1           #bitmapDrawableResult:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #bitmapDrawableResult:Landroid/graphics/drawable/BitmapDrawable;
    if-nez v2, :cond_2

    .line 359
    :try_start_1
    sget-object v8, Lcom/htc/videowidget/videoDMC/CacheImageView;->TAG:Ljava/lang/String;

    const-string v9, "getDMSThumbNail(), decodeFileDescriptor Fail!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    move-object v1, v2

    .line 367
    .end local v2           #bitmapDrawableResult:Landroid/graphics/drawable/BitmapDrawable;
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v1       #bitmapDrawableResult:Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 368
    const/4 v0, 0x0

    .line 384
    .end local v0           #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    .end local v6           #pfDescriptor:Landroid/os/ParcelFileDescriptor;
    :goto_2
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    .line 385
    const/4 v3, 0x0

    move-object v2, v1

    .line 387
    .end local v1           #bitmapDrawableResult:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #bitmapDrawableResult:Landroid/graphics/drawable/BitmapDrawable;
    goto/16 :goto_0

    .line 363
    .end local v2           #bitmapDrawableResult:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v0       #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    .restart local v1       #bitmapDrawableResult:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v6       #pfDescriptor:Landroid/os/ParcelFileDescriptor;
    :cond_3
    :try_start_3
    sget-object v8, Lcom/htc/videowidget/videoDMC/CacheImageView;->TAG:Ljava/lang/String;

    const-string v9, "getDMSThumbNail(), ParcelFileDescriptor is Null!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v1, 0x0

    goto :goto_1

    .line 372
    .end local v6           #pfDescriptor:Landroid/os/ParcelFileDescriptor;
    :cond_4
    sget-object v8, Lcom/htc/videowidget/videoDMC/CacheImageView;->TAG:Ljava/lang/String;

    const-string v9, "getDMSThumbNail(), AssetFileDescriptor is Null!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 373
    const/4 v1, 0x0

    goto :goto_2

    .line 376
    .end local v0           #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v4

    .line 378
    .local v4, e:Ljava/lang/Exception;
    :goto_3
    sget-object v8, Lcom/htc/videowidget/videoDMC/CacheImageView;->TAG:Ljava/lang/String;

    const-string v9, "getDMSThumbNail(), Get ThumbNail Fail!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 380
    const/4 v1, 0x0

    goto :goto_2

    .line 376
    .end local v1           #bitmapDrawableResult:Landroid/graphics/drawable/BitmapDrawable;
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v0       #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    .restart local v2       #bitmapDrawableResult:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v5       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v6       #pfDescriptor:Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v4

    move-object v1, v2

    .end local v2           #bitmapDrawableResult:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v1       #bitmapDrawableResult:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_3
.end method

.method private static getResourceId(Landroid/content/Context;Landroid/net/Uri;)Lcom/htc/videowidget/videoDMC/CacheImageView$OpenResourceIdResult;
    .locals 11
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 255
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, authority:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 259
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No authority: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 265
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 272
    .local v6, r:Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    .line 273
    .local v5, path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v5, :cond_1

    .line 275
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No path: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 267
    .end local v5           #path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #r:Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 269
    .local v2, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No package found for authority: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 277
    .end local v2           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5       #path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #r:Landroid/content/res/Resources;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 279
    .local v4, len:I
    if-ne v4, v10, :cond_2

    .line 283
    const/4 v8, 0x0

    :try_start_1
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 298
    .local v3, id:I
    :goto_0
    if-nez v3, :cond_4

    .line 300
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No resource found for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 285
    .end local v3           #id:I
    :catch_1
    move-exception v1

    .line 287
    .local v1, e:Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Single path segment is not a resource ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 290
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const/4 v8, 0x2

    if-ne v4, v8, :cond_3

    .line 292
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v8, v9, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .restart local v3       #id:I
    goto :goto_0

    .line 296
    .end local v3           #id:I
    :cond_3
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "More than two path segments: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 303
    .restart local v3       #id:I
    :cond_4
    new-instance v7, Lcom/htc/videowidget/videoDMC/CacheImageView$OpenResourceIdResult;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/htc/videowidget/videoDMC/CacheImageView$OpenResourceIdResult;-><init>(Lcom/htc/videowidget/videoDMC/CacheImageView$1;)V

    .line 304
    .local v7, res:Lcom/htc/videowidget/videoDMC/CacheImageView$OpenResourceIdResult;
    iput-object v6, v7, Lcom/htc/videowidget/videoDMC/CacheImageView$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    .line 305
    iput v3, v7, Lcom/htc/videowidget/videoDMC/CacheImageView$OpenResourceIdResult;->id:I

    .line 306
    return-object v7
.end method


# virtual methods
.method public postSetImageResource(I)V
    .locals 4
    .parameter "resId"

    .prologue
    .line 54
    sget-object v0, Lcom/htc/videowidget/videoDMC/CacheImageView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postSetImageResource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Lcom/htc/videowidget/videoDMC/CacheImageView$LoadImageTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/videowidget/videoDMC/CacheImageView$LoadImageTask;-><init>(Lcom/htc/videowidget/videoDMC/CacheImageView;Lcom/htc/videowidget/videoDMC/CacheImageView$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoDMC/CacheImageView$LoadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    return-void
.end method

.method public postSetImageURI(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 60
    sget-object v0, Lcom/htc/videowidget/videoDMC/CacheImageView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postSetImageResource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v0, Lcom/htc/videowidget/videoDMC/CacheImageView$LoadImageTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/videowidget/videoDMC/CacheImageView$LoadImageTask;-><init>(Lcom/htc/videowidget/videoDMC/CacheImageView;Lcom/htc/videowidget/videoDMC/CacheImageView$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoDMC/CacheImageView$LoadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    return-void
.end method
