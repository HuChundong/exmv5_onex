.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;
.super Ljava/lang/Object;
.source "SceneLocalPhotoThumbnail.java"

# interfaces
.implements Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V
    .locals 0
    .parameter

    .prologue
    .line 2759
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2759
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V

    return-void
.end method


# virtual methods
.method public onDeleteCancel()V
    .locals 2

    .prologue
    .line 2763
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$1900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunnyCore/view/SView;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 2764
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    const/4 v1, 0x1

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->changeSenseMode(I)V
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$2000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;I)V

    .line 2765
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onTriggerErrorReport()V

    .line 2766
    return-void
.end method

.method public onDeleteEnd()V
    .locals 10

    .prologue
    .line 2771
    const/4 v1, 0x0

    .line 2772
    .local v1, delete:[I
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$1200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    .line 2773
    :try_start_0
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$1200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2775
    .local v0, count:I
    if-nez v0, :cond_0

    .line 2776
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$2100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunnyCore/view/SView;

    move-result-object v6

    check-cast v6, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 2777
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    const/4 v8, 0x1

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->changeSenseMode(I)V
    invoke-static {v6, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$2000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;I)V

    .line 2778
    monitor-exit v7

    .line 2812
    :goto_0
    return-void

    .line 2781
    :cond_0
    new-array v1, v0, [I

    .line 2782
    const/4 v4, 0x0

    .line 2783
    .local v4, idx:I
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$1200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    move v5, v4

    .end local v4           #idx:I
    .local v5, idx:I
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2784
    .local v2, i:Ljava/lang/Integer;
    add-int/lit8 v4, v5, 0x1

    .end local v5           #idx:I
    .restart local v4       #idx:I
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v5

    move v5, v4

    .end local v4           #idx:I
    .restart local v5       #idx:I
    goto :goto_1

    .line 2786
    .end local v2           #i:Ljava/lang/Integer;
    :cond_1
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$1200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2787
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2788
    if-eqz v1, :cond_2

    .line 2789
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    const/4 v7, 0x0

    aget v7, v1, v7

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDataSetChange(I)V
    invoke-static {v6, v7}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$2200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;I)V

    .line 2792
    :cond_2
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$2300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunnyCore/view/SView;

    move-result-object v6

    check-cast v6, Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-object v7, v1

    check-cast v7, [I

    const/4 v8, 0x0

    new-instance v9, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener$1;

    invoke-direct {v9, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;)V

    invoke-virtual {v6, v7, v8, v9}, Lcom/htc/sunnyCore/widget/gridview/GridView;->startDataSetChangeAnimation([I[ILcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    goto :goto_0

    .line 2787
    .end local v0           #count:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #idx:I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public onDeleteStart()V
    .locals 0

    .prologue
    .line 2817
    return-void
.end method

.method public onDismissDeleteAll()V
    .locals 2

    .prologue
    .line 2821
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    const/4 v1, 0x1

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->changeSenseMode(I)V
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$2000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;I)V

    .line 2822
    return-void
.end method
