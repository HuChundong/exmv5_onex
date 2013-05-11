.class public Lcom/htc/shutdown/AnimationView;
.super Landroid/widget/ImageView;
.source "AnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/shutdown/AnimationView$OnAnimationListener;
    }
.end annotation


# static fields
.field private static final NEXT_FRAME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AnimationView"


# instance fields
.field private bJustReady:Z

.field private curname:Ljava/lang/String;

.field private lastBitmap:Landroid/graphics/Bitmap;

.field private mAnimationListener:Lcom/htc/shutdown/AnimationView$OnAnimationListener;

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mFPS:I

.field private myHandler:Landroid/os/Handler;

.field private nFramesDrawn:I

.field private nowBitmap:Landroid/graphics/Bitmap;

.field private zipFile:Ljava/util/zip/ZipFile;

.field private zipLandFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "context"
    .parameter "pathname"
    .parameter "landPath"
    .parameter "maxFPS"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44
    iput-boolean v3, p0, Lcom/htc/shutdown/AnimationView;->bJustReady:Z

    .line 45
    iput v3, p0, Lcom/htc/shutdown/AnimationView;->nFramesDrawn:I

    .line 301
    iput-object v6, p0, Lcom/htc/shutdown/AnimationView;->mAnimationListener:Lcom/htc/shutdown/AnimationView$OnAnimationListener;

    .line 351
    new-instance v3, Lcom/htc/shutdown/AnimationView$1;

    invoke-direct {v3, p0}, Lcom/htc/shutdown/AnimationView$1;-><init>(Lcom/htc/shutdown/AnimationView;)V

    iput-object v3, p0, Lcom/htc/shutdown/AnimationView;->myHandler:Landroid/os/Handler;

    .line 59
    iput-object p1, p0, Lcom/htc/shutdown/AnimationView;->mContext:Landroid/content/Context;

    .line 60
    iput p4, p0, Lcom/htc/shutdown/AnimationView;->mFPS:I

    .line 62
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 64
    .local v1, manager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/shutdown/AnimationView;->mDisplay:Landroid/view/Display;

    .line 66
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    .line 67
    const-string v3, "AnimationView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image PNG = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v3, "AnimationView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image PNG land = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v3, "AnimationView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Shutdown_animation: FPS> \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/shutdown/AnimationView;->mFPS:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    iput-object v6, p0, Lcom/htc/shutdown/AnimationView;->curname:Ljava/lang/String;

    .line 73
    iput-object v6, p0, Lcom/htc/shutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;

    .line 75
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/shutdown/AnimationView;->zipFile:Ljava/util/zip/ZipFile;

    .line 77
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 78
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v2, tmp:Ljava/io/File;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/shutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v2           #tmp:Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/shutdown/AnimationView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/shutdown/AnimationView;->prepareDraw()V

    return-void
.end method

