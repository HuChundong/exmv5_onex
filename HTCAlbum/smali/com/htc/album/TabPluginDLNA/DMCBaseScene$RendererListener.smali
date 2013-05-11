.class Lcom/htc/album/TabPluginDLNA/DMCBaseScene$RendererListener;
.super Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;
.source "DMCBaseScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/DMCBaseScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RendererListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)V
    .locals 0
    .parameter

    .prologue
    .line 1571
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$RendererListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.RendererListener;"
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$RendererListener;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;Lcom/htc/album/TabPluginDLNA/DMCBaseScene$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1571
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$RendererListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.RendererListener;"
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$RendererListener;-><init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)V

    return-void
.end method


# virtual methods
.method public onConnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "uniqueID"
    .parameter "rendererName"

    .prologue
    .line 1576
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$RendererListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.RendererListener;"
    const-string v0, "DLNABaseScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onRenderConnected] uniqueID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$RendererListener;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    const v1, 0x220050

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 1578
    return-void
.end method

.method public onDisconnected(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"

    .prologue
    .line 1589
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$RendererListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.RendererListener;"
    const-string v0, "DLNABaseScene"

    const-string v1, "[onRenderDisconnected]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$RendererListener;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    const v1, 0x220060

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onPostMessage(I)V

    .line 1591
    return-void
.end method

.method public onMirrorRendererConnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "rendererName"

    .prologue
    .line 1584
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$RendererListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.RendererListener;"
    return-void
.end method
