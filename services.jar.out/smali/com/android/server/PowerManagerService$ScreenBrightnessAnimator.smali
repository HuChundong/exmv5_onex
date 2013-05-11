.class Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;
.super Landroid/os/HandlerThread;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenBrightnessAnimator"
.end annotation


# static fields
.field static final ANIMATE_LIGHTS:I = 0xa

.field static final ANIMATE_POWER_OFF:I = 0xb


# instance fields
.field private currentMask:I

.field volatile currentValue:I

.field private duration:I

.field volatile endSensorValue:I

.field volatile endValue:I

.field private final prefix:Ljava/lang/String;

.field volatile startSensorValue:I

.field private startTimeMillis:J

.field volatile startValue:I

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "priority"

    .prologue
    .line 3335
    iput-object p1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    .line 3336
    invoke-direct {p0, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 3337
    iput-object p2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->prefix:Ljava/lang/String;

    .line 3338
    return-void
.end method

.method static synthetic access$10600(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3322
    invoke-direct {p0}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->getEndBrightness()I

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3322
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->buttonKeyboardCtrl(I)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;IZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 3322
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateInternal(IZI)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3322
    iget v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I

    return v0
.end method

.method private animateInternal(IZI)V
    .locals 12
    .parameter "mask"
    .parameter "turningOff"
    .parameter "delay"

    .prologue
    const/4 v2, 0x0

    .line 3401
    monitor-enter p0

    .line 3402
    :try_start_0
    iget v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    iget v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    if-eq v8, v9, :cond_5

    .line 3403
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 3404
    .local v5, now:J
    iget-wide v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startTimeMillis:J

    sub-long v8, v5, v8

    long-to-int v1, v8

    .line 3406
    .local v1, elapsed:I
    iget v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    if-ge v1, v8, :cond_7

    .line 3407
    iget v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    iget v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startValue:I

    sub-int v0, v8, v9

    .line 3408
    .local v0, delta:I
    iget v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startValue:I

    mul-int v9, v0, v1

    iget v10, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    div-int/2addr v9, v10

    add-int v4, v8, v9

    .line 3409
    .local v4, newValue:I
    const/4 v8, 0x0

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 3410
    const/16 v8, 0xff

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 3412
    if-lez p3, :cond_0

    iget v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    if-ne v4, v8, :cond_0

    .line 3413
    iget v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v9

    div-int v7, v8, v9

    .line 3414
    .local v7, timePerStep:I
    iget v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    sub-int/2addr v8, v1

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 3415
    if-gez v0, :cond_6

    const/4 v8, -0x1

    :goto_0
    add-int/2addr v4, v8

    .line 3418
    .end local v7           #timePerStep:I
    :cond_0
    iget v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endSensorValue:I

    iget v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startSensorValue:I

    sub-int v0, v8, v9

    .line 3419
    iget-object v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    iget v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startSensorValue:I

    mul-int v10, v0, v1

    iget v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    div-int/2addr v10, v11

    add-int/2addr v9, v10

    #setter for: Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I
    invoke-static {v8, v9}, Lcom/android/server/PowerManagerService;->access$6302(Lcom/android/server/PowerManagerService;I)I

    .line 3428
    .end local v0           #delta:I
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$5600()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3429
    const-string v8, "PowerManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Animating light: lValue="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startValue:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", elapsed="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", duration="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", delay="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", sValue="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startSensorValue:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endSensorValue:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", highestSensor="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$6300(Lcom/android/server/PowerManagerService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", turningOff="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mHeadless="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHeadless:Z
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$6400(Lcom/android/server/PowerManagerService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mAnimateScreenLights="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    iget-boolean v10, v10, Lcom/android/server/PowerManagerService;->mAnimateScreenLights:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3442
    :cond_2
    if-eqz p2, :cond_4

    iget-object v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHeadless:Z
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$6400(Lcom/android/server/PowerManagerService;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    iget-boolean v8, v8, Lcom/android/server/PowerManagerService;->mAnimateScreenLights:Z

    if-nez v8, :cond_4

    .line 3443
    iget-object v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffReason:I
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$6500(Lcom/android/server/PowerManagerService;)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_8

    .line 3445
    .local v2, mode:I
    :goto_2
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$5600()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3446
    const-string v8, "PowerManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Doing power-off anim, mode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3448
    :cond_3
    iget-object v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$5300(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0xb

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v2, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 3451
    .end local v2           #mode:I
    :cond_4
    iget-object v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$5300(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 3453
    iget-object v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$5300(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v8, v9, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 3455
    .local v3, msg:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$5300(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v8

    int-to-long v9, p3

    invoke-virtual {v8, v3, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3457
    .end local v1           #elapsed:I
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #newValue:I
    .end local v5           #now:J
    :cond_5
    monitor-exit p0

    .line 3458
    return-void

    .line 3415
    .restart local v0       #delta:I
    .restart local v1       #elapsed:I
    .restart local v4       #newValue:I
    .restart local v5       #now:J
    .restart local v7       #timePerStep:I
    :cond_6
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 3421
    .end local v0           #delta:I
    .end local v4           #newValue:I
    .end local v7           #timePerStep:I
    :cond_7
    iget v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    .line 3422
    .restart local v4       #newValue:I
    iget-object v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    iget v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endSensorValue:I

    #setter for: Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I
    invoke-static {v8, v9}, Lcom/android/server/PowerManagerService;->access$6302(Lcom/android/server/PowerManagerService;I)I

    .line 3423
    iget v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    if-lez v8, :cond_1

    .line 3424
    iget-object v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v9, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mInitialAnimation:Z
    invoke-static {v8, v9}, Lcom/android/server/PowerManagerService;->access$5502(Lcom/android/server/PowerManagerService;Z)Z

    goto/16 :goto_1

    .line 3457
    .end local v1           #elapsed:I
    .end local v4           #newValue:I
    .end local v5           #now:J
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 3443
    .restart local v1       #elapsed:I
    .restart local v4       #newValue:I
    .restart local v5       #now:J
    :cond_8
    :try_start_1
    iget-object v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAnimationSetting:I
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$2500(Lcom/android/server/PowerManagerService;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_2
.end method

.method private buttonKeyboardCtrl(I)V
    .locals 4
    .parameter "lcdValue"

    .prologue
    const/4 v1, 0x0

    .line 3560
    iget v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    .line 3561
    .local v0, screenOn:Z
    :goto_0
    if-lez p1, :cond_4

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$7300(Lcom/android/server/PowerManagerService;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3562
    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$7400(Lcom/android/server/PowerManagerService;)I

    move-result v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$7500(Lcom/android/server/PowerManagerService;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 3563
    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$5900(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$7500(Lcom/android/server/PowerManagerService;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3564
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$7600()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3565
    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$7500(Lcom/android/server/PowerManagerService;)I

    move-result v3

    #calls: Lcom/android/server/PowerManagerService;->setOrientationButton(I)V
    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->access$7700(Lcom/android/server/PowerManagerService;I)V

    .line 3568
    :cond_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$7400(Lcom/android/server/PowerManagerService;)I

    move-result v2

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$7800(Lcom/android/server/PowerManagerService;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 3569
    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$6000(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$7900(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$7800(Lcom/android/server/PowerManagerService;)I

    move-result v1

    :cond_1
    invoke-virtual {v2, v1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3575
    :cond_2
    :goto_1
    return-void

    .end local v0           #screenOn:Z
    :cond_3
    move v0, v1

    .line 3560
    goto :goto_0

    .line 3572
    .restart local v0       #screenOn:Z
    :cond_4
    iget-object v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$5900(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 3573
    iget-object v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$6000(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto :goto_1
.end method

.method private getEndBrightness()I
    .locals 1

    .prologue
    .line 3586
    monitor-enter p0

    .line 3587
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    monitor-exit p0

    return v0

    .line 3588
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public animateTo(III)V
    .locals 1
    .parameter "target"
    .parameter "mask"
    .parameter "animationDuration"

    .prologue
    .line 3472
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6300(Lcom/android/server/PowerManagerService;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(IIII)V

    .line 3473
    return-void
.end method

.method public animateTo(IIII)V
    .locals 9
    .parameter "target"
    .parameter "sensorTarget"
    .parameter "mask"
    .parameter "animationDuration"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3476
    monitor-enter p0

    .line 3477
    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_5

    .line 3479
    and-int/lit8 v5, p3, 0x4

    if-eqz v5, :cond_2

    .line 3483
    :try_start_0
    iget-object v5, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v6, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonBacklightValues:[I
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$6700(Lcom/android/server/PowerManagerService;)[I

    move-result-object v6

    const/4 v7, 0x1

    #calls: Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[IZ)I
    invoke-static {v5, p2, v6, v7}, Lcom/android/server/PowerManagerService;->access$6800(Lcom/android/server/PowerManagerService;I[IZ)I

    move-result v0

    .line 3484
    .local v0, buttonValue:I
    iget-object v5, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$5900(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mNightMode:Z
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$6900(Lcom/android/server/PowerManagerService;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v4

    .end local v0           #buttonValue:I
    :cond_0
    invoke-virtual {v5, v0}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3486
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x10

    if-eq v5, v6, :cond_1

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x42

    if-ne v5, v6, :cond_2

    .line 3488
    :cond_1
    iget-object v5, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSharekeyBacklight:Lcom/android/server/LightsService$Light;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mNightMode:Z
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$6900(Lcom/android/server/PowerManagerService;)Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_0
    invoke-virtual {v5, v4}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3493
    :cond_2
    and-int/lit8 v4, p3, 0x8

    if-eqz v4, :cond_3

    .line 3496
    iget-object v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v5, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardBacklightValues:[I
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$7100(Lcom/android/server/PowerManagerService;)[I

    move-result-object v5

    const/4 v6, 0x1

    #calls: Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[IZ)I
    invoke-static {v4, p2, v5, v6}, Lcom/android/server/PowerManagerService;->access$6800(Lcom/android/server/PowerManagerService;I[IZ)I

    move-result v2

    .line 3497
    .local v2, keyboardValue:I
    iget-object v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$6000(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3500
    .end local v2           #keyboardValue:I
    :cond_3
    monitor-exit p0

    .line 3555
    :goto_1
    return-void

    :cond_4
    move v4, p1

    .line 3488
    goto :goto_0

    .line 3502
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I

    xor-int/2addr v5, p3

    if-eqz v5, :cond_6

    .line 3504
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->cancelAnimation()V

    .line 3506
    :cond_6
    iget-object v5, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mInitialAnimation:Z
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$5500(Lcom/android/server/PowerManagerService;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3508
    const/4 p4, 0x0

    .line 3509
    if-lez p1, :cond_7

    .line 3510
    iget-object v5, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v6, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mInitialAnimation:Z
    invoke-static {v5, v6}, Lcom/android/server/PowerManagerService;->access$5502(Lcom/android/server/PowerManagerService;Z)Z

    .line 3513
    :cond_7
    iget v5, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    iput v5, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startValue:I

    .line 3514
    iput p1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    .line 3515
    iget-object v5, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$6300(Lcom/android/server/PowerManagerService;)I

    move-result v5

    iput v5, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startSensorValue:I

    .line 3516
    iput p2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endSensorValue:I

    .line 3517
    iput p3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I

    .line 3518
    iget-object v5, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mWindowScaleAnimation:F
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$2400(Lcom/android/server/PowerManagerService;)F

    move-result v5

    int-to-float v6, p4

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    .line 3519
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startTimeMillis:J

    .line 3521
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$2600()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {}, Lcom/android/server/PowerManagerService;->access$5600()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3522
    :cond_8
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "animateTo: lValue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sValue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startSensorValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endSensorValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mask="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", duration="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", startTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startTimeMillis:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mInitialAnimation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mInitialAnimation:Z
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$5500(Lcom/android/server/PowerManagerService;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3531
    :cond_9
    iget v5, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    iget v6, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    if-ne v5, v6, :cond_a

    iget v5, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    if-nez v5, :cond_f

    .line 3533
    :cond_a
    and-int/lit8 v5, p3, 0x3

    if-eqz v5, :cond_d

    move v1, v3

    .line 3534
    .local v1, doScreenAnim:Z
    :goto_2
    iget v5, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    if-nez v5, :cond_e

    .line 3535
    .local v3, turningOff:Z
    :goto_3
    if-eqz v3, :cond_b

    if-eqz v1, :cond_b

    .line 3537
    iget-object v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$5300(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3538
    iget-object v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v5, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffReason:I
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$6500(Lcom/android/server/PowerManagerService;)I

    move-result v5

    #calls: Lcom/android/server/PowerManagerService;->screenOffFinishedAnimatingLocked(I)I
    invoke-static {v4, v5}, Lcom/android/server/PowerManagerService;->access$7200(Lcom/android/server/PowerManagerService;I)I

    .line 3540
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    .line 3544
    :cond_b
    if-eqz v1, :cond_c

    .line 3545
    const/4 v4, 0x0

    invoke-direct {p0, p3, v3, v4}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateInternal(IZI)V

    .line 3554
    .end local v1           #doScreenAnim:Z
    .end local v3           #turningOff:Z
    :cond_c
    :goto_4
    monitor-exit p0

    goto/16 :goto_1

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_d
    move v1, v4

    .line 3533
    goto :goto_2

    .restart local v1       #doScreenAnim:Z
    :cond_e
    move v3, v4

    .line 3534
    goto :goto_3

    .line 3551
    .end local v1           #doScreenAnim:Z
    :cond_f
    :try_start_1
    iget v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    invoke-direct {p0, v4}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->buttonKeyboardCtrl(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method public cancelAnimation()V
    .locals 3

    .prologue
    .line 3599
    iget v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(III)V

    .line 3600
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .parameter "pw"
    .parameter "string"

    .prologue
    .line 3461
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  animating: start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", current:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  startSensorValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startSensorValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " endSensorValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endSensorValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  startTimeMillis:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " now:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  currentMask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I

    #calls: Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$6600(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3469
    return-void
.end method

.method public getCurrentBrightness()I
    .locals 1

    .prologue
    .line 3579
    monitor-enter p0

    .line 3580
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    monitor-exit p0

    return v0

    .line 3581
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAnimating()Z
    .locals 2

    .prologue
    .line 3593
    monitor-enter p0

    .line 3594
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3595
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onLooperPrepared()V
    .locals 2

    .prologue
    .line 3342
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    new-instance v1, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;

    invoke-direct {v1, p0}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;-><init>(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;)V

    #setter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$5302(Lcom/android/server/PowerManagerService;Landroid/os/Handler;)Landroid/os/Handler;

    .line 3394
    monitor-enter p0

    .line 3395
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/PowerManagerService;->mInitComplete:Z
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$6202(Lcom/android/server/PowerManagerService;Z)Z

    .line 3396
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 3397
    monitor-exit p0

    .line 3398
    return-void

    .line 3397
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
