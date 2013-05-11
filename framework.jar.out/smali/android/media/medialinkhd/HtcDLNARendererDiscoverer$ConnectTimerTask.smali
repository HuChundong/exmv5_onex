.class public Landroid/media/medialinkhd/HtcDLNARendererDiscoverer$ConnectTimerTask;
.super Ljava/util/TimerTask;
.source "HtcDLNARendererDiscoverer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;


# direct methods
.method public constructor <init>(Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer$ConnectTimerTask;->this$0:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 52
    const-string v1, "HtcDLNADiscoverRendererHelper"

    const-string v2, "Renderer discoverer timeout!!!"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer$ConnectTimerTask;->this$0:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    #getter for: Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mTimerObj:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->access$000(Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 54
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer$ConnectTimerTask;->this$0:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    const/4 v3, 0x1

    #setter for: Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mTimeoutFlag:Z
    invoke-static {v1, v3}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->access$102(Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;Z)Z

    .line 55
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer$ConnectTimerTask;->this$0:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    #getter for: Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;
    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->access$200(Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;)Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;

    move-result-object v0

    .line 56
    .local v0, listener:Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;
    if-nez v0, :cond_0

    .line 57
    monitor-exit v2

    .line 61
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-virtual {v0}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;->onTimeout()V

    .line 59
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer$ConnectTimerTask;->this$0:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    const/4 v3, 0x0

    #setter for: Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;
    invoke-static {v1, v3}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->access$202(Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;)Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;

    .line 60
    monitor-exit v2

    goto :goto_0

    .end local v0           #listener:Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
