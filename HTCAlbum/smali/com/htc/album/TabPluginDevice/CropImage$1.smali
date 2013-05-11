.class Lcom/htc/album/TabPluginDevice/CropImage$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/CropImage;->onOk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/CropImage;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 32

    .prologue
    .line 1039
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mIsOnClickDone:Z
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$200(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1393
    :cond_0
    :goto_0
    return-void

    .line 1042
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v4, 0x1

    #setter for: Lcom/htc/album/TabPluginDevice/CropImage;->mIsOnClickDone:Z
    invoke-static {v2, v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$202(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z

    .line 1047
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v4, 0x1

    #setter for: Lcom/htc/album/TabPluginDevice/CropImage;->mSaving:Z
    invoke-static {v2, v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$002(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z

    .line 1049
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    if-nez v2, :cond_9

    .line 1051
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mCrop:Lcom/htc/album/TabPluginDevice/HighlightView;

    if-nez v2, :cond_2

    .line 1053
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v4, "no cropped image..."

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v4, 0x0

    #setter for: Lcom/htc/album/TabPluginDevice/CropImage;->mImageSaved:Z
    invoke-static {v2, v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$402(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z

    .line 1059
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V

    goto :goto_0

    .line 1063
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mCrop:Lcom/htc/album/TabPluginDevice/HighlightView;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v24

    .line 1066
    .local v24, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mEnableKDDIResizeCrop:Z
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$500(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1068
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v4, v4, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v24

    #calls: Lcom/htc/album/TabPluginDevice/CropImage;->customizeKDDICropRegion(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)Landroid/graphics/Rect;
    invoke-static {v2, v0, v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$600(Lcom/htc/album/TabPluginDevice/CropImage;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v24

    .line 1069
    if-nez v24, :cond_3

    .line 1070
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mCrop:Lcom/htc/album/TabPluginDevice/HighlightView;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v24

    .line 1074
    :cond_3
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->width()I

    move-result v30

    .line 1075
    .local v30, width:I
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v17

    .line 1082
    .local v17, height:I
    const/4 v10, 0x0

    .line 1083
    .local v10, degree:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$700(Lcom/htc/album/TabPluginDevice/CropImage;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1084
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$700(Lcom/htc/album/TabPluginDevice/CropImage;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v10

    .line 1086
    :cond_4
    rem-int/lit16 v10, v10, 0x168

    .line 1087
    if-gez v10, :cond_5

    .line 1088
    add-int/lit16 v10, v10, 0x168

    .line 1093
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mRawBitmapAsSource:Z
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$800(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1095
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Crop from source"

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    move-object/from16 v0, v24

    #calls: Lcom/htc/album/TabPluginDevice/CropImage;->cropFromSource(Landroid/graphics/Rect;I)V
    invoke-static {v2, v0, v10}, Lcom/htc/album/TabPluginDevice/CropImage;->access$900(Lcom/htc/album/TabPluginDevice/CropImage;Landroid/graphics/Rect;I)V

    .line 1099
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mRawBitmapAsSource:Z
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$800(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    if-nez v2, :cond_8

    .line 1101
    :cond_7
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cropped from on screen, corp width "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", height "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    move-object/from16 v0, v24

    #calls: Lcom/htc/album/TabPluginDevice/CropImage;->cropFromRawData(Landroid/graphics/Rect;)V
    invoke-static {v2, v0}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1000(Lcom/htc/album/TabPluginDevice/CropImage;Landroid/graphics/Rect;)V

    .line 1104
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mCircleCrop:Z
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1100(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    move-object/from16 v0, v24

    #calls: Lcom/htc/album/TabPluginDevice/CropImage;->cropCircle(Landroid/graphics/Rect;)V
    invoke-static {v2, v0}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1200(Lcom/htc/album/TabPluginDevice/CropImage;Landroid/graphics/Rect;)V

    .line 1114
    .end local v10           #degree:I
    .end local v17           #height:I
    .end local v24           #r:Landroid/graphics/Rect;
    .end local v30           #width:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1116
    :cond_a
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v4, "can not create cropped image, Crop image will be closed"

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V

    goto/16 :goto_0

    .line 1125
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mRawBitmapAsSource:Z
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$800(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1300(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1400(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v2

    if-eqz v2, :cond_c

    .line 1128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mScale:Z
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1500(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1130
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scale bitmap to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputX:I
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1300(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputY:I
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1400(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #calls: Lcom/htc/album/TabPluginDevice/CropImage;->scaledCropBitmap()V
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1600(Lcom/htc/album/TabPluginDevice/CropImage;)V

    .line 1143
    :cond_c
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1145
    :cond_d
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v4, "can not transform rectangle to cropped image, Crop image will be closed"

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V

    goto/16 :goto_0

    .line 1135
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #calls: Lcom/htc/album/TabPluginDevice/CropImage;->cropCenterCropBitmap()V
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1700(Lcom/htc/album/TabPluginDevice/CropImage;)V

    goto :goto_1

    .line 1150
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    .line 1151
    .local v20, myExtras:Landroid/os/Bundle;
    if-eqz v20, :cond_11

    const-string v2, "data"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mReturnData:Z
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1800(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1153
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #calls: Lcom/htc/album/TabPluginDevice/CropImage;->sendBackCropResult()V
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$1900(Lcom/htc/album/TabPluginDevice/CropImage;)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V

    goto/16 :goto_0

    .line 1159
    :cond_11
    const/16 v28, 0x0

    .line 1160
    .local v28, retUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2000(Lcom/htc/album/TabPluginDevice/CropImage;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 1162
    const/16 v22, 0x0

    .line 1165
    .local v22, outputStream:Ljava/io/OutputStream;
    const/16 v19, 0x0

    .line 1166
    .local v19, isSkipAddImageAndStoreImage:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2000(Lcom/htc/album/TabPluginDevice/CropImage;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v29

    .line 1167
    .local v29, scheme:Ljava/lang/String;
    const-string v2, "file"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mCropType:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2100(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v2

    const/16 v4, 0x7f05

    if-ne v2, v4, :cond_12

    .line 1172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v4, v4, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    invoke-static {v2, v4}, Lcom/htc/lockscreen/HtcLSUtility;->setLockScreenWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    .line 1173
    const/16 v19, 0x1

    .line 1175
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputWithDBUpdate:Z
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2200(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1177
    new-instance v23, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2000(Lcom/htc/album/TabPluginDevice/CropImage;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "://"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1178
    .end local v22           #outputStream:Ljava/io/OutputStream;
    .local v23, outputStream:Ljava/io/OutputStream;
    if-eqz v23, :cond_25

    .line 1180
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mSaveFormat:Landroid/graphics/Bitmap$CompressFormat;
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2300(Lcom/htc/album/TabPluginDevice/CropImage;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v4

    const/16 v5, 0x55

    move-object/from16 v0, v23

    invoke-virtual {v2, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    .line 1181
    const/16 v19, 0x1

    move-object/from16 v22, v23

    .line 1197
    .end local v23           #outputStream:Ljava/io/OutputStream;
    .restart local v22       #outputStream:Ljava/io/OutputStream;
    :cond_13
    :goto_2
    if-nez v19, :cond_14

    .line 1199
    :try_start_2
    const-string v25, ""

    .line 1200
    .local v25, resultDataPath:Ljava/lang/String;
    const-string v27, ""

    .line 1201
    .local v27, resultFolderPath:Ljava/lang/String;
    const-string v26, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1205
    .local v26, resultFileName:Ljava/lang/String;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2000(Lcom/htc/album/TabPluginDevice/CropImage;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2000(Lcom/htc/album/TabPluginDevice/CropImage;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "://"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    .line 1206
    const/4 v2, 0x0

    const-string v4, "/"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 1207
    const-string v2, "/"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v26

    .line 1215
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    #calls: Lcom/htc/album/TabPluginDevice/CropImage;->addImageAndStoreImage(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v2, v0, v1}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2400(Lcom/htc/album/TabPluginDevice/CropImage;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    .line 1218
    .end local v25           #resultDataPath:Ljava/lang/String;
    .end local v26           #resultFileName:Ljava/lang/String;
    .end local v27           #resultFolderPath:Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mToastCropResult:Z
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2500(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v2

    if-eqz v2, :cond_16

    if-nez v28, :cond_15

    if-eqz v22, :cond_16

    .line 1220
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    new-instance v4, Lcom/htc/album/TabPluginDevice/CropImage$1$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/htc/album/TabPluginDevice/CropImage$1$1;-><init>(Lcom/htc/album/TabPluginDevice/CropImage$1;)V

    invoke-virtual {v2, v4}, Lcom/htc/album/TabPluginDevice/CropImage;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1262
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v4, 0x1

    #setter for: Lcom/htc/album/TabPluginDevice/CropImage;->mImageSaved:Z
    invoke-static {v2, v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$402(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1271
    if-eqz v22, :cond_17

    .line 1275
    :try_start_5
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 1283
    .end local v29           #scheme:Ljava/lang/String;
    :cond_17
    :goto_3
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 1284
    .local v15, extras:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2000(Lcom/htc/album/TabPluginDevice/CropImage;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v29

    .line 1285
    .restart local v29       #scheme:Ljava/lang/String;
    const-string v2, "filePath"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2000(Lcom/htc/album/TabPluginDevice/CropImage;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "://"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v5, -0x1

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    if-nez v28, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2000(Lcom/htc/album/TabPluginDevice/CropImage;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v6, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/htc/album/TabPluginDevice/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 1389
    .end local v15           #extras:Landroid/os/Bundle;
    .end local v19           #isSkipAddImageAndStoreImage:Z
    .end local v22           #outputStream:Ljava/io/OutputStream;
    .end local v29           #scheme:Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V

    goto/16 :goto_0

    .line 1187
    .restart local v19       #isSkipAddImageAndStoreImage:Z
    .restart local v22       #outputStream:Ljava/io/OutputStream;
    .restart local v29       #scheme:Ljava/lang/String;
    :cond_18
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mOutputUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2000(Lcom/htc/album/TabPluginDevice/CropImage;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v22

    .line 1188
    if-eqz v22, :cond_13

    .line 1192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mSaveFormat:Landroid/graphics/Bitmap$CompressFormat;
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2300(Lcom/htc/album/TabPluginDevice/CropImage;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v4

    const/16 v5, 0x55

    move-object/from16 v0, v22

    invoke-virtual {v2, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1193
    const/16 v19, 0x1

    goto/16 :goto_2

    .line 1209
    .restart local v25       #resultDataPath:Ljava/lang/String;
    .restart local v26       #resultFileName:Ljava/lang/String;
    .restart local v27       #resultFolderPath:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 1211
    .local v12, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][CropImage]Can\'t get result folder path or result file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 1271
    if-eqz v22, :cond_0

    .line 1275
    :try_start_7
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 1277
    :catch_1
    move-exception v13

    .line 1279
    .local v13, ex:Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1264
    .end local v12           #e:Ljava/lang/Exception;
    .end local v13           #ex:Ljava/io/IOException;
    .end local v25           #resultDataPath:Ljava/lang/String;
    .end local v26           #resultFileName:Ljava/lang/String;
    .end local v27           #resultFolderPath:Ljava/lang/String;
    .end local v29           #scheme:Ljava/lang/String;
    :catch_2
    move-exception v13

    .line 1266
    .restart local v13       #ex:Ljava/io/IOException;
    :goto_6
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v4, 0x0

    #setter for: Lcom/htc/album/TabPluginDevice/CropImage;->mImageSaved:Z
    invoke-static {v2, v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$402(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z

    .line 1267
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got IOException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1271
    if-eqz v22, :cond_17

    .line 1275
    :try_start_9
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_3

    .line 1277
    :catch_3
    move-exception v13

    .line 1279
    :goto_7
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 1271
    .end local v13           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    :goto_8
    if-eqz v22, :cond_19

    .line 1275
    :try_start_a
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 1271
    :cond_19
    :goto_9
    throw v2

    .line 1287
    .restart local v15       #extras:Landroid/os/Bundle;
    .restart local v29       #scheme:Ljava/lang/String;
    :cond_1a
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    .line 1291
    .end local v15           #extras:Landroid/os/Bundle;
    .end local v19           #isSkipAddImageAndStoreImage:Z
    .end local v22           #outputStream:Ljava/io/OutputStream;
    .end local v29           #scheme:Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mCropType:I
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2100(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v2

    const/16 v4, 0x7f04

    if-ne v2, v4, :cond_1d

    .line 1293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImageLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2600(Lcom/htc/album/TabPluginDevice/CropImage;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1295
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v2, :cond_1c

    .line 1298
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v5, v5, Lcom/htc/album/TabPluginDevice/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v5}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Lcom/htc/album/TabPluginDevice/CropImage;->setResult(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 1310
    :goto_a
    :try_start_d
    monitor-exit v4

    goto/16 :goto_5

    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v2

    .line 1300
    :catch_4
    move-exception v12

    .line 1301
    .local v12, e:Ljava/io/IOException;
    :try_start_e
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Failed to set wallpaper."

    invoke-static {v2, v5, v12}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/htc/album/TabPluginDevice/CropImage;->setResult(I)V

    goto :goto_a

    .line 1307
    .end local v12           #e:Ljava/io/IOException;
    :cond_1c
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Failed to set wallpaper NG."

    invoke-static {v2, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/htc/album/TabPluginDevice/CropImage;->setResult(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_a

    .line 1314
    :cond_1d
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 1315
    .restart local v15       #extras:Landroid/os/Bundle;
    const-string v2, "rect"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v4, v4, Lcom/htc/album/TabPluginDevice/CropImage;->mCrop:Lcom/htc/album/TabPluginDevice/HighlightView;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$700(Lcom/htc/album/TabPluginDevice/CropImage;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    .line 1318
    .local v3, tmpUri:Landroid/net/Uri;
    const/16 v18, 0x0

    .line 1319
    .local v18, imagePath:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v4, "media"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1321
    const/4 v8, 0x0

    .line 1324
    .local v8, c:Landroid/database/Cursor;
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_data"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1329
    if-eqz v8, :cond_1e

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    move-result-object v18

    .line 1339
    :cond_1e
    if-eqz v8, :cond_1f

    :goto_b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1347
    .end local v8           #c:Landroid/database/Cursor;
    :cond_1f
    :goto_c
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " map to file path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    if-nez v18, :cond_22

    .line 1349
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t find abs file path for uri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V

    goto/16 :goto_0

    .line 1331
    .restart local v8       #c:Landroid/database/Cursor;
    :catch_5
    move-exception v13

    .line 1333
    .local v13, ex:Ljava/lang/Exception;
    :try_start_10
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 1334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v4, 0x0

    #setter for: Lcom/htc/album/TabPluginDevice/CropImage;->mImageSaved:Z
    invoke-static {v2, v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$402(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z

    .line 1335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 1339
    if-eqz v8, :cond_1f

    goto :goto_b

    .end local v13           #ex:Ljava/lang/Exception;
    :catchall_2
    move-exception v2

    if-eqz v8, :cond_20

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_20
    throw v2

    .line 1344
    .end local v8           #c:Landroid/database/Cursor;
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v4, 0x0

    #setter for: Lcom/htc/album/TabPluginDevice/CropImage;->mImageSaved:Z
    invoke-static {v2, v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$402(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z

    .line 1345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->finish()V

    goto :goto_c

    .line 1353
    :cond_22
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1355
    .local v21, oldPath:Ljava/io/File;
    new-instance v11, Ljava/io/File;

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1357
    .local v11, directory:Ljava/io/File;
    const/16 v31, 0x0

    .line 1358
    .local v31, x:I
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    .line 1359
    .local v16, fileName:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v4, "."

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 1363
    :cond_23
    add-int/lit8 v31, v31, 0x1

    .line 1364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".jpg"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1365
    .local v9, candidate:Ljava/lang/String;
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v2, :cond_24

    .line 1366
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "candidate is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    :cond_24
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v14

    .line 1368
    .local v14, exists:Z
    if-nez v14, :cond_23

    .line 1374
    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/htc/album/TabPluginDevice/CropImage;->addImageAndStoreImage(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v2, v4, v5}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2400(Lcom/htc/album/TabPluginDevice/CropImage;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    .line 1376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v15}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/htc/album/TabPluginDevice/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 1379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v4, 0x1

    #setter for: Lcom/htc/album/TabPluginDevice/CropImage;->mImageSaved:Z
    invoke-static {v2, v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$402(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    goto/16 :goto_5

    .line 1381
    :catch_6
    move-exception v13

    .line 1383
    .restart local v13       #ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage$1;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const/4 v4, 0x0

    #setter for: Lcom/htc/album/TabPluginDevice/CropImage;->mImageSaved:Z
    invoke-static {v2, v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$402(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z

    .line 1384
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 1277
    .end local v3           #tmpUri:Landroid/net/Uri;
    .end local v9           #candidate:Ljava/lang/String;
    .end local v11           #directory:Ljava/io/File;
    .end local v13           #ex:Ljava/lang/Exception;
    .end local v14           #exists:Z
    .end local v15           #extras:Landroid/os/Bundle;
    .end local v16           #fileName:Ljava/lang/String;
    .end local v18           #imagePath:Ljava/lang/String;
    .end local v21           #oldPath:Ljava/io/File;
    .end local v31           #x:I
    .restart local v19       #isSkipAddImageAndStoreImage:Z
    .restart local v22       #outputStream:Ljava/io/OutputStream;
    :catch_7
    move-exception v13

    .line 1279
    .local v13, ex:Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 1277
    .end local v13           #ex:Ljava/io/IOException;
    .restart local v29       #scheme:Ljava/lang/String;
    :catch_8
    move-exception v13

    goto/16 :goto_7

    .line 1271
    .end local v22           #outputStream:Ljava/io/OutputStream;
    .restart local v23       #outputStream:Ljava/io/OutputStream;
    :catchall_3
    move-exception v2

    move-object/from16 v22, v23

    .end local v23           #outputStream:Ljava/io/OutputStream;
    .restart local v22       #outputStream:Ljava/io/OutputStream;
    goto/16 :goto_8

    .line 1264
    .end local v22           #outputStream:Ljava/io/OutputStream;
    .restart local v23       #outputStream:Ljava/io/OutputStream;
    :catch_9
    move-exception v13

    move-object/from16 v22, v23

    .end local v23           #outputStream:Ljava/io/OutputStream;
    .restart local v22       #outputStream:Ljava/io/OutputStream;
    goto/16 :goto_6

    .end local v22           #outputStream:Ljava/io/OutputStream;
    .restart local v23       #outputStream:Ljava/io/OutputStream;
    :cond_25
    move-object/from16 v22, v23

    .end local v23           #outputStream:Ljava/io/OutputStream;
    .restart local v22       #outputStream:Ljava/io/OutputStream;
    goto/16 :goto_2
.end method
