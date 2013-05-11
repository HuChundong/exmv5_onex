.class Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDTCPServiceCB.java"

# interfaces
.implements Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 72
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "com.awox.dtcpmiddlelayer.IDTCPServiceCB"

    return-object v0
.end method

.method public onReadByteNotify(JJI)V
    .locals 5
    .parameter "id"
    .parameter "start"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 85
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.awox.dtcpmiddlelayer.IDTCPServiceCB"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 88
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object v1, p0, Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 94
    return-void

    .line 92
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onServiceStartComplete()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 99
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.awox.dtcpmiddlelayer.IDTCPServiceCB"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 105
    return-void

    .line 103
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
