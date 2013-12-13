.class public Lcom/android/stocksettings/BacklightDisable;
.super Ljava/lang/Object;
.source "BacklightDisable.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final FILE:Ljava/lang/String; = "/sys/class/leds/button-backlight/brightness"


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
    const-string v0, "/sys/class/leds/button-backlight/brightness"

    invoke-static {v0}, Lcom/android/stocksettings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 23
    invoke-static {}, Lcom/android/stocksettings/BacklightDisable;->isSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 38
    :goto_0
    return-void

    .line 27
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 28
    .local v2, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v3, "backlight_disable"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 29
    .local v1, enabled:Z
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/class/leds/button-backlight/brightness"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, blFile:Ljava/io/File;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/io/File;->setWritable(Z)Z

    .line 31
    if-eqz v1, :cond_1

    .line 32
    const-string v3, "/sys/class/leds/button-backlight/brightness"

    const-string v4, "0"

    invoke-static {v3, v4}, Lcom/android/stocksettings/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, v5}, Ljava/io/File;->setWritable(Z)Z

    goto :goto_0

    .line 36
    :cond_1
    const-string v3, "/sys/class/leds/button-backlight/brightness"

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/android/stocksettings/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v4, 0x1

    .line 42
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    .line 43
    .local v1, enabled:Ljava/lang/Boolean;
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/leds/button-backlight/brightness"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, blFile:Ljava/io/File;
    invoke-virtual {v0, v4}, Ljava/io/File;->setWritable(Z)Z

    .line 45
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    const-string v2, "/sys/class/leds/button-backlight/brightness"

    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/android/stocksettings/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/File;->setWritable(Z)Z

    .line 52
    :goto_0
    return v4

    .line 50
    :cond_0
    const-string v2, "/sys/class/leds/button-backlight/brightness"

    const-string v3, "1"

    invoke-static {v2, v3}, Lcom/android/stocksettings/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
