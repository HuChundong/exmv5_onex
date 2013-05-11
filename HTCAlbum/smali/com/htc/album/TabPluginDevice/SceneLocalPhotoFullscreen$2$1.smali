.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2$1;
.super Ljava/lang/Object;
.source "SceneLocalPhotoFullscreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2;)V
    .locals 0
    .parameter

    .prologue
    .line 840
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$2100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$2200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 847
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->invalidateControlBars()V
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$2300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    .line 849
    :cond_0
    return-void
.end method
