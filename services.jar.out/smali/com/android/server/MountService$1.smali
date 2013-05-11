.class Lcom/android/server/MountService$1;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .parameter

    .prologue
    .line 534
    iput-object p1, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 537
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, action:Ljava/lang/String;
    const-string v4, "MountService"

    const-string v5, "Share_SD_only"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-static {v1}, Lcom/android/server/MountService;->access$802(Z)Z

    .line 546
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_0

    .line 547
    const-string v4, "MountService"

    const-string v5, "InitISO"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-static {v1}, Lcom/android/server/MountService;->access$902(Z)Z

    .line 550
    :cond_0
    const-string v4, "true"

    const-string v5, "persist.fuse_sdcard"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 551
    const-string v4, "MountService"

    const-string v5, "Fuse enabled"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v4, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #setter for: Lcom/android/server/MountService;->sdcard_fuse:Z
    invoke-static {v4, v1}, Lcom/android/server/MountService;->access$1002(Lcom/android/server/MountService;Z)Z

    .line 553
    invoke-static {v1}, Lcom/android/server/MountService;->access$802(Z)Z

    .line 555
    :cond_1
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 557
    :cond_2
    iget-object v4, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #setter for: Lcom/android/server/MountService;->mBooted:Z
    invoke-static {v4, v1}, Lcom/android/server/MountService;->access$1102(Lcom/android/server/MountService;Z)Z

    .line 558
    iget-object v4, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #setter for: Lcom/android/server/MountService;->mBootTimeMount:Z
    invoke-static {v4, v1}, Lcom/android/server/MountService;->access$1202(Lcom/android/server/MountService;Z)Z

    .line 561
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sd_encryption"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 563
    .local v2, sdEncryption:I
    if-ne v2, v1, :cond_4

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    invoke-virtual {v4}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v4

    sget-object v5, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v4, v5, :cond_4

    .line 667
    .end local v2           #sdEncryption:I
    :cond_3
    :goto_0
    return-void

    .line 571
    .restart local v2       #sdEncryption:I
    :cond_4
    const-string v4, "simulator"

    const-string v5, "ro.product.device"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 572
    iget-object v4, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v5, 0x0

    const-string v6, "/sdcard"

    const/4 v7, 0x4

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v4, v5, v6, v3, v7}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 576
    :cond_5
    new-instance v3, Lcom/android/server/MountService$1$1;

    invoke-direct {v3, p0}, Lcom/android/server/MountService$1$1;-><init>(Lcom/android/server/MountService$1;)V

    invoke-virtual {v3}, Lcom/android/server/MountService$1$1;->start()V

    goto :goto_0

    .line 662
    .end local v2           #sdEncryption:I
    :cond_6
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 663
    const-string v4, "connected"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "mass_storage"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 665
    .local v1, available:Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const-string v4, "ums"

    #calls: Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V
    invoke-static {v3, v4, v1}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;Ljava/lang/String;Z)V

    goto :goto_0

    .end local v1           #available:Z
    :cond_7
    move v1, v3

    .line 663
    goto :goto_1
.end method
