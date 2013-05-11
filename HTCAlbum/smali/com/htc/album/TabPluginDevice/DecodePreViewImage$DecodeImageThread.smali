.class Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;
.super Ljava/lang/Thread;
.source "DecodePreViewImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/DecodePreViewImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeImageThread"
.end annotation


# static fields
.field private static final DEFAULT_LAND_SCREEN_H:I = 0x3c0

.field private static final DEFAULT_LAND_SCREEN_W:I = 0x21c

.field private static final TAG:Ljava/lang/String; = "DecodeImageThread"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field mCancel:Z

.field private mFilePath:Ljava/lang/String;

.field private mFileUri:Landroid/net/Uri;

.field private mIntent:Landroid/content/Intent;

.field private mOrientation:I

.field private mSourceType:I

.field private mType:I

.field misFailed:Z

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/DecodePreViewImage;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDevice/DecodePreViewImage;Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 2
    .parameter
    .parameter "activity"
    .parameter "intent"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 116
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->this$0:Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    .line 117
    const-string v0, "DecodeImageThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 118
    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->mActivity:Landroid/app/Activity;

    .line 119
    iput-object p3, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->mIntent:Landroid/content/Intent;

    .line 120
    iput p4, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->mType:I

    .line 121
    iput v1, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->mOrientation:I

    .line 123
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->mCancel:Z

    .line 124
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->misFailed:Z

    .line 125
    #getter for: Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    invoke-static {p1}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->access$000(Lcom/htc/album/TabPluginDevice/DecodePreViewImage;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    #getter for: Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    invoke-static {p1}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->access$000(Lcom/htc/album/TabPluginDevice/DecodePreViewImage;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setEnableInitBackground(Z)V

    .line 126
    :cond_0
    return-void
.end method

