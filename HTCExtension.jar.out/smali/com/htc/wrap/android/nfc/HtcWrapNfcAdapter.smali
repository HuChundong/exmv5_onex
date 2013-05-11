.class public Lcom/htc/wrap/android/nfc/HtcWrapNfcAdapter;
.super Ljava/lang/Object;
.source "HtcWrapNfcAdapter.java"


# static fields
.field public static final ACTION_ADAPTER_STATE_CHANGED:Ljava/lang/String; = "android.nfc.action.ADAPTER_STATE_CHANGED"

.field public static final ACTION_CONNECTIVITY_EVENT_DETECTED:Ljava/lang/String; = "com.nxp.action.CONNECTIVITY_EVENT_DETECTED"

.field public static final ACTION_TRANSACTION_DETECTED:Ljava/lang/String; = "com.nxp.action.TRANSACTION_DETECTED"

.field public static final EXTRA_ADAPTER_STATE:Ljava/lang/String; = "android.nfc.extra.ADAPTER_STATE"

.field public static final EXTRA_AID:Ljava/lang/String; = "com.nxp.extra.AID"

.field public static final EXTRA_DATA:Ljava/lang/String; = "com.nxp.extra.DATA"

.field public static final SMART_MX_ID:Ljava/lang/String; = "com.nxp.smart_mx.ID"

.field public static final STATE_OFF:I = 0x1

.field public static final STATE_ON:I = 0x3

.field public static final STATE_TURNING_OFF:I = 0x4

.field public static final STATE_TURNING_ON:I = 0x2

.field public static final UICC_ID:Ljava/lang/String; = "com.nxp.uicc.ID"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 114
    return-void
.end method

.method public static activeSwp(Landroid/nfc/NfcAdapter;)V
    .locals 0
    .parameter "nfcAdapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    return-void
.end method

.method public static deSelectedSecureElement(Landroid/nfc/NfcAdapter;)V
    .locals 0
    .parameter "nfcAdapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    return-void
.end method

.method public static disable(Landroid/nfc/NfcAdapter;)Z
    .locals 1
    .parameter "nfcAdapter"

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->disable()Z

    move-result v0

    return v0
.end method

.method public static disableNdefPush(Landroid/nfc/NfcAdapter;)Z
    .locals 1
    .parameter "nfcAdapter"

    .prologue
    .line 209
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v0

    return v0
.end method

.method public static enable(Landroid/nfc/NfcAdapter;)Z
    .locals 1
    .parameter "nfcAdapter"

    .prologue
    .line 157
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->enable()Z

    move-result v0

    return v0
.end method

.method public static enableNdefPush(Landroid/nfc/NfcAdapter;)Z
    .locals 1
    .parameter "nfcAdapter"

    .prologue
    .line 196
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result v0

    return v0
.end method

.method public static getDefaultSelectedSecureElement(Landroid/nfc/NfcAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "nfcAdapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    const-string v0, ""

    return-object v0
.end method

.method public static isCardEmuEnabled(Landroid/nfc/NfcAdapter;)Z
    .locals 1
    .parameter "nfcAdapter"

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public static isNdefPushEnabled(Landroid/nfc/NfcAdapter;)Z
    .locals 1
    .parameter "nfcAdapter"

    .prologue
    .line 133
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    return v0
.end method

.method public static selectDefaultSecureElement(Landroid/nfc/NfcAdapter;Ljava/lang/String;)V
    .locals 0
    .parameter "nfcAdapter"
    .parameter "seId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    return-void
.end method

.method public static setDefaultSecureElementState(Landroid/nfc/NfcAdapter;Z)V
    .locals 0
    .parameter "nfcAdapter"
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    return-void
.end method
