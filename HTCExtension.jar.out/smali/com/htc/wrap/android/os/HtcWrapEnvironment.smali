.class public Lcom/htc/wrap/android/os/HtcWrapEnvironment;
.super Landroid/os/Environment;
.source "HtcWrapEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/os/HtcWrapEnvironment$GepWrapEnvironment;
    }
.end annotation


# static fields
.field public static final MEDIA_FORMATTING:Ljava/lang/String; = "formatting"

.field public static final SUPPORTS_EXTERNAL_STORAGE:I = 0x1

.field public static final SUPPORTS_PHONE_STORAGE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/os/Environment;-><init>()V

    .line 114
    return-void
.end method

.method public static getDefaultStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Landroid/os/Environment;->getDefaultStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadUserCacheDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Landroid/os/Environment;->getDownloadUserCacheDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRemovableStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getRemovableStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedStorages()I
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Landroid/os/Environment;->getSupportedStorages()I

    move-result v0

    return v0
.end method

.method public static getUsbDeviceDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Landroid/os/Environment;->getUsbDeviceDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getUsbDeviceState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Landroid/os/Environment;->getUsbDeviceState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVirtualRemovableStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Landroid/os/Environment;->getVirtualRemovableStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getVirtualUsbDeviceDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Landroid/os/Environment;->getVirtualUsbDeviceDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static hasInternalFat()Z
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v0

    return v0
.end method

.method public static hasPhoneStorage()Z
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Landroid/os/Environment;->hasPhoneStorage()Z

    move-result v0

    return v0
.end method

.method public static hasRemovableStorageSlot()Z
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v0

    return v0
.end method

.method public static hasUsbDeviceSlot()Z
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Landroid/os/Environment;->hasUsbDeviceSlot()Z

    move-result v0

    return v0
.end method
