.class public interface abstract Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB;
.super Ljava/lang/Object;
.source "IDTCPServiceCB.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;
    }
.end annotation


# virtual methods
.method public abstract onReadByteNotify(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onServiceStartComplete()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
