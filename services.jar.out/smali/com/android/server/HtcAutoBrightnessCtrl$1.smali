.class Lcom/android/server/HtcAutoBrightnessCtrl$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcAutoBrightnessCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcAutoBrightnessCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HtcAutoBrightnessCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/HtcAutoBrightnessCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 293
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, action:Ljava/lang/String;
    const-string v8, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 297
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$100(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 302
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$200(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 303
    const-string v8, "HtcAutoBrightnessCtrl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive: ON, Skip. mEnableOffHookMode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z
    invoke-static {v10}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$100(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 308
    :cond_2
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$300(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 309
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$500(Lcom/android/server/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$400(Lcom/android/server/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 310
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$500(Lcom/android/server/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$400(Lcom/android/server/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;

    move-result-object v9

    const-wide/32 v10, 0xea60

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 312
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$200(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 313
    const-string v8, "HtcAutoBrightnessCtrl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive: ON, Skip. mEnablebrighterOnly="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z
    invoke-static {v10}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$300(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 318
    :cond_3
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    const/4 v9, 0x1

    #setter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z
    invoke-static {v8, v9}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$302(Lcom/android/server/HtcAutoBrightnessCtrl;Z)Z

    .line 320
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    const-string v9, "entering.screen.brightness"

    const/16 v10, 0x7f

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    #setter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I
    invoke-static {v8, v9}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$602(Lcom/android/server/HtcAutoBrightnessCtrl;I)I

    .line 321
    const-string v8, "backlight.delay"

    const/16 v9, 0x14

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 323
    .local v4, enteringDelay:I
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$700(Lcom/android/server/HtcAutoBrightnessCtrl;)Lcom/android/server/PowerManagerService$PMSInternalAPI;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->getCurrentBrightness()I

    move-result v1

    .line 324
    .local v1, curLcdValue:I
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$700(Lcom/android/server/HtcAutoBrightnessCtrl;)Lcom/android/server/PowerManagerService$PMSInternalAPI;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->getEndBrightness()I

    move-result v3

    .line 326
    .local v3, endLcdValue:I
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$600(Lcom/android/server/HtcAutoBrightnessCtrl;)I

    move-result v6

    .line 327
    .local v6, newLcdValue:I
    if-le v6, v1, :cond_6

    .line 328
    :goto_1
    if-le v6, v3, :cond_7

    .line 330
    :goto_2
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$200(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 331
    const-string v8, "HtcAutoBrightnessCtrl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive: ON, mBrighterOnly="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z
    invoke-static {v10}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$300(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mEnteringLcdValue="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I
    invoke-static {v10}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$600(Lcom/android/server/HtcAutoBrightnessCtrl;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", enteringDelay="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", curLcdValue="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", endLcdValue="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", newLcdValue="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_4
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I
    invoke-static {v8, v6}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$800(Lcom/android/server/HtcAutoBrightnessCtrl;I)I

    move-result v7

    .line 342
    .local v7, target:I
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V
    invoke-static {v8, v7, v4}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$900(Lcom/android/server/HtcAutoBrightnessCtrl;II)V

    .line 345
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1000(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 346
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$700(Lcom/android/server/HtcAutoBrightnessCtrl;)Lcom/android/server/PowerManagerService$PMSInternalAPI;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->setScreenBrightnessMode(I)V

    .line 349
    :cond_5
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$500(Lcom/android/server/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$400(Lcom/android/server/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 350
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$500(Lcom/android/server/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$400(Lcom/android/server/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;

    move-result-object v9

    const-wide/32 v10, 0xea60

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .end local v7           #target:I
    :cond_6
    move v6, v1

    .line 327
    goto/16 :goto_1

    :cond_7
    move v6, v3

    .line 328
    goto/16 :goto_2

    .line 352
    .end local v1           #curLcdValue:I
    .end local v3           #endLcdValue:I
    .end local v4           #enteringDelay:I
    .end local v6           #newLcdValue:I
    :cond_8
    const-string v8, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 354
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 358
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->isKeyguardLocked()Z
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1100(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 362
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$100(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 363
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$200(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 364
    const-string v8, "HtcAutoBrightnessCtrl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive: OFF, Skip. mEnableOffHookMode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z
    invoke-static {v10}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$100(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 369
    :cond_9
    const-string v8, "backlight.delay"

    const/16 v9, 0x28

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 370
    .local v5, leavingDelay:I
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$200(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 371
    const-string v8, "HtcAutoBrightnessCtrl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive: OFF, mEnableBrighterOnly="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z
    invoke-static {v10}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$300(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", leavingDelay="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_a
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->reset(I)V
    invoke-static {v8, v5}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1200(Lcom/android/server/HtcAutoBrightnessCtrl;I)V

    goto/16 :goto_0

    .line 376
    .end local v5           #leavingDelay:I
    :cond_b
    const-string v8, "com.android.server.htcpowersaver.action.ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 377
    const-string v8, "sys.psaver.bright"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, disable:Ljava/lang/String;
    const-string v8, "true"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 379
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    const/4 v9, 0x1

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->setPowerSaverMode(Z)V
    invoke-static {v8, v9}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1300(Lcom/android/server/HtcAutoBrightnessCtrl;Z)V

    goto/16 :goto_0

    .line 381
    .end local v2           #disable:Ljava/lang/String;
    :cond_c
    const-string v8, "com.android.server.htcpowersaver.action.OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 382
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    const/4 v9, 0x0

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->setPowerSaverMode(Z)V
    invoke-static {v8, v9}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1300(Lcom/android/server/HtcAutoBrightnessCtrl;Z)V

    goto/16 :goto_0

    .line 383
    :cond_d
    const-string v8, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 384
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    const-string v9, "state"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mPhoneState:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1402(Lcom/android/server/HtcAutoBrightnessCtrl;Ljava/lang/String;)Ljava/lang/String;

    .line 386
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->checkOffHookMode()V
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1500(Lcom/android/server/HtcAutoBrightnessCtrl;)V

    goto/16 :goto_0

    .line 387
    :cond_e
    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 388
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    const-string v9, "level"

    const/16 v10, 0x64

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    #setter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mBatteryLevel:I
    invoke-static {v8, v9}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1602(Lcom/android/server/HtcAutoBrightnessCtrl;I)I

    .line 390
    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->checkOffHookMode()V
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1500(Lcom/android/server/HtcAutoBrightnessCtrl;)V

    goto/16 :goto_0
.end method
