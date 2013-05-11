.class Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;
.super Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerDeprecatedListener;
.source "HtcDLNAMiddleLayerListener.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcDLNAServiceManager"


# instance fields
.field mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

.field mDiscoverRendererListener:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverListener;

.field mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

.field private mRendererList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRendererListener:Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;

.field mServerListener:Lcom/htc/dlnasharedmodule/HtcDLNAServerStatusListener;


# direct methods
.method public constructor <init>(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)V
    .locals 2
    .parameter "manager"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerDeprecatedListener;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 32
    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mDiscoverRendererListener:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverListener;

    .line 33
    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;

    .line 34
    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/dlnasharedmodule/HtcDLNAServerStatusListener;

    .line 35
    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 37
    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    .line 41
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    .line 43
    return-void
.end method


# virtual methods
.method public albumArtDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 482
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;->onAlbumArtDownloaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_0
    return-void
.end method

.method public controllerErrorNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "rendererID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 380
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][controllerErrorNotify] rendererID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 384
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;->onError(Ljava/lang/String;ILjava/lang/String;)V

    .line 388
    :cond_0
    return-void
.end method

.method public controllerResponseNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .parameter "rendererID"
    .parameter "resID"
    .parameter "resReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 399
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][controllerResponseNotify] rendererID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const/16 v1, -0x135

    if-ne p2, v1, :cond_0

    .line 404
    const-string v1, "HtcDLNAServiceManager"

    const-string v2, "[controllerResponseNotify] setState:1"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v1, v4, v4}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 409
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_1

    .line 411
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;->onResponse(Ljava/lang/String;ILjava/lang/String;)V

    .line 413
    :cond_1
    return-void
.end method

.method public disconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[HtcDLNAMiddleLayerListener][disconnect]"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iput-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;

    .line 49
    iput-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/dlnasharedmodule/HtcDLNAServerStatusListener;

    .line 50
    iput-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 52
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 54
    iput-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    .line 57
    :cond_0
    iput-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 58
    return-void
.end method

.method public getContentItemDetailsNotify(Ljava/lang/String;Ljava/lang/String;Lcom/htc/dlnainterface/DLNAContentItemDetails;)V
    .locals 4
    .parameter "serverID"
    .parameter "contentID"
    .parameter "details"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 424
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][getContentItemDetailsNotify] serverID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", contentID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", details = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 428
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 430
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p3}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;->onItemDetailsUpdated(JLcom/htc/dlnainterface/DLNAContentItemDetails;)V

    .line 432
    :cond_0
    return-void
.end method

