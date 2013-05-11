.class Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;
.super Lcom/android/camera/io/SaveImageTask;
.source "PanoramaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/PanoramaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SavePanoramaImageTask"
.end annotation


# instance fields
.field private final exifTags:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/camera/component/PanoramaController;

.field private final uiRotation:Lcom/android/camera/rotate/UIRotation;


# direct methods
.method public constructor <init>(Lcom/android/camera/component/PanoramaController;Lcom/android/camera/CaptureHandle;[BLjava/util/Hashtable;Lcom/android/camera/rotate/UIRotation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/CaptureHandle;",
            "[B",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/camera/rotate/UIRotation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-virtual {p1}, Lcom/android/camera/component/PanoramaController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/camera/io/SaveImageTask;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CaptureHandle;[B)V

    iput-object p4, p0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->exifTags:Ljava/util/Hashtable;

    iput-object p5, p0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->uiRotation:Lcom/android/camera/rotate/UIRotation;

    return-void
.end method


# virtual methods
.method protected onMediaStoreDataInserted(ZLcom/android/camera/MediaInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->this$0:Lcom/android/camera/component/PanoramaController;

    iget-object v1, p2, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    #setter for: Lcom/android/camera/component/PanoramaController;->m_LatestContentUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/camera/component/PanoramaController;->access$802(Lcom/android/camera/component/PanoramaController;Landroid/net/Uri;)Landroid/net/Uri;

    return-void
.end method

.method protected onSaveMediaToFile(Lcom/android/camera/io/Path;)Z
    .locals 32

    sget-object v2, Lcom/android/camera/component/PanoramaController$12;->$SwitchMap$com$android$camera$rotate$UIRotation:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->uiRotation:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v3}, Lcom/android/camera/rotate/UIRotation;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    sget-object v28, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v3, "No need to rotate panorama picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->getJpegRawData(Z)[B

    move-result-object v24

    if-nez v24, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v3, "No JPEG data"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    :goto_1
    return v2

    :pswitch_0
    sget-object v28, Lcom/scalado/caps/Rotation;->TO_90:Lcom/scalado/caps/Rotation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v3, "Panorama picture needs to be rotated 90 degrees"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    sget-object v28, Lcom/scalado/caps/Rotation;->TO_270:Lcom/scalado/caps/Rotation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v3, "Panorama picture needs to be rotated 270 degrees"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    sget-object v28, Lcom/scalado/caps/Rotation;->TO_180:Lcom/scalado/caps/Rotation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v3, "Panorama picture needs to be rotated 180 degrees"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    move-object/from16 v0, v28

    if-ne v0, v2, :cond_5

    const/16 v30, 0x0

    :try_start_0
    new-instance v31, Ljava/io/FileOutputStream;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_a

    if-eqz v31, :cond_2

    :try_start_2
    invoke-virtual/range {v31 .. v31}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6

    :cond_2
    :goto_2
    :try_start_3
    new-instance v18, Landroid/media/ExifInterface;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->exifTags:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->uiRotation:Lcom/android/camera/rotate/UIRotation;

    #calls: Lcom/android/camera/component/PanoramaController;->createReviewImage(Ljava/lang/String;Lcom/android/camera/rotate/UIRotation;)Landroid/graphics/Bitmap;
    invoke-static {v2, v3, v4}, Lcom/android/camera/component/PanoramaController;->access$1000(Lcom/android/camera/component/PanoramaController;Ljava/lang/String;Lcom/android/camera/rotate/UIRotation;)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$1100(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$1100(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v3

    const/16 v4, 0xd

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :cond_3
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$1100(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$1100(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v9

    const/16 v10, 0xb

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->captureHandle:Lcom/android/camera/CaptureHandle;

    invoke-virtual/range {v8 .. v13}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :goto_6
    const/4 v2, 0x1

    goto/16 :goto_1

    :catch_1
    move-exception v17

    :goto_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v3, "Cannot save panorama image"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v2, 0x0

    if-eqz v30, :cond_0

    :try_start_5
    invoke-virtual/range {v30 .. v30}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v3

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    :goto_8
    if-eqz v30, :cond_4

    :try_start_6
    invoke-virtual/range {v30 .. v30}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7

    :cond_4
    :goto_9
    throw v2

    :cond_5
    const/16 v25, 0x0

    :try_start_7
    new-instance v26, Lcom/scalado/stream/FileStream;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/scalado/stream/FileStream$Access;->WRITE:Lcom/scalado/stream/FileStream$Access;

    move-object/from16 v0, v26

    invoke-direct {v0, v2, v3}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v3, "Decode panorama picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v22, Lcom/scalado/stream/BufferStream;

    new-instance v2, Lcom/scalado/base/Buffer;

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Lcom/scalado/base/Buffer;-><init>([B)V

    move-object/from16 v0, v24

    array-length v3, v0

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object/from16 v0, v22

    #calls: Lcom/android/camera/component/PanoramaController;->createJpegDecoder(Lcom/scalado/stream/Stream;)Lcom/scalado/caps/codec/decoder/JpegDecoder;
    invoke-static {v2, v0}, Lcom/android/camera/component/PanoramaController;->access$900(Lcom/android/camera/component/PanoramaController;Lcom/scalado/stream/Stream;)Lcom/scalado/caps/codec/decoder/JpegDecoder;

    move-result-object v14

    invoke-virtual {v14}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v20

    new-instance v29, Lcom/scalado/caps/Session;

    move-object/from16 v0, v29

    invoke-direct {v0, v14}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    new-instance v27, Lcom/scalado/caps/filter/Rotate;

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/Rotate;-><init>(Lcom/scalado/caps/Session;)V

    invoke-virtual/range {v27 .. v28}, Lcom/scalado/caps/filter/Rotate;->set(Lcom/scalado/caps/Rotation;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v3, "Rotate panorama picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/scalado/caps/Rotation;->TO_180:Lcom/scalado/caps/Rotation;

    move-object/from16 v0, v28

    if-eq v0, v2, :cond_6

    sget-object v2, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    move-object/from16 v0, v28

    if-eq v0, v2, :cond_6

    new-instance v21, Lcom/scalado/base/Size;

    invoke-virtual/range {v20 .. v20}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    invoke-virtual/range {v20 .. v20}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v3}, Lcom/scalado/base/Size;-><init>(II)V

    move-object/from16 v20, v21

    :cond_6
    new-instance v15, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-direct {v15, v0, v1}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    const/high16 v2, 0x3f80

    invoke-virtual {v15, v2}, Lcom/scalado/caps/codec/encoder/JpegEncoder;->setJpegQuality(F)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v23

    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/scalado/base/Iterator;->step(I)F

    invoke-virtual/range {v23 .. v23}, Lcom/scalado/base/Iterator;->done()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_9

    if-eqz v26, :cond_2

    :try_start_9
    invoke-virtual/range {v26 .. v26}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v2

    goto/16 :goto_2

    :catch_4
    move-exception v17

    :goto_a
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v3, "Cannot save rotated panorama image"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const/4 v2, 0x0

    if-eqz v25, :cond_0

    :try_start_b
    invoke-virtual/range {v25 .. v25}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v3

    goto/16 :goto_1

    :catchall_1
    move-exception v2

    :goto_b
    if-eqz v25, :cond_7

    :try_start_c
    invoke-virtual/range {v25 .. v25}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_8

    :cond_7
    :goto_c
    throw v2

    :cond_8
    :try_start_d
    invoke-virtual/range {v18 .. v18}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v3, "No UI to send review image"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v3, "No UI to notify STITCH_COMPLETED"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_6
    move-exception v2

    goto/16 :goto_2

    :catch_7
    move-exception v3

    goto/16 :goto_9

    :catch_8
    move-exception v3

    goto :goto_c

    :catchall_2
    move-exception v2

    move-object/from16 v25, v26

    goto :goto_b

    :catch_9
    move-exception v17

    move-object/from16 v25, v26

    goto :goto_a

    :catchall_3
    move-exception v2

    move-object/from16 v30, v31

    goto/16 :goto_8

    :catch_a
    move-exception v17

    move-object/from16 v30, v31

    goto/16 :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
