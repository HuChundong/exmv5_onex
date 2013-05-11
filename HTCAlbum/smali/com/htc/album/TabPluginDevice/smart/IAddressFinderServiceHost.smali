.class public interface abstract Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;
.super Ljava/lang/Object;
.source "IAddressFinderServiceHost.java"


# virtual methods
.method public abstract addressLookup(Z)V
.end method

.method public abstract bindAddressListener(Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;)V
.end method

.method public abstract getAddressResultMap(Ljava/lang/String;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/AddressFinderService/interfaces/AddressData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isFinderSearchInProgress()Z
.end method

.method public abstract lockNetworkAccessWarning()V
.end method

.method public abstract onNotifyServiceFirstTimer()V
.end method

.method public abstract setAddressLookUpSource(Ljava/util/HashMap;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/AddressFinderService/interfaces/AddressData;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract setEnableNetworkAccessWarning(Z)V
.end method

.method public abstract setResetNetworkAccessWarning(Z)V
.end method

.method public abstract unbindAddressListener(Ljava/lang/String;)V
.end method

.method public abstract unlockNetworkAccessWarning()V
.end method
