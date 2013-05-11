.class public Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InfoCallbackImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1045
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 1066
    return-void
.end method

.method public onDeviceLockChange(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 1079
    return-void
.end method

.method public onDevicePolicyManagerStateChanged()V
    .locals 0

    .prologue
    .line 1072
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 1069
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 1063
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 1048
    return-void
.end method

.method public onRefreshCarrierInfo(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "serviceStatus"
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 1057
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1060
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 1051
    return-void
.end method

.method public onUserChanged(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 1075
    return-void
.end method
