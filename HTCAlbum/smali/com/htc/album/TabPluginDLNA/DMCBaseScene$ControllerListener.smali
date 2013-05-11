.class Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ControllerListener;
.super Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
.source "DMCBaseScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/DMCBaseScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)V
    .locals 0
    .parameter

    .prologue
    .line 1507
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ControllerListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.ControllerListener;"
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ControllerListener;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;Lcom/htc/album/TabPluginDLNA/DMCBaseScene$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1507
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ControllerListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.ControllerListener;"
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ControllerListener;-><init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)V

    return-void
.end method


# virtual methods
.method public onControllerInfoupdated(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V
    .locals 3
    .parameter "ctlInfo"

    .prologue
    .line 1519
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ControllerListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.ControllerListener;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ControllerListener;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    const v1, 0x220070

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 1520
    return-void
.end method

.method public onError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .parameter "rendererID"
    .parameter "errorID"
    .parameter "errorReason"

    .prologue
    .line 1525
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ControllerListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.ControllerListener;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ControllerListener;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    const v1, 0x220140

    const/4 v3, -0x1

    const/4 v5, 0x0

    move v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onPostMessage(IIILjava/lang/Object;I)V

    .line 1526
    return-void
.end method

.method public onItemDetailsUpdated(JLcom/htc/dlnainterface/DLNAContentItemDetails;)V
    .locals 3
    .parameter "index"
    .parameter "details"

    .prologue
    .line 1542
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ControllerListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.ControllerListener;"
    const-string v0, "DLNABaseScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onItemDetailsUpdated]: index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", details: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ControllerListener;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    invoke-virtual {v0, p3}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->LaunchDetails(Lcom/htc/dlnainterface/DLNAContentItemDetails;)V

    .line 1544
    return-void
.end method

.method public onPlayStateChanged(I)V
    .locals 6
    .parameter "playState"

    .prologue
    .line 1513
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ControllerListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.ControllerListener;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ControllerListener;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    const v1, 0x220080

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onPostMessage(IIILjava/lang/Object;I)V

    .line 1514
    return-void
.end method

.method public onResponse(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "rendererID"
    .parameter "errorID"
    .parameter "errorReason"

    .prologue
    .line 1533
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ControllerListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.ControllerListener;"
    sget v0, Lcom/htc/dlnainterface/DLNAResponseCode;->READY_TO_PLAY:I

    if-ne p2, v0, :cond_0

    .line 1535
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ControllerListener;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onScrollStateChanged(I)V

    .line 1537
    :cond_0
    return-void
.end method
