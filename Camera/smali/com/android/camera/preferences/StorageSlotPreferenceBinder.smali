.class public final Lcom/android/camera/preferences/StorageSlotPreferenceBinder;
.super Lcom/android/camera/preferences/PreferenceBinder;
.source "StorageSlotPreferenceBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/preferences/PreferenceBinder",
        "<",
        "Lcom/android/camera/io/StorageSlot;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageSlotPreferenceBinder"


# direct methods
.method public constructor <init>(Lcom/android/camera/ISettingsOwner;Ljava/lang/String;Lcom/android/camera/property/Property;Ljava/lang/Object;Lcom/android/camera/io/StorageSlot;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ISettingsOwner;",
            "Ljava/lang/String;",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/io/StorageSlot;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/io/StorageSlot;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/android/camera/preferences/PreferenceBinder;-><init>(Lcom/android/camera/ISettingsOwner;Ljava/lang/String;Lcom/android/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected getPreferenceValue()Lcom/android/camera/io/StorageSlot;
    .locals 5

    iget-object v2, p0, Lcom/android/camera/preferences/PreferenceBinder;->settingsOwner:Lcom/android/camera/ISettingsOwner;

    invoke-interface {v2}, Lcom/android/camera/ISettingsOwner;->getSettings()Lcom/android/camera/Settings;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/preferences/PreferenceBinder;->preferenceName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "main_memory"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/android/camera/io/StorageSlot;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    goto :goto_0

    :cond_1
    const-string v2, "StorageSlotPreferenceBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Storage slot \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not supported, use default value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/preferences/PreferenceBinder;->defaultPropertyValue:Ljava/lang/Object;

    check-cast v2, Lcom/android/camera/io/StorageSlot;

    move-object v0, v2

    goto :goto_1
.end method

.method protected bridge synthetic getPreferenceValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/preferences/StorageSlotPreferenceBinder;->getPreferenceValue()Lcom/android/camera/io/StorageSlot;

    move-result-object v0

    return-object v0
.end method

.method protected setPreferenceValue(Lcom/android/camera/io/StorageSlot;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "main_memory"

    :goto_0
    iget-object v1, p0, Lcom/android/camera/preferences/PreferenceBinder;->settingsOwner:Lcom/android/camera/ISettingsOwner;

    invoke-interface {v1}, Lcom/android/camera/ISettingsOwner;->getSettings()Lcom/android/camera/Settings;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/preferences/PreferenceBinder;->preferenceName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string v0, "sdcard"

    goto :goto_0
.end method

.method protected bridge synthetic setPreferenceValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {p0, p1}, Lcom/android/camera/preferences/StorageSlotPreferenceBinder;->setPreferenceValue(Lcom/android/camera/io/StorageSlot;)V

    return-void
.end method
