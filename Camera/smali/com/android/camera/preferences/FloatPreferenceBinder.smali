.class public Lcom/android/camera/preferences/FloatPreferenceBinder;
.super Lcom/android/camera/preferences/PreferenceBinder;
.source "FloatPreferenceBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/preferences/PreferenceBinder",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/camera/ISettingsOwner;Ljava/lang/String;Lcom/android/camera/property/Property;Ljava/lang/Object;F)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ISettingsOwner;",
            "Ljava/lang/String;",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/lang/Object;",
            "F)V"
        }
    .end annotation

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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
.method protected getPreferenceValue()Ljava/lang/Float;
    .locals 5

    const/high16 v4, 0x447a

    iget-object v2, p0, Lcom/android/camera/preferences/PreferenceBinder;->defaultPropertyValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v4

    float-to-int v0, v2

    iget-object v2, p0, Lcom/android/camera/preferences/PreferenceBinder;->settingsOwner:Lcom/android/camera/ISettingsOwner;

    invoke-interface {v2}, Lcom/android/camera/ISettingsOwner;->getSettings()Lcom/android/camera/Settings;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/preferences/PreferenceBinder;->preferenceName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/Settings;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v2, v1

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic getPreferenceValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/preferences/FloatPreferenceBinder;->getPreferenceValue()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected setPreferenceValue(Ljava/lang/Float;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    float-to-int v0, v1

    iget-object v1, p0, Lcom/android/camera/preferences/PreferenceBinder;->settingsOwner:Lcom/android/camera/ISettingsOwner;

    invoke-interface {v1}, Lcom/android/camera/ISettingsOwner;->getSettings()Lcom/android/camera/Settings;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/preferences/PreferenceBinder;->preferenceName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method protected bridge synthetic setPreferenceValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/android/camera/preferences/FloatPreferenceBinder;->setPreferenceValue(Ljava/lang/Float;)V

    return-void
.end method
