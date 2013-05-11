.class Lcom/android/camera/component/SmartShotController$1;
.super Ljava/lang/Object;
.source "SmartShotController.java"

# interfaces
.implements Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/SmartShotController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/SmartShotController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/SmartShotController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/SmartShotController$1;->this$0:Lcom/android/camera/component/SmartShotController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllImagesAdded()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController$1;->this$0:Lcom/android/camera/component/SmartShotController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/SmartShotController;->access$600(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAllImagesAdded - Start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController$1;->this$0:Lcom/android/camera/component/SmartShotController;

    #getter for: Lcom/android/camera/component/SmartShotController;->FDE:Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;
    invoke-static {v0}, Lcom/android/camera/component/SmartShotController;->access$700(Lcom/android/camera/component/SmartShotController;)Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController$1;->this$0:Lcom/android/camera/component/SmartShotController;

    #getter for: Lcom/android/camera/component/SmartShotController;->FDE:Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;
    invoke-static {v0}, Lcom/android/camera/component/SmartShotController;->access$700(Lcom/android/camera/component/SmartShotController;)Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;->finalize()V

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController$1;->this$0:Lcom/android/camera/component/SmartShotController;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/component/SmartShotController;->FDE:Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;
    invoke-static {v0, v1}, Lcom/android/camera/component/SmartShotController;->access$702(Lcom/android/camera/component/SmartShotController;Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;)Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController$1;->this$0:Lcom/android/camera/component/SmartShotController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/SmartShotController;->access$800(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAllImagesAdded - End"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController$1;->this$0:Lcom/android/camera/component/SmartShotController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/SmartShotController;->access$1100(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onError()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLTWCompleted(Lcom/scalado/base/Image;)V
    .locals 0

    return-void
.end method

.method public onMergedImage(Lcom/scalado/base/Image;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/SmartShotController$1;->this$0:Lcom/android/camera/component/SmartShotController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/SmartShotController;->access$000(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onMergedImage - Start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/SmartShotController$1;->this$0:Lcom/android/camera/component/SmartShotController;

    move-object/from16 v0, p1

    iput-object v0, v1, Lcom/android/camera/component/SmartShotController;->m_Screen:Lcom/scalado/base/Image;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/SmartShotController$1;->this$0:Lcom/android/camera/component/SmartShotController;

    invoke-virtual {v1}, Lcom/android/camera/component/SmartShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v14

    sget-object v2, Lcom/android/camera/component/SmartShotController$5;->$SwitchMap$com$android$camera$rotate$UIRotation:[I

    iget-object v1, v14, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/android/camera/rotate/UIRotation;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    const/4 v15, 0x0

    :goto_0
    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v1, Lcom/scalado/caps/Session;

    new-instance v2, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    invoke-direct {v1, v2}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    const/4 v2, 0x1

    invoke-static {v1, v6, v15, v2}, Lcom/android/camera/imaging/ImageUtility;->convertToBitmap(Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;IZ)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/SmartShotController$1;->this$0:Lcom/android/camera/component/SmartShotController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/SmartShotController$1;->this$0:Lcom/android/camera/component/SmartShotController;

    #getter for: Lcom/android/camera/component/SmartShotController;->m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;
    invoke-static {v2}, Lcom/android/camera/component/SmartShotController;->access$100(Lcom/android/camera/component/SmartShotController;)Lcom/android/camera/component/SmartShotUI;

    move-result-object v2

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/component/SmartShotController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    new-instance v7, Lcom/android/camera/component/SmartShotController$GroupPortraitImageTask;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/component/SmartShotController$1;->this$0:Lcom/android/camera/component/SmartShotController;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/SmartShotController$1;->this$0:Lcom/android/camera/component/SmartShotController;

    #getter for: Lcom/android/camera/component/SmartShotController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;
    invoke-static {v1}, Lcom/android/camera/component/SmartShotController;->access$200(Lcom/android/camera/component/SmartShotController;)Lcom/android/camera/CaptureHandle;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/SmartShotController$1;->this$0:Lcom/android/camera/component/SmartShotController;

    #getter for: Lcom/android/camera/component/SmartShotController;->m_ExifTags:Ljava/util/Hashtable;
    invoke-static {v1}, Lcom/android/camera/component/SmartShotController;->access$300(Lcom/android/camera/component/SmartShotController;)Ljava/util/Hashtable;

    move-result-object v11

    iget-object v1, v14, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/camera/rotate/UIRotation;

    move-object/from16 v10, p1

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/component/SmartShotController$GroupPortraitImageTask;-><init>(Lcom/android/camera/component/SmartShotController;Lcom/android/camera/CaptureHandle;Lcom/scalado/base/Image;Ljava/util/Hashtable;Lcom/android/camera/rotate/UIRotation;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/component/SmartShotController;->access$400()Lcom/android/camera/io/DCFInfo;

    move-result-object v1

    :goto_1
    iput-object v1, v7, Lcom/android/camera/component/SmartShotController$GroupPortraitImageTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/android/camera/component/SmartShotController$GroupPortraitImageTask;->isLastMedia:Z

    invoke-virtual {v14, v7}, Lcom/android/camera/CameraThread;->saveImage(Lcom/android/camera/io/SaveImageTask;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/component/SmartShotController$1;->this$0:Lcom/android/camera/component/SmartShotController;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/SmartShotController$1;->this$0:Lcom/android/camera/component/SmartShotController;

    #getter for: Lcom/android/camera/component/SmartShotController;->m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;
    invoke-static {v1}, Lcom/android/camera/component/SmartShotController;->access$100(Lcom/android/camera/component/SmartShotController;)Lcom/android/camera/component/SmartShotUI;

    move-result-object v9

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/SmartShotController$1;->this$0:Lcom/android/camera/component/SmartShotController;

    #getter for: Lcom/android/camera/component/SmartShotController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;
    invoke-static {v1}, Lcom/android/camera/component/SmartShotController;->access$200(Lcom/android/camera/component/SmartShotController;)Lcom/android/camera/CaptureHandle;

    move-result-object v13

    invoke-virtual/range {v8 .. v13}, Lcom/android/camera/component/SmartShotController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/SmartShotController$1;->this$0:Lcom/android/camera/component/SmartShotController;

    #getter for: Lcom/android/camera/component/SmartShotController;->m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;
    invoke-static {v1}, Lcom/android/camera/component/SmartShotController;->access$100(Lcom/android/camera/component/SmartShotController;)Lcom/android/camera/component/SmartShotUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/component/SmartShotUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v14}, Lcom/android/camera/CameraThread;->setCanStartPreview()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/SmartShotController$1;->this$0:Lcom/android/camera/component/SmartShotController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/SmartShotController$1;->this$0:Lcom/android/camera/component/SmartShotController;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/component/SmartShotController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/SmartShotController$1;->this$0:Lcom/android/camera/component/SmartShotController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/SmartShotController;->access$500(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onMergedImage - End"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const/16 v15, 0x10e

    goto/16 :goto_0

    :pswitch_1
    const/16 v15, 0x5a

    goto/16 :goto_0

    :pswitch_2
    const/16 v15, 0xb4

    goto/16 :goto_0

    :cond_1
    sget-object v1, Lcom/android/camera/io/DCFInfo;->DEFAULT:Lcom/android/camera/io/DCFInfo;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onOutputDone(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReplacementRects(Ljava/util/List;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;",
            ">;I)V"
        }
    .end annotation

    move-object v0, p1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/SmartShotController$1;->this$0:Lcom/android/camera/component/SmartShotController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/SmartShotController;->access$900(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Replacement faces: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/SmartShotController$1;->this$0:Lcom/android/camera/component/SmartShotController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/SmartShotController;->access$1000(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Replacement faces: Null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSourceImage(Lcom/scalado/base/Image;)V
    .locals 0

    return-void
.end method
