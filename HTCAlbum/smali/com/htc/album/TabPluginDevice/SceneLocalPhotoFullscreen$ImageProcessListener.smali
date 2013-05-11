.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageProcessListener;
.super Ljava/lang/Object;
.source "SceneLocalPhotoFullscreen.java"

# interfaces
.implements Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageProcessListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageProcessListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageProcessListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    return-void
.end method


# virtual methods
.method public onProcessCancel()V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public onProcessEnd(ILjava/lang/String;)V
    .locals 6
    .parameter "nMode"
    .parameter "uriString"

    .prologue
    .line 249
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageProcessListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$1200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 251
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    const/4 v3, 0x0

    .line 254
    .local v3, handler:Landroid/app/Activity;
    :try_start_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageProcessListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$1300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 263
    const/4 v1, 0x0

    .line 265
    .local v1, bNeedSetSelect:Z
    const/4 v4, 0x7

    if-eq p1, v4, :cond_0

    const/4 v4, 0x6

    if-eq p1, v4, :cond_0

    const/16 v4, 0x8

    if-ne p1, v4, :cond_1

    .line 269
    :cond_0
    const/4 v1, 0x1

    .line 272
    :cond_1
    if-eqz v1, :cond_2

    .line 274
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageProcessListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    iput-object p2, v4, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mEditedItemUri:Ljava/lang/String;

    .line 281
    :goto_0
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->notifyDataSetChanged()V

    .line 282
    .end local v1           #bNeedSetSelect:Z
    :goto_1
    return-void

    .line 256
    :catch_0
    move-exception v2

    .line 258
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[onDeleteEnd] Can not get Handler!!"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const/4 v3, 0x0

    .line 260
    goto :goto_1

    .line 278
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #bNeedSetSelect:Z
    :cond_2
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageProcessListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mEditedItemUri:Ljava/lang/String;

    goto :goto_0
.end method

.method public onProcessStart()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method
