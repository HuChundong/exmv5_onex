.class public interface abstract Lcom/htc/wfdservice/IWfdServiceCallback;
.super Ljava/lang/Object;
.source "IWfdServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wfdservice/IWfdServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onConfiguringProgressChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onMirrorDisplayStateChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onServiceStateChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
