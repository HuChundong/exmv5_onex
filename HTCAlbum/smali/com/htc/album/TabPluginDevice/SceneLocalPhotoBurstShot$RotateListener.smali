.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$RotateListener;
.super Ljava/lang/Object;
.source "SceneLocalPhotoBurstShot.java"

# interfaces
.implements Lcom/htc/album/helper/MenuManager$RotateCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RotateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V
    .locals 0
    .parameter

    .prologue
    .line 2478
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$RotateListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotateBegin(ILcom/htc/opensense2/album/util/ImageManager$IImage;)Z
    .locals 1
    .parameter "position"
    .parameter "image"

    .prologue
    .line 2491
    const/4 v0, 0x1

    return v0
.end method

.method public onRotateFinish(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 4
    .parameter "position"
    .parameter "image"

    .prologue
    .line 2504
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "[HtcAlbum][SceneLocalPhotoBurstShot][RotateListener][onRotateFinish] + "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2505
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$RotateListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$4200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 2506
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v0, :cond_0

    .line 2527
    :goto_0
    return-void

    .line 2509
    :cond_0
    move v1, p1

    .line 2510
    .local v1, rotated_pos:I
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$RotateListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$4700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$RotateListener$1;

    invoke-direct {v3, p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$RotateListener$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$RotateListener;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2526
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "[HtcAlbum][SceneLocalPhotoBurstShot][RotateListener][onRotateFinish] - "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
