.class public interface abstract Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;
.super Ljava/lang/Object;
.source "IAddressFinderService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/AddressFinderService/interfaces/IAddressFinderService$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancelLookup(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isRequestInProgress()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCallback(Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestLookup([Lcom/htc/AddressFinderService/interfaces/AddressData;IZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unRegisterCallback(Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
