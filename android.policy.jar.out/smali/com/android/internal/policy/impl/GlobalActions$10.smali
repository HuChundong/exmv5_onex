.class Lcom/android/internal/policy/impl/GlobalActions$10;
.super Landroid/content/BroadcastReceiver;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0
    .parameter

    .prologue
    .line 1369
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$10;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 1371
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1372
    .local v0, action:Ljava/lang/String;
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_0

    const-string v6, "GlobalActions"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive , action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    :cond_0
    const-string v6, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1375
    :cond_1
    const-string v6, "reason"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1376
    .local v3, reason:Ljava/lang/String;
    const-string v6, "globalactions"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1377
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$10;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/internal/policy/impl/GlobalActions;->access$1700(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1428
    .end local v3           #reason:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 1379
    :cond_3
    const-string v6, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1382
    const-string v6, "PHONE_IN_ECM_STATE"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$10;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v6}, Lcom/android/internal/policy/impl/GlobalActions;->access$100(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1384
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$10;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #setter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v6, v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$102(Lcom/android/internal/policy/impl/GlobalActions;Z)Z

    .line 1385
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$10;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #calls: Lcom/android/internal/policy/impl/GlobalActions;->changeAirplaneModeSystemSetting(Z)V
    invoke-static {v5, v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$300(Lcom/android/internal/policy/impl/GlobalActions;Z)V

    goto :goto_0

    .line 1388
    :cond_4
    const-string v6, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1389
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$10;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    invoke-static {v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$500(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-ne v5, v6, :cond_5

    .line 1390
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$10;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    sget-object v6, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->TurningOff:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    #setter for: Lcom/android/internal/policy/impl/GlobalActions;->mMobileNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/GlobalActions;->access$902(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 1397
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$10;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mMobileNetworkModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    invoke-static {v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$1800(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1398
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$10;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mMobileNetworkModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    invoke-static {v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$1800(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$10;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mMobileNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    invoke-static {v6}, Lcom/android/internal/policy/impl/GlobalActions;->access$900(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .line 1399
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$10;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$1700(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1392
    :cond_5
    const/4 v2, 0x0

    .line 1393
    .local v2, mobileNetworkModeOn:Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$10;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    .line 1394
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$10;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    if-eqz v2, :cond_6

    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_2
    #setter for: Lcom/android/internal/policy/impl/GlobalActions;->mMobileNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    invoke-static {v6, v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$902(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_1

    :cond_6
    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_2

    .line 1402
    .end local v2           #mobileNetworkModeOn:Z
    :cond_7
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1403
    const-string v6, "ss"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1405
    .local v4, stateExtra:Ljava/lang/String;
    const-string v6, "READY"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1406
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$10;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #setter for: Lcom/android/internal/policy/impl/GlobalActions;->mSimReady:Z
    invoke-static {v5, v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$802(Lcom/android/internal/policy/impl/GlobalActions;Z)Z

    goto/16 :goto_0

    .line 1408
    :cond_8
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$10;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #setter for: Lcom/android/internal/policy/impl/GlobalActions;->mSimReady:Z
    invoke-static {v6, v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$802(Lcom/android/internal/policy/impl/GlobalActions;Z)Z

    goto/16 :goto_0

    .line 1413
    .end local v4           #stateExtra:Ljava/lang/String;
    :cond_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$1900()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1414
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$10;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$2000()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    #setter for: Lcom/android/internal/policy/impl/GlobalActions;->imsRegistered:Z
    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/GlobalActions;->access$402(Lcom/android/internal/policy/impl/GlobalActions;Z)Z

    .line 1415
    const-string v6, "GlobalActions"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "imsRegistered:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/GlobalActions$10;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->imsRegistered:Z
    invoke-static {v8}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$10;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->imsRegistered:Z
    invoke-static {v6}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1417
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$10;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v1, :cond_a

    .line 1419
    .local v1, inAirplaneMode:Z
    :goto_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$10;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    if-eqz v1, :cond_b

    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_4
    #setter for: Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    invoke-static {v6, v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$502(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 1420
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$10;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    invoke-static {v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$2100(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1421
    const-string v5, "GlobalActions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAirplaneModeOn != null set to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlobalActions$10;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlobalActions;->access$500(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$10;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    invoke-static {v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$2100(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$10;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    invoke-static {v6}, Lcom/android/internal/policy/impl/GlobalActions;->access$500(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    goto/16 :goto_0

    .end local v1           #inAirplaneMode:Z
    :cond_a
    move v1, v5

    .line 1417
    goto :goto_3

    .line 1419
    .restart local v1       #inAirplaneMode:Z
    :cond_b
    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_4
.end method
