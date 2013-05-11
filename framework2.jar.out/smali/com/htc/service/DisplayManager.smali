.class public Lcom/htc/service/DisplayManager;
.super Ljava/lang/Object;
.source "DisplayManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayManager"


# instance fields
.field private mService:Landroid/os/IDisplayService;


# direct methods
.method public constructor <init>(Landroid/os/IDisplayService;)V
    .locals 0
    .parameter "service"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    .line 22
    return-void
.end method


# virtual methods
.method public IsHDMIConnected()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1}, Landroid/os/IDisplayService;->IsHDMIConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 71
    :goto_0
    return v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "IsHDMIConnected: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public IsHDMIEnable()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1}, Landroid/os/IDisplayService;->IsHDMIEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 56
    :goto_0
    return v1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "IsHDMIEnable: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearBitmapOnHDMI(Ljava/lang/String;)I
    .locals 3
    .parameter "appname"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1, p1}, Landroid/os/IDisplayService;->clearBitmapOnHDMI(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 106
    :goto_0
    return v1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "clearBitmapOnHDMI: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get3DMode()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1}, Landroid/os/IDisplayService;->Get3DMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 139
    :goto_0
    return v1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "get3DMode: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public set3DMode(ILjava/lang/String;)I
    .locals 3
    .parameter "Mode3D"
    .parameter "appname"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1, p1, p2}, Landroid/os/IDisplayService;->set3DMode(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 124
    :goto_0
    return v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "set3DMode: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHDMI(ZLjava/lang/String;)I
    .locals 3
    .parameter "enable"
    .parameter "appname"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1, p1, p2}, Landroid/os/IDisplayService;->setHDMI(ZLjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 41
    :goto_0
    return v1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "setHDMI: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTVMode(ILjava/lang/String;)I
    .locals 3
    .parameter "ModeTV"
    .parameter "appname"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1, p1, p2}, Landroid/os/IDisplayService;->setTVMode(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 157
    :goto_0
    return v1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "setTVMode: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showBitmapOnHDMI(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "appname"
    .parameter "file"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1, p1, p2}, Landroid/os/IDisplayService;->showBitmapOnHDMI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 89
    :goto_0
    return v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "showBitmapOnHDMI: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    const/4 v1, 0x0

    goto :goto_0
.end method
