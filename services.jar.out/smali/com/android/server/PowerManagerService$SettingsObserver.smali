.class Lcom/android/server/PowerManagerService$SettingsObserver;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 711
    iput-object p1, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 711
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method

.method private getFloat(Ljava/lang/String;F)F
    .locals 3
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 719
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1700(Lcom/android/server/PowerManagerService;)Landroid/content/ContentQueryMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentQueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 720
    .local v1, values:Landroid/content/ContentValues;
    if-eqz v1, :cond_1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 721
    .local v0, fVal:Ljava/lang/Float;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .end local p2
    :cond_0
    return p2

    .line 720
    .end local v0           #fVal:Ljava/lang/Float;
    .restart local p2
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 3
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 713
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1700(Lcom/android/server/PowerManagerService;)Landroid/content/ContentQueryMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentQueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 714
    .local v1, values:Landroid/content/ContentValues;
    if-eqz v1, :cond_1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 715
    .local v0, iVal:Ljava/lang/Integer;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .end local p2
    :cond_0
    return p2

    .line 714
    .end local v0           #iVal:Ljava/lang/Integer;
    .restart local p2
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 7
    .parameter "o"
    .parameter "arg"

    .prologue
    const/high16 v6, 0x3f00

    .line 725
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$600(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v3

    monitor-enter v3

    .line 727
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v4, "stay_on_while_plugged_in"

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/android/server/PowerManagerService;->mStayOnConditions:I
    invoke-static {v2, v4}, Lcom/android/server/PowerManagerService;->access$1802(Lcom/android/server/PowerManagerService;I)I

    .line 729
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->updateWakeLockLocked()V
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$900(Lcom/android/server/PowerManagerService;)V

    .line 732
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v4, "screen_off_timeout"

    const/16 v5, 0x3a98

    invoke-direct {p0, v4, v5}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I
    invoke-static {v2, v4}, Lcom/android/server/PowerManagerService;->access$1902(Lcom/android/server/PowerManagerService;I)I

    .line 736
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v4, "deskdock_dim_screen"

    const/16 v5, 0xa

    invoke-direct {p0, v4, v5}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/android/server/PowerManagerService;->mScreenOffDelayForDeskDock:I
    invoke-static {v2, v4}, Lcom/android/server/PowerManagerService;->access$2002(Lcom/android/server/PowerManagerService;I)I

    .line 737
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffDelayForDeskDock:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 738
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v4, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffDelayForDeskDock:I
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;)I

    move-result v4

    const v5, 0xea60

    mul-int/2addr v4, v5

    #setter for: Lcom/android/server/PowerManagerService;->mScreenOffDelayForDeskDock:I
    invoke-static {v2, v4}, Lcom/android/server/PowerManagerService;->access$2002(Lcom/android/server/PowerManagerService;I)I

    .line 745
    :cond_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v4, "screen_brightness"

    const/16 v5, 0xc0

    invoke-direct {p0, v4, v5}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessSetting:I
    invoke-static {v2, v4}, Lcom/android/server/PowerManagerService;->access$2102(Lcom/android/server/PowerManagerService;I)I

    .line 746
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F
    invoke-static {v2, v4}, Lcom/android/server/PowerManagerService;->access$2202(Lcom/android/server/PowerManagerService;F)F

    .line 749
    const-string v2, "screen_brightness_mode"

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 750
    .local v0, screen_mode:I
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->setScreenBrightnessMode(I)V
    invoke-static {v2, v0}, Lcom/android/server/PowerManagerService;->access$2300(Lcom/android/server/PowerManagerService;I)V

    .line 753
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1300(Lcom/android/server/PowerManagerService;)V

    .line 755
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v4, "window_animation_scale"

    const/high16 v5, 0x3f80

    invoke-direct {p0, v4, v5}, Lcom/android/server/PowerManagerService$SettingsObserver;->getFloat(Ljava/lang/String;F)F

    move-result v4

    #setter for: Lcom/android/server/PowerManagerService;->mWindowScaleAnimation:F
    invoke-static {v2, v4}, Lcom/android/server/PowerManagerService;->access$2402(Lcom/android/server/PowerManagerService;F)F

    .line 756
    const-string v2, "transition_animation_scale"

    const/high16 v4, 0x3f80

    invoke-direct {p0, v2, v4}, Lcom/android/server/PowerManagerService$SettingsObserver;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 757
    .local v1, transitionScale:F
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mAnimationSetting:I
    invoke-static {v2, v4}, Lcom/android/server/PowerManagerService;->access$2502(Lcom/android/server/PowerManagerService;I)I

    .line 758
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mWindowScaleAnimation:F
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2400(Lcom/android/server/PowerManagerService;)F

    move-result v2

    cmpl-float v2, v2, v6

    if-lez v2, :cond_1

    .line 759
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const/16 v4, 0x10

    invoke-static {v2, v4}, Lcom/android/server/PowerManagerService;->access$2576(Lcom/android/server/PowerManagerService;I)I

    .line 761
    :cond_1
    cmpl-float v2, v1, v6

    if-lez v2, :cond_2

    .line 766
    :cond_2
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$2600()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 767
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SettingsObserver: mStayOnConditions="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mStayOnConditions:I
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$1800(Lcom/android/server/PowerManagerService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mScreenOffTimeoutSetting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$1900(Lcom/android/server/PowerManagerService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mScreenOffDelayForDeskDock="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffDelayForDeskDock:I
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", screen_mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mWindowScaleAnimation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mWindowScaleAnimation:F
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$2400(Lcom/android/server/PowerManagerService;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", transitionScale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mAnimationSetting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAnimationSetting:I
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$2500(Lcom/android/server/PowerManagerService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHtcPowerSaver:Lcom/android/server/HtcPowerSaver;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$200(Lcom/android/server/PowerManagerService;)Lcom/android/server/HtcPowerSaver;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 779
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPowerSaverHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1500(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->runHtcPowerSaverCheck:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$1400(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 780
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPowerSaverHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1500(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->runHtcPowerSaverCheck:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$1400(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 783
    :cond_4
    return-void

    .line 776
    .end local v0           #screen_mode:I
    .end local v1           #transitionScale:F
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
