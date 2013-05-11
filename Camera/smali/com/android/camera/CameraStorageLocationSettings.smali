.class public Lcom/android/camera/CameraStorageLocationSettings;
.super Ljava/lang/Object;
.source "CameraStorageLocationSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraStorageLocationSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFromDatabase(Landroid/content/ContentResolver;)Lcom/android/camera/io/StorageSlot;
    .locals 5

    :try_start_0
    const-string v3, "htc_app_storage_loc_com.android.camera"

    invoke-static {p0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/android/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/android/camera/io/StorageSlot;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    :goto_1
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "CameraStorageLocationSettings"

    const-string v4, "Fail to get HTC_PREFIX_APP_STORAGE_LOCATION status, use available slot"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/io/StorageSlot;->hasInternalMemorySlot()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/android/camera/io/StorageSlot;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    goto :goto_0

    :cond_2
    const-string v3, "CameraStorageLocationSettings"

    const-string v4, "readFromDatabase() - No available storage slot"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/camera/io/StorageSlot;->INVALID:Lcom/android/camera/io/StorageSlot;

    goto :goto_1
.end method

.method public static writeToDatabase(Landroid/content/ContentResolver;Lcom/android/camera/io/StorageSlot;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "htc_app_storage_loc_com.android.camera"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "htc_app_storage_loc_com.android.camera"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
