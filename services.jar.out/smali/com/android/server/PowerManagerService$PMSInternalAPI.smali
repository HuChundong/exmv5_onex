.class public final Lcom/android/server/PowerManagerService$PMSInternalAPI;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "PMSInternalAPI"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 5427
    iput-object p1, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5428
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5338
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$PMSInternalAPI;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method protected cancelAnimation()V
    .locals 1

    .prologue
    .line 5381
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5386
    :goto_0
    return-void

    .line 5385
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$10500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->cancelAnimation()V

    goto :goto_0
.end method

.method protected enableCpuApDvcs(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 5349
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->enableCpuApDvcs(Z)V
    invoke-static {v0, p1}, Lcom/android/server/PowerManagerService;->access$10400(Lcom/android/server/PowerManagerService;Z)V

    .line 5350
    return-void
.end method

.method protected enableDongleMode(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 5407
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$1300(Lcom/android/server/PowerManagerService;)V

    .line 5410
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5420
    :goto_0
    return-void

    .line 5414
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHtcDongleMode:Lcom/android/server/HtcDongleMode;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$9200(Lcom/android/server/PowerManagerService;)Lcom/android/server/HtcDongleMode;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 5415
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v1, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHtcDongleMode:Lcom/android/server/HtcDongleMode;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$9200(Lcom/android/server/PowerManagerService;)Lcom/android/server/HtcDongleMode;

    move-result-object v1

    const-string v2, "enableDongleMode"

    iget-object v3, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mWakeLockState:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$3500(Lcom/android/server/PowerManagerService;)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/HtcDongleMode;->getCtrlWakeLockState(Ljava/lang/String;II)I

    move-result v1

    #setter for: Lcom/android/server/PowerManagerService;->mWakeLockState:I
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$3502(Lcom/android/server/PowerManagerService;I)I

    .line 5419
    :cond_1
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/PowerManagerService;->userActivity(JZ)V

    goto :goto_0
.end method

.method protected forceLightSensorUpdate(I)V
    .locals 5
    .parameter "DELAY"

    .prologue
    .line 5390
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5399
    :goto_0
    return-void

    .line 5394
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$600(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v1

    monitor-enter v1

    .line 5395
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$10700(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$5400(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5396
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {}, Lcom/android/server/PowerManagerService;->access$8900()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    #calls: Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(IZZI)V
    invoke-static {v0, v2, v3, v4, p1}, Lcom/android/server/PowerManagerService;->access$9000(Lcom/android/server/PowerManagerService;IZZI)V

    .line 5398
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getCurrentBrightness()I
    .locals 1

    .prologue
    .line 5372
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$10500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->getCurrentBrightness()I

    move-result v0

    return v0
.end method

.method protected getEndBrightness()I
    .locals 1

    .prologue
    .line 5376
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$10500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    move-result-object v0

    #calls: Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->getEndBrightness()I
    invoke-static {v0}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->access$10600(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;)I

    move-result v0

    return v0
.end method

.method protected lockType(I)Ljava/lang/String;
    .locals 1
    .parameter "flags"

    .prologue
    .line 5424
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->lockType(I)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/PowerManagerService;->access$10800(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected nativeAcquireCpuApDvcsWakeLock()V
    .locals 1

    .prologue
    .line 5341
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->nativeAcquireCpuApDvcsWakeLock()V
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$10200()V

    .line 5342
    return-void
.end method

.method protected nativeReleaseCpuApDvcsWakeLock()V
    .locals 1

    .prologue
    .line 5345
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->nativeReleaseCpuApDvcsWakeLock()V
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$10300()V

    .line 5346
    return-void
.end method

.method protected setScreenBrightnessMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 5355
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->setScreenBrightnessMode(I)V
    invoke-static {v0, p1}, Lcom/android/server/PowerManagerService;->access$2300(Lcom/android/server/PowerManagerService;I)V

    .line 5356
    return-void
.end method

.method protected setSmoothBacklight(II)V
    .locals 3
    .parameter "targetLcdValue"
    .parameter "DELAY"

    .prologue
    .line 5360
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5369
    :goto_0
    return-void

    .line 5364
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$600(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v1

    monitor-enter v1

    .line 5365
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$10500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->getCurrentBrightness()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 5366
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$10500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, p2}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(III)V

    .line 5368
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
