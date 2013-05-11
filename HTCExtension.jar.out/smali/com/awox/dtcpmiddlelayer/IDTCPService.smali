.class public interface abstract Lcom/awox/dtcpmiddlelayer/IDTCPService;
.super Ljava/lang/Object;
.source "IDTCPService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/awox/dtcpmiddlelayer/IDTCPService$Stub;
    }
.end annotation


# virtual methods
.method public abstract FillBuffer(JI[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerDTCPServiceCallback(ILcom/awox/dtcpmiddlelayer/IDTCPServiceCB;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setFileSize(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startDTCPServer()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopDTCPServer()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
