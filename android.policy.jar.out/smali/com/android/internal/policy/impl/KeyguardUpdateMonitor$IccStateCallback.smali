.class public interface abstract Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Lcom/android/internal/policy/impl/HtcIfIccStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IccStateCallback"
.end annotation


# virtual methods
.method public abstract onIccStateChanged(Lcom/android/internal/telephony/IccCard$State;Z)V
.end method