.method private decode(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 25
    .parameter "context"
    .parameter "fileUri"
    .parameter "filePath"

    .prologue
    .line 242
    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "DecodeImageThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "JUMP_ID_FULLSCREENVIEW -> decode image uri="

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_0
    if-nez p2, :cond_2

    .line 244
    const/4 v2, 0x0

    .line 351
    :cond_1
    :goto_0
    return-object v2

    .line 247
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 248
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 250
    .local v19, resolver:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 251
    .local v9, d:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v12, 0x0

    .line 252
    .local v12, fileStream:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 255
    .local v4, bmp:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 257
    .local v10, dm:Landroid/util/DisplayMetrics;
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v23, v0

    .line 258
    .local v23, screenW:I
    iget v0, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    .line 259
    .local v22, screenH:I
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v15, v7, Landroid/content/res/Configuration;->orientation:I

    .line 261
    .local v15, ori:I
    const/4 v7, 0x1

    if-ne v15, v7, :cond_5

    .line 262
    iget v7, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v8, 0x21c

    if-le v7, v8, :cond_3

    .line 263
    const/16 v23, 0x21c

    .line 264
    const/16 v22, 0x3c0

    .line 273
    :cond_3
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v21

    .line 275
    .local v21, scheme:Ljava/lang/String;
    if-eqz v21, :cond_6

    const/4 v7, 0x1

    const-string v8, "content"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-ne v7, v8, :cond_6

    .line 276
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v12

    move-object v13, v12

    .line 286
    .end local v12           #fileStream:Ljava/io/InputStream;
    .local v13, fileStream:Ljava/io/InputStream;
    :goto_2
    :try_start_1
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 288
    .local v14, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 289
    const/4 v7, 0x0

    invoke-static {v13, v7, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 290
    iget v5, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 291
    .local v5, srcBmpW:I
    iget v6, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 293
    .local v6, srcBmpH:I
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 295
    if-eqz v21, :cond_8

    const/4 v7, 0x1

    const-string v8, "content"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-ne v7, v8, :cond_8

    .line 296
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v12

    .line 306
    .end local v13           #fileStream:Ljava/io/InputStream;
    .restart local v12       #fileStream:Ljava/io/InputStream;
    :goto_3
    move/from16 v0, v23

    if-gt v5, v0, :cond_4

    move/from16 v0, v22

    if-le v6, v0, :cond_b

    .line 307
    :cond_4
    const/16 v20, 0x1

    .line 308
    .local v20, sampleSize:I
    move/from16 v17, v5

    .line 309
    .local v17, originalWidth:I
    move/from16 v16, v6

    .line 310
    .local v16, originalHeight:I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, v23

    if-le v0, v1, :cond_a

    move/from16 v0, v16

    move/from16 v1, v22

    if-le v0, v1, :cond_a

    .line 311
    shl-int/lit8 v20, v20, 0x1

    .line 312
    shr-int/lit8 v17, v17, 0x1

    .line 313
    shr-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 267
    .end local v5           #srcBmpW:I
    .end local v6           #srcBmpH:I
    .end local v14           #option:Landroid/graphics/BitmapFactory$Options;
    .end local v16           #originalHeight:I
    .end local v17           #originalWidth:I
    .end local v20           #sampleSize:I
    .end local v21           #scheme:Ljava/lang/String;
    :cond_5
    :try_start_2
    iget v7, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v8, 0x3c0

    if-le v7, v8, :cond_3

    .line 268
    const/16 v23, 0x3c0

    .line 269
    const/16 v22, 0x21c

    goto :goto_1

    .line 278
    .restart local v21       #scheme:Ljava/lang/String;
    :cond_6
    if-eqz v21, :cond_7

    const/4 v7, 0x1

    const-string v8, "file"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-ne v7, v8, :cond_7

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v18

    .line 280
    .local v18, path:Ljava/lang/String;
    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 281
    .end local v12           #fileStream:Ljava/io/InputStream;
    .restart local v13       #fileStream:Ljava/io/InputStream;
    goto :goto_2

    .line 283
    .end local v13           #fileStream:Ljava/io/InputStream;
    .end local v18           #path:Ljava/lang/String;
    .restart local v12       #fileStream:Ljava/io/InputStream;
    :cond_7
    new-instance v13, Ljava/io/FileInputStream;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v13, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    .end local v12           #fileStream:Ljava/io/InputStream;
    .restart local v13       #fileStream:Ljava/io/InputStream;
    goto :goto_2

    .line 298
    .restart local v5       #srcBmpW:I
    .restart local v6       #srcBmpH:I
    .restart local v14       #option:Landroid/graphics/BitmapFactory$Options;
    :cond_8
    if-eqz v21, :cond_9

    const/4 v7, 0x1

    :try_start_3
    const-string v8, "file"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-ne v7, v8, :cond_9

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v18

    .line 300
    .restart local v18       #path:Ljava/lang/String;
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 301
    .end local v13           #fileStream:Ljava/io/InputStream;
    .restart local v12       #fileStream:Ljava/io/InputStream;
    goto :goto_3

    .line 303
    .end local v12           #fileStream:Ljava/io/InputStream;
    .end local v18           #path:Ljava/lang/String;
    .restart local v13       #fileStream:Ljava/io/InputStream;
    :cond_9
    new-instance v12, Ljava/io/FileInputStream;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v12, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_6

    .end local v13           #fileStream:Ljava/io/InputStream;
    .restart local v12       #fileStream:Ljava/io/InputStream;
    goto :goto_3

    .line 315
    .restart local v16       #originalHeight:I
    .restart local v17       #originalWidth:I
    .restart local v20       #sampleSize:I
    :cond_a
    :try_start_4
    move/from16 v0, v20

    iput v0, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 317
    .end local v16           #originalHeight:I
    .end local v17           #originalWidth:I
    .end local v20           #sampleSize:I
    :cond_b
    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_c

    .line 318
    const-string v7, "DecodeImageThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[decode] downsample size = "

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v0, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v24, " original "

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v24, " "

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_c
    const/4 v7, 0x0

    iput-boolean v7, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 321
    const/4 v7, 0x0

    invoke-static {v12, v7, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 326
    if-eqz v4, :cond_d

    .line 327
    new-instance v2, Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->mOrientation:I

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;IILjava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3

    .line 345
    .end local v9           #d:Landroid/graphics/drawable/BitmapDrawable;
    .local v2, d:Landroid/graphics/drawable/BitmapDrawable;
    :goto_5
    if-eqz v12, :cond_1

    :try_start_5
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 346
    :catch_0
    move-exception v11

    .line 347
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 329
    .end local v2           #d:Landroid/graphics/drawable/BitmapDrawable;
    .end local v11           #e:Ljava/io/IOException;
    .restart local v9       #d:Landroid/graphics/drawable/BitmapDrawable;
    :cond_d
    const/4 v7, 0x1

    :try_start_6
    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-ne v7, v8, :cond_e

    .line 330
    const-string v7, "DecodeImageThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Can\'t decode bmp from "

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_3

    :cond_e
    move-object v2, v9

    .end local v9           #d:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #d:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_5

    .line 333
    .end local v2           #d:Landroid/graphics/drawable/BitmapDrawable;
    .end local v5           #srcBmpW:I
    .end local v6           #srcBmpH:I
    .end local v10           #dm:Landroid/util/DisplayMetrics;
    .end local v14           #option:Landroid/graphics/BitmapFactory$Options;
    .end local v15           #ori:I
    .end local v21           #scheme:Ljava/lang/String;
    .end local v22           #screenH:I
    .end local v23           #screenW:I
    .restart local v9       #d:Landroid/graphics/drawable/BitmapDrawable;
    :catch_1
    move-exception v11

    .line 334
    .local v11, e:Ljava/lang/Exception;
    :goto_6
    :try_start_7
    const-string v7, "DecodeImageThread"

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v11}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 345
    if-eqz v12, :cond_f

    :try_start_8
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_f
    move-object v2, v9

    .line 348
    .end local v9           #d:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #d:Landroid/graphics/drawable/BitmapDrawable;
    goto/16 :goto_0

    .line 346
    .end local v2           #d:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v9       #d:Landroid/graphics/drawable/BitmapDrawable;
    :catch_2
    move-exception v11

    .line 347
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v9

    .line 349
    .end local v9           #d:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #d:Landroid/graphics/drawable/BitmapDrawable;
    goto/16 :goto_0

    .line 336
    .end local v2           #d:Landroid/graphics/drawable/BitmapDrawable;
    .end local v11           #e:Ljava/io/IOException;
    .restart local v9       #d:Landroid/graphics/drawable/BitmapDrawable;
    :catch_3
    move-exception v11

    .line 337
    .local v11, e:Ljava/lang/OutOfMemoryError;
    :goto_7
    :try_start_9
    const-string v7, "DecodeImageThread"

    invoke-virtual {v11}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v11}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 338
    if-eqz v4, :cond_10

    .line 339
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 340
    const/4 v4, 0x0

    .line 345
    :cond_10
    if-eqz v12, :cond_11

    :try_start_a
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_11
    move-object v2, v9

    .line 348
    .end local v9           #d:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #d:Landroid/graphics/drawable/BitmapDrawable;
    goto/16 :goto_0

    .line 346
    .end local v2           #d:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v9       #d:Landroid/graphics/drawable/BitmapDrawable;
    :catch_4
    move-exception v11

    .line 347
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v9

    .line 349
    .end local v9           #d:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #d:Landroid/graphics/drawable/BitmapDrawable;
    goto/16 :goto_0

    .line 344
    .end local v2           #d:Landroid/graphics/drawable/BitmapDrawable;
    .end local v11           #e:Ljava/io/IOException;
    .restart local v9       #d:Landroid/graphics/drawable/BitmapDrawable;
    :catchall_0
    move-exception v7

    .line 345
    :goto_8
    if-eqz v12, :cond_12

    :try_start_b
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 348
    :cond_12
    :goto_9
    throw v7

    .line 346
    :catch_5
    move-exception v11

    .line 347
    .restart local v11       #e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 344
    .end local v11           #e:Ljava/io/IOException;
    .end local v12           #fileStream:Ljava/io/InputStream;
    .restart local v10       #dm:Landroid/util/DisplayMetrics;
    .restart local v13       #fileStream:Ljava/io/InputStream;
    .restart local v15       #ori:I
    .restart local v21       #scheme:Ljava/lang/String;
    .restart local v22       #screenH:I
    .restart local v23       #screenW:I
    :catchall_1
    move-exception v7

    move-object v12, v13

    .end local v13           #fileStream:Ljava/io/InputStream;
    .restart local v12       #fileStream:Ljava/io/InputStream;
    goto :goto_8

    .line 336
    .end local v12           #fileStream:Ljava/io/InputStream;
    .restart local v13       #fileStream:Ljava/io/InputStream;
    :catch_6
    move-exception v11

    move-object v12, v13

    .end local v13           #fileStream:Ljava/io/InputStream;
    .restart local v12       #fileStream:Ljava/io/InputStream;
    goto :goto_7

    .line 333
    .end local v12           #fileStream:Ljava/io/InputStream;
    .restart local v13       #fileStream:Ljava/io/InputStream;
    :catch_7
    move-exception v11

    move-object v12, v13

    .end local v13           #fileStream:Ljava/io/InputStream;
    .restart local v12       #fileStream:Ljava/io/InputStream;
    goto :goto_6
.end method

.method private decode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 18
    .parameter "context"
    .parameter "filePath"
    .parameter "mimeType"

    .prologue
    .line 196
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 197
    .local v12, res:Landroid/content/res/Resources;
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 199
    .local v10, metrics:Landroid/util/DisplayMetrics;
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 201
    .local v11, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 202
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 203
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    .line 204
    .local v16, srcBmpW:I
    iget v15, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 206
    .local v15, srcBmpH:I
    iget v14, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 207
    .local v14, screenW:I
    iget v13, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 209
    .local v13, screenH:I
    new-instance v1, Lcom/htc/sunny2/common/CacheItem;

    sget-object v2, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    const/16 v3, 0xc

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    .line 216
    .local v1, tempItem:Lcom/htc/sunny2/common/CacheItem;
    const/4 v3, 0x0

    iput v3, v1, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    .line 217
    const/4 v3, 0x0

    iput v3, v1, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 218
    move-object/from16 v0, p3

    iput-object v0, v1, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    .line 219
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    .line 220
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 221
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    .line 222
    iput v14, v1, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    .line 223
    iput v13, v1, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    .line 225
    new-instance v17, Lcom/htc/sunny2/common/IterationDecodeTask;

    invoke-direct/range {v17 .. v17}, Lcom/htc/sunny2/common/IterationDecodeTask;-><init>()V

    .line 226
    .local v17, task:Lcom/htc/sunny2/common/IterationDecodeTask;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/common/IterationDecodeTask;->setTaskIndex(I)V

    .line 227
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/IterationDecodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 228
    const/16 v3, 0x22

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/common/IterationDecodeTask;->setDecodeFlag(I)V

    .line 232
    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/common/IterationDecodeTask;->onTaskSetup()V

    .line 233
    :cond_0
    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/common/IterationDecodeTask;->onTaskIterate()Z

    move-result v3

    if-nez v3, :cond_0

    .line 234
    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/common/IterationDecodeTask;->onTaskEnd()V

    .line 235
    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/common/IterationDecodeTask;->release()V

    .line 237
    new-instance v2, Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;

    iget-object v4, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->mOrientation:I

    move-object v3, v12

    move/from16 v5, v16

    move v6, v15

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;IILjava/lang/String;I)V

    .line 238
    .local v2, d:Landroid/graphics/drawable/BitmapDrawable;
    return-object v2
