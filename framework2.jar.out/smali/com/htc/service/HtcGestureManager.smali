.class public Lcom/htc/service/HtcGestureManager;
.super Ljava/lang/Object;
.source "HtcGestureManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcGestureManager"

.field private static sInstance:Lcom/htc/service/HtcGestureManager;


# instance fields
.field private mService:Lcom/htc/service/IGestureService;


# direct methods
.method public constructor <init>(Lcom/htc/service/IGestureService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/htc/service/HtcGestureManager;->mService:Lcom/htc/service/IGestureService;

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/htc/service/HtcGestureManager;
    .locals 4

    .prologue
    .line 28
    const-class v2, Lcom/htc/service/HtcGestureManager;

    monitor-enter v2

    .line 29
    :try_start_0
    sget-object v1, Lcom/htc/service/HtcGestureManager;->sInstance:Lcom/htc/service/HtcGestureManager;

    if-nez v1, :cond_0

    .line 30
    const-string v1, "gesture"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 31
    .local v0, b:Landroid/os/IBinder;
    new-instance v1, Lcom/htc/service/HtcGestureManager;

    invoke-static {v0}, Lcom/htc/service/IGestureService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/service/IGestureService;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/htc/service/HtcGestureManager;-><init>(Lcom/htc/service/IGestureService;)V

    sput-object v1, Lcom/htc/service/HtcGestureManager;->sInstance:Lcom/htc/service/HtcGestureManager;

    .line 33
    :cond_0
    sget-object v1, Lcom/htc/service/HtcGestureManager;->sInstance:Lcom/htc/service/HtcGestureManager;

    monitor-exit v2

    return-object v1

    .line 34
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public checkHtcGestureFilterOutList(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "packageName cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/HtcGestureManager;->mService:Lcom/htc/service/IGestureService;

    invoke-interface {v1, p1}, Lcom/htc/service/IGestureService;->checkHtcGestureFilterOutList(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 73
    :goto_0
    return v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcGestureManager"

    const-string v2, "checkHtcGestureFilterOutList: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerHtcGestureFilterOutList(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "packageName cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/HtcGestureManager;->mService:Lcom/htc/service/IGestureService;

    invoke-interface {v1, p1}, Lcom/htc/service/IGestureService;->registerHtcGestureFilterOutList(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcGestureManager"

    const-string v2, "registerHtcGestureFilterOutList: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterHtcGestureFilterOutList(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "packageName cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/HtcGestureManager;->mService:Lcom/htc/service/IGestureService;

    invoke-interface {v1, p1}, Lcom/htc/service/IGestureService;->unregisterHtcGestureFilterOutList(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcGestureManager"

    const-string v2, "unregisterHtcGestureFilterOutList: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
