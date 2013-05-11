.class Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;
.super Ljava/lang/Object;
.source "PickerMultiItemScene.java"

# interfaces
.implements Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/picker/PickerMultiItemScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageProcessListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/picker/PickerMultiItemScene;


# direct methods
.method private constructor <init>(Lcom/htc/album/picker/PickerMultiItemScene;)V
    .locals 0
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/picker/PickerMultiItemScene;Lcom/htc/album/picker/PickerMultiItemScene$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 543
    invoke-direct {p0, p1}, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;-><init>(Lcom/htc/album/picker/PickerMultiItemScene;)V

    return-void
.end method

.method private sendResultBack(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .parameter "activity"
    .parameter "result"

    .prologue
    .line 665
    if-nez p1, :cond_0

    .line 683
    :goto_0
    return-void

    .line 668
    :cond_0
    new-instance v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener$1;-><init>(Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;Landroid/content/Intent;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public OnCancelPirorProcess()V
    .locals 0

    .prologue
    .line 650
    return-void
.end method

.method public OnCancelProcessing()V
    .locals 2

    .prologue
    .line 659
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/picker/PickerMultiItemScene;->access$600(Lcom/htc/album/picker/PickerMultiItemScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 660
    .local v0, activity:Landroid/app/Activity;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->sendResultBack(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 661
    return-void
.end method

.method public OnProcessBegin()V
    .locals 0

    .prologue
    .line 554
    return-void
.end method

.method public OnProcessEnd(Lcom/htc/album/processor/ImageProcessorManager;)V
    .locals 24
    .parameter "processorMgr"

    .prologue
    .line 563
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mGoStop:Z
    invoke-static/range {v22 .. v22}, Lcom/htc/album/picker/PickerMultiItemScene;->access$300(Lcom/htc/album/picker/PickerMultiItemScene;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static/range {v22 .. v22}, Lcom/htc/album/picker/PickerMultiItemScene;->access$400(Lcom/htc/album/picker/PickerMultiItemScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v6

    .line 567
    .local v6, fragment:Landroid/app/Fragment;
    invoke-virtual {v6}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 568
    .local v10, intentCaller:Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/processor/ImageProcessorManager;->getResult()Landroid/content/Intent;

    move-result-object v18

    .line 569
    .local v18, result:Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/processor/ImageProcessorManager;->getResultCode()I

    move-result v19

    .line 570
    .local v19, resultCode:I
    if-nez v19, :cond_a

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v22 .. v22}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v22

    const-string v23, "picker_index_list"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 573
    .local v15, listIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v22 .. v22}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v22

    const-string v23, "3d_image_index_list"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 574
    .local v12, list3DIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 575
    .local v21, sizeAll:I
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 576
    .local v20, size3D:I
    if-eqz v10, :cond_3

    const-string v22, "request_htc_upload_list"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    .line 578
    .local v17, requestHtcUploadList:Z
    :goto_1
    if-eqz v17, :cond_6

    .line 580
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/processor/ImageProcessorManager;->getResult()Landroid/content/Intent;

    move-result-object v3

    .line 581
    .local v3, conversion:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v22 .. v22}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v22

    const-string v23, "android.intent.extra.STREAM"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 582
    .local v14, listHtcUpload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const-string v22, "android.intent.extra.STREAM"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 583
    .local v13, listConverted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v11, 0x0

    .local v11, j:I
    :goto_2
    move/from16 v0, v21

    if-ge v11, v0, :cond_5

    .line 585
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 586
    .local v8, index:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    move/from16 v0, v20

    if-ge v7, v0, :cond_2

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mGoStop:Z
    invoke-static/range {v22 .. v22}, Lcom/htc/album/picker/PickerMultiItemScene;->access$300(Lcom/htc/album/picker/PickerMultiItemScene;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 591
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 592
    .local v9, index3D:I
    if-ne v8, v9, :cond_4

    .line 594
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 595
    .local v4, convertedUri:Landroid/net/Uri;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 596
    .local v5, data:Landroid/os/Bundle;
    const-string v22, "com.htc.opensense.upload.URI"

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v22, "com.htc.opensense.upload.MIMETYPE"

    const-string v23, "image/jpeg"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v22, "com.htc.opensense.upload.TITLE"

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v22, "com.htc.opensense.upload.DESCRIPTION"

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-virtual {v14, v11, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 583
    .end local v4           #convertedUri:Landroid/net/Uri;
    .end local v5           #data:Landroid/os/Bundle;
    .end local v9           #index3D:I
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 576
    .end local v3           #conversion:Landroid/content/Intent;
    .end local v7           #i:I
    .end local v8           #index:I
    .end local v11           #j:I
    .end local v13           #listConverted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v14           #listHtcUpload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v17           #requestHtcUploadList:Z
    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 586
    .restart local v3       #conversion:Landroid/content/Intent;
    .restart local v7       #i:I
    .restart local v8       #index:I
    .restart local v9       #index3D:I
    .restart local v11       #j:I
    .restart local v13       #listConverted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v14       #listHtcUpload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v17       #requestHtcUploadList:Z
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 605
    .end local v7           #i:I
    .end local v8           #index:I
    .end local v9           #index3D:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v22 .. v22}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v22

    const-string v23, "android.intent.extra.STREAM"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 631
    .end local v14           #listHtcUpload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mGoStop:Z
    invoke-static/range {v22 .. v22}, Lcom/htc/album/picker/PickerMultiItemScene;->access$300(Lcom/htc/album/picker/PickerMultiItemScene;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 634
    invoke-virtual {v6}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v23 .. v23}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->sendResultBack(Landroid/app/Activity;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 609
    .end local v3           #conversion:Landroid/content/Intent;
    .end local v11           #j:I
    .end local v13           #listConverted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/processor/ImageProcessorManager;->getResult()Landroid/content/Intent;

    move-result-object v3

    .line 610
    .restart local v3       #conversion:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v22 .. v22}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v22

    const-string v23, "android.intent.extra.STREAM"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 611
    .local v16, listSelections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v22, "android.intent.extra.STREAM"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 612
    .restart local v13       #listConverted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v11, 0x0

    .restart local v11       #j:I
    :goto_5
    move/from16 v0, v21

    if-ge v11, v0, :cond_9

    .line 614
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 615
    .restart local v8       #index:I
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_6
    move/from16 v0, v20

    if-ge v7, v0, :cond_7

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mGoStop:Z
    invoke-static/range {v22 .. v22}, Lcom/htc/album/picker/PickerMultiItemScene;->access$300(Lcom/htc/album/picker/PickerMultiItemScene;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 620
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 621
    .restart local v9       #index3D:I
    if-ne v8, v9, :cond_8

    .line 623
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 612
    .end local v9           #index3D:I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 615
    .restart local v9       #index3D:I
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 628
    .end local v7           #i:I
    .end local v8           #index:I
    .end local v9           #index3D:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v22 .. v22}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v22

    const-string v23, "android.intent.extra.STREAM"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_4

    .line 636
    .end local v3           #conversion:Landroid/content/Intent;
    .end local v11           #j:I
    .end local v12           #list3DIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v13           #listConverted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v15           #listIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v16           #listSelections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v17           #requestHtcUploadList:Z
    .end local v20           #size3D:I
    .end local v21           #sizeAll:I
    :cond_a
    const/16 v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 638
    invoke-virtual {v6}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v23 .. v23}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->sendResultBack(Landroid/app/Activity;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
