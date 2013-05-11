.class public Lcom/htc/wrap/android/preference/HtcWrapPreferenceManager;
.super Ljava/lang/Object;
.source "HtcWrapPreferenceManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPreferenceManager(Landroid/app/Activity;I)Landroid/preference/PreferenceManager;
    .locals 2
    .parameter "activity"
    .parameter "firstRequestCode"

    .prologue
    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please use HtcPreference"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflateFromResource(Landroid/preference/PreferenceManager;Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "pm"
    .parameter "context"
    .parameter "resId"
    .parameter "rootPreferences"

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2, p3}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method
