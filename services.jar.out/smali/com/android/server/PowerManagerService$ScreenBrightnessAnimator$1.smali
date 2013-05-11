.class Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->onLooperPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 3342
    iput-object p1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3344
    iget-object v10, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v10, v10, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$5400(Lcom/android/server/PowerManagerService;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v10, v10, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mInitialAnimation:Z
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$5500(Lcom/android/server/PowerManagerService;)Z

    move-result v10

    if-nez v10, :cond_6

    move v0, v8

    .line 3347
    .local v0, brightnessMode:I
    :goto_0
    iget v10, p1, Landroid/os/Message;->what:I

    const/16 v11, 0xa

    if-ne v10, v11, :cond_8

    .line 3348
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 3349
    .local v4, mask:I
    iget v7, p1, Landroid/os/Message;->arg2:I

    .line 3350
    .local v7, value:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 3351
    .local v5, tStart:J
    and-int/lit8 v10, v4, 0x2

    if-eqz v10, :cond_1

    .line 3352
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$5600()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Set brightness: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3353
    :cond_0
    iget-object v10, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v10, v10, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v10

    invoke-virtual {v10, v7, v0}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 3356
    iget-object v10, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    #calls: Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->buttonKeyboardCtrl(I)V
    invoke-static {v10, v7}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->access$5800(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;I)V

    .line 3366
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long v2, v10, v5

    .line 3367
    .local v2, elapsed:J
    and-int/lit8 v10, v4, 0x4

    if-eqz v10, :cond_2

    .line 3368
    iget-object v10, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v10, v10, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$5900(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3370
    :cond_2
    and-int/lit8 v10, v4, 0x8

    if-eqz v10, :cond_3

    .line 3371
    iget-object v10, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v10, v10, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$6000(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3374
    :cond_3
    const-wide/16 v10, 0x64

    cmp-long v10, v2, v10

    if-lez v10, :cond_4

    .line 3375
    const-string v10, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Excessive delay when setting lcd brightness: mLcdLight.setBrightness("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") spend "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mask="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3381
    :cond_4
    const-wide/16 v10, 0x10

    cmp-long v10, v2, v10

    if-gez v10, :cond_7

    const/16 v1, 0x10

    .line 3382
    .local v1, delay:I
    :goto_1
    monitor-enter p0

    .line 3383
    :try_start_0
    iget-object v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iput v7, v8, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    .line 3384
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3385
    iget-object v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    #calls: Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateInternal(IZI)V
    invoke-static {v8, v4, v9, v1}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->access$6100(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;IZI)V

    .line 3392
    .end local v1           #delay:I
    .end local v2           #elapsed:J
    .end local v4           #mask:I
    .end local v5           #tStart:J
    .end local v7           #value:I
    :cond_5
    :goto_2
    return-void

    .end local v0           #brightnessMode:I
    :cond_6
    move v0, v9

    .line 3344
    goto/16 :goto_0

    .restart local v0       #brightnessMode:I
    .restart local v2       #elapsed:J
    .restart local v4       #mask:I
    .restart local v5       #tStart:J
    .restart local v7       #value:I
    :cond_7
    move v1, v8

    .line 3381
    goto :goto_1

    .line 3384
    .restart local v1       #delay:I
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 3386
    .end local v1           #delay:I
    .end local v2           #elapsed:J
    .end local v4           #mask:I
    .end local v5           #tStart:J
    .end local v7           #value:I
    :cond_8
    iget v8, p1, Landroid/os/Message;->what:I

    const/16 v9, 0xb

    if-ne v8, v9, :cond_5

    .line 3387
    iget v8, p1, Landroid/os/Message;->arg1:I

    goto :goto_2
.end method
