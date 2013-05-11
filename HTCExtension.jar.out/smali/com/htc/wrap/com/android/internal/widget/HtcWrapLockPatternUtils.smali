.class public Lcom/htc/wrap/com/android/internal/widget/HtcWrapLockPatternUtils;
.super Ljava/lang/Object;
.source "HtcWrapLockPatternUtils.java"


# static fields
.field private static final HTC_DEVICE:Z = true


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/wrap/com/android/internal/widget/HtcWrapLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 67
    return-void
.end method

.method public static computePasswordComplexity(Ljava/lang/String;)I
    .locals 1
    .parameter "password"

    .prologue
    .line 22
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordComplexity(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public clearLockWithPermission()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/widget/HtcWrapLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->clearLockWithPermission()V

    .line 44
    return-void
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/widget/HtcWrapLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    return v0
.end method

.method public setSecurityForGuest(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/widget/HtcWrapLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setSecurityForGuest(Z)V

    .line 54
    return-void
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V
    .locals 1
    .parameter "button"
    .parameter "phoneState"
    .parameter "shown"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/widget/HtcWrapLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 63
    return-void
.end method