.end method

.method private updateSourceType(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, -0x1

    .line 139
    iput v6, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->mSourceType:I

    .line 141
    const/4 v3, 0x0

    .line 142
    .local v3, path:Ljava/lang/String;
    const/4 v0, 0x0

    .line 143
    .local v0, fileUri:Landroid/net/Uri;
    iget v4, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->mType:I

    const/16 v5, 0x1001

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->mType:I

    const/16 v5, 0x1003

    if-ne v4, v5, :cond_4

    .line 145
    :cond_0
    const-string v4, "camera_last_file_path"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    if-eqz v3, :cond_3

    const-string v4, "BURST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 152
    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v3}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->isSameCollection(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 153
    .local v2, isSameSet:Z
    if-nez v2, :cond_2

    .line 154
    iput v6, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->mSourceType:I

    .line 155
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->mFileUri:Landroid/net/Uri;

    .line 192
    .end local v2           #isSameSet:Z
    :cond_1
    :goto_0
    return-void

    .line 158
    .restart local v2       #isSameSet:Z
    :cond_2
    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->isBurstShotExpand(Landroid/content/Context;)Z

    move-result v1

    .line 159
    .local v1, isExpand:Z
    if-nez v1, :cond_3

    .line 160
    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->getLatestGridPhotoPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 179
    .end local v1           #isExpand:Z
    .end local v2           #isSameSet:Z
    :cond_3
    :goto_1
    if-eqz v3, :cond_1

    .line 181
    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->mFilePath:Ljava/lang/String;

    .line 183
    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v3}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->getRotationInformation(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->mOrientation:I

    .line 184
    const/4 v4, 0x2

    iput v4, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->mSourceType:I

    .line 185
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->mFileUri:Landroid/net/Uri;

    goto :goto_0

    .line 169
    :cond_4
    iget v4, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->mType:I

    const/16 v5, 0x1002

    if-ne v4, v5, :cond_5

    .line 170
    const-string v4, "camera_last_file_path"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 171
    if-eqz v3, :cond_1

    .line 173
    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->getCoverImageFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 176
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 134
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->mCancel:Z

    .line 135
    monitor-exit v1

    .line 136
    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isFailed()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->misFailed:Z

    return v0
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    .line 355
    const/16 v7, 0xa

    invoke-virtual {p0, v7}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->setPriority(I)V

    .line 357
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->mIntent:Landroid/content/Intent;

    .line 358
    .local v3, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->mActivity:Landroid/app/Activity;

    .line 360
    .local v0, activity:Landroid/app/Activity;
    if-eqz v3, :cond_0

    if-nez v0, :cond_2

    .line 361
    :cond_0
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->this$0:Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    #getter for: Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->access$000(Lcom/htc/album/TabPluginDevice/DecodePreViewImage;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 362
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->this$0:Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    #getter for: Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->access$000(Lcom/htc/album/TabPluginDevice/DecodePreViewImage;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setEnableInitBackground(Z)V

    .line 364
    :cond_1
    iput-boolean v11, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->misFailed:Z

    .line 440
    :goto_0
    return-void

    .line 369
    :cond_2
    :try_start_0
    const-string v7, "camera_last_file_mime"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 370
    .local v4, mimeType:Ljava/lang/String;
    if-nez v4, :cond_3

    .line 371
    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    .line 373
    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "image/jp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 375
    :cond_4
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->this$0:Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    #getter for: Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->access$000(Lcom/htc/album/TabPluginDevice/DecodePreViewImage;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 376
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->this$0:Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    #getter for: Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->access$000(Lcom/htc/album/TabPluginDevice/DecodePreViewImage;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setEnableInitBackground(Z)V

    .line 378
    :cond_5
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->misFailed:Z

    .line 379
    const-string v7, "DecodeImageThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "skip decode full screen preview photo, mimeType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->updateLastestInformation(Landroid/content/Context;)V

    goto :goto_0

    .line 383
    :cond_6
    :try_start_1
    invoke-direct {p0, v0, v3}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->updateSourceType(Landroid/content/Context;Landroid/content/Intent;)V

    .line 385
    iget-boolean v7, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->mCancel:Z

    if-ne v7, v11, :cond_8

    .line 386
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->misFailed:Z

    .line 387
    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_7

    const-string v7, "DecodeImageThread"

    const-string v8, "Thread is cancelled, so skip decode"

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 438
    :cond_7
    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->updateLastestInformation(Landroid/content/Context;)V

    goto :goto_0

    .line 391
    :cond_8
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 392
    .local v5, startTime:J
    const/4 v1, 0x0

    .line 393
    .local v1, d:Landroid/graphics/drawable/BitmapDrawable;
    iget v7, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->mSourceType:I

    packed-switch v7, :pswitch_data_0

    .line 403
    :pswitch_0
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->this$0:Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    #getter for: Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->access$000(Lcom/htc/album/TabPluginDevice/DecodePreViewImage;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 404
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->this$0:Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    #getter for: Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->access$000(Lcom/htc/album/TabPluginDevice/DecodePreViewImage;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setEnableInitBackground(Z)V

    .line 406
    :cond_9
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->misFailed:Z

    .line 407
    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_a

    const-string v7, "DecodeImageThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t find correct SourceType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->mSourceType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 438
    :cond_a
    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->updateLastestInformation(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 395
    :pswitch_1
    :try_start_3
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->mFileUri:Landroid/net/Uri;

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v8}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->decode(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 410
    :goto_1
    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_b

    const-string v7, "DecodeImageThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Decode time = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_b
    invoke-static {}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->access$100()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 413
    :try_start_4
    iget-boolean v7, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->mCancel:Z

    if-ne v7, v11, :cond_d

    .line 414
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->misFailed:Z

    .line 415
    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_c

    const-string v7, "DecodeImageThread"

    const-string v9, "Thread is cancelled, so skip setBitmap or set ContentView Background"

    invoke-static {v7, v9}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_c
    :goto_2
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 438
    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->updateLastestInformation(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 398
    :pswitch_2
    :try_start_5
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v4}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->decode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v1

    .line 399
    goto :goto_1

    .line 418
    :cond_d
    :try_start_6
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->this$0:Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    #getter for: Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->access$000(Lcom/htc/album/TabPluginDevice/DecodePreViewImage;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    move-result-object v7

    if-nez v7, :cond_f

    .line 419
    invoke-static {}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->access$200()Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 420
    invoke-static {}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->access$200()Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    move-result-object v7

    #calls: Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->setBitmap(Landroid/graphics/drawable/BitmapDrawable;)V
    invoke-static {v7, v1}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->access$300(Lcom/htc/album/TabPluginDevice/DecodePreViewImage;Landroid/graphics/drawable/BitmapDrawable;)V

    goto :goto_2

    .line 434
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 435
    .end local v1           #d:Landroid/graphics/drawable/BitmapDrawable;
    .end local v4           #mimeType:Ljava/lang/String;
    .end local v5           #startTime:J
    :catch_0
    move-exception v2

    .line 436
    .local v2, e:Ljava/lang/Exception;
    :try_start_8
    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_e

    const-string v7, "DecodeImageThread"

    const-string v8, "Can\'t finish decode QuickView: "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 438
    :cond_e
    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->updateLastestInformation(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 423
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #d:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v4       #mimeType:Ljava/lang/String;
    .restart local v5       #startTime:J
    :cond_f
    if-eqz v1, :cond_10

    :try_start_9
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->this$0:Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    #getter for: Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mFragment:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->access$400(Lcom/htc/album/TabPluginDevice/DecodePreViewImage;)Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;

    move-result-object v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->this$0:Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    #getter for: Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mFragment:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->access$400(Lcom/htc/album/TabPluginDevice/DecodePreViewImage;)Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->isGotoPause()Z

    move-result v7

    if-nez v7, :cond_10

    .line 424
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->this$0:Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    #getter for: Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->access$000(Lcom/htc/album/TabPluginDevice/DecodePreViewImage;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setInitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 425
    const/4 v1, 0x0

    .line 426
    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_c

    const-string v7, "DecodeImageThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mContentView.setInitBackgroundDrawable() drawable="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 429
    :cond_10
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->this$0:Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    #getter for: Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->access$000(Lcom/htc/album/TabPluginDevice/DecodePreViewImage;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setEnableInitBackground(Z)V

    .line 430
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/album/TabPluginDevice/DecodePreViewImage$DecodeImageThread;->misFailed:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 438
    .end local v1           #d:Landroid/graphics/drawable/BitmapDrawable;
    .end local v4           #mimeType:Ljava/lang/String;
    .end local v5           #startTime:J
    :catchall_1
    move-exception v7

    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->updateLastestInformation(Landroid/content/Context;)V

    throw v7

    .line 393
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
