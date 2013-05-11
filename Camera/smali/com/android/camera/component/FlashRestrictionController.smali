.class Lcom/android/camera/component/FlashRestrictionController;
.super Lcom/android/camera/component/UIComponent;
.source "FlashRestrictionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/FlashRestrictionController$11;
    }
.end annotation


# static fields
.field private static final FLAG_LOW_BATTERY_CAPACITY:I = 0x10

.field private static final FLAG_LOW_BATTERY_TEMPERATURE:I = 0x8

.field private static final FLAG_RIL:I = 0x2

.field private static final FLAG_WIFI_HOTSPOT:I = 0x1

.field private static final FLAG_WIMAX:I = 0x4

.field private static final MSG_CHECK_ALL_RESTRICTIONS:I = 0x2712

.field private static final MSG_CHECK_RIL:I = 0x2715

.field private static final MSG_CHECK_WIFI_HOTSPOT:I = 0x2716

.field private static final MSG_CHECK_WIMAX:I = 0x2717

.field private static final MSG_DISABLE_STATUS_UPDATED:I = 0x2711

.field private static final MSG_WORKER_THREAD_STARTED:I = 0x2710

.field static final NAME:Ljava/lang/String; = "Flash-Restriction Controller"

.field private static final PATH_RIL_STATUS:Ljava/lang/String; = "/sys/camera_led_status/led_ril_status"

.field private static final PATH_WIFI_HOTSPOT_STATUS:Ljava/lang/String; = "/sys/camera_led_status/led_hotspot_status"

.field private static final PATH_WIMAX_STATUS:Ljava/lang/String; = "/sys/camera_led_status/led_wimax_status"


# instance fields
.field private m_DisableStatus:I

.field private m_FileObserverForRIL:Landroid/os/FileObserver;

.field private m_FileObserverForWiMax:Landroid/os/FileObserver;

.field private m_FileObserverForWifiHotSpot:Landroid/os/FileObserver;

.field private m_IsFirstTimePreview:Z

.field private m_IsFlashDisabled:Z

