.class Lcom/htc/AddressFinderService/interfaces/IAddressFinderService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAddressFinderService.java"

# interfaces
.implements Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/AddressFinderService/interfaces/IAddressFinderService$Stub;
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
    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 103
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public cancelLookup(I)V
    .locals 5
    .parameter "handle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 135
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 137
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.AddressFinderService.interfaces.IAddressFinderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object v2, p0, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 140
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 146
    return-void

    .line 143
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string v0, "com.htc.AddressFinderService.interfaces.IAddressFinderService"

    return-object v0
.end method

.method public isRequestInProgress()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 180
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 183
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.AddressFinderService.interfaces.IAddressFinderService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 184
    iget-object v3, p0, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 185
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 186
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 189
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 192
    return v2

    .line 189
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public registerCallback(Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;)V
    .locals 5
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 150
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 152
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.AddressFinderService.interfaces.IAddressFinderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 153
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 154
    iget-object v2, p0, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 155
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 161
    return-void

    .line 153
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public requestLookup([Lcom/htc/AddressFinderService/interfaces/AddressData;IZ)I
    .locals 6
    .parameter "data"
    .parameter "updateCounts"
    .parameter "isUseNetwork"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 115
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 118
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v5, "com.htc.AddressFinderService.interfaces.IAddressFinderService"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 119
    const/4 v5, 0x0

    invoke-virtual {v0, p1, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 120
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    if-eqz p3, :cond_0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object v3, p0, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 123
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 124
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 127
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 130
    return v2

    .end local v2           #_result:I
    :cond_0
    move v3, v4

    .line 121
    goto :goto_0

    .line 127
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public unRegisterCallback(Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;)V
    .locals 5
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 165
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 167
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.AddressFinderService.interfaces.IAddressFinderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 168
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 169
    iget-object v2, p0, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 170
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    return-void

    .line 168
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
