.class public Lcom/android/stocksettings/Sweep2WakeSwitch;
.super Ljava/lang/Object;
.source "Sweep2WakeSwitch.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final FILE:Ljava/lang/String; = "/sys/android_touch/sweep2wake"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 14
    const-string v0, "/sys/android_touch/sweep2wake"

    invoke-static {v0}, Lcom/android/stocksettings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 22
    invoke-static {}, Lcom/android/stocksettings/Sweep2WakeSwitch;->isSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 32
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 27
    .local v1, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v2, "s2w_switch"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 28
    .local v0, enabled:Z
    if-eqz v0, :cond_1

    .line 29
    const-string v2, "/sys/android_touch/sweep2wake"

    const-string v3, "1"

    invoke-static {v2, v3}, Lcom/android/stocksettings/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_1
    const-string v2, "/sys/android_touch/sweep2wake"

    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/android/stocksettings/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 36
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    .line 37
    .local v0, enabled:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    const-string v1, "/sys/android_touch/sweep2wake"

    const-string v2, "1"

    invoke-static {v1, v2}, Lcom/android/stocksettings/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 40
    :cond_0
    const-string v1, "/sys/android_touch/sweep2wake"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/android/stocksettings/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
