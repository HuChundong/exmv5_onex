.class Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;
.super Ljava/lang/Thread;
.source "PickerMultiItemScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/picker/PickerMultiItemScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultWorker"
.end annotation


# instance fields
.field mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

.field mCallerIntent:Landroid/content/Intent;

.field mConversionIntent:Landroid/content/Intent;

.field mStop:Z

.field final synthetic this$0:Lcom/htc/album/picker/PickerMultiItemScene;


# direct methods
.method public constructor <init>(Lcom/htc/album/picker/PickerMultiItemScene;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter "adapter"
    .parameter "callerIntent"

    .prologue
    const/4 v1, 0x0

    .line 695
    iput-object p1, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 691
    iput-boolean v1, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mStop:Z

    .line 692
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mConversionIntent:Landroid/content/Intent;

    .line 696
    iput-object p2, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 697
    iput-object p3, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mCallerIntent:Landroid/content/Intent;

    .line 698
    iput-boolean v1, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mStop:Z

    .line 699
    return-void
.end method


# virtual methods
.method public getConversionIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mConversionIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public run()V
    .locals 28

    .prologue
    .line 707
    invoke-static {}, Lcom/htc/album/picker/PickerMultiItemScene;->access$000()Ljava/lang/String;

    move-result-object v24

    const-string v25, "[ResultWorker][run] ++"

    invoke-static/range {v24 .. v25}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v24, v0

    const/16 v25, 0x2b11

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v24 .. v27}, Lcom/htc/album/picker/PickerMultiItemScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 709
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 711
    .local v5, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    new-instance v11, Ljava/util/ArrayList;

    const/16 v24, 0x14

    move/from16 v0, v24

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 712
    .local v11, list3DIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v14, Ljava/util/ArrayList;

    const/16 v24, 0x14

    move/from16 v0, v24

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 713
    .local v14, listInkIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v15, Ljava/util/ArrayList;

    const/16 v24, 0x14

    move/from16 v0, v24

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 715
    .local v15, listPhotoToProcess:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mCallerIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mCallerIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    const-string v25, "request_htc_upload_list"

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    .line 717
    .local v19, requestHtcUploadList:Z
    :goto_0
    if-eqz v19, :cond_6

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 719
    .local v13, listHtcUpload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v10, v0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    .line 720
    .local v10, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 722
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 724
    .local v23, totalItems:I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 725
    .local v12, listAndroid:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v7, Ljava/util/ArrayList;

    const/16 v24, 0x14

    move/from16 v0, v24

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 727
    .local v7, filePathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, flag:I
    const/4 v3, 0x1

    .local v3, FLAG_IMAGE:I
    const/4 v4, 0x2

    .line 729
    .local v4, FLAG_VIDEO:I
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 731
    .local v18, pos:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mStop:Z

    move/from16 v24, v0

    if-eqz v24, :cond_7

    .line 781
    .end local v18           #pos:Ljava/lang/Integer;
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mStop:Z

    move/from16 v24, v0

    if-nez v24, :cond_11

    .line 783
    invoke-static {}, Lcom/htc/album/picker/PickerMultiItemScene;->access$000()Ljava/lang/String;

    move-result-object v24

    const-string v25, "[ResultWorker][run] Load completed!!"

    invoke-static/range {v24 .. v25}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v24, v0

    new-instance v25, Landroid/content/Intent;

    invoke-direct/range {v25 .. v25}, Landroid/content/Intent;-><init>()V

    #setter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v24 .. v25}, Lcom/htc/album/picker/PickerMultiItemScene;->access$502(Lcom/htc/album/picker/PickerMultiItemScene;Landroid/content/Intent;)Landroid/content/Intent;

    .line 785
    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mConversionIntent:Landroid/content/Intent;

    .line 786
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_2

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v24 .. v24}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v24

    const-string v25, "3d_image_index_list"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 790
    :cond_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_3

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v24 .. v24}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v24

    const-string v25, "ink_index_list"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 794
    :cond_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_4

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mConversionIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    const-string v25, "android.intent.extra.STREAM"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 798
    :cond_4
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 799
    .local v17, pickerIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v24 .. v24}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v24

    const-string v25, "picker_index_list"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mRequestWithFilePath:Z
    invoke-static/range {v24 .. v24}, Lcom/htc/album/picker/PickerMultiItemScene;->access$700(Lcom/htc/album/picker/PickerMultiItemScene;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v24 .. v24}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v24

    const-string v25, "android.intent.extra.STREAM"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 808
    .end local v13           #listHtcUpload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :goto_4
    if-ne v8, v3, :cond_f

    const-string v22, "image/*"

    .line 811
    .local v22, strType:Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v24 .. v24}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 818
    .end local v17           #pickerIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v22           #strType:Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v24, v0

    const/16 v25, 0x2b12

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v24 .. v27}, Lcom/htc/album/picker/PickerMultiItemScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v24, v0

    const/16 v25, 0x2b10

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v24 .. v27}, Lcom/htc/album/picker/PickerMultiItemScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 820
    invoke-static {}, Lcom/htc/album/picker/PickerMultiItemScene;->access$000()Ljava/lang/String;

    move-result-object v24

    const-string v25, "[ResultWorker][run] --"

    invoke-static/range {v24 .. v25}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    return-void

    .line 715
    .end local v3           #FLAG_IMAGE:I
    .end local v4           #FLAG_VIDEO:I
    .end local v7           #filePathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #flag:I
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12           #listAndroid:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v19           #requestHtcUploadList:Z
    .end local v23           #totalItems:I
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 717
    .restart local v19       #requestHtcUploadList:Z
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 734
    .restart local v3       #FLAG_IMAGE:I
    .restart local v4       #FLAG_VIDEO:I
    .restart local v7       #filePathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8       #flag:I
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v10       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v12       #listAndroid:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v13       #listHtcUpload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v18       #pos:Ljava/lang/Integer;
    .restart local v23       #totalItems:I
    :cond_7
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v20

    check-cast v20, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 736
    .local v20, selectedItem:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v20, :cond_0

    .line 742
    :try_start_0
    invoke-interface/range {v20 .. v20}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v21

    .line 743
    .local v21, selectedUri:Landroid/net/Uri;
    invoke-interface/range {v20 .. v20}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v24

    if-eqz v24, :cond_b

    invoke-interface/range {v20 .. v20}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v24

    if-nez v24, :cond_b

    .line 745
    new-instance v24, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    :cond_8
    :goto_7
    if-eqz v19, :cond_9

    .line 756
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 757
    .local v6, data:Landroid/os/Bundle;
    const-string v24, "com.htc.opensense.upload.URI"

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const-string v24, "com.htc.opensense.upload.MIMETYPE"

    invoke-interface/range {v20 .. v20}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string v24, "com.htc.opensense.upload.TITLE"

    const-string v25, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string v24, "com.htc.opensense.upload.DESCRIPTION"

    const-string v25, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    .end local v6           #data:Landroid/os/Bundle;
    :cond_9
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mRequestWithFilePath:Z
    invoke-static/range {v24 .. v24}, Lcom/htc/album/picker/PickerMultiItemScene;->access$700(Lcom/htc/album/picker/PickerMultiItemScene;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 768
    invoke-interface/range {v20 .. v20}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    :cond_a
    invoke-interface/range {v20 .. v20}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v24

    if-eqz v24, :cond_c

    move/from16 v24, v4

    :goto_8
    or-int v8, v8, v24

    goto/16 :goto_2

    .line 748
    :cond_b
    invoke-interface/range {v20 .. v20}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z

    move-result v24

    if-eqz v24, :cond_8

    .line 750
    new-instance v24, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 772
    .end local v21           #selectedUri:Landroid/net/Uri;
    :catch_0
    move-exception v16

    .line 775
    .local v16, oom:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/htc/album/picker/PickerMultiItemScene;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "[ResultWorker][run] Error: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mStop:Z

    goto/16 :goto_3

    .end local v16           #oom:Ljava/lang/OutOfMemoryError;
    .restart local v21       #selectedUri:Landroid/net/Uri;
    :cond_c
    move/from16 v24, v3

    .line 770
    goto :goto_8

    .line 805
    .end local v18           #pos:Ljava/lang/Integer;
    .end local v20           #selectedItem:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v21           #selectedUri:Landroid/net/Uri;
    .restart local v17       #pickerIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v24 .. v24}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v24

    const-string v25, "android.intent.extra.STREAM"

    if-eqz v19, :cond_e

    .end local v13           #listHtcUpload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :goto_9
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto/16 :goto_4

    .restart local v13       #listHtcUpload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_e
    move-object v13, v12

    goto :goto_9

    .line 808
    .end local v13           #listHtcUpload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_f
    if-ne v8, v4, :cond_10

    const-string v22, "video/*"

    goto/16 :goto_5

    :cond_10
    const-string v22, "*/*"

    goto/16 :goto_5

    .line 815
    .end local v17           #pickerIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v13       #listHtcUpload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_11
    invoke-static {}, Lcom/htc/album/picker/PickerMultiItemScene;->access$000()Ljava/lang/String;

    move-result-object v24

    const-string v25, "[ResultWorker][run] Loading canceled!!"

    invoke-static/range {v24 .. v25}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 830
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mStop:Z

    .line 831
    return-void
.end method
