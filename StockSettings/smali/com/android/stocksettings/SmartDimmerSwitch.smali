.class public Lcom/android/stocksettings/SmartDimmerSwitch;
.super Ljava/lang/Object;
.source "SmartDimmerSwitch.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final FILE:Ljava/lang/String; = "/sys/devices/tegradc.0/smartdimmer/enable"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 15
    const-string v0, "/sys/devices/tegradc.0/smartdimmer/enable"

    invoke-static {v0}, Lcom/android/stocksettings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 23
    invoke-static {}, Lcom/android/stocksettings/SmartDimmerSwitch;->isSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 36
    :goto_0
    return-void

    .line 27
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 28
    .local v2, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v3, "smartdimmer_switch"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 29
    .local v1, enabled:Z
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/devices/tegradc.0/smartdimmer/enable"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, blFile:Ljava/io/File;
    if-eqz v1, :cond_1

    .line 31
    const-string v3, "/sys/devices/tegradc.0/smartdimmer/enable"

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/android/stocksettings/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_1
    const-string v3, "/sys/devices/tegradc.0/smartdimmer/enable"

    const-string v4, "0"

    invoke-static {v3, v4}, Lcom/android/stocksettings/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 40
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    .line 41
    .local v1, enabled:Ljava/lang/Boolean;
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/devices/tegradc.0/smartdimmer/enable"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, blFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    const-string v2, "/sys/devices/tegradc.0/smartdimmer/enable"

    const-string v3, "1"

    invoke-static {v2, v3}, Lcom/android/stocksettings/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 46
    :cond_0
    const-string v2, "/sys/devices/tegradc.0/smartdimmer/enable"

    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/android/stocksettings/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method