.method public mirrorRendererAddedNotify(Lcom/htc/dlnainterface/DLNARendererData;)V
    .locals 4
    .parameter "rendererData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 464
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][mirrorRendererAddedNotify] rendererData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rendererID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rendererName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;

    .line 469
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;
    if-eqz v0, :cond_0

    .line 470
    iget-object v1, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;->onMirrorRendererConnected(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_0
    return-void
.end method

.method public playlistCreatedResultNotify(Ljava/lang/String;JJ)V
    .locals 5
    .parameter "rendererID"
    .parameter "totalCount"
    .parameter "currentIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 226
    const-string v2, "HtcDLNAServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAMiddleLayerListener][playlistCreatedResultNotify] currentIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", totalCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v0, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    .line 230
    .local v0, info:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;
    iput-wide p4, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    .line 231
    iput-wide p2, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    .line 233
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 234
    .local v1, listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {v1, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V

    .line 238
    :cond_0
    return-void
.end method

.method public rendererAddedNotify(Lcom/htc/dlnainterface/DLNARendererData;)V
    .locals 5
    .parameter "rendererData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 116
    const-string v2, "HtcDLNAServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAMiddleLayerListener][rendererAddedNotify] rendererData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", rendererID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", rendererName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    iget-object v4, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v2, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v2, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    invoke-virtual {v2, p1}, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->checkIfMatchRenderer(Lcom/htc/dlnainterface/DLNARendererData;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v2, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v3, v3, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;

    .line 132
    .local v1, listener:Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 133
    .local v0, controllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_2

    .line 135
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v2, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-object v3, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    iput-object v3, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    .line 138
    :cond_2
    if-eqz v1, :cond_0

    .line 140
    iget-object v2, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    iget-object v3, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;->onConnected(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public rendererListUpdateNotify([Lcom/htc/dlnainterface/DLNARendererData;)V
    .locals 10
    .parameter "rendererList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 172
    const-string v7, "HtcDLNAServiceManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HtcDLNAMiddleLayerListener][rendererListUpdateNotify] rendererList = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    move-object v0, p1

    .local v0, arr$:[Lcom/htc/dlnainterface/DLNARendererData;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 177
    .local v5, renderer:Lcom/htc/dlnainterface/DLNARendererData;
    iget-object v7, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    iget-object v8, v5, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    iget-object v9, v5, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    .end local v5           #renderer:Lcom/htc/dlnainterface/DLNARendererData;
    :cond_0
    iget-object v7, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v7, v7, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    if-eqz v7, :cond_3

    .line 183
    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .line 185
    .restart local v5       #renderer:Lcom/htc/dlnainterface/DLNARendererData;
    iget-object v7, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v7, v7, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v7, v7, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    invoke-virtual {v7, v5}, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->checkIfMatchRenderer(Lcom/htc/dlnainterface/DLNARendererData;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 188
    const-string v7, "HtcDLNAServiceManager"

    const-string v8, "[HtcDLNAMiddleLayerListener][rendererListUpdateNotify] RendererDiscoverer found mirror renderer."

    invoke-static {v7, v8}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .end local v5           #renderer:Lcom/htc/dlnainterface/DLNARendererData;
    :cond_1
    :goto_2
    return-void

    .line 183
    .restart local v5       #renderer:Lcom/htc/dlnainterface/DLNARendererData;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 195
    .end local v5           #renderer:Lcom/htc/dlnainterface/DLNARendererData;
    :cond_3
    iget-object v7, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v6, v7, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    .line 196
    .local v6, rendererId:Ljava/lang/String;
    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 198
    .restart local v5       #renderer:Lcom/htc/dlnainterface/DLNARendererData;
    iget-object v7, v5, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 200
    const-string v7, "HtcDLNAServiceManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HtcDLNAMiddleLayerListener][rendererListUpdateNotify] renderer found = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 202
    .local v1, controllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_4

    .line 204
    iget-object v7, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v7, v7, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-object v8, v5, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    iput-object v8, v7, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    .line 206
    :cond_4
    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;

    .line 207
    .local v4, listener:Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;
    if-eqz v4, :cond_1

    .line 209
    iget-object v7, v5, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;->onConnected(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 196
    .end local v1           #controllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    .end local v4           #listener:Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public rendererRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][rendererRemovedNotify] uniqueID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;

    .line 159
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;->onDisconnected(Ljava/lang/String;ILjava/lang/String;)V

    .line 161
    :cond_0
    return-void
.end method

.method public serverAddedNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "uniqueID"
    .parameter "serverName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 69
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][serverAddedNotify] uniqueID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", serverNmaer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/dlnasharedmodule/HtcDLNAServerStatusListener;

    .line 73
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mServerID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {v0, p1, p2}, Lcom/htc/dlnasharedmodule/HtcDLNAServerStatusListener;->onConnected(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method

.method public serverListUpdateNotify([Lcom/htc/dlnainterface/DLNAServerData;)V
    .locals 3
    .parameter "serverList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 103
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener][serverListUpdateNotify] serverList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public serverRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 86
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][serverRemovedNotify] uniqueID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/dlnasharedmodule/HtcDLNAServerStatusListener;

    .line 90
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mServerID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/dlnasharedmodule/HtcDLNAServerStatusListener;->onDisconnected(Ljava/lang/String;ILjava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method

.method public updateControlItemInfo(Lcom/htc/dlnainterface/DLNAControlItemData;)V
    .locals 8
    .parameter "itemData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 306
    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v2, v4, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    .line 307
    .local v2, info:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;
    iget-object v4, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentAlbum:Ljava/lang/String;

    iput-object v4, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mAlbum:Ljava/lang/String;

    .line 308
    iget-object v4, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentArtist:Ljava/lang/String;

    iput-object v4, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mArtist:Ljava/lang/String;

    .line 309
    iget-object v4, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentTitle:Ljava/lang/String;

    iput-object v4, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mTitle:Ljava/lang/String;

    .line 310
    iget-object v4, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentDate:Ljava/lang/String;

    iput-object v4, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mDate:Ljava/lang/String;

    .line 311
    iget-wide v4, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->fDuration:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 312
    iget-wide v4, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->fDuration:J

    iput-wide v4, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mDuration:J

    .line 314
    :cond_0
    iget-object v4, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v4, v4, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 315
    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v5, v5, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    .line 317
    :cond_1
    iget-wide v0, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->currentIndex:J

    .line 318
    .local v0, index:J
    iget-wide v4, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_2

    .line 320
    iput-wide v6, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mPosition:J

    .line 321
    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    const-wide/16 v5, -0x1

    iput-wide v5, v4, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mClientSeekTo:J

    .line 323
    :cond_2
    iput-wide v0, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    .line 324
    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v4}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getPlaylistSize()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    .line 326
    iget-object v4, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    iput-object v4, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    .line 327
    iget-object v4, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 328
    :cond_3
    iget-object v4, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    iput-object v4, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    .line 331
    :cond_4
    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v4}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getState()I

    move-result v4

    iput v4, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    .line 332
    iget-object v4, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->curContentID:Ljava/lang/String;

    iput-object v4, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->curContentID:Ljava/lang/String;

    .line 333
    const-string v4, "HtcDLNAServiceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcDLNAMiddleLayerListener][updateControlItemInfo] Duration = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mDuration:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v4, "HtcDLNAServiceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcDLNAMiddleLayerListener][updateControlItemInfo] thumb path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v4, "HtcDLNAServiceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcDLNAMiddleLayerListener][updateControlItemInfo] album art path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v4, "HtcDLNAServiceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcDLNAMiddleLayerListener][updateControlItemInfo] curContentID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->curContentID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 339
    .local v3, listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v3, :cond_5

    .line 341
    invoke-virtual {v3, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_5
    const-string v4, "HtcDLNAServiceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcDLNAMiddleLayerListener][updateControlItemInfo] itemData = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateControlItemThumbnail(Ljava/lang/String;JLjava/lang/String;)V
    .locals 5
    .parameter "rendererID"
    .parameter "currentIndex"
    .parameter "thumbnailPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 358
    const-string v2, "HtcDLNAServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAMiddleLayerListener][updateControlItemThumbnail] currentIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", thumbnailPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v0, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    .line 362
    .local v0, info:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;
    iput-object p4, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    .line 364
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 365
    .local v1, listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_0

    .line 367
    invoke-virtual {v1, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V

    .line 369
    :cond_0
    return-void
.end method

.method public updateControllerStatus(Lcom/htc/dlnainterface/DLNAControllerStatus;)V
    .locals 7
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    .line 253
    const-string v2, "HtcDLNAServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateControllerStatus] setState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget v3, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V

    .line 255
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v0, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    .line 259
    .local v0, info:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;
    iget-wide v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->fDuration:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_0

    .line 260
    iget-wide v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->fDuration:J

    iput-wide v2, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mDuration:J

    .line 261
    :cond_0
    iget-wide v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->currentIndex:J

    iput-wide v2, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    .line 262
    iget-wide v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->position:J

    iput-wide v2, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mPosition:J

    .line 263
    iget-boolean v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->bMute:Z

    iput-boolean v2, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mMute:Z

    .line 264
    iget-boolean v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->bShuffle:Z

    iput-boolean v2, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mShuffle:Z

    .line 265
    iget v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->repeatState:I

    iput v2, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I

    .line 266
    iget v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->volumeValue:I

    iput v2, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    .line 267
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getState()I

    move-result v2

    iput v2, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    .line 268
    iget-wide v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->totalCount:J

    iput-wide v2, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    .line 270
    iget-wide v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->position:J

    cmp-long v2, v2, v5

    if-gtz v2, :cond_1

    .line 271
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mClientSeekTo:J

    .line 273
    :cond_1
    iget-object v2, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v2, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 274
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v3, v3, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    .line 276
    :cond_2
    iget-object v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->curContentID:Ljava/lang/String;

    iput-object v2, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->curContentID:Ljava/lang/String;

    .line 278
    const-string v2, "HtcDLNAServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAMiddleLayerListener][updateControllerStatus] play state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->position:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 282
    .local v1, listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_3

    .line 284
    invoke-virtual {v1, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_3
    const-string v2, "HtcDLNAServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAMiddleLayerListener][updateControllerStatus] DLNAControllerStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateDownloadStoreAlbumArtNotify(Ljava/lang/String;JLjava/lang/String;)V
    .locals 4
    .parameter "rendererID"
    .parameter "currentIndex"
    .parameter "albumArtPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 443
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][updateDownloadStoreAlbumArtNotify] rendererID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currentIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", albumArtPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iput-object p4, v1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    .line 448
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 449
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 451
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V

    .line 453
    :cond_0
    return-void
.end method
