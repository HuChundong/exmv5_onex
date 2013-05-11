.class public final Lcom/android/camera/preferences/Sense40Plus2PreferenceUpgradeWorker;
.super Lcom/android/camera/preferences/PreferenceUpgradeWorker;
.source "Sense40Plus2PreferenceUpgradeWorker.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x133042b

    const v1, 0x133055d

    invoke-direct {p0, v0, v1}, Lcom/android/camera/preferences/PreferenceUpgradeWorker;-><init>(II)V

    return-void
.end method


# virtual methods
.method public upgradePreferences(Landroid/content/Context;Ljava/util/Map;Landroid/content/SharedPreferences$Editor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Landroid/content/SharedPreferences$Editor;",
            ")V"
        }
    .end annotation

    const-string v1, "pref_camera_tap_capture"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    const-string v1, "pref_camera_tap_capture_front"

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_0
    const-string v1, "pref_camera_tap_capture"

    const/4 v2, 0x0

    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void

    :cond_0
    const-string v1, "pref_camera_tap_capture_front"

    const/4 v2, 0x1

    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
