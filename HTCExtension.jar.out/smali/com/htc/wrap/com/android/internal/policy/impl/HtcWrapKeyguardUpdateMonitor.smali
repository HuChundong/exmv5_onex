.class public Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "HtcWrapKeyguardUpdateMonitor.java"


# static fields
.field public static final DEVICE_LOCK_TYPE_CS:I = 0x1

.field public static final DEVICE_LOCK_TYPE_DM:I = 0x2

.field public static final DEVICE_LOCK_TYPE_NONE:I = 0x0

.field private static final HTC_DEVICE:Z = true


# instance fields
.field private mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 622
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 623
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 624
    return-void
.end method

.method public static getIccDetailStatus(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)[I
    .locals 1
    .parameter "updateMonitor"

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getIccDetailStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public static getIccDetailStatusExt(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)[I
    .locals 1
    .parameter "updateMonitor"
    .parameter "phoneType"

    .prologue
    .line 527
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getIccDetailStatusExt(I)[I

    move-result-object v0

    return-object v0
.end method

.method public static getKeyboardFly(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "updateMonitor"

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getKeyboardFly()Z

    move-result v0

    return v0
.end method

.method public static getNetowrkServiceStatus(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I
    .locals 1
    .parameter "updateMonitor"

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getNetowrkServiceStatus()I

    move-result v0

    return v0
.end method

.method public static getNetworkLockType(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I
    .locals 1
    .parameter "updateMonitor"

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getNetworkLockType()I

    move-result v0

    return v0
.end method

.method public static getSimState(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)Lcom/android/internal/telephony/IccCard$State;
    .locals 1
    .parameter "updateMonitor"
    .parameter "phoneType"

    .prologue
    .line 543
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    return-object v0
.end method

.method public static getSubNetowrkServiceStatus(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I
    .locals 1
    .parameter "updateMonitor"

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSubNetowrkServiceStatus()I

    move-result v0

    return v0
.end method

.method public static getSubTelephonyPlmn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "updateMonitor"

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSubTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getSubTelephonySpn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "updateMonitor"

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSubTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getUimState(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Lcom/android/internal/telephony/IccCard$State;
    .locals 1
    .parameter "updateMonitor"

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getUimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    return-object v0
.end method

.method public static registerHtcIccStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;)V
    .locals 0
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 483
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerIccStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;)V

    .line 485
    return-void
.end method

.method public static registerHtcInfoPlusCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoPlusCallback;)V
    .locals 0
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 489
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoPlusCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoPlusCallback;)V

    .line 491
    return-void
.end method

.method public static registerIccStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/HtcIfIccStateCallback;)V
    .locals 0
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 495
    check-cast p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerIccStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;)V

    .line 497
    return-void
.end method

.method public static registerInfoPlusCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/HtcIfInfoPlusCallback;)V
    .locals 0
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 501
    check-cast p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoPlusCallback;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoPlusCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoPlusCallback;)V

    .line 503
    return-void
.end method

.method public static registerNewIccStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/HtcIfNewIccStateCallback;)V
    .locals 0
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 507
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerHtcIccStateCallback(Lcom/android/internal/policy/impl/HtcIfNewIccStateCallback;)V

    .line 509
    return-void
.end method

.method public static registerNewInfoPlusCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/HtcIfNewInfoPlusCallback;)V
    .locals 0
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 513
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerHtcInfoPlusCallback(Lcom/android/internal/policy/impl/HtcIfNewInfoPlusCallback;)V

    .line 515
    return-void
.end method

.method public static registerSimExtraStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/HtcIfSimExtraStateCallback;)V
    .locals 0
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 602
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimExtraStateCallback(Lcom/android/internal/policy/impl/HtcIfSimExtraStateCallback;)V

    .line 604
    return-void
.end method

.method public static registerSubSimExtraStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/HtcIfSubSimExtraStateCallback;)V
    .locals 0
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 596
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSubSimExtraStateCallback(Lcom/android/internal/policy/impl/HtcIfSubSimExtraStateCallback;)V

    .line 598
    return-void
.end method

.method public static reportBypassSimPinLock(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)V
    .locals 0
    .parameter "updateMonitor"
    .parameter "enabled"

    .prologue
    .line 616
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportBypassSimPinLock(Z)V

    .line 618
    return-void
.end method

.method public static reportPinUnlocked(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)V
    .locals 0
    .parameter "updateMonitor"
    .parameter "phoneType"

    .prologue
    .line 553
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportPinUnlocked(I)V

    .line 555
    return-void
.end method

