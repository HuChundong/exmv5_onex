.class Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener$1;
.super Ljava/lang/Object;
.source "SceneDlnaFullscreenBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->onEnterImageIRT(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener$1;->this$1:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener$1;->this$1:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$800(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener$1;->this$1:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$900(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener$1;->this$1:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$500(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mSceneControl is null"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
