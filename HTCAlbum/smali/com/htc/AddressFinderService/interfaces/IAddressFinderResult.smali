.class public interface abstract Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;
.super Ljava/lang/Object;
.source "IAddressFinderResult.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult$Stub;
    }
.end annotation


# virtual methods
.method public abstract onLookupBegin(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onLookupEnd(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onLookupError(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onLookupResult(I[Lcom/htc/AddressFinderService/interfaces/AddressData;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
