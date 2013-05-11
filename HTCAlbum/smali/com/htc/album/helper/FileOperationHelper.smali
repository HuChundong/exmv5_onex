.class public Lcom/htc/album/helper/FileOperationHelper;
.super Ljava/lang/Object;
.source "FileOperationHelper.java"


# static fields
.field private static final COPY_BUFFER_SIZE:I = 0x8000

.field private static final EXTERNAL_STORAGE_PATH:Ljava/lang/String; = null

.field private static final EXTERNAL_STORAGE_TEMP_PATH:Ljava/lang/String; = null

.field private static final GALLERY_FOLDER_NAME:Ljava/lang/String; = "Gallery"

.field public static final LOG_TAG:Ljava/lang/String; = "FileOperationHelper"

.field private static final PATTERN_OLD_BURST:Ljava/util/regex/Pattern; = null

.field private static final PATTERN_OLD_BURST_COVER:Ljava/util/regex/Pattern; = null

.field private static final PHONE_STORAGE_PATH:Ljava/lang/String; = null

.field private static final PHONE_STORAGE_TEMP_PATH:Ljava/lang/String; = null

.field private static final REMOVABLE_STORAGE_PATH:Ljava/lang/String; = null

.field private static final REMOVABLE_STORAGE_TEMP_PATH:Ljava/lang/String; = null

.field private static final TEMP_FOLDER_NAME:Ljava/lang/String; = "temp"

.field private static final UNIQUE_NAME_MAX_COUNT:I = 0x1869f

.field private static final USB_STORAGE_PATH:Ljava/lang/String;

.field private static final USB_STORAGE_TEMP_PATH:Ljava/lang/String;

.field private static mCancel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Gallery"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/FileOperationHelper;->PHONE_STORAGE_PATH:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Gallery"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/FileOperationHelper;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getRemovableStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Gallery"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/FileOperationHelper;->REMOVABLE_STORAGE_PATH:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Gallery"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/FileOperationHelper;->USB_STORAGE_PATH:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/album/helper/FileOperationHelper;->PHONE_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/FileOperationHelper;->PHONE_STORAGE_TEMP_PATH:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/album/helper/FileOperationHelper;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/FileOperationHelper;->EXTERNAL_STORAGE_TEMP_PATH:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/album/helper/FileOperationHelper;->REMOVABLE_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/FileOperationHelper;->REMOVABLE_STORAGE_TEMP_PATH:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/album/helper/FileOperationHelper;->USB_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/FileOperationHelper;->USB_STORAGE_TEMP_PATH:Ljava/lang/String;

    .line 38
    const-string v0, "(.*DCIM/\\d+BURST/\\d+/IMAG)\\d+_COVER[.].*"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/FileOperationHelper;->PATTERN_OLD_BURST_COVER:Ljava/util/regex/Pattern;

    .line 39
    const-string v0, "(.*DCIM/\\d+BURST/\\d+/IMAG)\\d+.*"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/FileOperationHelper;->PATTERN_OLD_BURST:Ljava/util/regex/Pattern;

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/album/helper/FileOperationHelper;->mCancel:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancel()V
    .locals 2

    .prologue
    .line 405
    const-string v0, "FileOperationHelper"

    const-string v1, "[HTCAlbum][FileOperationHelper][cancel]"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/album/helper/FileOperationHelper;->mCancel:Z

    .line 407
    return-void
.end method

