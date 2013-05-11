.class public interface abstract Landroid/os/storage/HtcIfStorageManager;
.super Ljava/lang/Object;
.source "HtcIfStorageManager.java"


# virtual methods
.method public abstract enableModemLink()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract formatVolume(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getVolumeListWithWrapper()[Landroid/os/storage/HtcIfStorageVolume;
.end method

.method public abstract getVolumeStateWithWrapper(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isSdcardRestricted()Z
.end method

.method public abstract setMountISOEnabled(Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setSdcardRestricted(Z)V
.end method

.method public abstract setUsbMassStorageEnabled(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unmountVolume(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unmountVolume(Ljava/lang/String;ZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
