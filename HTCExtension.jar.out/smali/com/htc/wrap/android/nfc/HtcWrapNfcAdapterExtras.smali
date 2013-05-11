.class public Lcom/htc/wrap/android/nfc/HtcWrapNfcAdapterExtras;
.super Ljava/lang/Object;
.source "HtcWrapNfcAdapterExtras.java"


# static fields
.field static final TAG:Ljava/lang/String; = "NFC"


# instance fields
.field private ex:Landroid/nfc/INfcAdapterExtras;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 19
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_1

    .line 20
    const-string v1, "NFC"

    const-string v2, "HtcWrapNfcAdapterExtras: NfcAdapter is not available."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const-string v1, "NFC"

    const-string v2, "HtcWrapNfcAdapterExtras: INfcAdapterExtras is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/wrap/android/nfc/HtcWrapNfcAdapterExtras;->ex:Landroid/nfc/INfcAdapterExtras;

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getNfcAdapterExtrasInterface()Landroid/nfc/INfcAdapterExtras;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/wrap/android/nfc/HtcWrapNfcAdapterExtras;->ex:Landroid/nfc/INfcAdapterExtras;

    .line 28
    iget-object v1, p0, Lcom/htc/wrap/android/nfc/HtcWrapNfcAdapterExtras;->ex:Landroid/nfc/INfcAdapterExtras;

    if-nez v1, :cond_0

    .line 29
    const-string v1, "NFC"

    const-string v2, "HtcWrapNfcAdapterExtras: INfcAdapterExtras is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public close(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 2
    .parameter "pkg"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/wrap/android/nfc/HtcWrapNfcAdapterExtras;->ex:Landroid/nfc/INfcAdapterExtras;

    if-nez v0, :cond_0

    .line 43
    const-string v0, "NFC"

    const-string v1, "HtcWrapNfcAdapterExtras.close(): INfcAdapterExtras is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/nfc/HtcWrapNfcAdapterExtras;->ex:Landroid/nfc/INfcAdapterExtras;

    invoke-interface {v0, p1, p2}, Landroid/nfc/INfcAdapterExtras;->close(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getSecureElementUid(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 58
    iget-object v0, p0, Lcom/htc/wrap/android/nfc/HtcWrapNfcAdapterExtras;->ex:Landroid/nfc/INfcAdapterExtras;

    if-nez v0, :cond_0

    .line 59
    const-string v0, "NFC"

    const-string v1, "HtcWrapNfcAdapterExtras.getSecureElementUid(): INfcAdapterExtras is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    return-object v2
.end method

.method public open(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 2
    .parameter "pkg"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/wrap/android/nfc/HtcWrapNfcAdapterExtras;->ex:Landroid/nfc/INfcAdapterExtras;

    if-nez v0, :cond_0

    .line 35
    const-string v0, "NFC"

    const-string v1, "HtcWrapNfcAdapterExtras.open(): INfcAdapterExtras is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/nfc/HtcWrapNfcAdapterExtras;->ex:Landroid/nfc/INfcAdapterExtras;

    invoke-interface {v0, p1, p2}, Landroid/nfc/INfcAdapterExtras;->open(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public transceive(Ljava/lang/String;[B)Landroid/os/Bundle;
    .locals 2
    .parameter "pkg"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/wrap/android/nfc/HtcWrapNfcAdapterExtras;->ex:Landroid/nfc/INfcAdapterExtras;

    if-nez v0, :cond_0

    .line 51
    const-string v0, "NFC"

    const-string v1, "HtcWrapNfcAdapterExtras.transceive(): INfcAdapterExtras is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/nfc/HtcWrapNfcAdapterExtras;->ex:Landroid/nfc/INfcAdapterExtras;

    invoke-interface {v0, p1, p2}, Landroid/nfc/INfcAdapterExtras;->transceive(Ljava/lang/String;[B)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method
