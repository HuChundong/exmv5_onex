.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$DeleteListener;
.super Ljava/lang/Object;
.source "SceneLocalPhotoBurstShot.java"

# interfaces
.implements Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V
    .locals 0
    .parameter

    .prologue
    .line 3284
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3284
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$DeleteListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V

    return-void
.end method


# virtual methods
.method public onDeleteCancel()V
    .locals 0

    .prologue
    .line 3290
    return-void
.end method

.method public onDeleteEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3295
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HTCAlbum][SceneLocalPhotoBurstShot][onDeleteEnd] +"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3296
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$5400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 3298
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #setter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsDirectClose:Z
    invoke-static {v0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$5702(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Z)Z

    .line 3299
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->gotoPrevious()V

    .line 3302
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$5800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 3304
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->invalidateControlBars()V
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$5900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V

    .line 3305
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #setter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsDirectClose:Z
    invoke-static {v0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$5702(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Z)Z

    .line 3306
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->gotoPrevious()V

    .line 3313
    :goto_0
    return-void

    .line 3310
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->notifyDataSetChanged()V

    .line 3311
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$DeleteListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->invalidateControlBars()V
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$6000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V

    goto :goto_0
.end method

.method public onDeleteStart()V
    .locals 0

    .prologue
    .line 3318
    return-void
.end method

.method public onDismissDeleteAll()V
    .locals 0

    .prologue
    .line 3326
    return-void
.end method
