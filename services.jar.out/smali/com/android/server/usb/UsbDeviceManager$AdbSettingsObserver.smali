.class Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;
.super Landroid/database/ContentObserver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdbSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 1
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 155
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 158
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->access$000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "adb_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_0

    move v0, v2

    .line 160
    .local v0, enable:Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/KeyguardManager;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 161
    .local v1, isLocked:Z
    :goto_1
    if-nez v1, :cond_2

    .line 162
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[USBNET] AdbSettingsObserver: Settings.Secure.ADB_ENABLED="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$300(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    .line 168
    :goto_2
    return-void

    .end local v0           #enable:Z
    .end local v1           #isLocked:Z
    :cond_0
    move v0, v3

    .line 158
    goto :goto_0

    .restart local v0       #enable:Z
    :cond_1
    move v1, v3

    .line 160
    goto :goto_1

    .line 166
    .restart local v1       #isLocked:Z
    :cond_2
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[USBNET] isKeyguardLocked cannot set AdbSettingsObserver"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
