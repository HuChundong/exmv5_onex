.class public Lcom/android/camera/preferences/BooleanPreferenceBinder;
.super Lcom/android/camera/preferences/PreferenceBinder;
.source "BooleanPreferenceBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/preferences/PreferenceBinder",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/camera/ISettingsOwner;Ljava/lang/String;Lcom/android/camera/property/Property;Ljava/lang/Object;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ISettingsOwner;",
            "Ljava/lang/String;",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/preferences/PreferenceBinder;-><init>(Lcom/android/camera/ISettingsOwner;Ljava/lang/String;Lcom/android/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected getPreferenceValue()Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->settingsOwner:Lcom/android/camera/ISettingsOwner;

    invoke-interface {v0}, Lcom/android/camera/ISettingsOwner;->getSettings()Lcom/android/camera/Settings;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/preferences/PreferenceBinder;->preferenceName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->defaultPropertyValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getPreferenceValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/preferences/BooleanPreferenceBinder;->getPreferenceValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
