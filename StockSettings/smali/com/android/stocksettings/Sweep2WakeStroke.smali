.class public Lcom/android/stocksettings/Sweep2WakeStroke;
.super Ljava/lang/Object;
.source "Sweep2WakeStroke.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final FILE:Ljava/lang/String; = "/sys/android_touch/s2w_allow_stroke"


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
    const-string v0, "/sys/android_touch/s2w_allow_stroke"

    invoke-static {v0}, Lcom/android/stocksettings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 22
    invoke-static {}, Lcom/android/stocksettings/Sweep2WakeStroke;->isSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 27
    .local v0, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v1, "/sys/android_touch/s2w_allow_stroke"

    const-string v2, "s2w_stroke"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/stocksettings/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 32
    const-string v0, "/sys/android_touch/s2w_allow_stroke"

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {v0, p2}, Lcom/android/stocksettings/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x1

    return v0
.end method