.method private controlFPS(JJ)V
    .locals 9
    .parameter "mStartTime"
    .parameter "mEndTime"

    .prologue
    const/16 v8, 0x3e8

    .line 257
    sub-long v0, p3, p1

    .line 262
    .local v0, cost:J
    iget v5, p0, Lcom/htc/shutdown/AnimationView;->mFPS:I

    div-int v5, v8, v5

    long-to-int v6, v0

    sub-int v2, v5, v6

    .line 264
    .local v2, delay:I
    if-lez v2, :cond_1

    .line 267
    int-to-long v5, v2

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    .line 278
    sub-long v0, p3, p1

    .line 280
    long-to-int v5, v0

    div-int v4, v8, v5

    .line 283
    .local v4, fps:I
    return-void

    .line 268
    .end local v4           #fps:I
    :catch_0
    move-exception v3

    .line 269
    .local v3, e:Ljava/lang/InterruptedException;
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_0

    .line 270
    const-string v5, "AnimationView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delay time fail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    .end local v3           #e:Ljava/lang/InterruptedException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private prepareDraw()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 313
    const-wide/16 v5, 0x0

    .line 314
    .local v5, mStartTime:J
    const/4 v2, 0x0

    .line 316
    .local v2, is:Ljava/io/InputStream;
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_0

    .line 317
    const-string v7, "AnimationView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nFramesDrawn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/shutdown/AnimationView;->nFramesDrawn:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    iget v7, p0, Lcom/htc/shutdown/AnimationView;->nFramesDrawn:I

    if-ne v7, v10, :cond_1

    iget-object v7, p0, Lcom/htc/shutdown/AnimationView;->nowBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_1

    .line 320
    iget-object v7, p0, Lcom/htc/shutdown/AnimationView;->mAnimationListener:Lcom/htc/shutdown/AnimationView$OnAnimationListener;

    invoke-interface {v7}, Lcom/htc/shutdown/AnimationView$OnAnimationListener;->onAnimationReady()V

    .line 323
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 326
    iget-object v7, p0, Lcom/htc/shutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/htc/shutdown/AnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 327
    invoke-direct {p0}, Lcom/htc/shutdown/AnimationView;->readNextTextureLand()Ljava/io/BufferedInputStream;

    move-result-object v2

    .line 331
    :goto_0
    if-eqz v2, :cond_4

    .line 332
    iget-object v7, p0, Lcom/htc/shutdown/AnimationView;->nowBitmap:Landroid/graphics/Bitmap;

    iput-object v7, p0, Lcom/htc/shutdown/AnimationView;->lastBitmap:Landroid/graphics/Bitmap;

    .line 333
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 334
    .local v0, bitopts:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v10, v0, Landroid/graphics/BitmapFactory$Options;->inNativeAlloc:Z

    .line 335
    const/4 v7, 0x0

    invoke-static {v2, v7, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/shutdown/AnimationView;->nowBitmap:Landroid/graphics/Bitmap;

    .line 337
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .end local v0           #bitopts:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 347
    .local v3, mEndTime:J
    invoke-direct {p0, v5, v6, v3, v4}, Lcom/htc/shutdown/AnimationView;->controlFPS(JJ)V

    .line 348
    invoke-virtual {p0}, Lcom/htc/shutdown/AnimationView;->invalidate()V

    .line 349
    return-void

    .line 329
    .end local v3           #mEndTime:J
    :cond_3
    invoke-direct {p0}, Lcom/htc/shutdown/AnimationView;->readNextTexture()Ljava/io/BufferedInputStream;

    move-result-object v2

    goto :goto_0

    .line 338
    .restart local v0       #bitopts:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 339
    .local v1, e:Ljava/io/IOException;
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_2

    .line 340
    const-string v7, "AnimationView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close texture fail: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 343
    .end local v0           #bitopts:Landroid/graphics/BitmapFactory$Options;
    .end local v1           #e:Ljava/io/IOException;
    :cond_4
    iget-object v7, p0, Lcom/htc/shutdown/AnimationView;->mAnimationListener:Lcom/htc/shutdown/AnimationView$OnAnimationListener;

    invoke-interface {v7}, Lcom/htc/shutdown/AnimationView$OnAnimationListener;->onAnimationFinished()V

    goto :goto_1
.end method

.method private readNextTexture()Ljava/io/BufferedInputStream;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 184
    :try_start_0
    iget-object v5, p0, Lcom/htc/shutdown/AnimationView;->zipFile:Ljava/util/zip/ZipFile;

    if-nez v5, :cond_1

    .line 185
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_0

    .line 186
    const-string v5, "AnimationView"

    const-string v6, "The png zip file doesn\'t exist, please check resource path."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    :goto_0
    return-object v4

    .line 190
    :cond_1
    iget-object v5, p0, Lcom/htc/shutdown/AnimationView;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 192
    .local v2, entry_list:Ljava/util/Enumeration;
    const/4 v3, 0x0

    .line 193
    .local v3, isNext:Z
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 195
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 197
    .local v1, entry:Ljava/util/zip/ZipEntry;
    iget-object v5, p0, Lcom/htc/shutdown/AnimationView;->curname:Ljava/lang/String;

    if-eqz v5, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_4

    .line 198
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/shutdown/AnimationView;->curname:Ljava/lang/String;

    .line 199
    new-instance v5, Ljava/io/BufferedInputStream;

    iget-object v6, p0, Lcom/htc/shutdown/AnimationView;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v6, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    const/16 v7, 0x2000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v4, v5

    goto :goto_0

    .line 203
    :cond_4
    iget-object v5, p0, Lcom/htc/shutdown/AnimationView;->curname:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/shutdown/AnimationView;->curname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    .line 204
    const/4 v3, 0x1

    goto :goto_1

    .line 209
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    .end local v2           #entry_list:Ljava/util/Enumeration;
    .end local v3           #isNext:Z
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Ljava/io/IOException;
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_0

    .line 211
    const-string v5, "AnimationView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readNextTexture fail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readNextTextureLand()Ljava/io/BufferedInputStream;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 220
    :try_start_0
    iget-object v5, p0, Lcom/htc/shutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;

    if-nez v5, :cond_1

    .line 221
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_0

    .line 222
    const-string v5, "AnimationView"

    const-string v6, "The png land zip file doesn\'t exist, please check resource path."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    :goto_0
    return-object v4

    .line 226
    :cond_1
    iget-object v5, p0, Lcom/htc/shutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 228
    .local v2, entry_list:Ljava/util/Enumeration;
    const/4 v3, 0x0

    .line 229
    .local v3, isNext:Z
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 231
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 233
    .local v1, entry:Ljava/util/zip/ZipEntry;
    iget-object v5, p0, Lcom/htc/shutdown/AnimationView;->curname:Ljava/lang/String;

    if-eqz v5, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_4

    .line 234
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/shutdown/AnimationView;->curname:Ljava/lang/String;

    .line 235
    new-instance v5, Ljava/io/BufferedInputStream;

    iget-object v6, p0, Lcom/htc/shutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v6, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    const/16 v7, 0x2000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v4, v5

    goto :goto_0

    .line 239
    :cond_4
    iget-object v5, p0, Lcom/htc/shutdown/AnimationView;->curname:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/shutdown/AnimationView;->curname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    .line 240
    const/4 v3, 0x1

    goto :goto_1

    .line 245
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    .end local v2           #entry_list:Ljava/util/Enumeration;
    .end local v3           #isNext:Z
    :catch_0
    move-exception v0

    .line 246
    .local v0, e:Ljava/io/IOException;
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_0

    .line 247
    const-string v5, "AnimationView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readNextTextureLand fail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 111
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/16 v5, -0x5a

    const/16 v1, -0x10e

    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 124
    iget-object v7, p0, Lcom/htc/shutdown/AnimationView;->nowBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_5

    .line 134
    :try_start_0
    iget-object v7, p0, Lcom/htc/shutdown/AnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    move v0, v6

    .line 136
    .local v0, bLand:Z
    :goto_0
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x10

    if-ne v7, v8, :cond_0

    .line 137
    const/4 v0, 0x0

    .line 140
    :cond_0
    if-eqz v0, :cond_1

    .line 141
    iget-object v7, p0, Lcom/htc/shutdown/AnimationView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 142
    .local v3, rotation:I
    const/4 v7, 0x3

    if-ne v3, v7, :cond_4

    .line 143
    .local v1, degree:I
    :goto_1
    iget-object v5, p0, Lcom/htc/shutdown/AnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 144
    .local v4, w:I
    iget-object v5, p0, Lcom/htc/shutdown/AnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 145
    .local v2, h:I
    int-to-float v5, v1

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    invoke-virtual {p1, v5, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 146
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-int v7, v4, v2

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 150
    .end local v0           #bLand:Z
    .end local v1           #degree:I
    .end local v2           #h:I
    .end local v3           #rotation:I
    .end local v4           #w:I
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/htc/shutdown/AnimationView;->nowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v5, v9, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 151
    iget v5, p0, Lcom/htc/shutdown/AnimationView;->nFramesDrawn:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/shutdown/AnimationView;->nFramesDrawn:I

    .line 153
    iget-object v5, p0, Lcom/htc/shutdown/AnimationView;->lastBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/shutdown/AnimationView;->lastBitmap:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/htc/shutdown/AnimationView;->nowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 154
    iget-object v5, p0, Lcom/htc/shutdown/AnimationView;->lastBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 155
    iput-object v10, p0, Lcom/htc/shutdown/AnimationView;->lastBitmap:Landroid/graphics/Bitmap;

    .line 178
    :cond_2
    :goto_3
    iget-object v5, p0, Lcom/htc/shutdown/AnimationView;->myHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 179
    return-void

    .line 134
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0       #bLand:Z
    .restart local v3       #rotation:I
    :cond_4
    move v1, v5

    .line 142
    goto :goto_1

    .line 159
    .end local v0           #bLand:Z
    .end local v3           #rotation:I
    :cond_5
    :try_start_1
    iget-object v7, p0, Lcom/htc/shutdown/AnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8

    move v0, v6

    .line 161
    .restart local v0       #bLand:Z
    :goto_4
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x10

    if-ne v7, v8, :cond_6

    .line 162
    const/4 v0, 0x0

    .line 165
    :cond_6
    if-eqz v0, :cond_7

    .line 166
    iget-object v7, p0, Lcom/htc/shutdown/AnimationView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 167
    .restart local v3       #rotation:I
    const/4 v7, 0x3

    if-ne v3, v7, :cond_9

    .line 168
    .restart local v1       #degree:I
    :goto_5
    iget-object v5, p0, Lcom/htc/shutdown/AnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 169
    .restart local v4       #w:I
    iget-object v5, p0, Lcom/htc/shutdown/AnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 170
    .restart local v2       #h:I
    int-to-float v5, v1

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    invoke-virtual {p1, v5, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 171
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-int v7, v4, v2

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    .end local v0           #bLand:Z
    .end local v1           #degree:I
    .end local v2           #h:I
    .end local v3           #rotation:I
    .end local v4           #w:I
    :cond_7
    :goto_6
    iget-object v5, p0, Lcom/htc/shutdown/AnimationView;->lastBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/shutdown/AnimationView;->lastBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v5, v9, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 159
    :cond_8
    const/4 v0, 0x0

    goto :goto_4

    .restart local v0       #bLand:Z
    .restart local v3       #rotation:I
    :cond_9
    move v1, v5

    .line 167
    goto :goto_5

    .line 173
    .end local v0           #bLand:Z
    .end local v3           #rotation:I
    :catch_0
    move-exception v5

    goto :goto_6

    .line 148
    :catch_1
    move-exception v5

    goto/16 :goto_2
.end method

.method public setOnAnimationListener(Lcom/htc/shutdown/AnimationView$OnAnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/htc/shutdown/AnimationView;->mAnimationListener:Lcom/htc/shutdown/AnimationView$OnAnimationListener;

    .line 310
    return-void
.end method
