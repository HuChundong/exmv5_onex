
.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$KeyguardScreenCallbackImpl;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->isScreenOn()Z

    move-result v0

    return v0
.end method
