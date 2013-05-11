.class public Lcom/htc/wrap/android/telephony/HtcWrapPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "HtcWrapPhoneStateListener.java"


# static fields
.field public static final LISTEN_CALL_DISCONNECTED:I = -0x80000000

.field public static final LISTEN_PRECISE_CALL_STATE:I = 0x40000000

.field public static final LISTEN_SEPARATE_SERVICE_STATE:I = 0x20000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallDisconnected(Ljava/lang/String;)V
    .locals 0
    .parameter "incomingNumber"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onCallDisconnected(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public onCallForwardingIndicatorChangedExt(ZI)V
    .locals 0
    .parameter "cfi"
    .parameter "phoneType"

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallForwardingIndicatorChangedExt(ZI)V

    .line 45
    return-void
.end method

.method public onMessageWaitingIndicatorChangedEnhanced(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onMessageWaitingIndicatorChangedEnhanced(I)V

    .line 21
    return-void
.end method

.method public onPreciseCallStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onPreciseCallStateChanged(I)V

    .line 60
    return-void
.end method

.method public onSeparateServiceStateChanged([Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "voiceServiceState"
    .parameter "dataServiceState"

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onSeparateServiceStateChanged([Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V

    .line 36
    return-void
.end method

.method public onServiceStateChangedExt(Landroid/telephony/ServiceState;I)V
    .locals 0
    .parameter "serviceState"
    .parameter "phoneType"

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onServiceStateChangedExt(Landroid/telephony/ServiceState;I)V

    .line 41
    return-void
.end method

.method public onSignalStrengthsChangedExt(Landroid/telephony/SignalStrength;I)V
    .locals 0
    .parameter "signalStrength"
    .parameter "phoneType"

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChangedExt(Landroid/telephony/SignalStrength;I)V

    .line 49
    return-void
.end method
