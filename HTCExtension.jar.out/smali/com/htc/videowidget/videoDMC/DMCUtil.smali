.class public Lcom/htc/videowidget/videoDMC/DMCUtil;
.super Ljava/lang/Object;
.source "DMCUtil.java"


# static fields
.field private static final FILE_SIZE_HEADER_OFFSET:B = 0x46t

.field private static final FILE_SIZE_HEADER_SIZE:B = 0x8t

.field private static final KEY_PATH:Ljava/lang/String; = "path"

.field private static final PrefFileName:Ljava/lang/String; = "pref_outputing"

.field private static final TAG:Ljava/lang/String; = "DMCUtil"

.field private static maxFileSizeMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final strPrefDLNASessionCookieName:Ljava/lang/String; = "PrefDLNASessionCookie"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/videowidget/videoDMC/DMCUtil;->maxFileSizeMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static areSame([B[BI)Z
    .locals 3
    .parameter "buf"
    .parameter "pattern"
    .parameter "indexInBuf"

    .prologue
    .line 343
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 345
    add-int v1, p2, v0

    aget-byte v1, p0, v1

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_0

    .line 347
    const/4 v1, 0x0

    .line 350
    :goto_1
    return v1

    .line 343
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 350
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static byteArrayToLong([B)J
    .locals 3
    .parameter "b"

    .prologue
    .line 322
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 323
    .local v0, bBuffer:Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 324
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    return-wide v1
.end method

.method private static getCurrentDownloadedFileSize(Ljava/lang/String;)J
    .locals 4
    .parameter "path"

    .prologue
    .line 329
    const-wide/16 v0, 0x0

    .line 330
    .local v0, currentFileSize:J
    if-eqz p0, :cond_0

    .line 332
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    .local v2, file:Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 335
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 338
    .end local v2           #file:Ljava/io/File;
    :cond_0
    return-wide v0
.end method

.method private static getDLNAPref(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 69
    if-nez p0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    .line 71
    :cond_0
    const-string v2, "pref_outputing"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 72
    .local v1, settings:Landroid/content/SharedPreferences;
    const-string v0, ""

    .line 74
    .local v0, outputFilePath:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 76
    const-string v2, "path"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_1
    const-string v2, "DMCUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMCUtil getDLNAPref outputFilePath: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMaxFileSize(Ljava/lang/String;)J
    .locals 23
    .parameter "fileName"

    .prologue
    .line 218
    sget-object v20, Lcom/htc/videowidget/videoDMC/DMCUtil;->maxFileSizeMap:Ljava/util/HashMap;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 220
    sget-object v20, Lcom/htc/videowidget/videoDMC/DMCUtil;->maxFileSizeMap:Ljava/util/HashMap;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 317
    :cond_0
    :goto_0
    return-wide v7

    .line 222
    :cond_1
    new-instance v5, Ljava/io/File;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".lenght"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v5, fLenght:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 227
    :try_start_0
    invoke-static {v5}, Lcom/htc/videowidget/videoDMC/DMCUtil;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v19

    .line 228
    .local v19, size:Ljava/lang/String;
    if-eqz v19, :cond_2

    .line 230
    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 231
    .local v15, l:J
    const-wide/16 v20, 0x0

    cmp-long v20, v15, v20

    if-lez v20, :cond_2

    .line 233
    sget-object v20, Lcom/htc/videowidget/videoDMC/DMCUtil;->maxFileSizeMap:Ljava/util/HashMap;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v7, v15

    .line 234
    goto :goto_0

    .line 238
    .end local v15           #l:J
    .end local v19           #size:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 240
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 243
    .end local v4           #e:Ljava/lang/Exception;
    :cond_2
    const/16 v20, 0x10

    move/from16 v0, v20

    new-array v11, v0, [B

    fill-array-data v11, :array_0

    .line 246
    .local v11, index:[B
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    .local v6, file:Ljava/io/File;
    const-wide/16 v7, -0x1

    .line 248
    .local v7, fileSize:J
    if-eqz v6, :cond_0

    .line 253
    const/4 v13, 0x0

    .line 257
    .local v13, is:Ljava/io/DataInputStream;
    :try_start_1
    new-instance v14, Ljava/io/DataInputStream;

    new-instance v20, Ljava/io/FileInputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 258
    .end local v13           #is:Ljava/io/DataInputStream;
    .local v14, is:Ljava/io/DataInputStream;
    const/16 v20, 0x400

    :try_start_2
    move/from16 v0, v20

    new-array v3, v0, [B

    .line 260
    .local v3, buffer:[B
    invoke-virtual {v14, v3}, Ljava/io/DataInputStream;->read([B)I

    move-result v17

    .line 261
    .local v17, len:I
    const/16 v18, -0x1

    .line 262
    .local v18, pos:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    move/from16 v0, v17

    if-ge v10, v0, :cond_3

    .line 264
    invoke-static {v3, v11, v10}, Lcom/htc/videowidget/videoDMC/DMCUtil;->areSame([B[BI)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    move-result v20

    if-eqz v20, :cond_4

    .line 266
    move/from16 v18, v10

    .line 271
    :cond_3
    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 298
    if-eqz v14, :cond_5

    .line 302
    :try_start_3
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 303
    const/4 v13, 0x0

    .end local v14           #is:Ljava/io/DataInputStream;
    .restart local v13       #is:Ljava/io/DataInputStream;
    goto/16 :goto_0

    .line 262
    .end local v13           #is:Ljava/io/DataInputStream;
    .restart local v14       #is:Ljava/io/DataInputStream;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 305
    :catch_1
    move-exception v4

    .line 307
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4           #e:Ljava/io/IOException;
    :cond_5
    move-object v13, v14

    .end local v14           #is:Ljava/io/DataInputStream;
    .restart local v13       #is:Ljava/io/DataInputStream;
    goto/16 :goto_0

    .line 275
    .end local v13           #is:Ljava/io/DataInputStream;
    .restart local v14       #is:Ljava/io/DataInputStream;
    :cond_6
    :try_start_4
    array-length v0, v11

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x18

    add-int v18, v18, v20

    .line 276
    add-int/lit8 v20, v18, 0x8

    array-length v0, v3

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 278
    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 279
    .local v19, size:[B
    const/4 v10, 0x0

    :goto_2
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_7

    .line 281
    add-int v20, v18, v10

    aget-byte v20, v3, v20

    aput-byte v20, v19, v10

    .line 279
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 283
    :cond_7
    invoke-static/range {v19 .. v19}, Lcom/htc/videowidget/videoDMC/DMCUtil;->byteArrayToLong([B)J

    move-result-wide v7

    .line 285
    .end local v19           #size:[B
    :cond_8
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    .line 286
    const/4 v13, 0x0

    .line 298
    .end local v14           #is:Ljava/io/DataInputStream;
    .restart local v13       #is:Ljava/io/DataInputStream;
    if-eqz v13, :cond_9

    .line 302
    :try_start_5
    throw v13
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 303
    const/4 v13, 0x0

    .line 311
    .end local v3           #buffer:[B
    .end local v10           #i:I
    .end local v17           #len:I
    .end local v18           #pos:I
    :cond_9
    :goto_3
    const-wide/16 v20, 0x0

    cmp-long v20, v7, v20

    if-lez v20, :cond_a

    .line 313
    sget-object v20, Lcom/htc/videowidget/videoDMC/DMCUtil;->maxFileSizeMap:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_a
    const-string v20, "DMCUtil"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "maxFileSize "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 305
    .restart local v3       #buffer:[B
    .restart local v10       #i:I
    .restart local v17       #len:I
    .restart local v18       #pos:I
    :catch_2
    move-exception v4

    .line 307
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 288
    .end local v3           #buffer:[B
    .end local v4           #e:Ljava/io/IOException;
    .end local v10           #i:I
    .end local v17           #len:I
    .end local v18           #pos:I
    :catch_3
    move-exception v9

    .line 290
    .local v9, fnfe:Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 298
    if-eqz v13, :cond_9

    .line 302
    :try_start_7
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 303
    const/4 v13, 0x0

    goto :goto_3

    .line 305
    :catch_4
    move-exception v4

    .line 307
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 292
    .end local v4           #e:Ljava/io/IOException;
    .end local v9           #fnfe:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v12

    .line 294
    .local v12, ioe:Ljava/io/IOException;
    :goto_5
    :try_start_8
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 298
    if-eqz v13, :cond_9

    .line 302
    :try_start_9
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 303
    const/4 v13, 0x0

    goto :goto_3

    .line 305
    :catch_6
    move-exception v4

    .line 307
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 298
    .end local v4           #e:Ljava/io/IOException;
    .end local v12           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v20

    :goto_6
    if-eqz v13, :cond_b

    .line 302
    :try_start_a
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 303
    const/4 v13, 0x0

    .line 308
    :cond_b
    :goto_7
    throw v20

    .line 305
    :catch_7
    move-exception v4

    .line 307
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 298
    .end local v4           #e:Ljava/io/IOException;
    .end local v13           #is:Ljava/io/DataInputStream;
    .restart local v14       #is:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v20

    move-object v13, v14

    .end local v14           #is:Ljava/io/DataInputStream;
    .restart local v13       #is:Ljava/io/DataInputStream;
    goto :goto_6

    .line 292
    .end local v13           #is:Ljava/io/DataInputStream;
    .restart local v14       #is:Ljava/io/DataInputStream;
    :catch_8
    move-exception v12

    move-object v13, v14

    .end local v14           #is:Ljava/io/DataInputStream;
    .restart local v13       #is:Ljava/io/DataInputStream;
    goto :goto_5

    .line 288
    .end local v13           #is:Ljava/io/DataInputStream;
    .restart local v14       #is:Ljava/io/DataInputStream;
    :catch_9
    move-exception v9

    move-object v13, v14

    .end local v14           #is:Ljava/io/DataInputStream;
    .restart local v13       #is:Ljava/io/DataInputStream;
    goto :goto_4

    .line 243
    nop

    :array_0
    .array-data 0x1
        0xa1t
        0xdct
        0xabt
        0x8ct
        0x47t
        0xa9t
        0xcft
        0x11t
        0x8et
        0xe4t
        0x0t
        0xc0t
        0xct
        0x20t
        0x53t
        0x65t
    .end array-data
.end method

.method public static getMaxPosCanSeekTo(JIJLjava/lang/String;)I
    .locals 18
    .parameter "seekPos"
    .parameter "nTotalDuration"
    .parameter "lMaxFileSize"
    .parameter "str"

    .prologue
    .line 171
    const-string v12, "DMCUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getMaxPosCanSeekTo() seekPos = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p0

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " nTotalDuration = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " lMaxFileSize "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-wide/16 v12, 0x3e8

    mul-long p0, p0, v12

    .line 173
    const-wide/16 v8, 0x0

    .line 174
    .local v8, lNewPos:J
    move/from16 v0, p2

    mul-int/lit16 v12, v0, 0x3e8

    int-to-long v4, v12

    .line 175
    .local v4, durationInMS:J
    invoke-static/range {p5 .. p5}, Lcom/htc/videowidget/videoDMC/DMCUtil;->getCurrentDownloadedFileSize(Ljava/lang/String;)J

    move-result-wide v2

    .line 177
    .local v2, currentBytes:J
    const-string v12, "DMCUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getMaxPosCanSeekTo()  durationInMS : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " currentBytes "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    cmp-long v12, v2, p3

    if-ltz v12, :cond_0

    .line 181
    const-string v12, "DMCUtil"

    const-string v13, "getMaxPosCanSeekTo() : file is download completed"

    invoke-static {v12, v13}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    move-wide/from16 v8, p0

    .line 208
    :goto_0
    const-string v12, "DMCUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getMaxPosCanSeekTo() : lNewpos = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-wide/16 v12, 0x3e8

    div-long v12, v8, v12

    long-to-int v12, v12

    return v12

    .line 186
    :cond_0
    long-to-double v12, v2

    move-wide/from16 v0, p3

    long-to-double v14, v0

    div-double/2addr v12, v14

    const-wide/high16 v14, 0x4059

    mul-double v10, v12, v14

    .line 187
    .local v10, maxProgressPercent:D
    const-string v12, "DMCUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getMaxPosCanSeekTo()  maxProgressPercent : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    long-to-double v12, v4

    const-wide/high16 v14, 0x4014

    sub-double v14, v10, v14

    const-wide/high16 v16, 0x4059

    div-double v14, v14, v16

    mul-double/2addr v12, v14

    double-to-long v6, v12

    .line 190
    .local v6, lMaxCanSeekpos:J
    const-string v12, "DMCUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getMaxPosCanSeekTo()  lMaxCanSeekpos : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-gez v12, :cond_1

    .line 194
    const-wide/16 v6, 0x0

    .line 197
    :cond_1
    cmp-long v12, v6, p0

    if-lez v12, :cond_2

    .line 199
    const-string v12, "DMCUtil"

    const-string v13, "getMaxPosCanSeekTo() : MaxCanSeekPos > SeekPos "

    invoke-static {v12, v13}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    move-wide/from16 v8, p0

    goto :goto_0

    .line 204
    :cond_2
    const-string v12, "DMCUtil"

    const-string v13, "getMaxPosCanSeekTo() : MaxCanSeekPos < SeekPos "

    invoke-static {v12, v13}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    move-wide v8, v6

    goto :goto_0
.end method

.method public static getSessionCookie(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 157
    const-string v2, "PrefDLNASessionCookie"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 159
    .local v1, sharedPref:Landroid/content/SharedPreferences;
    const-string v2, "previousDlnaSessionCookie"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 161
    .local v0, iPreviousDlnaSessionCookie:I
    const-string v2, "DMCUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSessionCookie(), cookie = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return v0
.end method

.method public static isFileOutputing(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "filePath"

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, bOutput:Z
    invoke-static {p0}, Lcom/htc/videowidget/videoDMC/DMCUtil;->getDLNAPref(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, outputFilePath:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    const/4 v0, 0x1

    .line 116
    :cond_0
    const-string v2, "DMCUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMCUtil isFileOutputing: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return v0
.end method

.method public static isFilePlaying(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "filePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 126
    invoke-static {p0, p1}, Lcom/htc/videowidget/videoDMC/DMCUtil;->isFileOutputing(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static readStringFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .parameter "file"

    .prologue
    .line 355
    const/4 v2, 0x0

    .line 356
    .local v2, fis:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 357
    .local v4, ois:Ljava/io/ObjectInputStream;
    const/4 v6, 0x0

    .line 360
    .local v6, ret:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    .line 361
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_8

    .line 362
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .local v5, ois:Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v6, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_9

    .line 381
    if-eqz v5, :cond_0

    .line 383
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V

    .line 385
    :cond_0
    if-eqz v3, :cond_1

    .line 387
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v4, v5

    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    move-object v2, v3

    .line 395
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :cond_2
    :goto_0
    return-object v6

    .line 390
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v1

    .line 392
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    move-object v2, v3

    .line 394
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 365
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 367
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 381
    if-eqz v4, :cond_3

    .line 383
    :try_start_5
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 385
    :cond_3
    if-eqz v2, :cond_2

    .line 387
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 390
    :catch_2
    move-exception v1

    .line 392
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 369
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 371
    .restart local v1       #e:Ljava/io/IOException;
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 381
    if-eqz v4, :cond_4

    .line 383
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 385
    :cond_4
    if-eqz v2, :cond_2

    .line 387
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 390
    :catch_4
    move-exception v1

    .line 392
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 373
    .end local v1           #e:Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 375
    .local v1, e:Ljava/lang/ClassNotFoundException;
    :goto_3
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 381
    if-eqz v4, :cond_5

    .line 383
    :try_start_9
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 385
    :cond_5
    if-eqz v2, :cond_2

    .line 387
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_0

    .line 390
    :catch_6
    move-exception v1

    .line 392
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 379
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 381
    :goto_4
    if-eqz v4, :cond_6

    .line 383
    :try_start_a
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 385
    :cond_6
    if-eqz v2, :cond_7

    .line 387
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 393
    :cond_7
    :goto_5
    throw v7

    .line 390
    :catch_7
    move-exception v1

    .line 392
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 379
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .line 373
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_8
    move-exception v1

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    :catch_9
    move-exception v1

    move-object v4, v5

    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 369
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_a
    move-exception v1

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    :catch_b
    move-exception v1

    move-object v4, v5

    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 365
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_c
    move-exception v1

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    :catch_d
    move-exception v1

    move-object v4, v5

    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static removeDLNAPref(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 89
    if-nez p0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 92
    :cond_0
    const-string v1, "pref_outputing"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 94
    .local v0, settings:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_1

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    :cond_1
    const-string v1, "DMCUtil"

    const-string v2, "DMCUtil removeDLNAPref"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static saveDLNAPref(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "outputFilePath"

    .prologue
    .line 47
    if-nez p0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const-string v2, "pref_outputing"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 52
    .local v1, settings:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 54
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 55
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "DMCUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMCUtil saveDLNAPref outputFilePath: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v2, "path"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 58
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
