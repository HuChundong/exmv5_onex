.class final Lcom/android/camera/io/InvalidStorageSlot;
.super Lcom/android/camera/io/StorageSlot;
.source "InvalidStorageSlot.java"


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    invoke-direct {p0, v0, v1, v1}, Lcom/android/camera/io/StorageSlot;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public getFreeSpace()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    const-string v0, "unmountable"

    return-object v0
.end method

.method public isSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Invalid"

    return-object v0
.end method