.method public static convertStringToInt(Ljava/lang/String;)I
    .locals 7
    .parameter "number"

    .prologue
    .line 645
    const/4 v4, -0x1

    .line 647
    .local v4, result:I
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/htc/album/helper/FileOperationHelper;->isAllDigit(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v5, v4

    .line 660
    .end local v4           #result:I
    .local v5, result:I
    :goto_0
    return v5

    .line 650
    .end local v5           #result:I
    .restart local v4       #result:I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 651
    .local v2, length:I
    const/4 v0, 0x0

    .line 652
    .local v0, count:I
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    const/4 v3, 0x1

    .local v3, num:I
    :goto_1
    if-ltz v1, :cond_3

    .line 654
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 656
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    mul-int/2addr v6, v3

    add-int/2addr v0, v6

    .line 652
    :cond_2
    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v3, v3, 0xa

    goto :goto_1

    .line 659
    :cond_3
    move v4, v0

    move v5, v4

    .line 660
    .end local v4           #result:I
    .restart local v5       #result:I
    goto :goto_0
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;)Z
    .locals 31
    .parameter "srcFile"
    .parameter "dstFile"

    .prologue
    .line 51
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 52
    :cond_0
    const/4 v8, 0x0

    .line 183
    :goto_0
    return v8

    .line 54
    :cond_1
    const/16 v27, 0x0

    sput-boolean v27, Lcom/htc/album/helper/FileOperationHelper;->mCancel:Z

    .line 56
    const/4 v8, 0x1

    .line 57
    .local v8, bRes:Z
    move-object/from16 v24, p1

    .line 58
    .local v24, tempFile:Ljava/io/File;
    const/16 v26, 0x0

    .line 60
    .local v26, tempPath:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileOnPhoneStorage(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 61
    sget-object v26, Lcom/htc/album/helper/FileOperationHelper;->PHONE_STORAGE_TEMP_PATH:Ljava/lang/String;

    .line 72
    :goto_1
    new-instance v24, Ljava/io/File;

    .end local v24           #tempFile:Ljava/io/File;
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .restart local v24       #tempFile:Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v27

    if-nez v27, :cond_2

    .line 74
    invoke-static/range {v26 .. v26}, Lcom/htc/album/helper/FileOperationHelper;->createTempFolder(Ljava/lang/String;)V

    .line 76
    :cond_2
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/htc/album/helper/FileOperationHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 77
    .local v25, tempFileName:Ljava/lang/String;
    new-instance v24, Ljava/io/File;

    .end local v24           #tempFile:Ljava/io/File;
    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .restart local v24       #tempFile:Ljava/io/File;
    const/16 v19, 0x0

    .line 80
    .local v19, inputStream:Ljava/io/FileInputStream;
    const/16 v22, 0x0

    .line 81
    .local v22, outputStream:Ljava/io/FileOutputStream;
    const/4 v10, 0x0

    .line 82
    .local v10, bufferedIn:Ljava/io/BufferedInputStream;
    const/4 v12, 0x0

    .line 83
    .local v12, bufferedOut:Ljava/io/BufferedOutputStream;
    const/4 v2, 0x0

    .line 84
    .local v2, channelIn:Ljava/nio/channels/FileChannel;
    const/4 v7, 0x0

    .line 86
    .local v7, channelOut:Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v20, Ljava/io/FileInputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_13

    .line 87
    .end local v19           #inputStream:Ljava/io/FileInputStream;
    .local v20, inputStream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v23, Ljava/io/FileOutputStream;

    invoke-direct/range {v23 .. v24}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_14

    .line 89
    .end local v22           #outputStream:Ljava/io/FileOutputStream;
    .local v23, outputStream:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v17

    .line 93
    .local v17, fileSize:J
    const-wide/32 v27, 0x1400000

    cmp-long v27, v17, v27

    if-lez v27, :cond_16

    .line 95
    new-instance v11, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_15

    .line 96
    .end local v10           #bufferedIn:Ljava/io/BufferedInputStream;
    .local v11, bufferedIn:Ljava/io/BufferedInputStream;
    :try_start_3
    new-instance v13, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_16

    .line 98
    .end local v12           #bufferedOut:Ljava/io/BufferedOutputStream;
    .local v13, bufferedOut:Ljava/io/BufferedOutputStream;
    const v27, 0x8000

    :try_start_4
    move/from16 v0, v27

    new-array v9, v0, [B

    .line 100
    .local v9, buffer:[B
    :goto_2
    invoke-virtual {v11, v9}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v21

    .local v21, length:I
    if-lez v21, :cond_f

    .line 102
    const/16 v27, 0x0

    move/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v13, v9, v0, v1}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 121
    .end local v9           #buffer:[B
    .end local v21           #length:I
    :catch_0
    move-exception v16

    move-object v12, v13

    .end local v13           #bufferedOut:Ljava/io/BufferedOutputStream;
    .restart local v12       #bufferedOut:Ljava/io/BufferedOutputStream;
    move-object v10, v11

    .end local v11           #bufferedIn:Ljava/io/BufferedInputStream;
    .restart local v10       #bufferedIn:Ljava/io/BufferedInputStream;
    move-object/from16 v22, v23

    .end local v23           #outputStream:Ljava/io/FileOutputStream;
    .restart local v22       #outputStream:Ljava/io/FileOutputStream;
    move-object/from16 v19, v20

    .line 123
    .end local v17           #fileSize:J
    .end local v20           #inputStream:Ljava/io/FileInputStream;
    .local v16, e:Ljava/lang/Exception;
    .restart local v19       #inputStream:Ljava/io/FileInputStream;
    :goto_3
    :try_start_5
    const-string v27, "FileOperationHelper"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[HTCAlbum][FileOperationHelper][copy]"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    const/4 v8, 0x0

    .line 126
    const/16 v27, 0x0

    sput-boolean v27, Lcom/htc/album/helper/FileOperationHelper;->mCancel:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 131
    if-eqz v22, :cond_3

    .line 132
    :try_start_6
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 138
    :cond_3
    :goto_4
    if-eqz v19, :cond_4

    .line 139
    :try_start_7
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 145
    :cond_4
    :goto_5
    if-eqz v10, :cond_5

    .line 146
    :try_start_8
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    .line 152
    :cond_5
    :goto_6
    if-eqz v12, :cond_6

    .line 153
    :try_start_9
    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    .line 159
    :cond_6
    :goto_7
    if-eqz v2, :cond_7

    .line 160
    :try_start_a
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    .line 167
    :cond_7
    :goto_8
    if-eqz v7, :cond_8

    .line 168
    :try_start_b
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    .line 176
    .end local v16           #e:Ljava/lang/Exception;
    :cond_8
    :goto_9
    if-eqz v8, :cond_9

    .line 177
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    .line 179
    :cond_9
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_a

    .line 180
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    .line 182
    :cond_a
    const/16 v27, 0x0

    sput-boolean v27, Lcom/htc/album/helper/FileOperationHelper;->mCancel:Z

    goto/16 :goto_0

    .line 62
    .end local v2           #channelIn:Ljava/nio/channels/FileChannel;
    .end local v7           #channelOut:Ljava/nio/channels/FileChannel;
    .end local v10           #bufferedIn:Ljava/io/BufferedInputStream;
    .end local v12           #bufferedOut:Ljava/io/BufferedOutputStream;
    .end local v19           #inputStream:Ljava/io/FileInputStream;
    .end local v22           #outputStream:Ljava/io/FileOutputStream;
    .end local v25           #tempFileName:Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileOnExternalStorage(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_c

    .line 63
    sget-object v26, Lcom/htc/album/helper/FileOperationHelper;->EXTERNAL_STORAGE_TEMP_PATH:Ljava/lang/String;

    goto/16 :goto_1

    .line 64
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileOnRemovableStorage(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 65
    sget-object v26, Lcom/htc/album/helper/FileOperationHelper;->REMOVABLE_STORAGE_TEMP_PATH:Ljava/lang/String;

    goto/16 :goto_1

    .line 66
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileOnUsbStorage(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_e

    .line 67
    sget-object v26, Lcom/htc/album/helper/FileOperationHelper;->USB_STORAGE_TEMP_PATH:Ljava/lang/String;

    goto/16 :goto_1

    .line 69
    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_0

    .restart local v2       #channelIn:Ljava/nio/channels/FileChannel;
    .restart local v7       #channelOut:Ljava/nio/channels/FileChannel;
    .restart local v9       #buffer:[B
    .restart local v11       #bufferedIn:Ljava/io/BufferedInputStream;
    .restart local v13       #bufferedOut:Ljava/io/BufferedOutputStream;
    .restart local v17       #fileSize:J
    .restart local v20       #inputStream:Ljava/io/FileInputStream;
    .restart local v21       #length:I
    .restart local v23       #outputStream:Ljava/io/FileOutputStream;
    .restart local v25       #tempFileName:Ljava/lang/String;
    :cond_f
    move-object v12, v13

    .end local v13           #bufferedOut:Ljava/io/BufferedOutputStream;
    .restart local v12       #bufferedOut:Ljava/io/BufferedOutputStream;
    move-object v10, v11

    .line 131
    .end local v9           #buffer:[B
    .end local v11           #bufferedIn:Ljava/io/BufferedInputStream;
    .end local v21           #length:I
    .restart local v10       #bufferedIn:Ljava/io/BufferedInputStream;
    :goto_a
    if-eqz v23, :cond_10

    .line 132
    :try_start_c
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d

    .line 138
    :cond_10
    :goto_b
    if-eqz v20, :cond_11

    .line 139
    :try_start_d
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e

    .line 145
    :cond_11
    :goto_c
    if-eqz v10, :cond_12

    .line 146
    :try_start_e
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_f

    .line 152
    :cond_12
    :goto_d
    if-eqz v12, :cond_13

    .line 153
    :try_start_f
    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_10

    .line 159
    :cond_13
    :goto_e
    if-eqz v2, :cond_14

    .line 160
    :try_start_10
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_11

    .line 167
    :cond_14
    :goto_f
    if-eqz v7, :cond_15

    .line 168
    :try_start_11
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_12

    :cond_15
    :goto_10
    move-object/from16 v22, v23

    .end local v23           #outputStream:Ljava/io/FileOutputStream;
    .restart local v22       #outputStream:Ljava/io/FileOutputStream;
    move-object/from16 v19, v20

    .line 174
    .end local v20           #inputStream:Ljava/io/FileInputStream;
    .restart local v19       #inputStream:Ljava/io/FileInputStream;
    goto :goto_9

    .line 107
    .end local v19           #inputStream:Ljava/io/FileInputStream;
    .end local v22           #outputStream:Ljava/io/FileOutputStream;
    .restart local v20       #inputStream:Ljava/io/FileInputStream;
    .restart local v23       #outputStream:Ljava/io/FileOutputStream;
    :cond_16
    :try_start_12
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 108
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    .line 110
    const-wide/16 v3, 0x0

    .line 111
    .local v3, offs:J
    const-wide/16 v14, 0x0

    .line 112
    .local v14, doneCnt:J
    const-wide/32 v27, 0x8000

    cmp-long v27, v17, v27

    if-gez v27, :cond_18

    move-wide/from16 v5, v17

    .line 115
    .local v5, copyCnt:J
    :cond_17
    :goto_11
    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_15

    move-result-wide v14

    .line 116
    add-long/2addr v3, v14

    .line 117
    sub-long v17, v17, v14

    .line 118
    const-wide/16 v27, 0x0

    cmp-long v27, v17, v27

    if-gtz v27, :cond_17

    goto :goto_a

    .line 112
    .end local v5           #copyCnt:J
    :cond_18
    const-wide/32 v5, 0x8000

    goto :goto_11

    .line 130
    .end local v3           #offs:J
    .end local v14           #doneCnt:J
    .end local v17           #fileSize:J
    .end local v20           #inputStream:Ljava/io/FileInputStream;
    .end local v23           #outputStream:Ljava/io/FileOutputStream;
    .restart local v19       #inputStream:Ljava/io/FileInputStream;
    .restart local v22       #outputStream:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v27

    .line 131
    :goto_12
    if-eqz v22, :cond_19

    .line 132
    :try_start_13
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    .line 138
    :cond_19
    :goto_13
    if-eqz v19, :cond_1a

    .line 139
    :try_start_14
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2

    .line 145
    :cond_1a
    :goto_14
    if-eqz v10, :cond_1b

    .line 146
    :try_start_15
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3

    .line 152
    :cond_1b
    :goto_15
    if-eqz v12, :cond_1c

    .line 153
    :try_start_16
    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4

    .line 159
    :cond_1c
    :goto_16
    if-eqz v2, :cond_1d

    .line 160
    :try_start_17
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_5

    .line 167
    :cond_1d
    :goto_17
    if-eqz v7, :cond_1e

    .line 168
    :try_start_18
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_6

    .line 130
    :cond_1e
    :goto_18
    throw v27

    .line 133
    :catch_1
    move-exception v16

    .line 134
    .restart local v16       #e:Ljava/lang/Exception;
    const-string v28, "FileOperationHelper"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "[HTCAlbum][FileOperationHelper][copy]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13

    .line 140
    .end local v16           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v16

    .line 141
    .restart local v16       #e:Ljava/lang/Exception;
    const-string v28, "FileOperationHelper"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "[HTCAlbum][FileOperationHelper][copy]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14

    .line 147
    .end local v16           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v16

    .line 148
    .restart local v16       #e:Ljava/lang/Exception;
    const-string v28, "FileOperationHelper"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "[HTCAlbum][FileOperationHelper][copy]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    .line 154
    .end local v16           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v16

    .line 155
    .restart local v16       #e:Ljava/lang/Exception;
    const-string v28, "FileOperationHelper"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "[HTCAlbum][FileOperationHelper][copy]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_16

    .line 162
    .end local v16           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v16

    .line 163
    .restart local v16       #e:Ljava/lang/Exception;
    const-string v28, "FileOperationHelper"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "[HTCAlbum][FileOperationHelper][copy]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_17

    .line 170
    .end local v16           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v16

    .line 171
    .restart local v16       #e:Ljava/lang/Exception;
    const-string v28, "FileOperationHelper"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "[HTCAlbum][FileOperationHelper][copy]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_18

    .line 133
    :catch_7
    move-exception v16

    .line 134
    const-string v27, "FileOperationHelper"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[HTCAlbum][FileOperationHelper][copy]"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 140
    :catch_8
    move-exception v16

    .line 141
    const-string v27, "FileOperationHelper"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[HTCAlbum][FileOperationHelper][copy]"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 147
    :catch_9
    move-exception v16

    .line 148
    const-string v27, "FileOperationHelper"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[HTCAlbum][FileOperationHelper][copy]"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 154
    :catch_a
    move-exception v16

    .line 155
    const-string v27, "FileOperationHelper"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[HTCAlbum][FileOperationHelper][copy]"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 162
    :catch_b
    move-exception v16

    .line 163
    const-string v27, "FileOperationHelper"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[HTCAlbum][FileOperationHelper][copy]"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    .line 170
    :catch_c
    move-exception v16

    .line 171
    const-string v27, "FileOperationHelper"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[HTCAlbum][FileOperationHelper][copy]"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    .line 133
    .end local v16           #e:Ljava/lang/Exception;
    .end local v19           #inputStream:Ljava/io/FileInputStream;
    .end local v22           #outputStream:Ljava/io/FileOutputStream;
    .restart local v17       #fileSize:J
    .restart local v20       #inputStream:Ljava/io/FileInputStream;
    .restart local v23       #outputStream:Ljava/io/FileOutputStream;
    :catch_d
    move-exception v16

    .line 134
    .restart local v16       #e:Ljava/lang/Exception;
    const-string v27, "FileOperationHelper"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[HTCAlbum][FileOperationHelper][copy]"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_b

    .line 140
    .end local v16           #e:Ljava/lang/Exception;
    :catch_e
    move-exception v16

    .line 141
    .restart local v16       #e:Ljava/lang/Exception;
    const-string v27, "FileOperationHelper"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[HTCAlbum][FileOperationHelper][copy]"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    .line 147
    .end local v16           #e:Ljava/lang/Exception;
    :catch_f
    move-exception v16

    .line 148
    .restart local v16       #e:Ljava/lang/Exception;
    const-string v27, "FileOperationHelper"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[HTCAlbum][FileOperationHelper][copy]"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_d

    .line 154
    .end local v16           #e:Ljava/lang/Exception;
    :catch_10
    move-exception v16

    .line 155
    .restart local v16       #e:Ljava/lang/Exception;
    const-string v27, "FileOperationHelper"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[HTCAlbum][FileOperationHelper][copy]"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_e

    .line 162
    .end local v16           #e:Ljava/lang/Exception;
    :catch_11
    move-exception v16

    .line 163
    .restart local v16       #e:Ljava/lang/Exception;
    const-string v27, "FileOperationHelper"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[HTCAlbum][FileOperationHelper][copy]"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    .line 170
    .end local v16           #e:Ljava/lang/Exception;
    :catch_12
    move-exception v16

    .line 171
    .restart local v16       #e:Ljava/lang/Exception;
    const-string v27, "FileOperationHelper"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[HTCAlbum][FileOperationHelper][copy]"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_10

    .line 130
    .end local v16           #e:Ljava/lang/Exception;
    .end local v17           #fileSize:J
    .end local v23           #outputStream:Ljava/io/FileOutputStream;
    .restart local v22       #outputStream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v27

    move-object/from16 v19, v20

    .end local v20           #inputStream:Ljava/io/FileInputStream;
    .restart local v19       #inputStream:Ljava/io/FileInputStream;
    goto/16 :goto_12

    .end local v19           #inputStream:Ljava/io/FileInputStream;
    .end local v22           #outputStream:Ljava/io/FileOutputStream;
    .restart local v20       #inputStream:Ljava/io/FileInputStream;
    .restart local v23       #outputStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v27

    move-object/from16 v22, v23

    .end local v23           #outputStream:Ljava/io/FileOutputStream;
    .restart local v22       #outputStream:Ljava/io/FileOutputStream;
    move-object/from16 v19, v20

    .end local v20           #inputStream:Ljava/io/FileInputStream;
    .restart local v19       #inputStream:Ljava/io/FileInputStream;
    goto/16 :goto_12

    .end local v10           #bufferedIn:Ljava/io/BufferedInputStream;
    .end local v19           #inputStream:Ljava/io/FileInputStream;
    .end local v22           #outputStream:Ljava/io/FileOutputStream;
    .restart local v11       #bufferedIn:Ljava/io/BufferedInputStream;
    .restart local v17       #fileSize:J
    .restart local v20       #inputStream:Ljava/io/FileInputStream;
    .restart local v23       #outputStream:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v27

    move-object v10, v11

    .end local v11           #bufferedIn:Ljava/io/BufferedInputStream;
    .restart local v10       #bufferedIn:Ljava/io/BufferedInputStream;
    move-object/from16 v22, v23

    .end local v23           #outputStream:Ljava/io/FileOutputStream;
    .restart local v22       #outputStream:Ljava/io/FileOutputStream;
    move-object/from16 v19, v20

    .end local v20           #inputStream:Ljava/io/FileInputStream;
    .restart local v19       #inputStream:Ljava/io/FileInputStream;
    goto/16 :goto_12

    .end local v10           #bufferedIn:Ljava/io/BufferedInputStream;
    .end local v12           #bufferedOut:Ljava/io/BufferedOutputStream;
    .end local v19           #inputStream:Ljava/io/FileInputStream;
    .end local v22           #outputStream:Ljava/io/FileOutputStream;
    .restart local v11       #bufferedIn:Ljava/io/BufferedInputStream;
    .restart local v13       #bufferedOut:Ljava/io/BufferedOutputStream;
    .restart local v20       #inputStream:Ljava/io/FileInputStream;
    .restart local v23       #outputStream:Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v27

    move-object v12, v13

    .end local v13           #bufferedOut:Ljava/io/BufferedOutputStream;
    .restart local v12       #bufferedOut:Ljava/io/BufferedOutputStream;
    move-object v10, v11

    .end local v11           #bufferedIn:Ljava/io/BufferedInputStream;
    .restart local v10       #bufferedIn:Ljava/io/BufferedInputStream;
    move-object/from16 v22, v23

    .end local v23           #outputStream:Ljava/io/FileOutputStream;
    .restart local v22       #outputStream:Ljava/io/FileOutputStream;
    move-object/from16 v19, v20

    .end local v20           #inputStream:Ljava/io/FileInputStream;
    .restart local v19       #inputStream:Ljava/io/FileInputStream;
    goto/16 :goto_12

    .line 121
    .end local v17           #fileSize:J
    :catch_13
    move-exception v16

    goto/16 :goto_3

    .end local v19           #inputStream:Ljava/io/FileInputStream;
    .restart local v20       #inputStream:Ljava/io/FileInputStream;
    :catch_14
    move-exception v16

    move-object/from16 v19, v20

    .end local v20           #inputStream:Ljava/io/FileInputStream;
    .restart local v19       #inputStream:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v19           #inputStream:Ljava/io/FileInputStream;
    .end local v22           #outputStream:Ljava/io/FileOutputStream;
    .restart local v20       #inputStream:Ljava/io/FileInputStream;
    .restart local v23       #outputStream:Ljava/io/FileOutputStream;
    :catch_15
    move-exception v16

    move-object/from16 v22, v23

    .end local v23           #outputStream:Ljava/io/FileOutputStream;
    .restart local v22       #outputStream:Ljava/io/FileOutputStream;
    move-object/from16 v19, v20

    .end local v20           #inputStream:Ljava/io/FileInputStream;
    .restart local v19       #inputStream:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v10           #bufferedIn:Ljava/io/BufferedInputStream;
    .end local v19           #inputStream:Ljava/io/FileInputStream;
    .end local v22           #outputStream:Ljava/io/FileOutputStream;
    .restart local v11       #bufferedIn:Ljava/io/BufferedInputStream;
    .restart local v17       #fileSize:J
    .restart local v20       #inputStream:Ljava/io/FileInputStream;
    .restart local v23       #outputStream:Ljava/io/FileOutputStream;
    :catch_16
    move-exception v16

    move-object v10, v11

    .end local v11           #bufferedIn:Ljava/io/BufferedInputStream;
    .restart local v10       #bufferedIn:Ljava/io/BufferedInputStream;
    move-object/from16 v22, v23

    .end local v23           #outputStream:Ljava/io/FileOutputStream;
    .restart local v22       #outputStream:Ljava/io/FileOutputStream;
    move-object/from16 v19, v20

    .end local v20           #inputStream:Ljava/io/FileInputStream;
    .restart local v19       #inputStream:Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method public static createNewFolder(Ljava/lang/String;)Z
    .locals 7
    .parameter "path"

    .prologue
    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, bRes:Z
    if-nez p0, :cond_0

    .line 228
    const-string v4, "FileOperationHelper"

    const-string v5, "[HTCAlbum][FileOperationManager][createNewFolder] file path is null."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 260
    .end local v0           #bRes:Z
    .local v1, bRes:I
    :goto_0
    return v1

    .line 232
    .end local v1           #bRes:I
    .restart local v0       #bRes:Z
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .local v3, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 237
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 238
    if-nez v0, :cond_1

    .line 240
    const-string v4, "FileOperationHelper"

    const-string v5, "[HTCAlbum][FileOperationManager][createNewFolder] Folder not extist, and create folder failed."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    move v1, v0

    .line 260
    .restart local v1       #bRes:I
    goto :goto_0

    .line 243
    .end local v1           #bRes:I
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_3

    .line 245
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 246
    if-nez v0, :cond_1

    .line 248
    const-string v4, "FileOperationHelper"

    const-string v5, "[HTCAlbum][FileOperationManager][createNewFolder] Folder not extist, and create folder failed."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 254
    :catch_0
    move-exception v2

    .line 256
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "FileOperationHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][FileOperationManager][createNewFolder] Can not create folder \'."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', it is an exists file."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v4, "FileOperationHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][FileOperationManager][createNewFolder] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v0, 0x0

    goto :goto_1

    .line 252
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static createTempFolder(Ljava/lang/String;)V
    .locals 2
    .parameter "storagePath"

    .prologue
    .line 711
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 712
    .local v0, tempFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 713
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 714
    :cond_0
    return-void
.end method

.method public static createUniqueBurstGroupName(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter "path"

    .prologue
    .line 1112
    const/4 v11, 0x0

    .line 1113
    .local v11, result:Ljava/lang/StringBuilder;
    if-nez p0, :cond_0

    .line 1114
    const/4 v13, 0x0

    .line 1184
    :goto_0
    return-object v13

    .line 1116
    :cond_0
    const/4 v13, 0x0

    sput-boolean v13, Lcom/htc/album/helper/FileOperationHelper;->mCancel:Z

    .line 1118
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1120
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_1

    .line 1122
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 1125
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 1126
    .local v1, childList:[Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1128
    .local v10, matchCounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v9, v1

    .line 1129
    .local v9, length:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v9, :cond_2

    .line 1131
    sget-boolean v13, Lcom/htc/album/helper/FileOperationHelper;->mCancel:Z

    if-eqz v13, :cond_3

    .line 1150
    :cond_2
    sget-boolean v13, Lcom/htc/album/helper/FileOperationHelper;->mCancel:Z

    if-eqz v13, :cond_6

    .line 1152
    const/4 v13, 0x0

    sput-boolean v13, Lcom/htc/album/helper/FileOperationHelper;->mCancel:Z

    .line 1153
    const/4 v13, 0x0

    goto :goto_0

    .line 1133
    :cond_3
    aget-object v2, v1, v6

    .line 1134
    .local v2, childName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1135
    .local v3, count:Ljava/lang/String;
    const/4 v13, 0x0

    invoke-static {v2, v13}, Lcom/htc/album/helper/FileOperationHelper;->isNewBurstImage(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1137
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1138
    const-string v13, "_burst"

    invoke-virtual {v2, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1139
    .local v0, burstKeyIndex:I
    const/4 v13, -0x1

    if-eq v0, v13, :cond_4

    .line 1140
    const/4 v13, 0x4

    invoke-virtual {v2, v13, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1141
    :cond_4
    invoke-static {v3}, Lcom/htc/album/helper/FileOperationHelper;->isAllDigit(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1143
    invoke-static {v3}, Lcom/htc/album/helper/FileOperationHelper;->convertStringToInt(Ljava/lang/String;)I

    move-result v4

    .line 1144
    .local v4, digit:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 1145
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
    .end local v0           #burstKeyIndex:I
    .end local v4           #digit:I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1156
    .end local v2           #childName:Ljava/lang/String;
    .end local v3           #count:Ljava/lang/String;
    :cond_6
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1157
    const/4 v3, 0x1

    .line 1158
    .local v3, count:I
    const/4 v4, 0x4

    .line 1159
    .restart local v4       #digit:I
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1161
    .local v8, integer:Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v3, v13, :cond_a

    .line 1163
    add-int/lit8 v3, v3, 0x1

    .line 1164
    const/16 v13, 0xa

    if-lt v3, v13, :cond_8

    const/16 v13, 0x64

    if-ge v3, v13, :cond_8

    .line 1165
    const/4 v4, 0x3

    goto :goto_2

    .line 1166
    :cond_8
    const/16 v13, 0xa

    if-lt v3, v13, :cond_9

    const/16 v13, 0x3e8

    if-ge v3, v13, :cond_9

    .line 1167
    const/4 v4, 0x2

    goto :goto_2

    .line 1168
    :cond_9
    const/16 v13, 0x64

    if-lt v3, v13, :cond_7

    const/16 v13, 0x2710

    if-ge v3, v13, :cond_7

    .line 1169
    const/4 v4, 0x1

    goto :goto_2

    .line 1174
    .end local v8           #integer:Ljava/lang/Integer;
    :cond_a
    if-gtz v3, :cond_b

    const/16 v13, 0x270f

    if-le v3, v13, :cond_b

    .line 1175
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1177
    :cond_b
    const-string v12, ""

    .line 1178
    .local v12, zeros:Ljava/lang/String;
    const/4 v6, 0x0

    :goto_3
    add-int/lit8 v13, v4, -0x1

    if-ge v6, v13, :cond_c

    .line 1179
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1178
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1181
    :cond_c
    new-instance v11, Ljava/lang/StringBuilder;

    .end local v11           #result:Ljava/lang/StringBuilder;
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1182
    .restart local v11       #result:Ljava/lang/StringBuilder;
    const-string v13, "IMAG"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1184
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0
.end method

.method public static createUniqueFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "filePath"

    .prologue
    const/4 v8, 0x0

    .line 270
    if-nez p0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-object v8

    .line 273
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v1, file:Ljava/io/File;
    const-string v9, "/"

    invoke-virtual {p0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    .line 276
    .local v4, isDirectory:Z
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    if-nez v4, :cond_2

    .line 277
    invoke-static {p0}, Lcom/htc/album/helper/FileOperationHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 280
    :cond_2
    const/4 v5, 0x1

    .line 282
    .local v5, maxCount:I
    invoke-static {p0}, Lcom/htc/album/helper/FileOperationHelper;->getPatternName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 283
    .local v6, namePattern:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 285
    invoke-static {p0}, Lcom/htc/album/helper/FileOperationHelper;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, extension:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, folderPath:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 289
    .local v7, newPath:Ljava/lang/StringBuffer;
    if-eqz v4, :cond_3

    .line 290
    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/album/helper/FileOperationHelper;->createUniqueNameCount(Ljava/lang/String;)I

    move-result v5

    .line 296
    const/4 v2, 0x0

    .line 297
    .local v2, fileNameBuff:Ljava/lang/StringBuffer;
    const/4 v9, -0x1

    if-ne v5, v9, :cond_4

    .line 299
    new-instance v2, Ljava/lang/StringBuffer;

    .end local v2           #fileNameBuff:Ljava/lang/StringBuffer;
    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 300
    .restart local v2       #fileNameBuff:Ljava/lang/StringBuffer;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 292
    .end local v2           #fileNameBuff:Ljava/lang/StringBuffer;
    :cond_3
    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 303
    .restart local v2       #fileNameBuff:Ljava/lang/StringBuffer;
    :cond_4
    const v9, 0x1869f

    if-ge v5, v9, :cond_6

    .line 305
    add-int/lit8 v5, v5, 0x1

    .line 306
    new-instance v2, Ljava/lang/StringBuffer;

    .end local v2           #fileNameBuff:Ljava/lang/StringBuffer;
    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 307
    .restart local v2       #fileNameBuff:Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .line 308
    .local v8, result:Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 309
    const-string v9, " "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 311
    :cond_5
    const-string v9, "-"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 316
    .end local v8           #result:Ljava/lang/String;
    :cond_6
    const-string v9, "FileOperationHelper"

    const-string v10, "[HTCAlbum][FileOperationHelper][createUniqueCopyName] out of bound, can not create unique name for copies."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static createUniqueFolderName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "path"

    .prologue
    .line 330
    const v2, 0x7f0a0195

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, defaultFolderName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, result:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/helper/FileOperationHelper;->createUniqueFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 333
    return-object v1
.end method

.method public static createUniqueNameCount(Ljava/lang/String;)I
    .locals 23
    .parameter "path"

    .prologue
    .line 502
    const/16 v21, 0x0

    sput-boolean v21, Lcom/htc/album/helper/FileOperationHelper;->mCancel:Z

    .line 503
    const/16 v19, 0x0

    .line 504
    .local v19, result:I
    if-nez p0, :cond_0

    move/from16 v21, v19

    .line 578
    :goto_0
    return v21

    .line 507
    :cond_0
    const/4 v13, 0x0

    .line 508
    .local v13, isDirectory:Z
    const-string v21, "/"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 509
    const/4 v13, 0x1

    .line 511
    :cond_1
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 513
    .local v6, file:Ljava/io/File;
    invoke-static/range {p0 .. p0}, Lcom/htc/album/helper/FileOperationHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    sget-object v22, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 514
    .local v11, inputFileName:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v16

    .line 515
    .local v16, parentFile:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 516
    .local v7, fileList:[Ljava/io/File;
    if-nez v7, :cond_2

    move/from16 v21, v19

    .line 517
    goto :goto_0

    .line 519
    :cond_2
    const/4 v3, 0x1

    .line 520
    .local v3, count:I
    const/4 v4, 0x1

    .line 521
    .local v4, countFilter:I
    array-length v0, v7

    move/from16 v20, v0

    .line 522
    .local v20, size:I
    const-string v21, "(\\d+)$"

    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v17

    .line 523
    .local v17, pattern:Ljava/util/regex/Pattern;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 524
    .local v5, countList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    move/from16 v0, v20

    if-ge v8, v0, :cond_3

    .line 526
    sget-boolean v21, Lcom/htc/album/helper/FileOperationHelper;->mCancel:Z

    if-eqz v21, :cond_4

    .line 563
    :cond_3
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 565
    const/16 v19, 0x1

    .line 566
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 568
    .local v12, integer:Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 569
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 528
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v12           #integer:Ljava/lang/Integer;
    :cond_4
    aget-object v2, v7, v8

    .line 529
    .local v2, childFile:Ljava/io/File;
    if-eqz v13, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v21

    if-nez v21, :cond_6

    .line 524
    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 532
    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/htc/album/helper/FileOperationHelper;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    sget-object v22, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    .line 533
    .local v15, name:Ljava/lang/String;
    const/16 v18, 0x0

    .line 534
    .local v18, patternName:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 535
    .local v14, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 537
    const/4 v10, -0x1

    .line 538
    .local v10, index:I
    if-eqz v13, :cond_9

    .line 540
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 541
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 542
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    if-eqz v21, :cond_5

    .line 544
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x20

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 545
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v10, v21, -0x1

    .line 546
    :cond_7
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 557
    .end local v10           #index:I
    :cond_8
    :goto_4
    if-eqz v18, :cond_5

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 559
    invoke-static {v15, v4, v13}, Lcom/htc/album/helper/FileOperationHelper;->getFileCount(Ljava/lang/String;IZ)I

    move-result v3

    .line 560
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 550
    .restart local v10       #index:I
    :cond_9
    const-string v21, "-"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 551
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v10, v0, :cond_5

    .line 553
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    goto :goto_4

    .line 574
    .end local v2           #childFile:Ljava/io/File;
    .end local v10           #index:I
    .end local v14           #matcher:Ljava/util/regex/Matcher;
    .end local v15           #name:Ljava/lang/String;
    .end local v18           #patternName:Ljava/lang/String;
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_a
    sget-boolean v21, Lcom/htc/album/helper/FileOperationHelper;->mCancel:Z

    if-eqz v21, :cond_b

    .line 575
    const/16 v19, -0x1

    .line 577
    :cond_b
    const/16 v21, 0x0

    sput-boolean v21, Lcom/htc/album/helper/FileOperationHelper;->mCancel:Z

    .line 578
    add-int/lit8 v21, v19, -0x1

    goto/16 :goto_0
.end method

.method public static createUniqueNameMaxCount(Ljava/lang/String;)I
    .locals 21
    .parameter "path"

    .prologue
    .line 417
    const/16 v19, 0x0

    sput-boolean v19, Lcom/htc/album/helper/FileOperationHelper;->mCancel:Z

    .line 418
    const/4 v12, 0x0

    .line 420
    .local v12, maxCount:I
    if-nez p0, :cond_0

    move v13, v12

    .line 491
    .end local v12           #maxCount:I
    .local v13, maxCount:I
    :goto_0
    return v13

    .line 423
    .end local v13           #maxCount:I
    .restart local v12       #maxCount:I
    :cond_0
    const/4 v10, 0x0

    .line 424
    .local v10, isDirectory:Z
    const-string v19, "/"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 425
    const/4 v10, 0x1

    .line 427
    :cond_1
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 429
    .local v5, file:Ljava/io/File;
    invoke-static/range {p0 .. p0}, Lcom/htc/album/helper/FileOperationHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 430
    .local v9, inputFileName:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v15

    .line 431
    .local v15, parentFile:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 432
    .local v6, fileList:[Ljava/io/File;
    if-nez v6, :cond_2

    move v13, v12

    .line 433
    .end local v12           #maxCount:I
    .restart local v13       #maxCount:I
    goto :goto_0

    .line 435
    .end local v13           #maxCount:I
    .restart local v12       #maxCount:I
    :cond_2
    const/4 v3, 0x1

    .line 436
    .local v3, count:I
    const/4 v4, 0x1

    .line 437
    .local v4, countFilter:I
    array-length v0, v6

    move/from16 v18, v0

    .line 438
    .local v18, size:I
    const-string v19, "(\\d+)$"

    invoke-static/range {v19 .. v19}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v16

    .line 439
    .local v16, pattern:Ljava/util/regex/Pattern;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    move/from16 v0, v18

    if-ge v7, v0, :cond_3

    .line 441
    sget-boolean v19, Lcom/htc/album/helper/FileOperationHelper;->mCancel:Z

    if-eqz v19, :cond_6

    .line 487
    :cond_3
    if-eqz v12, :cond_4

    sget-boolean v19, Lcom/htc/album/helper/FileOperationHelper;->mCancel:Z

    if-eqz v19, :cond_5

    .line 488
    :cond_4
    const/4 v12, -0x1

    .line 490
    :cond_5
    const/16 v19, 0x0

    sput-boolean v19, Lcom/htc/album/helper/FileOperationHelper;->mCancel:Z

    move v13, v12

    .line 491
    .end local v12           #maxCount:I
    .restart local v13       #maxCount:I
    goto :goto_0

    .line 443
    .end local v13           #maxCount:I
    .restart local v12       #maxCount:I
    :cond_6
    aget-object v2, v6, v7

    .line 444
    .local v2, childFile:Ljava/io/File;
    if-eqz v10, :cond_8

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v19

    if-nez v19, :cond_8

    .line 439
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 447
    :cond_8
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/htc/album/helper/FileOperationHelper;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    .line 448
    .local v14, name:Ljava/lang/String;
    const/16 v17, 0x0

    .line 449
    .local v17, patternName:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 450
    .local v11, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 452
    const/4 v8, -0x1

    .line 453
    .local v8, index:I
    if-eqz v10, :cond_b

    .line 455
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 456
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 457
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 458
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v8, v19, -0x1

    .line 459
    :cond_9
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 469
    .end local v8           #index:I
    :cond_a
    :goto_2
    move v3, v12

    .line 471
    if-eqz v17, :cond_7

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 473
    invoke-static {v14, v4, v10}, Lcom/htc/album/helper/FileOperationHelper;->getFileCount(Ljava/lang/String;IZ)I

    move-result v3

    .line 474
    if-ge v12, v3, :cond_7

    .line 476
    move v12, v3

    .line 477
    const/4 v4, 0x0

    .line 478
    :goto_3
    if-lez v3, :cond_7

    .line 480
    div-int/lit8 v3, v3, 0xa

    .line 481
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 463
    .restart local v8       #index:I
    :cond_b
    const-string v19, "-"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 464
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_7

    .line 466
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    goto :goto_2
.end method

.method public static genBucketID(Ljava/lang/String;)J
    .locals 6
    .parameter "folderPath"

    .prologue
    .line 1238
    const-wide/16 v0, -0x1

    .line 1239
    .local v0, bucketID:J
    if-nez p0, :cond_0

    move-wide v2, v0

    .line 1246
    .end local v0           #bucketID:J
    .local v2, bucketID:J
    :goto_0
    return-wide v2

    .line 1242
    .end local v2           #bucketID:J
    .restart local v0       #bucketID:J
    :cond_0
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1243
    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1244
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    int-to-long v0, v4

    move-wide v2, v0

    .line 1246
    .end local v0           #bucketID:J
    .restart local v2       #bucketID:J
    goto :goto_0
.end method

.method public static getBurstGroupName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "filePath"

    .prologue
    .line 1036
    const/4 v3, 0x0

    .line 1038
    .local v3, result:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 1039
    const/4 v4, 0x0

    .line 1046
    :goto_0
    return-object v4

    .line 1041
    :cond_0
    const-string v0, "IMAG0001"

    .line 1042
    .local v0, gruopName:Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1043
    .local v2, lowerSourceName:Ljava/lang/String;
    const-string v4, "/imag"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1044
    .local v1, index:I
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1045
    move-object v3, v0

    move-object v4, v3

    .line 1046
    goto :goto_0
.end method

.method public static getBurstImagePathList(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 14
    .parameter "burstImagepath"
    .parameter "isNewBurst"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 1056
    if-nez p0, :cond_1

    move-object v7, v11

    .line 1102
    :cond_0
    :goto_0
    return-object v7

    .line 1059
    :cond_1
    sput-boolean v13, Lcom/htc/album/helper/FileOperationHelper;->mCancel:Z

    .line 1061
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1062
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/htc/album/helper/FileOperationHelper;->getFileParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1063
    .local v10, parentPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1064
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1065
    .local v2, fileChildList:[Ljava/io/File;
    array-length v6, v2

    .line 1067
    .local v6, length:I
    const/4 v3, 0x0

    .line 1068
    .local v3, gruopName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1069
    .local v9, lowerSourceName:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 1071
    const-string v3, "IMAG0001_BURST"

    .line 1072
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 1073
    const-string v12, "/imag"

    invoke-virtual {v9, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 1074
    .local v5, index:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v5

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {p0, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1075
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 1078
    .end local v5           #index:I
    :cond_2
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v6, :cond_3

    .line 1080
    sget-boolean v12, Lcom/htc/album/helper/FileOperationHelper;->mCancel:Z

    if-eqz v12, :cond_4

    .line 1097
    :cond_3
    sget-boolean v12, Lcom/htc/album/helper/FileOperationHelper;->mCancel:Z

    if-eqz v12, :cond_0

    .line 1099
    sput-boolean v13, Lcom/htc/album/helper/FileOperationHelper;->mCancel:Z

    move-object v7, v11

    .line 1100
    goto :goto_0

    .line 1083
    :cond_4
    aget-object v12, v2, v4

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1084
    .local v0, childPath:Ljava/lang/String;
    if-eqz p1, :cond_6

    .line 1086
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 1087
    .local v8, lowerChildPath:Ljava/lang/String;
    invoke-static {v0, v13}, Lcom/htc/album/helper/FileOperationHelper;->isNewBurstImage(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1088
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1078
    .end local v8           #lowerChildPath:Ljava/lang/String;
    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1092
    :cond_6
    invoke-static {v0, v13}, Lcom/htc/album/helper/FileOperationHelper;->isOldBurstImage(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1093
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static getDefaultStorageRootPaths(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/StorageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 880
    const v7, 0x20402aa

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 881
    .local v2, phoneStorage:Ljava/lang/String;
    const v7, 0x20402d4

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 882
    .local v4, storageCard:Ljava/lang/String;
    const v7, 0x2040302

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 884
    .local v6, usbStorage:Ljava/lang/String;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isSupportPhoneStorage()Z

    move-result v0

    .line 886
    .local v0, isSupportPhoneStorage:Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 887
    .local v5, supportStorageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/helper/StorageInfo;>;"
    const/4 v3, 0x0

    .line 889
    .local v3, storage:Lcom/htc/album/helper/StorageInfo;
    invoke-static {v8}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isRemovableStorageReady(Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 891
    new-instance v3, Lcom/htc/album/helper/StorageInfo;

    .end local v3           #storage:Lcom/htc/album/helper/StorageInfo;
    invoke-static {}, Lcom/htc/album/helper/FileOperationHelper;->getRemovableStoragePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v7}, Lcom/htc/album/helper/StorageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    .restart local v3       #storage:Lcom/htc/album/helper/StorageInfo;
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    :cond_0
    invoke-static {v8}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isExternalStorageReady(Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 897
    const/4 v1, 0x0

    .line 898
    .local v1, name:Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 899
    move-object v1, v4

    .line 902
    :goto_0
    new-instance v3, Lcom/htc/album/helper/StorageInfo;

    .end local v3           #storage:Lcom/htc/album/helper/StorageInfo;
    invoke-static {}, Lcom/htc/album/helper/FileOperationHelper;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v1, v7}, Lcom/htc/album/helper/StorageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    .restart local v3       #storage:Lcom/htc/album/helper/StorageInfo;
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    .end local v1           #name:Ljava/lang/String;
    :cond_1
    invoke-static {v8}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isPhoneStorageReady(Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 908
    new-instance v3, Lcom/htc/album/helper/StorageInfo;

    .end local v3           #storage:Lcom/htc/album/helper/StorageInfo;
    invoke-static {}, Lcom/htc/album/helper/FileOperationHelper;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v2, v7}, Lcom/htc/album/helper/StorageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    .restart local v3       #storage:Lcom/htc/album/helper/StorageInfo;
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    :cond_2
    invoke-static {v8}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isUsbStorageReady(Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 914
    new-instance v3, Lcom/htc/album/helper/StorageInfo;

    .end local v3           #storage:Lcom/htc/album/helper/StorageInfo;
    invoke-static {}, Lcom/htc/album/helper/FileOperationHelper;->getUSBStoragePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lcom/htc/album/helper/StorageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    .restart local v3       #storage:Lcom/htc/album/helper/StorageInfo;
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 920
    new-instance v3, Lcom/htc/album/helper/StorageInfo;

    .end local v3           #storage:Lcom/htc/album/helper/StorageInfo;
    invoke-static {}, Lcom/htc/album/helper/FileOperationHelper;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v2, v7}, Lcom/htc/album/helper/StorageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    .restart local v3       #storage:Lcom/htc/album/helper/StorageInfo;
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    :cond_4
    return-object v5

    .line 901
    .restart local v1       #name:Ljava/lang/String;
    :cond_5
    move-object v1, v2

    goto :goto_0
.end method

.method public static getExternalStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 864
    sget-object v0, Lcom/htc/album/helper/FileOperationHelper;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public static getFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "curdir"
    .parameter "file"

    .prologue
    .line 706
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/htc/album/helper/FileOperationHelper;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "curdir"
    .parameter "file"

    .prologue
    .line 692
    const/4 v0, 0x0

    .line 694
    .local v0, clickedFile:Ljava/io/File;
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v1, v0

    .line 703
    .end local v0           #clickedFile:Ljava/io/File;
    .local v1, clickedFile:Ljava/io/File;
    :goto_0
    return-object v1

    .line 697
    .end local v1           #clickedFile:Ljava/io/File;
    .restart local v0       #clickedFile:Ljava/io/File;
    :cond_1
    const-string v2, "/"

    .line 698
    .local v2, separator:Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 699
    const-string v2, ""

    .line 702
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0           #clickedFile:Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #clickedFile:Ljava/io/File;
    move-object v1, v0

    .line 703
    .end local v0           #clickedFile:Ljava/io/File;
    .restart local v1       #clickedFile:Ljava/io/File;
    goto :goto_0
.end method

.method public static getFileCount(Ljava/lang/String;IZ)I
    .locals 12
    .parameter "name"
    .parameter "filter"
    .parameter "isDirectory"

    .prologue
    const/4 v11, -0x1

    .line 589
    const/4 v0, -0x1

    .line 591
    .local v0, count:I
    if-nez p0, :cond_0

    .line 593
    const-string v10, "FileOperationHelper"

    const-string v11, "[HTCAlbum][FileOperationManager] the input path is null."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 635
    .end local v0           #count:I
    .local v1, count:I
    :goto_0
    return v1

    .line 597
    .end local v1           #count:I
    .restart local v0       #count:I
    :cond_0
    const/4 v9, 0x0

    .line 598
    .local v9, subName:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 600
    const-string v10, "(\\d+)$"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 601
    .local v8, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v8, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 602
    .local v6, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 603
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v9

    .line 620
    .end local v6           #matcher:Ljava/util/regex/Matcher;
    .end local v8           #pattern:Ljava/util/regex/Pattern;
    :goto_1
    const/4 v0, 0x0

    .line 621
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    .line 622
    .local v5, length:I
    if-ge v5, p1, :cond_5

    move v1, v0

    .line 623
    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_0

    .end local v1           #count:I
    .end local v5           #length:I
    .restart local v0       #count:I
    .restart local v6       #matcher:Ljava/util/regex/Matcher;
    .restart local v8       #pattern:Ljava/util/regex/Pattern;
    :cond_1
    move v1, v0

    .line 605
    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_0

    .line 609
    .end local v1           #count:I
    .end local v6           #matcher:Ljava/util/regex/Matcher;
    .end local v8           #pattern:Ljava/util/regex/Pattern;
    .restart local v0       #count:I
    :cond_2
    const-string v10, "-"

    invoke-virtual {p0, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 610
    .local v2, dashIndex:I
    const-string v10, "."

    invoke-virtual {p0, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 612
    .local v3, dotIndex:I
    if-ne v2, v11, :cond_3

    move v1, v0

    .line 613
    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_0

    .line 614
    .end local v1           #count:I
    .restart local v0       #count:I
    :cond_3
    if-ne v3, v11, :cond_4

    .line 615
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 617
    :cond_4
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 625
    .end local v2           #dashIndex:I
    .end local v3           #dotIndex:I
    .restart local v5       #length:I
    :cond_5
    add-int/lit8 v4, v5, -0x1

    .local v4, i:I
    const/4 v7, 0x1

    .local v7, num:I
    :goto_2
    if-ltz v4, :cond_7

    .line 627
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 629
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    add-int/lit8 v10, v10, -0x30

    mul-int/2addr v10, v7

    add-int/2addr v0, v10

    .line 625
    :cond_6
    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v7, v7, 0xa

    goto :goto_2

    .line 633
    :cond_7
    if-nez v0, :cond_8

    .line 634
    const/4 v0, -0x1

    :cond_8
    move v1, v0

    .line 635
    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_0
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "path"

    .prologue
    .line 386
    const/4 v2, 0x0

    .line 388
    .local v2, result:Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 397
    .end local v2           #result:Ljava/lang/String;
    .local v3, result:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 391
    .end local v3           #result:Ljava/lang/String;
    .restart local v2       #result:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/htc/album/helper/FileOperationHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, fileName:Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 394
    .local v1, fromIndex:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object v3, v2

    .line 397
    .end local v2           #result:Ljava/lang/String;
    .restart local v3       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "path"

    .prologue
    .line 809
    if-nez p0, :cond_1

    .line 811
    const/4 p0, 0x0

    .line 828
    .end local p0
    .local v0, index:I
    .local v1, pathLength:I
    :cond_0
    :goto_0
    return-object p0

    .line 814
    .end local v0           #index:I
    .end local v1           #pathLength:I
    .restart local p0
    :cond_1
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 816
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 817
    .restart local v0       #index:I
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 821
    .end local v0           #index:I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 822
    .restart local v1       #pathLength:I
    add-int/lit8 v0, v1, -0x1

    .restart local v0       #index:I
    :goto_1
    if-ltz v0, :cond_0

    .line 824
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_3

    .line 825
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 822
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 838
    const/4 v1, 0x0

    .line 840
    .local v1, result:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 841
    const/4 v2, 0x0

    .line 849
    :goto_0
    return-object v2

    .line 843
    :cond_0
    invoke-static {p0}, Lcom/htc/album/helper/FileOperationHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 844
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 845
    .local v0, index:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    move-object v2, v1

    .line 846
    goto :goto_0

    .line 848
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 849
    goto :goto_0
.end method

.method public static getFileParent(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 780
    const/4 v1, 0x0

    .line 781
    .local v1, parent:Ljava/lang/String;
    move-object v0, p0

    .line 783
    .local v0, filePath:Ljava/lang/String;
    const/4 v2, -0x1

    .line 784
    .local v2, slash:I
    if-eqz p0, :cond_0

    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 786
    :cond_0
    const-string v3, "FileOperationHelper"

    const-string v4, "[HTCAlbum][FileOperationHelper][getFileParent] the input path is a root path!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    .end local p0
    :goto_0
    return-object p0

    .line 789
    .restart local p0
    :cond_1
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 791
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 792
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 795
    :cond_2
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 796
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 798
    move-object v1, v0

    move-object p0, v1

    .line 799
    goto :goto_0
.end method

.method public static getPatternName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "path"

    .prologue
    const/4 v7, 0x0

    .line 345
    const/4 v4, 0x0

    .line 347
    .local v4, result:Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v6, "/"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move-object v5, v4

    .line 376
    .end local v4           #result:Ljava/lang/String;
    .local v5, result:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 352
    .end local v5           #result:Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 354
    .local v3, isDirectory:Z
    const-string v6, "/"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 355
    const/4 v3, 0x1

    .line 357
    :cond_2
    invoke-static {p0}, Lcom/htc/album/helper/FileOperationHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, fileName:Ljava/lang/String;
    if-nez v3, :cond_5

    .line 361
    const-string v6, "."

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 363
    .local v2, fromIndex:I
    if-lez v2, :cond_3

    .line 364
    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 370
    .end local v2           #fromIndex:I
    :cond_3
    :goto_1
    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 371
    .local v0, dashidx:I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_4

    .line 373
    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_4
    move-object v5, v4

    .line 376
    .end local v4           #result:Ljava/lang/String;
    .restart local v5       #result:Ljava/lang/String;
    goto :goto_0

    .line 368
    .end local v0           #dashidx:I
    .end local v5           #result:Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/String;
    :cond_5
    move-object v4, v1

    goto :goto_1
.end method

.method public static getPhoneStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 859
    sget-object v0, Lcom/htc/album/helper/FileOperationHelper;->PHONE_STORAGE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public static getRemovableStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 854
    sget-object v0, Lcom/htc/album/helper/FileOperationHelper;->REMOVABLE_STORAGE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public static getUSBStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 869
    sget-object v0, Lcom/htc/album/helper/FileOperationHelper;->USB_STORAGE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public static isAllDigit(Ljava/lang/String;)Z
    .locals 4
    .parameter "num"

    .prologue
    const/4 v2, 0x0

    .line 670
    if-nez p0, :cond_1

    move v0, v2

    .line 681
    :cond_0
    :goto_0
    return v0

    .line 673
    :cond_1
    const/4 v0, 0x1

    .line 675
    .local v0, bRes:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 677
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    .line 678
    goto :goto_0

    .line 675
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isBurstGroupExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "folderPath"
    .parameter "gruopName"

    .prologue
    const/4 v10, 0x0

    .line 993
    const/4 v0, 0x0

    .line 995
    .local v0, bRes:Z
    if-nez p0, :cond_0

    move v1, v0

    .line 1026
    .end local v0           #bRes:Z
    .local v1, bRes:I
    :goto_0
    return v1

    .line 998
    .end local v1           #bRes:I
    .restart local v0       #bRes:Z
    :cond_0
    sput-boolean v10, Lcom/htc/album/helper/FileOperationHelper;->mCancel:Z

    .line 1000
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1001
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 1002
    .local v4, fileChildList:[Ljava/io/File;
    array-length v6, v4

    .line 1004
    .local v6, length:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_BURST"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1005
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 1006
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v6, :cond_1

    .line 1008
    sget-boolean v8, Lcom/htc/album/helper/FileOperationHelper;->mCancel:Z

    if-eqz v8, :cond_2

    .line 1020
    :cond_1
    :goto_2
    sget-boolean v8, Lcom/htc/album/helper/FileOperationHelper;->mCancel:Z

    if-eqz v8, :cond_4

    .line 1022
    sput-boolean v10, Lcom/htc/album/helper/FileOperationHelper;->mCancel:Z

    .line 1023
    const/4 v0, 0x0

    move v1, v0

    .line 1024
    .restart local v1       #bRes:I
    goto :goto_0

    .line 1011
    .end local v1           #bRes:I
    :cond_2
    aget-object v8, v4, v5

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1012
    .local v2, childPath:Ljava/lang/String;
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 1013
    .local v7, lowerChildPath:Ljava/lang/String;
    invoke-static {v2, v10}, Lcom/htc/album/helper/FileOperationHelper;->isNewBurstImage(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "_cover.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1015
    const/4 v0, 0x1

    .line 1016
    goto :goto_2

    .line 1006
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v2           #childPath:Ljava/lang/String;
    .end local v7           #lowerChildPath:Ljava/lang/String;
    :cond_4
    move v1, v0

    .line 1026
    .restart local v1       #bRes:I
    goto :goto_0
.end method

.method public static isFileExists(Ljava/lang/String;)Z
    .locals 10
    .parameter "path"

    .prologue
    .line 738
    const/4 v0, 0x0

    .line 739
    .local v0, bRes:Z
    if-nez p0, :cond_0

    move v1, v0

    .line 770
    .end local v0           #bRes:Z
    .local v1, bRes:I
    :goto_0
    return v1

    .line 742
    .end local v1           #bRes:I
    .restart local v0       #bRes:Z
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 746
    .local v3, file:Ljava/io/File;
    const/4 v8, 0x2

    :try_start_0
    new-array v2, v8, [Ljava/lang/String;

    .line 747
    .local v2, command:[Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "ls"

    aput-object v9, v2, v8

    .line 748
    const/4 v8, 0x1

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    .line 749
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 750
    .local v6, lsProcess:Ljava/lang/Process;
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 752
    .local v7, reader:Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/album/helper/FileOperationHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 753
    .local v5, inputNameLow:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 754
    .local v4, fileNameLow:Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_1

    .line 756
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 757
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 759
    const/4 v0, 0x1

    .end local v2           #command:[Ljava/lang/String;
    .end local v4           #fileNameLow:Ljava/lang/String;
    .end local v5           #inputNameLow:Ljava/lang/String;
    .end local v6           #lsProcess:Ljava/lang/Process;
    .end local v7           #reader:Ljava/io/BufferedReader;
    :cond_1
    :goto_2
    move v1, v0

    .line 770
    .restart local v1       #bRes:I
    goto :goto_0

    .line 763
    .end local v1           #bRes:I
    .restart local v2       #command:[Ljava/lang/String;
    .restart local v4       #fileNameLow:Ljava/lang/String;
    .restart local v5       #inputNameLow:Ljava/lang/String;
    .restart local v6       #lsProcess:Ljava/lang/Process;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :cond_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 766
    .end local v2           #command:[Ljava/lang/String;
    .end local v4           #fileNameLow:Ljava/lang/String;
    .end local v5           #inputNameLow:Ljava/lang/String;
    .end local v6           #lsProcess:Ljava/lang/Process;
    .end local v7           #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method public static isFolderExists(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 724
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 725
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    .line 726
    .local v1, retval:Z
    const/4 v0, 0x0

    .line 727
    return v1
.end method

.method public static isImagePath(Ljava/lang/String;)Z
    .locals 4
    .parameter "path"

    .prologue
    .line 1194
    const/4 v0, 0x0

    .line 1196
    .local v0, bRes:Z
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1197
    .local v1, filePath:Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1199
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 1200
    .local v2, index:I
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1203
    .end local v2           #index:I
    :cond_0
    const-string v3, ".jpg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".jpeg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".png"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".gif"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".bmp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".webp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1205
    :cond_1
    const/4 v0, 0x1

    .line 1207
    :cond_2
    return v0
.end method

.method public static isNewBurstImage(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "path"
    .parameter "checkCover"

    .prologue
    .line 960
    const/4 v0, 0x0

    .line 962
    .local v0, bRes:Z
    if-nez p0, :cond_0

    move v1, v0

    .line 983
    .end local v0           #bRes:Z
    .local v1, bRes:I
    :goto_0
    return v1

    .line 965
    .end local v1           #bRes:I
    .restart local v0       #bRes:Z
    :cond_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 966
    .local v2, pathLow:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 968
    invoke-static {v2}, Lcom/htc/album/helper/FileOperationHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 969
    const-string v3, "imag"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "_burst"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "_cover.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 971
    const/4 v0, 0x1

    :cond_1
    :goto_1
    move v1, v0

    .line 983
    .restart local v1       #bRes:I
    goto :goto_0

    .line 976
    .end local v1           #bRes:I
    :cond_2
    invoke-static {v2}, Lcom/htc/album/helper/FileOperationHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 977
    const-string v3, "imag"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "_burst"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 979
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static isOldBurstImage(Ljava/lang/String;Z)Z
    .locals 6
    .parameter "path"
    .parameter "checkCover"

    .prologue
    .line 935
    const/4 v0, 0x0

    .line 937
    .local v0, bRes:Z
    if-nez p0, :cond_0

    move v1, v0

    .line 949
    .end local v0           #bRes:Z
    .local v1, bRes:I
    :goto_0
    return v1

    .line 940
    .end local v1           #bRes:I
    .restart local v0       #bRes:Z
    :cond_0
    const/4 v3, 0x0

    .line 941
    .local v3, pattern:Ljava/util/regex/Pattern;
    if-eqz p1, :cond_2

    .line 942
    sget-object v3, Lcom/htc/album/helper/FileOperationHelper;->PATTERN_OLD_BURST_COVER:Ljava/util/regex/Pattern;

    .line 945
    :goto_1
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 946
    .local v2, matcher:Ljava/util/regex/Matcher;
    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-ne v4, v5, :cond_1

    .line 947
    const/4 v0, 0x1

    :cond_1
    move v1, v0

    .line 949
    .restart local v1       #bRes:I
    goto :goto_0

    .line 944
    .end local v1           #bRes:I
    .end local v2           #matcher:Ljava/util/regex/Matcher;
    :cond_2
    sget-object v3, Lcom/htc/album/helper/FileOperationHelper;->PATTERN_OLD_BURST:Ljava/util/regex/Pattern;

    goto :goto_1
.end method

.method public static isVideoPath(Ljava/lang/String;)Z
    .locals 4
    .parameter "path"

    .prologue
    .line 1217
    const/4 v0, 0x0

    .line 1219
    .local v0, bRes:Z
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1220
    .local v1, filePath:Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1222
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 1223
    .local v2, index:I
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1226
    .end local v2           #index:I
    :cond_0
    const-string v3, ".mpg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".avi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".mp4"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".dat"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".vob"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".rm"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".rmvb"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".wmv"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".mov"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".3gp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".3gpp2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".flv"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".webm"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".mkv"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1231
    :cond_1
    const/4 v0, 0x1

    .line 1233
    :cond_2
    return v0
.end method

.method public static move(Ljava/io/File;Ljava/io/File;)Z
    .locals 5
    .parameter "fileFrom"
    .parameter "fileTo"

    .prologue
    .line 194
    const/4 v1, 0x1

    .line 196
    .local v1, bRes:Z
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 198
    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 215
    .end local v1           #bRes:Z
    .local v2, bRes:I
    :goto_0
    return v2

    .line 202
    .end local v2           #bRes:I
    .restart local v1       #bRes:Z
    :cond_1
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 203
    if-nez v1, :cond_3

    .line 208
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileOnDifferenceStorage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 209
    .local v0, bIsDifferent:Z
    if-eqz v0, :cond_2

    .line 210
    invoke-static {p0, p1}, Lcom/htc/album/helper/FileOperationHelper;->copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    .line 211
    :cond_2
    if-eqz v1, :cond_3

    .line 212
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .end local v0           #bIsDifferent:Z
    :cond_3
    move v2, v1

    .line 215
    .restart local v2       #bRes:I
    goto :goto_0
.end method
