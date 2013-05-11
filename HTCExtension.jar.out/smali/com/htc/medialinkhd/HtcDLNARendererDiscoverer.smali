.class Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;
.super Ljava/lang/Object;
.source "HtcDLNARendererDiscoverer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer$ConnectTimerTask;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcDLNADiscoverRendererHelper"


# instance fields
.field private mDiscoverTimer:Ljava/util/Timer;

.field private mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

.field private mRendererDiscoverListener:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;

.field private mRendererID:Ljava/lang/String;

.field private mRendererIP:J

.field private mStatusBarData:Lcom/htc/htcdlnainterface/DLNAStatusBarData;

.field private mTimeoutFlag:Z

.field private mTimerObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)V
    .locals 3
    .parameter "manager"

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v2, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mRendererID:Ljava/lang/String;

    .line 20
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mRendererIP:J

    .line 21
    iput-object v2, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mStatusBarData:Lcom/htc/htcdlnainterface/DLNAStatusBarData;

    .line 22
    iput-object v2, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;

    .line 24
    iput-object v2, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mTimeoutFlag:Z

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mTimerObj:Ljava/lang/Object;

    .line 30
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mTimerObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mTimeoutFlag:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;)Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;)Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;

    return-object p1
.end method


# virtual methods
.method public checkIfMatchRenderer(Lcom/htc/htcdlnainterface/DLNARendererData;)Z
    .locals 6
    .parameter "renderer"

    .prologue
    const/4 v1, 0x0

    .line 117
    const-string v2, "HtcDLNADiscoverRendererHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[checkIfMatchRenderer] ip = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getIpAddress()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", renderer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mTimerObj:Ljava/lang/Object;

    monitor-enter v2

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;

    .line 121
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;
    if-nez v0, :cond_0

    .line 122
    monitor-exit v2

    .line 138
    :goto_0
    return v1

    .line 124
    :cond_0
    iget-boolean v3, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mTimeoutFlag:Z

    if-eqz v3, :cond_1

    .line 125
    monitor-exit v2

    goto :goto_0

    .line 136
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 127
    .restart local v0       #listener:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getIpAddress()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->isRendererFound(J)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->isRendererFound(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    if-eqz v1, :cond_3

    .line 131
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 132
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;

    .line 133
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;->onDiscovered(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 136
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getStatusBarData()Lcom/htc/htcdlnainterface/DLNAStatusBarData;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mStatusBarData:Lcom/htc/htcdlnainterface/DLNAStatusBarData;

    return-object v0
.end method

.method public isRendererFound(J)Z
    .locals 4
    .parameter "ip"

    .prologue
    .line 93
    const-string v0, "HtcDLNADiscoverRendererHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isRendererFound] ip = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRendererIP = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mRendererIP:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-wide v0, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mRendererIP:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRendererFound(Ljava/lang/String;)Z
    .locals 3
    .parameter "id"

    .prologue
    .line 103
    const-string v0, "HtcDLNADiscoverRendererHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isRendererFound] id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRendererID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mRendererID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mRendererID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setRendererID(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mRendererID:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setRendererIP(Ljava/lang/String;)V
    .locals 4
    .parameter "ip"

    .prologue
    .line 83
    invoke-static {p1}, Lcom/htc/medialinkhd/WirelessDisplayHelper;->getIPLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mRendererIP:J

    .line 84
    const-string v0, "HtcDLNADiscoverRendererHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRendererIP] ip = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", long = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mRendererIP:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public setStatusBarData(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)V
    .locals 0
    .parameter "statusBarData"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mStatusBarData:Lcom/htc/htcdlnainterface/DLNAStatusBarData;

    .line 162
    return-void
.end method

.method public setTimeout(J)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 41
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mTimeoutFlag:Z

    .line 42
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    .line 43
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    new-instance v1, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer$ConnectTimerTask;

    invoke-direct {v1, p0}, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer$ConnectTimerTask;-><init>(Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 44
    return-void
.end method

.method public startDiscover(Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;

    .line 149
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->refreshRendererList()V

    .line 150
    return-void
.end method
