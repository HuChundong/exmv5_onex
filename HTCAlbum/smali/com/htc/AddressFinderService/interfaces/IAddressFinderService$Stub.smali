.class public abstract Lcom/htc/AddressFinderService/interfaces/IAddressFinderService$Stub;
.super Landroid/os/Binder;
.source "IAddressFinderService.java"

# interfaces
.implements Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/AddressFinderService/interfaces/IAddressFinderService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.AddressFinderService.interfaces.IAddressFinderService"

.field static final TRANSACTION_cancelLookup:I = 0x2

.field static final TRANSACTION_isRequestInProgress:I = 0x5

.field static final TRANSACTION_registerCallback:I = 0x3

.field static final TRANSACTION_requestLookup:I = 0x1

.field static final TRANSACTION_unRegisterCallback:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.AddressFinderService.interfaces.IAddressFinderService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.htc.AddressFinderService.interfaces.IAddressFinderService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v5, "com.htc.AddressFinderService.interfaces.IAddressFinderService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.htc.AddressFinderService.interfaces.IAddressFinderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    sget-object v5, Lcom/htc/AddressFinderService/interfaces/AddressData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/AddressFinderService/interfaces/AddressData;

    .line 51
    .local v0, _arg0:[Lcom/htc/AddressFinderService/interfaces/AddressData;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v2, v4

    .line 54
    .local v2, _arg2:Z
    :cond_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService$Stub;->requestLookup([Lcom/htc/AddressFinderService/interfaces/AddressData;IZ)I

    move-result v3

    .line 55
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 61
    .end local v0           #_arg0:[Lcom/htc/AddressFinderService/interfaces/AddressData;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Z
    .end local v3           #_result:I
    :sswitch_2
    const-string v5, "com.htc.AddressFinderService.interfaces.IAddressFinderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService$Stub;->cancelLookup(I)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 70
    .end local v0           #_arg0:I
    :sswitch_3
    const-string v5, "com.htc.AddressFinderService.interfaces.IAddressFinderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;

    move-result-object v0

    .line 73
    .local v0, _arg0:Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;
    invoke-virtual {p0, v0}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService$Stub;->registerCallback(Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 79
    .end local v0           #_arg0:Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;
    :sswitch_4
    const-string v5, "com.htc.AddressFinderService.interfaces.IAddressFinderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;

    move-result-object v0

    .line 82
    .restart local v0       #_arg0:Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;
    invoke-virtual {p0, v0}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService$Stub;->unRegisterCallback(Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 88
    .end local v0           #_arg0:Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;
    :sswitch_5
    const-string v5, "com.htc.AddressFinderService.interfaces.IAddressFinderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService$Stub;->isRequestInProgress()Z

    move-result v3

    .line 90
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v3, :cond_1

    move v2, v4

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
