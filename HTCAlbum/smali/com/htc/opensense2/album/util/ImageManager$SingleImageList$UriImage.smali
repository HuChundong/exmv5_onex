.class public Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;
.super Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UriImage"
.end annotation


# instance fields
.field protected mBestBurstPhoto:I

.field protected mBurstPhoto:I

.field private mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field private mDataPath:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mSize:J

.field final synthetic this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;


# direct methods
.method constructor <init>(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 7867
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;-><init>()V

    .line 7857
    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    .line 7858
    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    .line 7860
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mSize:J

    .line 7862
    iput v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhoto:I

    .line 7863
    iput v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBestBurstPhoto:I

    .line 7868
    return-void
.end method

.method private decodeToByteArray(Ljava/io/InputStream;)[B
    .locals 7
    .parameter "is"

    .prologue
    const/4 v4, 0x0

    .line 8299
    if-nez p1, :cond_1

    .line 8316
    :cond_0
    :goto_0
    return-object v4

    .line 8301
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 8304
    .local v3, fs:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    :try_start_0
    new-array v1, v5, [B

    .line 8306
    .local v1, data:[B
    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, count:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 8307
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 8310
    .end local v0           #count:I
    .end local v1           #data:[B
    :catch_0
    move-exception v2

    .line 8311
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "ImageManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8313
    .end local v2           #e:Ljava/lang/Exception;
    :goto_2
    if-eqz v3, :cond_0

    .line 8316
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_0

    .line 8309
    .restart local v0       #count:I
    .restart local v1       #data:[B
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private getRotateDegree()I
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 8251
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8252
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 8253
    .local v9, id:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2200(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    const-string v3, "orientation"

    aput-object v3, v2, v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 8257
    .local v6, c:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 8258
    .local v11, rotateDegree:I
    if-eqz v6, :cond_0

    .line 8259
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8260
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 8261
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 8295
    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #id:Ljava/lang/String;
    .end local v11           #rotateDegree:I
    :cond_0
    :goto_0
    return v11

    .line 8266
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8268
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getDataPath()Ljava/lang/String;

    move-result-object v10

    .line 8269
    .local v10, path:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 8270
    const/4 v11, 0x0

    .line 8272
    .restart local v11       #rotateDegree:I
    :try_start_0
    new-instance v8, Landroid/media/ExifInterface;

    invoke-direct {v8, v10}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 8273
    .local v8, exifInfo:Landroid/media/ExifInterface;
    const-string v0, "Orientation"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 8284
    :pswitch_0
    const/4 v11, 0x0

    goto :goto_0

    .line 8275
    :pswitch_1
    const/16 v11, 0x5a

    .line 8276
    goto :goto_0

    .line 8278
    :pswitch_2
    const/16 v11, 0xb4

    .line 8279
    goto :goto_0

    .line 8281
    :pswitch_3
    const/16 v11, 0x10e

    .line 8282
    goto :goto_0

    .line 8288
    .end local v8           #exifInfo:Landroid/media/ExifInterface;
    :catch_0
    move-exception v7

    .line 8289
    .local v7, e:Ljava/lang/Exception;
    const/4 v11, 0x0

    goto :goto_0

    .line 8273
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private heapBasedComputeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 25
    .parameter "options"
    .parameter "target"

    .prologue
    .line 8196
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v20, v0

    .line 8197
    .local v20, w:I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 8199
    .local v11, h:I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 8200
    .local v4, candidateW:I
    int-to-float v0, v11

    move/from16 v21, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 8202
    .local v3, candidateH:I
    const-string v21, "ImageManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "candidateW "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " candidateH "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8204
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 8206
    .local v2, candidate:I
    if-nez v2, :cond_0

    .line 8207
    const/16 v21, 0x1

    .line 8247
    :goto_0
    return v21

    .line 8209
    :cond_0
    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v2, v0, :cond_1

    .line 8210
    move/from16 v0, v20

    move/from16 v1, p2

    if-le v0, v1, :cond_1

    div-int v21, v20, v2

    move/from16 v0, v21

    move/from16 v1, p2

    if-ge v0, v1, :cond_1

    .line 8211
    add-int/lit8 v2, v2, -0x1

    .line 8214
    :cond_1
    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v2, v0, :cond_2

    .line 8215
    move/from16 v0, p2

    if-le v11, v0, :cond_2

    div-int v21, v11, v2

    move/from16 v0, v21

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    .line 8216
    add-int/lit8 v2, v2, -0x1

    .line 8226
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v17

    .line 8227
    .local v17, runtime:Ljava/lang/Runtime;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v9

    .line 8228
    .local v9, currentHeap:J
    const-wide/32 v14, 0x1000000

    .line 8229
    .local v14, maxSize:J
    sub-long v12, v14, v9

    .line 8230
    .local v12, leftMemory:J
    const-string v21, "ImageManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "current Heap "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " left memory "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8231
    const-wide/16 v18, 0x0

    .line 8233
    .local v18, totalPixels:J
    const/16 v16, 0x3

    .line 8235
    .local v16, resampleTryCount:I
    add-int/lit8 v2, v2, -0x1

    .line 8237
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 8238
    div-int v21, v20, v2

    move/from16 v0, v21

    int-to-long v7, v0

    .line 8239
    .local v7, curW:J
    div-int v21, v11, v2

    move/from16 v0, v21

    int-to-long v5, v0

    .line 8240
    .local v5, curH:J
    mul-long v21, v7, v5

    const-wide/16 v23, 0x2

    mul-long v18, v21, v23

    .line 8241
    const-string v21, "ImageManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "candidate "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " curW "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", curH "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8242
    cmp-long v21, v18, v12

    if-lez v21, :cond_4

    add-int/lit8 v16, v16, -0x1

    if-gtz v16, :cond_3

    .line 8244
    :cond_4
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 8245
    const-string v21, "ImageManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "for w/h "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " returning "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    div-int v23, v20, v2

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " / "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    div-int v23, v11, v2

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move/from16 v21, v2

    .line 8247
    goto/16 :goto_0
.end method

.method private initBurst()V
    .locals 13

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 8880
    const/4 v10, 0x0

    .line 8882
    .local v10, isInit:Z
    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhoto:I

    .line 8883
    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBestBurstPhoto:I

    .line 8885
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 8886
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 8887
    monitor-enter v6

    .line 8888
    const/4 v11, 0x0

    .line 8891
    .local v11, moved:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getRow()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 8897
    :goto_0
    if-ne v3, v11, :cond_0

    .line 8898
    :try_start_1
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->indexFavorite()I

    move-result v9

    .line 8899
    .local v9, indexFavorite:I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 8900
    .local v12, nValue:I
    const/4 v0, 0x0

    invoke-virtual {p0, v12, v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->setAsBurstPhoto(IZ)V

    .line 8901
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ImageManager][initBurst]: mBurstPhoto="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhoto:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBestBurstPhoto="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBestBurstPhoto:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8902
    const/4 v10, 0x1

    .line 8904
    .end local v9           #indexFavorite:I
    .end local v12           #nValue:I
    :cond_0
    monitor-exit v6

    .line 8907
    .end local v11           #moved:Z
    :cond_1
    if-ne v10, v3, :cond_3

    .line 8926
    :cond_2
    :goto_1
    return-void

    .line 8893
    .restart local v11       #moved:Z
    :catch_0
    move-exception v7

    .line 8894
    .local v7, e:Ljava/lang/Exception;
    const/4 v11, 0x0

    goto :goto_0

    .line 8904
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 8910
    .end local v11           #moved:Z
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2200(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "favorite"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 8915
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8917
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 8918
    .restart local v12       #nValue:I
    const/4 v0, 0x0

    invoke-virtual {p0, v12, v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->setAsBurstPhoto(IZ)V

    .line 8919
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ImageManager][initBurst]: query mBurstPhoto="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhoto:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBestBurstPhoto="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBestBurstPhoto:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 8924
    .end local v12           #nValue:I
    :cond_4
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 8921
    :catch_1
    move-exception v8

    .line 8922
    .local v8, ex:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 8924
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private setupProperties()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 8677
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 8679
    const-string v0, " "

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    .line 8680
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    .line 8722
    :cond_0
    :goto_0
    return-void

    .line 8684
    :cond_1
    const-string v0, "file"

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8686
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    .line 8687
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 8689
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8690
    const-string v0, "image/jps"

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    .line 8712
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 8714
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v7

    .line 8715
    .local v7, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz v7, :cond_7

    iget-object v0, v7, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    :goto_2
    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    .line 8718
    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getDisplayImageSourceType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 8720
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    goto :goto_0

    .line 8691
    :cond_4
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mpo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8692
    const-string v0, "image/mpo"

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    goto :goto_1

    .line 8695
    :cond_5
    const-string v0, "media"

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8697
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2200(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "mime_type"

    aput-object v4, v2, v8

    const-string v4, "_data"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 8701
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 8703
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8705
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    .line 8706
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    .line 8708
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 8715
    .end local v6           #cur:Landroid/database/Cursor;
    .restart local v7       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_7
    const-string v0, ""

    goto :goto_2
.end method

.method private snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 8612
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 8613
    .local v1, input:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    .line 8627
    :cond_0
    :goto_0
    return-object v2

    .line 8616
    :cond_1
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 8617
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 8618
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8622
    if-eqz v1, :cond_0

    .line 8623
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 8625
    :catch_0
    move-exception v0

    .line 8626
    .local v0, ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 8621
    .end local v0           #ex:Ljava/io/IOException;
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v3

    .line 8622
    if-eqz v1, :cond_2

    .line 8623
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 8627
    :cond_2
    :goto_1
    throw v3

    .line 8625
    :catch_1
    move-exception v0

    .line 8626
    .restart local v0       #ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public collapse(Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;)V
    .locals 3
    .parameter "srcImageList"

    .prologue
    .line 8980
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->isBurstPhoto()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8999
    :cond_0
    :goto_0
    return-void

    .line 8983
    :cond_1
    const/4 v0, 0x0

    .line 8984
    .local v0, burstImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v1, :cond_4

    .line 8985
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 8991
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 8992
    invoke-virtual {p1, v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->removeExpandBurstImages(Lcom/htc/opensense2/album/util/ImageManager$IImageList;)V

    .line 8995
    :cond_3
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->isReleased()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8996
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 8997
    const/4 v0, 0x0

    goto :goto_0

    .line 8987
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->isExpanded()Z

    move-result v2

    if-ne v1, v2, :cond_2

    .line 8988
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    goto :goto_1
.end method

.method public expand(ILcom/htc/opensense2/album/util/ImageManager$ImageListUber;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 12
    .parameter "index"
    .parameter "destImageList"

    .prologue
    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 9005
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->isBurstPhoto()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v11

    .line 9059
    :goto_0
    return-object v0

    .line 9009
    :cond_0
    const/4 v8, 0x0

    .line 9011
    .local v8, covertFilePath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->isBestBurstPhoto()Z

    move-result v0

    if-ne v1, v0, :cond_1

    .line 9012
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getDataPath()Ljava/lang/String;

    move-result-object v8

    .line 9015
    :cond_1
    if-nez v8, :cond_2

    move-object v0, v11

    .line 9016
    goto :goto_0

    .line 9019
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->isReleased()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9020
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    goto :goto_0

    .line 9022
    :cond_3
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->isExpanded()Z

    move-result v0

    if-ne v1, v0, :cond_4

    .line 9023
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    goto :goto_0

    .line 9026
    :cond_4
    const/4 v10, 0x0

    .line 9027
    .local v10, name:Ljava/lang/String;
    const/4 v7, 0x0

    .line 9029
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2200(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "bucket_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 9035
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9036
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 9044
    :goto_1
    if-eqz v7, :cond_5

    .line 9045
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 9049
    :cond_5
    :goto_2
    if-nez v10, :cond_8

    move-object v0, v11

    goto :goto_0

    .line 9038
    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    .line 9040
    :catch_0
    move-exception v9

    .line 9041
    .local v9, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[expanded] Got exception, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9042
    const/4 v10, 0x0

    .line 9044
    if-eqz v7, :cond_5

    .line 9045
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 9044
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_7

    .line 9045
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 9051
    :cond_8
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 9052
    .local v6, b:Landroid/os/Bundle;
    const-string v0, "key_BurstShot_CoverFilePath"

    invoke-virtual {v6, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9053
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    iget-object v1, v1, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContext:Landroid/content/Context;

    sget v2, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    invoke-virtual {v0, v1, v2, v10, v6}, Lcom/htc/opensense2/album/util/ImageManager;->burstImages(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 9055
    if-eqz p2, :cond_9

    .line 9056
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {p2, p1, v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->addExpandBurstImages(ILcom/htc/opensense2/album/util/ImageManager$IImageList;)V

    .line 9059
    :cond_9
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    goto/16 :goto_0
.end method

.method public fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .locals 16
    .parameter "targetWidthHeight"

    .prologue
    .line 7950
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v12}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v12

    const-string v13, "drm"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 7951
    const/4 v6, 0x0

    .line 7952
    .local v6, is:Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2000(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmState(Landroid/content/Context;Landroid/net/Uri;Z)I

    move-result v10

    .line 7953
    .local v10, state:I
    if-nez v10, :cond_0

    .line 7954
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2000(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmImageContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 7956
    :cond_0
    if-nez v6, :cond_1

    .line 7957
    const/4 v3, 0x0

    .line 8062
    .end local v6           #is:Ljava/io/InputStream;
    .end local v10           #state:I
    :goto_0
    return-object v3

    .line 7958
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v10       #state:I
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->decodeToByteArray(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 7959
    .local v2, bitmapData:[B
    if-nez v2, :cond_2

    .line 7960
    const/4 v3, 0x0

    goto :goto_0

    .line 7963
    :cond_2
    const/4 v3, 0x0

    .line 7965
    .local v3, bmp:Landroid/graphics/Bitmap;
    const/16 v12, 0x1f4

    move/from16 v0, p1

    if-le v0, v12, :cond_3

    .line 7966
    const/4 v12, 0x0

    :try_start_0
    array-length v13, v2

    const/4 v14, 0x0

    invoke-static {v2, v12, v13, v14}, Lcom/htc/opensense2/album/util/BitmapUtil2;->DecodeStreamBySkia([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    .line 7976
    :goto_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 7977
    :catch_0
    move-exception v4

    .line 7978
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 7968
    .end local v4           #e:Ljava/io/IOException;
    :cond_3
    const/4 v12, 0x0

    :try_start_2
    array-length v13, v2

    invoke-static {v2, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v3

    goto :goto_1

    .line 7970
    :catch_1
    move-exception v5

    .line 7971
    .local v5, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v12, "ImageManager"

    const-string v13, "decrpty input stream error"

    invoke-static {v12, v13, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7976
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 7977
    :catch_2
    move-exception v4

    .line 7978
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 7972
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v5

    .line 7973
    .local v5, ex:Ljava/lang/OutOfMemoryError;
    :try_start_5
    const-string v12, "ImageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[fullSizeBitmap] got OutOfMemoryError "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 7976
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 7977
    :catch_4
    move-exception v4

    .line 7978
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 7975
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #ex:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v12

    .line 7976
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 7979
    :goto_2
    throw v12

    .line 7977
    :catch_5
    move-exception v4

    .line 7978
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 7985
    .end local v2           #bitmapData:[B
    .end local v3           #bmp:Landroid/graphics/Bitmap;
    .end local v4           #e:Ljava/io/IOException;
    .end local v6           #is:Ljava/io/InputStream;
    .end local v10           #state:I
    :cond_4
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 7986
    .local v8, pfdInput:Landroid/os/ParcelFileDescriptor;
    if-eqz v8, :cond_9

    .line 7987
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getMimeType()Ljava/lang/String;

    move-result-object v12

    const-wide/32 v13, 0x1400000

    invoke-static {v8, v12, v13, v14}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isOverSizeCheckingByMimeTypeAndLimit(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;J)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 7988
    const/4 v3, 0x0

    goto :goto_0

    .line 7991
    :cond_5
    const-string v12, "ImageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "view single image "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v14}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " data available "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7998
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 7999
    .local v7, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v12, 0x1

    iput-boolean v12, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 8000
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13, v7}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 8002
    const-string v12, "ImageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "view single image, file resolution "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8003
    const/4 v12, -0x1

    move/from16 v0, p1

    if-eq v0, v12, :cond_6

    .line 8004
    move/from16 v0, p1

    invoke-static {v7, v0}, Lcom/htc/opensense2/album/util/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v12

    iput v12, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 8006
    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v13, 0x1

    if-ge v12, v13, :cond_6

    .line 8007
    const/4 v12, 0x1

    iput v12, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 8010
    :cond_6
    const/4 v12, 0x0

    iput-boolean v12, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 8011
    const/4 v12, 0x0

    iput-boolean v12, v7, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 8016
    sget-object v12, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v12, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 8017
    const/4 v1, 0x0

    .line 8029
    .local v1, b:Landroid/graphics/Bitmap;
    const/16 v12, 0x1f4

    move/from16 v0, p1

    if-le v0, v12, :cond_a

    .line 8030
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-static {v12, v7}, Lcom/htc/opensense2/album/util/BitmapUtil2;->DecodeFDBySkia(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 8035
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getRotateDegree()I

    move-result v9

    .line 8040
    .local v9, rotateDegree:I
    if-gez v9, :cond_7

    .line 8041
    add-int/lit16 v9, v9, 0x168

    .line 8043
    :cond_7
    if-eqz v9, :cond_8

    .line 8045
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    mul-int/2addr v12, v13

    mul-int/lit8 v11, v12, 0x4

    .line 8046
    .local v11, totalMemory:I
    const/high16 v12, 0x70

    if-lt v11, v12, :cond_b

    .line 8047
    const-string v12, "ImageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "the bitmap heap will increase "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " after load bitmap"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8048
    invoke-static {v1, v9}, Lcom/htc/opensense2/album/util/ImageManager;->rotateIgnoreJavaHeap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 8054
    .end local v11           #totalMemory:I
    :cond_8
    :goto_4
    const-string v12, "ImageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "B: got bitmap "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " with sampleSize "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    .line 8056
    goto/16 :goto_0

    .line 7995
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v9           #rotateDegree:I
    :cond_9
    const-string v12, "ImageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "view single image "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v14}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " data available "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7996
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 8032
    .restart local v1       #b:Landroid/graphics/Bitmap;
    .restart local v7       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_a
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13, v7}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_3

    .line 8050
    .restart local v9       #rotateDegree:I
    .restart local v11       #totalMemory:I
    :cond_b
    invoke-static {v1, v9}, Lcom/htc/opensense2/album/util/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_7

    move-result-object v1

    goto :goto_4

    .line 8057
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v8           #pfdInput:Landroid/os/ParcelFileDescriptor;
    .end local v9           #rotateDegree:I
    .end local v11           #totalMemory:I
    :catch_6
    move-exception v5

    .line 8058
    .local v5, ex:Ljava/lang/Exception;
    const-string v12, "ImageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "got exception decoding bitmap "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8059
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 8060
    .end local v5           #ex:Ljava/lang/Exception;
    :catch_7
    move-exception v5

    .line 8061
    .local v5, ex:Ljava/lang/OutOfMemoryError;
    const-string v12, "ImageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[fullSizeBitmap]2 got OutOfMemoryError "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8062
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public fullSizeBitmap_cancelable(I)Lcom/htc/opensense2/album/util/ImageManager$IGetBitmap_cancelable;
    .locals 7
    .parameter "targetWidthOrHeight"

    .prologue
    const/4 v2, 0x0

    .line 8360
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 8361
    .local v1, pfdInput:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_0

    .line 8368
    .end local v1           #pfdInput:Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-object v2

    .line 8364
    .restart local v1       #pfdInput:Landroid/os/ParcelFileDescriptor;
    :cond_0
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inputStream is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mUri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " available data "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8365
    new-instance v3, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;

    invoke-direct {v3, p0, v1, p1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;-><init>(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;Landroid/os/ParcelFileDescriptor;I)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 8366
    .end local v1           #pfdInput:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 8367
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 8469
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 8439
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mbViewSingleImage:Z
    invoke-static {v4}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2300(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mbShareAndDelete:Z
    invoke-static {v4}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2400(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8441
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 8442
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8463
    .end local v0           #c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v3

    .line 8444
    .restart local v0       #c:Landroid/database/Cursor;
    :cond_1
    monitor-enter v0

    .line 8449
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 8456
    .local v2, moved:Z
    if-eqz v2, :cond_2

    .line 8457
    :try_start_1
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    iget-object v3, v3, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    iget v4, v4, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->INDEX_ID:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    monitor-exit v0

    goto :goto_0

    .line 8458
    .end local v2           #moved:Z
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 8451
    :catch_0
    move-exception v1

    .line 8453
    .local v1, ex:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 8454
    monitor-exit v0

    goto :goto_0

    .line 8458
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v2       #moved:Z
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 8463
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #moved:Z
    :cond_3
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8739
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7880
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 7881
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    .line 7885
    :goto_0
    return-object v0

    .line 7883
    :cond_0
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->setupProperties()V

    .line 7885
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDateAdded()J
    .locals 2

    .prologue
    .line 8763
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDateModified()J
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 8744
    const-wide/16 v7, 0x0

    .line 8745
    .local v7, dateModified:J
    const-string v0, "media"

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8747
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2200(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "date_modified"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 8750
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 8752
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8754
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 8756
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 8759
    .end local v6           #cur:Landroid/database/Cursor;
    :cond_1
    return-wide v7
.end method

.method public getDateTaken()J
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 9070
    const-wide/16 v7, 0x0

    .line 9071
    .local v7, dateTaken:J
    const-string v0, "media"

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9073
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2200(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "datetaken"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 9076
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 9078
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9080
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 9082
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 9085
    .end local v6           #cur:Landroid/database/Cursor;
    :cond_1
    return-wide v7
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 8769
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getRotateDegree()I

    move-result v0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8588
    const-string v0, ""

    return-object v0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 8797
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 8791
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageSourceType()I
    .locals 2

    .prologue
    .line 8775
    const-string v0, "media"

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file"

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8778
    :cond_0
    const/4 v0, 0x0

    .line 8785
    :goto_0
    return v0

    .line 8780
    :cond_1
    const-string v0, "http"

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https"

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8782
    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    .line 8785
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v4, 0x0

    const/4 v14, 0x1

    const/4 v1, -0x1

    .line 8549
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 8551
    const-string v8, " "

    .line 8583
    :cond_0
    :goto_0
    return-object v8

    .line 8554
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    .line 8555
    .local v13, uriPath:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 8556
    .local v6, authority:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    .line 8557
    .local v11, scheme:Ljava/lang/String;
    const-string v8, " "

    .line 8559
    .local v8, displayName:Ljava/lang/String;
    const-string v0, "media"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8561
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    .line 8562
    .local v10, id:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2200(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const-string v3, "_display_name"

    aput-object v3, v2, v14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 8566
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 8568
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8569
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 8570
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 8573
    .end local v7           #c:Landroid/database/Cursor;
    .end local v10           #id:Ljava/lang/String;
    :cond_3
    const-string v0, "file"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8575
    const/16 v0, 0x2f

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    .line 8576
    .local v12, start:I
    const/16 v0, 0x2e

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 8577
    .local v9, end:I
    if-eq v1, v12, :cond_0

    if-eq v1, v9, :cond_0

    if-le v9, v12, :cond_0

    .line 8579
    add-int/lit8 v0, v12, 0x1

    invoke-virtual {v13, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 8726
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 8727
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getInputStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 7895
    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7896
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 7897
    .local v1, path:Ljava/lang/String;
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7898
    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "path is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7899
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 7905
    .end local v1           #path:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 7901
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2200(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 7903
    :catch_0
    move-exception v0

    .line 7904
    .local v0, ex:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 7905
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8667
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 8668
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    .line 8672
    :goto_0
    return-object v0

    .line 8670
    :cond_0
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->setupProperties()V

    .line 8672
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method getPFD()Landroid/os/ParcelFileDescriptor;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 7927
    :try_start_0
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 7928
    .local v2, scheme:Ljava/lang/String;
    const-string v4, "file"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "http"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "https"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7929
    :cond_0
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    .line 7930
    .local v1, path:Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x1000

    invoke-static {v4, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 7939
    .end local v1           #path:Ljava/lang/String;
    .end local v2           #scheme:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 7929
    .restart local v2       #scheme:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 7932
    :cond_2
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2200(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "r"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_1

    .line 7934
    .end local v2           #scheme:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 7935
    .local v0, ex:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 7937
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 7938
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getSize()J
    .locals 10

    .prologue
    .line 8406
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 8407
    iget-wide v8, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mSize:J

    .line 8433
    :goto_0
    return-wide v8

    .line 8411
    :cond_0
    const/4 v6, 0x0

    .line 8412
    .local v6, c:Landroid/database/Cursor;
    const-wide/16 v8, -0x1

    .line 8414
    .local v8, size:J
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2200(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_size"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 8419
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8420
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 8429
    :goto_1
    if-eqz v6, :cond_1

    .line 8430
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 8432
    :cond_1
    :goto_2
    iput-wide v8, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mSize:J

    goto :goto_0

    .line 8422
    :cond_2
    const-wide/16 v8, -0x1

    goto :goto_1

    .line 8424
    :catch_0
    move-exception v7

    .line 8425
    .local v7, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8426
    const-wide/16 v8, -0x1

    .line 8429
    if-eqz v6, :cond_1

    .line 8430
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 8429
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 8430
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 8525
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8526
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 8527
    .local v7, id:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2200(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const-string v3, "title"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 8531
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8532
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 8533
    .local v8, title:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 8542
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #id:Ljava/lang/String;
    .end local v8           #title:Ljava/lang/String;
    :goto_0
    return-object v8

    .line 8536
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #id:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 8537
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 8538
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 8542
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #id:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 8732
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 8733
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public heapBasedfullSizeBitmap(I)Landroid/graphics/Bitmap;
    .locals 17
    .parameter "targetWidthHeight"

    .prologue
    .line 8074
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v13}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v13

    const-string v14, "drm"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 8075
    const/4 v7, 0x0

    .line 8076
    .local v7, is:Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2000(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmState(Landroid/content/Context;Landroid/net/Uri;Z)I

    move-result v11

    .line 8077
    .local v11, state:I
    if-nez v11, :cond_0

    .line 8078
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2000(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmImageContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    .line 8080
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->decodeToByteArray(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 8082
    .local v3, bitmapData:[B
    if-nez v3, :cond_1

    .line 8083
    const/4 v4, 0x0

    .line 8188
    .end local v3           #bitmapData:[B
    .end local v7           #is:Ljava/io/InputStream;
    .end local v11           #state:I
    :goto_0
    return-object v4

    .line 8086
    .restart local v3       #bitmapData:[B
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v11       #state:I
    :cond_1
    const/4 v4, 0x0

    .line 8091
    .local v4, bmp:Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    :try_start_0
    array-length v14, v3

    invoke-static {v3, v13, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    .line 8099
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 8100
    :catch_0
    move-exception v5

    .line 8101
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 8093
    .end local v5           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 8094
    .local v6, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v13, "ImageManager"

    const-string v14, "decrpty input stream error"

    invoke-static {v13, v14, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8099
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 8100
    :catch_2
    move-exception v5

    .line 8101
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 8095
    .end local v5           #e:Ljava/io/IOException;
    .end local v6           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v6

    .line 8096
    .local v6, ex:Ljava/lang/OutOfMemoryError;
    :try_start_4
    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[heapBasedfullSizeBitmap] got OutOfMemoryError "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 8099
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 8100
    :catch_4
    move-exception v5

    .line 8101
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 8098
    .end local v5           #e:Ljava/io/IOException;
    .end local v6           #ex:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v13

    .line 8099
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 8102
    :goto_1
    throw v13

    .line 8100
    :catch_5
    move-exception v5

    .line 8101
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 8108
    .end local v3           #bitmapData:[B
    .end local v4           #bmp:Landroid/graphics/Bitmap;
    .end local v5           #e:Ljava/io/IOException;
    .end local v7           #is:Ljava/io/InputStream;
    .end local v11           #state:I
    :cond_2
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    .line 8109
    .local v9, pfdInput:Landroid/os/ParcelFileDescriptor;
    if-eqz v9, :cond_7

    .line 8110
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getMimeType()Ljava/lang/String;

    move-result-object v13

    const-wide/32 v14, 0x1400000

    invoke-static {v9, v13, v14, v15}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isOverSizeCheckingByMimeTypeAndLimit(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;J)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 8111
    const/4 v4, 0x0

    goto :goto_0

    .line 8114
    :cond_3
    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "view single image "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v15}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " data available "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8119
    :goto_2
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 8120
    .local v8, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v13, 0x1

    iput-boolean v13, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 8121
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14, v8}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 8123
    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "view single image, file resolution "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8124
    const/4 v13, -0x1

    move/from16 v0, p1

    if-eq v0, v13, :cond_4

    .line 8125
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v8, v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->heapBasedComputeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v13

    iput v13, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 8127
    iget v13, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v14, 0x1

    if-ge v13, v14, :cond_4

    .line 8128
    const/4 v13, 0x1

    iput v13, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 8131
    :cond_4
    const/4 v13, 0x0

    iput-boolean v13, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 8132
    const/4 v13, 0x0

    iput-boolean v13, v8, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 8137
    sget-object v13, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v13, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 8138
    const/4 v2, 0x0

    .line 8153
    .local v2, b:Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14, v8}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 8154
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 8157
    invoke-direct/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getRotateDegree()I

    move-result v10

    .line 8163
    .local v10, rotateDegree:I
    if-gez v10, :cond_5

    .line 8164
    add-int/lit16 v10, v10, 0x168

    .line 8166
    :cond_5
    if-eqz v10, :cond_6

    .line 8168
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    mul-int/2addr v13, v14

    mul-int/lit8 v12, v13, 0x4

    .line 8169
    .local v12, totalMemory:I
    const/high16 v13, 0x70

    if-lt v12, v13, :cond_8

    .line 8170
    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "the bitmap heap will increase "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " after load bitmap"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8171
    invoke-static {v2, v10}, Lcom/htc/opensense2/album/util/ImageManager;->rotateIgnoreJavaHeap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 8178
    .end local v12           #totalMemory:I
    :cond_6
    :goto_3
    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "B: got bitmap "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " with sampleSize "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v2

    .line 8182
    goto/16 :goto_0

    .line 8117
    .end local v2           #b:Landroid/graphics/Bitmap;
    .end local v8           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v10           #rotateDegree:I
    :cond_7
    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "view single image "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v15}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " data available "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_2

    .line 8183
    .end local v9           #pfdInput:Landroid/os/ParcelFileDescriptor;
    :catch_6
    move-exception v6

    .line 8184
    .local v6, ex:Ljava/lang/Exception;
    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "got exception decoding bitmap "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8185
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 8173
    .end local v6           #ex:Ljava/lang/Exception;
    .restart local v2       #b:Landroid/graphics/Bitmap;
    .restart local v8       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v9       #pfdInput:Landroid/os/ParcelFileDescriptor;
    .restart local v10       #rotateDegree:I
    .restart local v12       #totalMemory:I
    :cond_8
    :try_start_8
    invoke-static {v2, v10}, Lcom/htc/opensense2/album/util/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_7

    move-result-object v2

    goto :goto_3

    .line 8186
    .end local v2           #b:Landroid/graphics/Bitmap;
    .end local v8           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v9           #pfdInput:Landroid/os/ParcelFileDescriptor;
    .end local v10           #rotateDegree:I
    .end local v12           #totalMemory:I
    :catch_7
    move-exception v6

    .line 8187
    .local v6, ex:Ljava/lang/OutOfMemoryError;
    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[heapBasedfullSizeBitmap]2 got OutOfMemoryError "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8188
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public imageId()J
    .locals 10

    .prologue
    .line 8474
    const/4 v6, 0x0

    .line 8475
    .local v6, cursor:Landroid/database/Cursor;
    const-wide/16 v8, 0x0

    .line 8478
    .local v8, imageId:J
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2200(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 8482
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8484
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 8495
    :cond_0
    if-eqz v6, :cond_1

    .line 8496
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 8499
    :cond_1
    :goto_0
    return-wide v8

    .line 8489
    :catch_0
    move-exception v7

    .line 8491
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AlbumObjectManager][imageId]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8495
    if-eqz v6, :cond_1

    .line 8496
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 8495
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 8496
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public is3D()Z
    .locals 5

    .prologue
    .line 8838
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getMimeType()Ljava/lang/String;

    .line 8840
    sget-object v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->MIME_3D_IMAGE_TYPES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 8842
    .local v3, mime:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8843
    const/4 v4, 0x1

    .line 8846
    .end local v3           #mime:Ljava/lang/String;
    :goto_1
    return v4

    .line 8840
    .restart local v3       #mime:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8846
    .end local v3           #mime:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public is3DJPS()Z
    .locals 2

    .prologue
    .line 8851
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getMimeType()Ljava/lang/String;

    .line 8853
    const-string v0, "image/jps"

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "image/x-jps"

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8856
    :cond_0
    const/4 v0, 0x1

    .line 8859
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBestBurstPhoto()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8943
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->FLAG_ENABLE_BURSTSHOT_MODE:Z

    if-nez v2, :cond_1

    .line 8955
    :cond_0
    :goto_0
    return v1

    .line 8947
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->isBurstPhoto()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8951
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBestBurstPhoto:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 8952
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->initBurst()V

    .line 8955
    :cond_2
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBestBurstPhoto:I

    if-ne v2, v0, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public isBurstPhoto()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8930
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->FLAG_ENABLE_BURSTSHOT_MODE:Z

    if-nez v2, :cond_0

    .line 8938
    :goto_0
    return v1

    .line 8934
    :cond_0
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhoto:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 8935
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->initBurst()V

    .line 8938
    :cond_1
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhoto:I

    if-ne v2, v0, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public isDrm()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 8651
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    .line 8655
    :cond_0
    :goto_0
    return v0

    .line 8653
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8654
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isExpanded()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 8960
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->isBurstPhoto()Z

    move-result v2

    if-nez v2, :cond_1

    .line 8975
    :cond_0
    :goto_0
    return v0

    .line 8968
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->isReleased()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 8969
    goto :goto_0

    .line 8971
    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v2

    instance-of v2, v2, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;

    if-eqz v2, :cond_0

    move v0, v1

    .line 8972
    goto :goto_0
.end method

.method public isFavorite()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 8375
    const/4 v6, 0x0

    .line 8376
    .local v6, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 8378
    .local v8, isFavorite:Z
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$2200(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "favorite"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 8383
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8385
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 8386
    .local v9, nValue:I
    and-int/lit8 v0, v9, 0x1

    if-ne v0, v10, :cond_1

    move v8, v10

    .line 8387
    :goto_0
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AlbumObjectManager][isFavorite]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8397
    .end local v9           #nValue:I
    :goto_1
    if-eqz v6, :cond_0

    .line 8398
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 8401
    :cond_0
    :goto_2
    return v8

    .restart local v9       #nValue:I
    :cond_1
    move v8, v11

    .line 8386
    goto :goto_0

    .line 8391
    .end local v9           #nValue:I
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 8393
    :catch_0
    move-exception v7

    .line 8394
    .local v7, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8395
    const/4 v8, 0x0

    .line 8397
    if-eqz v6, :cond_0

    .line 8398
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 8397
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 8398
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public isFileExists()Z
    .locals 3

    .prologue
    .line 7911
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 7912
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 7913
    .local v0, bExist:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 7916
    :try_start_0
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7922
    :cond_0
    :goto_1
    return v0

    .line 7912
    .end local v0           #bExist:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 7917
    .restart local v0       #bExist:Z
    :catch_0
    move-exception v1

    .line 7919
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public isGif()Z
    .locals 2

    .prologue
    .line 8641
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 8642
    .local v0, mimeType:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 8643
    const-string v1, "image/gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 8645
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInked()Z
    .locals 1

    .prologue
    .line 8826
    const/4 v0, 0x0

    .line 8828
    .local v0, bResult:Z
    return v0
.end method

.method public isPlayable()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 8802
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->isGif()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8803
    iget v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mGifFrameCount:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 8804
    new-instance v2, Landroid/webkit/GIFImageParser;

    invoke-direct {v2}, Landroid/webkit/GIFImageParser;-><init>()V

    .line 8805
    .local v2, parser:Landroid/webkit/GIFImageParser;
    const/4 v0, 0x0

    .line 8807
    .local v0, byteArray:[B
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->decodeToByteArray(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 8811
    :goto_0
    if-eqz v0, :cond_0

    .line 8812
    invoke-virtual {v2, v0}, Landroid/webkit/GIFImageParser;->setRawData([B)V

    .line 8813
    invoke-virtual {v2}, Landroid/webkit/GIFImageParser;->frameCount()I

    move-result v4

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mGifFrameCount:I

    .line 8816
    .end local v0           #byteArray:[B
    .end local v2           #parser:Landroid/webkit/GIFImageParser;
    :cond_0
    iget v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mGifFrameCount:I

    if-le v4, v3, :cond_1

    .line 8820
    :goto_1
    return v3

    .line 8808
    .restart local v0       #byteArray:[B
    .restart local v2       #parser:Landroid/webkit/GIFImageParser;
    :catch_0
    move-exception v1

    .line 8809
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v4, "ImageManager"

    const-string v5, "out of memory"

    invoke-static {v4, v5, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8820
    .end local v0           #byteArray:[B
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .end local v2           #parser:Landroid/webkit/GIFImageParser;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isSharable()Z
    .locals 1

    .prologue
    .line 7875
    const/4 v0, 0x1

    return v0
.end method

.method public isVideo()Z
    .locals 2

    .prologue
    .line 8632
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 8633
    .local v0, mimeType:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 8634
    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 8636
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 8520
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public scaladoThumbBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 8503
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 8504
    .local v1, pfdInput:Landroid/os/ParcelFileDescriptor;
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 8505
    .local v0, b:Landroid/graphics/Bitmap;
    const/16 v2, 0x1f

    .line 8506
    .local v2, res:I
    if-eqz v1, :cond_0

    .line 8507
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getRotateDegree()I

    move-result v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->LoadImageStream(Ljava/io/FileDescriptor;ILandroid/graphics/Bitmap;)I

    move-result v2

    .line 8509
    :cond_0
    const/16 v3, -0xff

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-gtz v3, :cond_2

    .line 8510
    :cond_1
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decode by scalado fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8511
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 8512
    const/4 v0, 0x0

    .line 8513
    const/4 v3, 0x0

    .line 8516
    :goto_0
    return-object v3

    :cond_2
    move-object v3, v0

    goto :goto_0
.end method

.method public setAsBestBurstPhoto()V
    .locals 0

    .prologue
    .line 9064
    return-void
.end method

.method public setAsBurstPhoto(IZ)V
    .locals 4
    .parameter "favoriteFieldValue"
    .parameter "forceUpdate"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8864
    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 8865
    iput v3, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhoto:I

    .line 8871
    :goto_0
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 8872
    iput v3, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBestBurstPhoto:I

    .line 8877
    :goto_1
    return-void

    .line 8868
    :cond_0
    iput v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBurstPhoto:I

    goto :goto_0

    .line 8875
    :cond_1
    iput v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mBestBurstPhoto:I

    goto :goto_1
.end method

.method public setDataPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 7890
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    .line 7891
    return-void
.end method

.method public setInked(I)V
    .locals 0
    .parameter "nInked"

    .prologue
    .line 8833
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 1
    .parameter "mime"

    .prologue
    .line 8660
    if-eqz p1, :cond_0

    .line 8661
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    .line 8662
    :cond_0
    return-void
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 8592
    const/16 v2, 0x140

    invoke-virtual {p0, v2}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 8593
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 8594
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 8595
    .local v5, m:Landroid/graphics/Matrix;
    const/high16 v2, 0x3f80

    const/high16 v4, 0x43a0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 8596
    .local v7, scale:F
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 8598
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 8599
    .local v3, width:I
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->is3DJPS()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8601
    div-int/lit8 v3, v3, 0x2

    .line 8604
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 8607
    .end local v3           #width:I
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #scale:F
    :goto_0
    return-object v8

    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method
