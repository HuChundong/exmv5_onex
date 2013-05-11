.class public Lcom/htc/lockscreen/idlescreen/remote/RemoteServiceWrapper;
.super Lcom/htc/lockscreen/idlescreen/remote/IRemoteService$Stub;
.source "RemoteServiceWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/htc/lockscreen/idlescreen/remote/IRemoteService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getData(ILandroid/os/Bundle;)[Landroid/os/Bundle;
    .locals 1
    .parameter "code"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "code"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "code"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public performAction(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "code"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 35
    return-void
.end method