.method public static reportUimPinUnlocked(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "updateMonitor"

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportUimPinUnlocked()V

    .line 538
    return-void
.end method

.method public static updateIccDetailStatus(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;III)V
    .locals 0
    .parameter "updateMonitor"
    .parameter "phoneType"
    .parameter "pin1RetryCount"
    .parameter "puk1RetryCount"

    .prologue
    .line 520
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->updateIccDetailStatus(III)V

    .line 522
    return-void
.end method

.method public static updateNetworkLockType(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)V
    .locals 0
    .parameter "updateMonitor"
    .parameter "type"

    .prologue
    .line 590
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->updateNetworkLockType(I)V

    .line 592
    return-void
.end method

.method public static updateSimDetailStatus(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;II)V
    .locals 0
    .parameter "updateMonitor"
    .parameter "pin1RetryCount"
    .parameter "puk1RetryCount"

    .prologue
    .line 576
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->updateSimDetailStatus(II)V

    .line 578
    return-void
.end method


# virtual methods
.method public getAvailableTimeStamp()J
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getAvailableTimeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceLock()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDeviceLock()Z

    move-result v0

    return v0
.end method

.method public getDeviceLockType()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDeviceLockType()I

    move-result v0

    return v0
.end method

.method public getIccDetailStatus()[I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getIccDetailStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public getIccDetailStatusExt(I)[I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getIccDetailStatusExt(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getKeyboardFly()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getKeyboardFly()Z

    move-result v0

    return v0
.end method

.method public getKeyboardFlyHeight()I
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getKeyboardFlyHeight()I

    move-result v0

    return v0
.end method

.method public getNetowrkServiceStatus()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getNetowrkServiceStatus()I

    move-result v0

    return v0
.end method

.method public getNetworkLockType()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getNetworkLockType()I

    move-result v0

    return v0
.end method

.method public getPasswordTimeout()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPasswordTimeout()Z

    move-result v0

    return v0
.end method

.method public getPinEnable()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPinEnable()Z

    move-result v0

    return v0
.end method

.method public getShowing()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getShowing()Z

    move-result v0

    return v0
.end method

.method public getSimState(I)Lcom/android/internal/telephony/IccCard$State;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    return-object v0
.end method

.method public getSubNetowrkServiceStatus()I
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSubNetowrkServiceStatus()I

    move-result v0

    return v0
.end method

.method public getSubTelephonyPlmn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSubTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSubTelephonySpn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSubTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getUimState()Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getUimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    return-object v0
.end method

.method public getUnlockType()I
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getUnlockType()I

    move-result v0

    return v0
.end method

.method public isShowCallDeclinedAnimation()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isShowCallDeclinedAnimation()Z

    move-result v0

    return v0
.end method

.method public isWaitFirstFrame()Z
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isWaitFirstFrame()Z

    move-result v0

    return v0
.end method

.method public registerHtcIccStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerIccStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;)V

    .line 385
    return-void
.end method

.method public registerHtcInfoPlusCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoPlusCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoPlusCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoPlusCallback;)V

    .line 391
    return-void
.end method

.method public registerIccStateCallback(Lcom/android/internal/policy/impl/HtcIfIccStateCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    check-cast p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerIccStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;)V

    .line 397
    return-void
.end method

.method public registerInfoPlusCallback(Lcom/android/internal/policy/impl/HtcIfInfoPlusCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    check-cast p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoPlusCallback;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoPlusCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoPlusCallback;)V

    .line 403
    return-void
.end method

.method public registerSimExtraStateCallback(Lcom/android/internal/policy/impl/HtcIfSimExtraStateCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    check-cast p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimExtraStateCallback;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimExtraStateCallback(Lcom/android/internal/policy/impl/HtcIfSimExtraStateCallback;)V

    .line 61
    return-void
.end method

.method public removeCallback(Ljava/lang/Object;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 441
    return-void
.end method

.method public reportAvailableTimeStamp(J)V
    .locals 1
    .parameter "timeStamp"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportAvailableTimeStamp(J)V

    .line 109
    return-void
.end method

.method public reportPinUnlocked(I)V
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportPinUnlocked(I)V

    .line 437
    return-void
.end method

.method public reportSimUnlocked()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 355
    return-void
.end method

.method public reportUimPinUnlocked()V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportUimPinUnlocked()V

    .line 423
    return-void
.end method

.method public setKeyboardFly(I)V
    .locals 1
    .parameter "height"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setKeyboardFly(I)V

    .line 274
    return-void
.end method

.method public setKeyboardFly(Z)V
    .locals 1
    .parameter "bFly"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setKeyboardFly(Z)V

    .line 250
    return-void
.end method

.method public setPasswordTimeout(Z)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setPasswordTimeout(Z)V

    .line 199
    return-void
.end method

.method public setShowCallDeclinedAnimation(Z)V
    .locals 1
    .parameter "bShow"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setShowCallDeclinedAnimation(Z)V

    .line 239
    return-void
.end method

.method public setShowing(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setShowing(Z)V

    .line 131
    return-void
.end method

.method public setUnlockType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setUnlockType(I)V

    .line 299
    return-void
.end method

.method public setWaitFirstFrame(Z)V
    .locals 1
    .parameter "wait"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setWaitFirstFrame(Z)V

    .line 322
    return-void
.end method

.method public updateIccDetailStatus(III)V
    .locals 1
    .parameter "phoneType"
    .parameter "pin1RetryCount"
    .parameter "puk1RetryCount"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->updateIccDetailStatus(III)V

    .line 409
    return-void
.end method

.method public updateNetworkLockType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->updateNetworkLockType(I)V

    .line 90
    return-void
.end method

.method public updateSimDetailStatus(II)V
    .locals 1
    .parameter "pin1RetryCount"
    .parameter "puk1RetryCount"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->updateSimDetailStatus(II)V

    .line 76
    return-void
.end method
