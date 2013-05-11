.class Lcom/android/camera/io/InternalSmallStorageSlot;
.super Lcom/android/camera/io/StorageSlot;
.source "InternalSmallStorageSlot.java"


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/android/camera/io/InternalSmallStorageSlot;->getDirectoryPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/io/StorageSlot;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method

.method private static getDirectoryPath()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getState()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/io/InternalSmallStorageSlot;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "removed"

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isSupported()Z
    .locals 1

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasPhoneStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Internal Small Storage"

    return-object v0
.end method
