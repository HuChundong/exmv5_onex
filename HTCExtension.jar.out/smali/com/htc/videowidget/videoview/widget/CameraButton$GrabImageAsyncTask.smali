.class Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;
.super Landroid/os/AsyncTask;
.source "CameraButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/widget/CameraButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GrabImageAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/widget/CameraButton;


# direct methods
.method private constructor <init>(Lcom/htc/videowidget/videoview/widget/CameraButton;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;->this$0:Lcom/htc/videowidget/videoview/widget/CameraButton;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/videowidget/videoview/widget/CameraButton;Lcom/htc/videowidget/videoview/widget/CameraButton$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;-><init>(Lcom/htc/videowidget/videoview/widget/CameraButton;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 31
    .parameter "params"

    .prologue
    .line 254
    const-string v26, "CameraButton"

    const-string v27, "GrabImageAsyncTask::doInBackground Start"

    invoke-static/range {v26 .. v27}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 256
    .local v4, bRet:Ljava/lang/Boolean;
    const-string v3, "image/jpeg"

    .line 259
    .local v3, JPG_MIME:Ljava/lang/String;
    const/16 v20, 0x0

    .line 260
    .local v20, strDst:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;->this$0:Lcom/htc/videowidget/videoview/widget/CameraButton;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/videowidget/videoview/widget/CameraButton;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;
    invoke-static/range {v26 .. v26}, Lcom/htc/videowidget/videoview/widget/CameraButton;->access$200(Lcom/htc/videowidget/videoview/widget/CameraButton;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI;->captureFrame()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 261
    .local v5, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;->this$0:Lcom/htc/videowidget/videoview/widget/CameraButton;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/videowidget/videoview/widget/CameraButton;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;
    invoke-static/range {v26 .. v26}, Lcom/htc/videowidget/videoview/widget/CameraButton;->access$200(Lcom/htc/videowidget/videoview/widget/CameraButton;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI;->getCurrentPosition()I

    move-result v7

    .line 262
    .local v7, currentPos:I
    const-string v12, "%010d"

    .line 263
    .local v12, formatStr:Ljava/lang/String;
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, v26

    invoke-static {v12, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v11

    .line 266
    .local v11, formatPos:Ljava/lang/String;
    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 267
    .local v6, calendar:Ljava/util/Calendar;
    const/4 v10, 0x0

    .line 268
    .local v10, fileName:Ljava/lang/String;
    const/16 v25, 0x0

    .line 269
    .local v25, videoPath:Ljava/lang/String;
    const/16 v22, 0x0

    .line 270
    .local v22, tmpFileName:Ljava/lang/String;
    const/16 v21, 0x0

    .line 271
    .local v21, stream:Ljava/io/OutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;->this$0:Lcom/htc/videowidget/videoview/widget/CameraButton;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/videowidget/videoview/widget/CameraButton;->mMetaData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;
    invoke-static/range {v26 .. v26}, Lcom/htc/videowidget/videoview/widget/CameraButton;->access$300(Lcom/htc/videowidget/videoview/widget/CameraButton;)Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    move-result-object v26

    if-eqz v26, :cond_0

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;->this$0:Lcom/htc/videowidget/videoview/widget/CameraButton;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/videowidget/videoview/widget/CameraButton;->mMetaData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;
    invoke-static/range {v26 .. v26}, Lcom/htc/videowidget/videoview/widget/CameraButton;->access$300(Lcom/htc/videowidget/videoview/widget/CameraButton;)Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;->getTitle()Ljava/lang/String;

    move-result-object v10

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;->this$0:Lcom/htc/videowidget/videoview/widget/CameraButton;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/videowidget/videoview/widget/CameraButton;->mMetaData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;
    invoke-static/range {v26 .. v26}, Lcom/htc/videowidget/videoview/widget/CameraButton;->access$300(Lcom/htc/videowidget/videoview/widget/CameraButton;)Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;->getPath()Ljava/lang/String;

    move-result-object v25

    .line 277
    :cond_0
    if-eqz v10, :cond_1

    if-nez v25, :cond_2

    .line 279
    :cond_1
    const-string v26, "CameraButton"

    const-string v27, "Fails to get metadata information"

    invoke-static/range {v26 .. v27}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    .line 362
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #calendar:Ljava/util/Calendar;
    .end local v7           #currentPos:I
    .end local v10           #fileName:Ljava/lang/String;
    .end local v11           #formatPos:Ljava/lang/String;
    .end local v12           #formatStr:Ljava/lang/String;
    .end local v21           #stream:Ljava/io/OutputStream;
    .end local v22           #tmpFileName:Ljava/lang/String;
    .end local v25           #videoPath:Ljava/lang/String;
    :goto_0
    return-object v26

    .line 283
    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    .restart local v6       #calendar:Ljava/util/Calendar;
    .restart local v7       #currentPos:I
    .restart local v10       #fileName:Ljava/lang/String;
    .restart local v11       #formatPos:Ljava/lang/String;
    .restart local v12       #formatStr:Ljava/lang/String;
    .restart local v21       #stream:Ljava/io/OutputStream;
    .restart local v22       #tmpFileName:Ljava/lang/String;
    .restart local v25       #videoPath:Ljava/lang/String;
    :cond_2
    const-string v26, "[.]"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 284
    .local v23, tokens:[Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v27, 0x0

    aget-object v27, v23, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "_"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 286
    new-instance v24, Ljava/io/File;

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    .local v24, videoFile:Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->lastModified()J

    move-result-wide v16

    .line 288
    .local v16, lastModifiedTime:J
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v19

    .line 289
    .local v19, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;->this$0:Lcom/htc/videowidget/videoview/widget/CameraButton;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    #calls: Lcom/htc/videowidget/videoview/widget/CameraButton;->isStorageEnough(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/widget/CameraButton;->access$400(Lcom/htc/videowidget/videoview/widget/CameraButton;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_3

    .line 291
    const-string v26, "CameraButton"

    const-string v27, "Fails to capture because storge not enough"

    invoke-static/range {v26 .. v27}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    goto :goto_0

    .line 295
    :cond_3
    const/4 v14, 0x0

    .line 296
    .local v14, imageFile:Ljava/io/File;
    const-string v26, "CameraButton"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "fileName = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", lastModifiedTime = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 299
    :try_start_2
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    .local v9, file:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v26

    if-nez v26, :cond_4

    .line 302
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 311
    .end local v9           #file:Ljava/io/File;
    :cond_4
    :goto_1
    if-eqz v10, :cond_6

    .line 313
    move-object/from16 v22, v10

    .line 314
    const/4 v13, 0x1

    .local v13, i:I
    move-object v15, v14

    .line 318
    .end local v14           #imageFile:Ljava/io/File;
    .local v15, imageFile:Ljava/io/File;
    :goto_2
    :try_start_3
    new-instance v14, Ljava/io/File;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ".jpg"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 326
    .end local v15           #imageFile:Ljava/io/File;
    .restart local v14       #imageFile:Ljava/io/File;
    :goto_3
    :try_start_4
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_5

    .line 328
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "_"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 314
    add-int/lit8 v13, v13, 0x1

    move-object v15, v14

    .end local v14           #imageFile:Ljava/io/File;
    .restart local v15       #imageFile:Ljava/io/File;
    goto :goto_2

    .line 305
    .end local v13           #i:I
    .end local v15           #imageFile:Ljava/io/File;
    .restart local v14       #imageFile:Ljava/io/File;
    :catch_0
    move-exception v8

    .line 307
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 308
    const-string v26, "CameraButton"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Problem creating Image folder: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/videowidget/videoview/utilities/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 347
    .end local v6           #calendar:Ljava/util/Calendar;
    .end local v8           #e:Ljava/lang/Exception;
    .end local v10           #fileName:Ljava/lang/String;
    .end local v14           #imageFile:Ljava/io/File;
    .end local v16           #lastModifiedTime:J
    .end local v19           #path:Ljava/lang/String;
    .end local v21           #stream:Ljava/io/OutputStream;
    .end local v22           #tmpFileName:Ljava/lang/String;
    .end local v23           #tokens:[Ljava/lang/String;
    .end local v24           #videoFile:Ljava/io/File;
    .end local v25           #videoPath:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 349
    .restart local v8       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v26, "CameraButton"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Fails to convert the bitmap to a JPEG file for  "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/videowidget/videoview/utilities/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v26

    goto/16 :goto_0

    .line 320
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v6       #calendar:Ljava/util/Calendar;
    .restart local v10       #fileName:Ljava/lang/String;
    .restart local v13       #i:I
    .restart local v15       #imageFile:Ljava/io/File;
    .restart local v16       #lastModifiedTime:J
    .restart local v19       #path:Ljava/lang/String;
    .restart local v21       #stream:Ljava/io/OutputStream;
    .restart local v22       #tmpFileName:Ljava/lang/String;
    .restart local v23       #tokens:[Ljava/lang/String;
    .restart local v24       #videoFile:Ljava/io/File;
    .restart local v25       #videoPath:Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 322
    .restart local v8       #e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 323
    const-string v26, "CameraButton"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Unable to new File: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v15

    .end local v15           #imageFile:Ljava/io/File;
    .restart local v14       #imageFile:Ljava/io/File;
    goto/16 :goto_3

    .line 332
    .end local v8           #e:Ljava/lang/Exception;
    :cond_5
    new-instance v21, Ljava/io/FileOutputStream;

    .end local v21           #stream:Ljava/io/OutputStream;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ".jpg"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 337
    .end local v13           #i:I
    .restart local v21       #stream:Ljava/io/OutputStream;
    :cond_6
    sget-object v26, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v27, 0x4b

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v21

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 338
    if-eqz v21, :cond_7

    .line 340
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 342
    :cond_7
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ".jpg"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 343
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    .local v18, outputFile:Ljava/io/File;
    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 345
    const-string v26, "CameraButton"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "strDst = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 353
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;->this$0:Lcom/htc/videowidget/videoview/widget/CameraButton;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/videowidget/videoview/widget/CameraButton;->mContext:Landroid/content/Context;
    invoke-static/range {v26 .. v26}, Lcom/htc/videowidget/videoview/widget/CameraButton;->access$500(Lcom/htc/videowidget/videoview/widget/CameraButton;)Landroid/content/Context;

    move-result-object v26

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v20, v27, v28

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "image/jpeg"

    aput-object v30, v28, v29

    const/16 v29, 0x0

    invoke-static/range {v26 .. v29}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 354
    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v4

    .line 361
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #calendar:Ljava/util/Calendar;
    .end local v7           #currentPos:I
    .end local v10           #fileName:Ljava/lang/String;
    .end local v11           #formatPos:Ljava/lang/String;
    .end local v12           #formatStr:Ljava/lang/String;
    .end local v14           #imageFile:Ljava/io/File;
    .end local v16           #lastModifiedTime:J
    .end local v18           #outputFile:Ljava/io/File;
    .end local v19           #path:Ljava/lang/String;
    .end local v21           #stream:Ljava/io/OutputStream;
    .end local v22           #tmpFileName:Ljava/lang/String;
    .end local v23           #tokens:[Ljava/lang/String;
    .end local v24           #videoFile:Ljava/io/File;
    .end local v25           #videoPath:Ljava/lang/String;
    :goto_4
    const-string v26, "CameraButton"

    const-string v27, "GrabImageAsyncTask::doInBackground End"

    invoke-static/range {v26 .. v27}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v26, v4

    .line 362
    goto/16 :goto_0

    .line 356
    :catch_3
    move-exception v8

    .line 358
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v26, "CameraButton"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Fails to capture frame: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/videowidget/videoview/utilities/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 250
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "bResult"

    .prologue
    const/4 v3, 0x0

    .line 367
    const-string v1, "CameraButton"

    const-string v2, "GrabImageAsyncTask::onPostExecute Start"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;->this$0:Lcom/htc/videowidget/videoview/widget/CameraButton;

    #getter for: Lcom/htc/videowidget/videoview/widget/CameraButton;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/videowidget/videoview/widget/CameraButton;->access$500(Lcom/htc/videowidget/videoview/widget/CameraButton;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    .line 369
    .local v0, res:Landroid/content/res/Resources;
    if-nez v0, :cond_0

    .line 371
    const-string v1, "CameraButton"

    const-string v2, "[onClick] res is null"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :goto_0
    return-void

    .line 375
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 377
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;->this$0:Lcom/htc/videowidget/videoview/widget/CameraButton;

    #getter for: Lcom/htc/videowidget/videoview/widget/CameraButton;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/videowidget/videoview/widget/CameraButton;->access$500(Lcom/htc/videowidget/videoview/widget/CameraButton;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x609003a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 384
    :goto_1
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;->this$0:Lcom/htc/videowidget/videoview/widget/CameraButton;

    const/4 v2, 0x0

    #setter for: Lcom/htc/videowidget/videoview/widget/CameraButton;->mImageTask:Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;
    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/widget/CameraButton;->access$602(Lcom/htc/videowidget/videoview/widget/CameraButton;Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;)Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;

    .line 385
    const-string v1, "CameraButton"

    const-string v2, "GrabImageAsyncTask::onPostExecute End"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :cond_1
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;->this$0:Lcom/htc/videowidget/videoview/widget/CameraButton;

    #getter for: Lcom/htc/videowidget/videoview/widget/CameraButton;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/videowidget/videoview/widget/CameraButton;->access$500(Lcom/htc/videowidget/videoview/widget/CameraButton;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x609003b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 250
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
