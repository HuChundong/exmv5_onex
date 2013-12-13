.class public Lcom/android/stocksettings/Startup;
.super Landroid/content/BroadcastReceiver;
.source "Startup.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "bootintent"

    .prologue
    .line 11
    invoke-static {p1}, Lcom/android/stocksettings/Sweep2WakeSwitch;->restore(Landroid/content/Context;)V

    .line 12
    invoke-static {p1}, Lcom/android/stocksettings/Sweep2WakeStroke;->restore(Landroid/content/Context;)V

    .line 13
    invoke-static {p1}, Lcom/android/stocksettings/Sweep2WakeMinLength;->restore(Landroid/content/Context;)V

    .line 14
    invoke-static {p1}, Lcom/android/stocksettings/Fastcharge;->restore(Landroid/content/Context;)V

    .line 15
    invoke-static {p1}, Lcom/android/stocksettings/BacklightDisable;->restore(Landroid/content/Context;)V

    .line 16
    invoke-static {p1}, Lcom/android/stocksettings/BacklightNotificationSwitch;->restore(Landroid/content/Context;)V

    .line 17
    invoke-static {p1}, Lcom/android/stocksettings/SmartDimmerSwitch;->restore(Landroid/content/Context;)V

    .line 18
    return-void
.end method