.field private final m_WorkerThread:Lcom/android/camera/WorkerThread;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "Flash-Restriction Controller"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    iput-boolean v2, p0, Lcom/android/camera/component/FlashRestrictionController;->m_IsFirstTimePreview:Z

    new-instance v0, Lcom/android/camera/component/FlashRestrictionController$1;

    const-string v1, "Flash-Restriction Worker Thread"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/component/FlashRestrictionController$1;-><init>(Lcom/android/camera/component/FlashRestrictionController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/component/FlashRestrictionController;->m_WorkerThread:Lcom/android/camera/WorkerThread;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/FlashRestrictionController;Landroid/os/Message;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/component/FlashRestrictionController;->handleAsyncMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/FlashRestrictionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->checkAllRestrictions()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/component/FlashRestrictionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->showWarningToast()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/component/FlashRestrictionController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/FlashRestrictionController;->onDisableStatusUpdated(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/FlashRestrictionController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/FlashRestrictionController;->m_IsFlashDisabled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/component/FlashRestrictionController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_IsFlashDisabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/component/FlashRestrictionController;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->getRestrictionHint()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/FlashRestrictionController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/FlashRestrictionController;)Lcom/android/camera/WorkerThread;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController;->m_WorkerThread:Lcom/android/camera/WorkerThread;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/FlashRestrictionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->stopFileObservers()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/camera/component/FlashRestrictionController;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_DisableStatus:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/component/FlashRestrictionController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/FlashRestrictionController;->m_IsFirstTimePreview:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/camera/component/FlashRestrictionController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_IsFirstTimePreview:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/component/FlashRestrictionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->startFileObservers()V

    return-void
.end method

.method private checkAllRestrictions()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->checkRIL()V

    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->checkWifiHotspot()V

    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->checkWiMax()V

    return-void
.end method

.method private checkRIL()V
    .locals 6

    const/4 v4, 0x2

    const/4 v0, 0x0

    const-string v1, "/sys/camera_led_status/led_ril_status"

    invoke-direct {p0, v1}, Lcom/android/camera/component/FlashRestrictionController;->isChecked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v3, v4

    :goto_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "checkRIL() - Status : "

    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x2711

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/FlashRestrictionController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    return-void

    :cond_1
    move v3, v0

    goto :goto_0
.end method

.method private checkWiMax()V
    .locals 6

    const/4 v4, 0x4

    const/4 v0, 0x0

    const-string v1, "/sys/camera_led_status/led_wimax_status"

    invoke-direct {p0, v1}, Lcom/android/camera/component/FlashRestrictionController;->isChecked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v3, v4

    :goto_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "checkWiMax() - Status : "

    and-int/lit8 v5, v3, 0x4

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x2711

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/FlashRestrictionController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    return-void

    :cond_1
    move v3, v0

    goto :goto_0
.end method

.method private checkWifiHotspot()V
    .locals 6

    const/4 v0, 0x0

    const/4 v4, 0x1

    const-string v1, "/sys/camera_led_status/led_hotspot_status"

    invoke-direct {p0, v1}, Lcom/android/camera/component/FlashRestrictionController;->isChecked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v3, v4

    :goto_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "checkWifiHotspot() - Status : "

    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_0

    move v0, v4

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x2711

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/FlashRestrictionController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    return-void

    :cond_1
    move v3, v0

    goto :goto_0
.end method

.method private getRestrictionHint()I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_DisableStatus:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_DisableStatus:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    const v0, 0x7f0a0041

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_DisableStatus:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    const v0, 0x7f0a0042

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_DisableStatus:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isShowFlashLightHint()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0a0043

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/camera/component/FlashRestrictionController;->m_DisableStatus:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    const v0, 0x7f0a0044

    goto :goto_0

    :cond_5
    const v0, 0x7f0a0040

    goto :goto_0
.end method

.method private handleAsyncMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->checkAllRestrictions()V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->checkRIL()V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->checkWifiHotspot()V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->checkWiMax()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private isChecked(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/android/camera/io/FileUtility;->readInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onDisableStatusUpdated(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/component/FlashRestrictionController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_DisableStatus:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_DisableStatus:I

    iget v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_DisableStatus:I

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-boolean v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_IsFlashDisabled:Z

    if-eq v1, v0, :cond_0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/component/FlashRestrictionController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->disableFlash()V

    invoke-virtual {p0}, Lcom/android/camera/component/FlashRestrictionController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->showWarningToast()V

    :cond_2
    :goto_2
    iput-boolean v0, p0, Lcom/android/camera/component/FlashRestrictionController;->m_IsFlashDisabled:Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/component/FlashRestrictionController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->enableFlash()V

    goto :goto_2
.end method

.method private showWarningToast()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/component/FlashRestrictionController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-class v2, Lcom/android/camera/IToastManager;

    invoke-virtual {p0, v2}, Lcom/android/camera/component/FlashRestrictionController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IToastManager;

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "showWarningToast() - No IToastManager interface"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->getRestrictionHint()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/camera/IToastManager;->showToast(I)Lcom/android/camera/Handle;

    goto :goto_0
.end method

.method private startFileObservers()V
    .locals 4

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/camera/component/FlashRestrictionController;->getState()I

    move-result v1

    if-eq v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForRIL:Landroid/os/FileObserver;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/camera/component/FlashRestrictionController$8;

    const-string v2, "/sys/camera_led_status/led_ril_status"

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/component/FlashRestrictionController$8;-><init>(Lcom/android/camera/component/FlashRestrictionController;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForRIL:Landroid/os/FileObserver;

    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForRIL:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForWifiHotSpot:Landroid/os/FileObserver;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/camera/component/FlashRestrictionController$9;

    const-string v2, "/sys/camera_led_status/led_hotspot_status"

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/component/FlashRestrictionController$9;-><init>(Lcom/android/camera/component/FlashRestrictionController;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForWifiHotSpot:Landroid/os/FileObserver;

    :cond_2
    iget-object v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForWifiHotSpot:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForWiMax:Landroid/os/FileObserver;

    if-nez v1, :cond_3

    new-instance v1, Lcom/android/camera/component/FlashRestrictionController$10;

    const-string v2, "/sys/camera_led_status/led_wimax_status"

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/component/FlashRestrictionController$10;-><init>(Lcom/android/camera/component/FlashRestrictionController;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForWiMax:Landroid/os/FileObserver;

    :cond_3
    iget-object v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForWiMax:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Cannot start watching file \'/sys/camera_led_status/led_wimax_status\'"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Cannot start watching file \'/sys/camera_led_status/led_ril_status\'"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Cannot start watching file \'/sys/camera_led_status/led_hotspot_status\'"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private stopFileObservers()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForRIL:Landroid/os/FileObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForRIL:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForWifiHotSpot:Landroid/os/FileObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForWifiHotSpot:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForWiMax:Landroid/os/FileObserver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForWiMax:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    :cond_2
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController;->m_WorkerThread:Lcom/android/camera/WorkerThread;

    invoke-virtual {v0}, Lcom/android/camera/WorkerThread;->exit()V

    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->stopFileObservers()V

    iput-object v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForRIL:Landroid/os/FileObserver;

    iput-object v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForWifiHotSpot:Landroid/os/FileObserver;

    iput-object v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForWiMax:Landroid/os/FileObserver;

    invoke-static {p0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/FlashRestrictionController;->onDisableStatusUpdated(II)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->startFileObservers()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    iget-object v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_WorkerThread:Lcom/android/camera/WorkerThread;

    invoke-virtual {v1}, Lcom/android/camera/WorkerThread;->start()V

    invoke-virtual {p0}, Lcom/android/camera/component/FlashRestrictionController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->flashButtonClickedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/FlashRestrictionController$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/FlashRestrictionController$2;-><init>(Lcom/android/camera/component/FlashRestrictionController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->resumingEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/FlashRestrictionController$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/FlashRestrictionController$3;-><init>(Lcom/android/camera/component/FlashRestrictionController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/FlashRestrictionController$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/FlashRestrictionController$4;-><init>(Lcom/android/camera/component/FlashRestrictionController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/FlashRestrictionController$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/FlashRestrictionController$5;-><init>(Lcom/android/camera/component/FlashRestrictionController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isLowBatteryTemperature:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/FlashRestrictionController$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/FlashRestrictionController$6;-><init>(Lcom/android/camera/component/FlashRestrictionController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isLowPower:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/FlashRestrictionController$7;

    invoke-direct {v2, p0}, Lcom/android/camera/component/FlashRestrictionController$7;-><init>(Lcom/android/camera/component/FlashRestrictionController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    return-void
.end method
