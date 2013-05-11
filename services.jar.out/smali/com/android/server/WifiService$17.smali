.class Lcom/android/server/WifiService$17;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 2617
    iput-object p1, p0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private shouldDeviceStayAwake(II)Z
    .locals 1
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    .line 2920
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldWifiStayAwake(II)Z
    .locals 5
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 2877
    iget-object v2, p0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sleep_policy"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2884
    .local v0, wifiSleepPolicy:I
    iget-object v2, p0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    invoke-virtual {v2}, Lcom/android/server/WifiService;->getWifiApEnabledState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    invoke-virtual {v2}, Lcom/android/server/WifiService;->getWifiEnabledState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 2886
    const-string v2, "WifiService"

    const-string v3, "shouldWifiStayAwake: return true due to apsta concurrent"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    :cond_0
    :goto_0
    return v1

    .line 2892
    :cond_1
    if-eq v0, v4, :cond_0

    .line 2895
    if-ne v0, v1, :cond_2

    if-nez p2, :cond_0

    .line 2901
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService$17;->shouldDeviceStayAwake(II)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2620
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 2622
    .local v4, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "wifi_idle_ms"

    const-wide/32 v19, 0xdbba0

    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    .line 2625
    .local v5, idleMillis:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "stay_on_while_plugged_in"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 2628
    .local v11, stayAwakeConditions:I
    const-string v17, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 2630
    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0xd8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 2631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mCWRegisteredWhenScreenOff:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->getCwRegisterState()Z

    move-result v17

    if-nez v17, :cond_0

    .line 2632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$3500(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$AsyncServiceHandler;

    move-result-object v17

    const/16 v18, 0x64

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/WifiService$AsyncServiceHandler;->sendEmptyMessage(I)Z

    .line 2633
    const-string v17, "WifiService"

    const-string v18, "[C+W] mReceiver send MESSAGE_CHECK_CW_STATUS"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$3500(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$AsyncServiceHandler;

    move-result-object v17

    const/16 v18, 0x64

    const-wide/16 v19, 0x1388

    invoke-virtual/range {v17 .. v20}, Lcom/android/server/WifiService$AsyncServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$3500(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$AsyncServiceHandler;

    move-result-object v17

    const/16 v18, 0x64

    const-wide/16 v19, 0x2710

    invoke-virtual/range {v17 .. v20}, Lcom/android/server/WifiService$AsyncServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$3500(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$AsyncServiceHandler;

    move-result-object v17

    const/16 v18, 0x64

    const-wide/16 v19, 0x3a98

    invoke-virtual/range {v17 .. v20}, Lcom/android/server/WifiService$AsyncServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2642
    :cond_0
    const-string v17, "WifiService"

    const-string v18, "ACTION_SCREEN_ON (WIFI_ON)"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/WifiService;->actionScreenOn()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$4800(Lcom/android/server/WifiService;)V

    .line 2645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$5000(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->access$4900(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/WifiService;->access$3202(Lcom/android/server/WifiService;Z)Z

    .line 2647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;)V

    .line 2648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/WifiService;->access$5100(Lcom/android/server/WifiService;Z)V

    .line 2651
    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v18, 0x25

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v18, 0x26

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 2653
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    const/16 v18, 0xf

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiStateMachine;->updateSchedScanInterval(I)V

    .line 2654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiStateMachine;->disableRoamingCommand(I)V

    .line 2866
    :cond_2
    :goto_0
    return-void

    .line 2657
    :cond_3
    const-string v17, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 2659
    const-string v17, "WifiService"

    const-string v18, "ACTION_SCREEN_OFF (WIFI_ON)"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/WifiService;->actionScreenOff()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$5200(Lcom/android/server/WifiService;)V

    .line 2662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/WifiService;->access$3202(Lcom/android/server/WifiService;Z)Z

    .line 2663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;)V

    .line 2670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$5300(Lcom/android/server/WifiService;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1}, Lcom/android/server/WifiService$17;->shouldWifiStayAwake(II)Z

    move-result v17

    if-nez v17, :cond_4

    .line 2672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 2673
    const-string v17, "WifiService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "setting ACTION_DEVICE_IDLE: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ms"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$5000(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    add-long v19, v19, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v21 .. v21}, Lcom/android/server/WifiService;->access$4900(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v21

    invoke-virtual/range {v17 .. v21}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2688
    :cond_4
    :goto_1
    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v18, 0x25

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v18, 0x26

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 2690
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    const/16 v18, 0x12c

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiStateMachine;->updateSchedScanInterval(I)V

    .line 2691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiStateMachine;->disableRoamingCommand(I)V

    .line 2695
    :cond_6
    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0xd8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 2696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$3500(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$AsyncServiceHandler;

    move-result-object v17

    const/16 v18, 0x64

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/WifiService$AsyncServiceHandler;->removeMessages(I)V

    .line 2697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiStateMachine;->getCwRegisterState()Z

    move-result v18

    #setter for: Lcom/android/server/WifiService;->mCWRegisteredWhenScreenOff:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/WifiService;->access$1402(Lcom/android/server/WifiService;Z)Z

    .line 2698
    const-string v17, "WifiService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[C+W] screen off with mCWRegisteredWhenScreenOff = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/WifiService;->mCWRegisteredWhenScreenOff:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2679
    :cond_7
    const-string v17, "WifiService"

    const-string v18, "setting ACTION_DEVICE_IDLE: 120000 ms"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$5000(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    const-wide/32 v21, 0x1d4c0

    add-long v19, v19, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v21 .. v21}, Lcom/android/server/WifiService;->access$4900(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v21

    invoke-virtual/range {v17 .. v21}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 2701
    :cond_8
    const-string v17, "com.android.server.WifiManager.action.DEVICE_IDLE"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 2702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/WifiService;->access$5100(Lcom/android/server/WifiService;Z)V

    goto/16 :goto_0

    .line 2704
    :cond_9
    const-string v17, "com.android.server.WifiManager.action.CW_EXPIRED_REREGISTER"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 2705
    const-string v17, "WifiService"

    const-string v18, "[C+W] got ACTION_CW_EXPIRED_REREGISTER"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->tryToTriggerCWReregisterExpire()V

    goto/16 :goto_0

    .line 2708
    :cond_a
    const-string v17, "com.android.server.WifiManager.action.UPDATE_WIFI_STATE"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 2709
    const-string v17, "WifiService"

    const-string v18, "Got ACTION_UPDATE_WIFI_STATE"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)V

    goto/16 :goto_0

    .line 2712
    :cond_b
    const-string v17, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 2720
    const-string v17, "plugged"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 2722
    .local v9, pluggedType:I
    const-string v17, "WifiService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ACTION_BATTERY_CHANGED pluggedType: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$3200(Lcom/android/server/WifiService;)Z

    move-result v17

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$5300(Lcom/android/server/WifiService;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1}, Lcom/android/server/WifiService$17;->shouldWifiStayAwake(II)Z

    move-result v17

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v9}, Lcom/android/server/WifiService$17;->shouldWifiStayAwake(II)Z

    move-result v17

    if-nez v17, :cond_c

    .line 2726
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    add-long v14, v17, v5

    .line 2728
    .local v14, triggerTime:J
    const-string v17, "WifiService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "setting ACTION_DEVICE_IDLE timer for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "ms"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$5000(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$4900(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v14, v15, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2734
    .end local v14           #triggerTime:J
    :cond_c
    if-nez v9, :cond_d

    .line 2735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mScanCount:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$5400(Lcom/android/server/WifiService;)Ljava/util/HashMap;

    move-result-object v18

    monitor-enter v18

    .line 2736
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mScanCount:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$5400(Lcom/android/server/WifiService;)Ljava/util/HashMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->clear()V

    .line 2737
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2739
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #setter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v0, v9}, Lcom/android/server/WifiService;->access$5302(Lcom/android/server/WifiService;I)I

    goto/16 :goto_0

    .line 2737
    :catchall_0
    move-exception v17

    :try_start_1
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17

    .line 2741
    .end local v9           #pluggedType:I
    :cond_e
    const-string v17, "android.net.hotspot.ASSOCLIST"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 2743
    const-string v17, "com.android.server.HotspotManager.action.WIFI_AP_CONN_REQ_TIMEOUT"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 2744
    const-string v17, "WifiService"

    const-string v18, "Got ACTION_WIFI_AP_CONN_REQ_TIMEOUT"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiStateMachine;->setConnectionReqNotificationVisible(Z)V

    goto/16 :goto_0

    .line 2747
    :cond_f
    const-string v17, "android.net.hotspot.connecitonrequest"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 2748
    const-string v17, "WifiService"

    const-string v18, "Got HOTSPOT_CONNECTION_REQUEST"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiStateMachine;->setConnectionReqNotificationVisible(Z)V

    .line 2750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->CancelNotifyWIFIAPreqtimer()V

    .line 2751
    const-string v17, "hotspot_block_mac"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2752
    .local v8, mac:Ljava/lang/String;
    const-string v17, "hotspot_lastest_time_of_request"

    const-wide/16 v18, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 2753
    .local v12, time:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v12, v13}, Landroid/net/wifi/WifiStateMachine;->updateConnectionList(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 2756
    .end local v8           #mac:Ljava/lang/String;
    .end local v12           #time:J
    :cond_10
    const-string v17, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 2757
    const-string v17, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 2759
    .local v10, state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/net/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto/16 :goto_0

    .line 2761
    .end local v10           #state:I
    :cond_11
    const-string v17, "com.android.server.HotspotManager.action.DEVICE_IDLE"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 2762
    const-string v17, "WifiService"

    const-string v18, "Got WIFI_AP_IDLE"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v17

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->getWifiApClients()I

    move-result v17

    if-nez v17, :cond_2

    .line 2765
    const-string v17, "WifiService"

    const-string v18, "Got WIFI_AP_IDLE WIFI_AP_STATE_ENABLED and getWifiApClients 0"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/WifiService;->getWifiEnabledState()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 2769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 2773
    const/16 v16, 0x0

    .line 2775
    .local v16, wifiSavedState:I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "wifi_saved_state"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v16

    .line 2779
    :goto_2
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 2780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    .line 2781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "wifi_saved_state"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2782
    const-string v17, "WifiService"

    const-string v18, "Restore wifi when hotspot is off"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2808
    .end local v16           #wifiSavedState:I
    :cond_12
    const-string v17, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 2809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    const-string v18, "phoneinECMState"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    #setter for: Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/WifiService;->access$5502(Lcom/android/server/WifiService;Z)Z

    .line 2810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)V

    goto/16 :goto_0

    .line 2812
    :cond_13
    const-string v17, "android.intent.action.HTC_EMERGENCY_MODE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 2813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    const-string v18, "EMERGENCY_AND_CALLBACK_STATUS"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    #setter for: Lcom/android/server/WifiService;->mEmergencyModeChanged:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/WifiService;->access$5602(Lcom/android/server/WifiService;Z)Z

    .line 2814
    const-string v17, "WifiService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "HTC_EMERGENCY_MODE_CHANGED:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/WifiService;->mEmergencyModeChanged:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$5600(Lcom/android/server/WifiService;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Previous:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/WifiService;->mPreEmergencyModeChanged:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$5700(Lcom/android/server/WifiService;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mEmergencyModeChanged:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$5600(Lcom/android/server/WifiService;)Z

    move-result v17

    if-nez v17, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mPreEmergencyModeChanged:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$5700(Lcom/android/server/WifiService;)Z

    move-result v17

    if-nez v17, :cond_14

    .line 2816
    const-string v17, "WifiService"

    const-string v18, "Don\'t have emergency call"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/WifiService;->mEmergencyModeChanged:Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->access$5600(Lcom/android/server/WifiService;)Z

    move-result v18

    #setter for: Lcom/android/server/WifiService;->mPreEmergencyModeChanged:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/WifiService;->access$5702(Lcom/android/server/WifiService;Z)Z

    goto/16 :goto_0

    .line 2818
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)V

    goto :goto_3

    .line 2821
    :cond_15
    const-string v17, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 2822
    const-string v17, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkInfo;

    .line 2825
    .local v7, info:Landroid/net/NetworkInfo;
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "WIFI"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 2826
    const-string v17, "WifiService"

    const-string v18, "forceUpdateRSSI when title bar UI already can get RSSI change intent"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->forceUpdateRSSI()V

    goto/16 :goto_0

    .line 2832
    .end local v7           #info:Landroid/net/NetworkInfo;
    :cond_16
    const-string v17, "android.net.wifi.WIFIDISPLAY_AP_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 2833
    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v18, 0x25

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_17

    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v18, 0x26

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 2835
    :cond_17
    const-string v17, "WifiService"

    const-string v18, "Receive WIFIDISPLAY_AP_STATE_CHANGED_ACTION intent"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    const-string v17, "WifiService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Wifi state: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/WifiService;->getWifiEnabledState()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", Wifi AP state: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/WifiService;->getWifiApEnabledState()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/WifiService;->getWifiApEnabledState()I

    move-result v17

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/WifiService;->getWifiApEnabledState()I

    move-result v17

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/WifiService;->getWifiEnabledState()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 2839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiStateMachine;->setWifiDisplayOn(Z)V

    .line 2840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$5800(Lcom/android/server/WifiService;)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    if-nez v17, :cond_2

    .line 2841
    const-string v17, "WifiService"

    const-string v18, "start all packet filter when we disable concurrent mode"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_self()V

    .line 2843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->startFilteringMulticastV6Packets()V

    .line 2844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_dhcpoffer()V

    .line 2846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_arp()V

    .line 2847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_wivu()V

    .line 2848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->isSsdpFilterRuleEnabled()Z

    move-result v17

    if-eqz v17, :cond_19

    .line 2849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_ssdp(Z)V

    .line 2851
    :cond_19
    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v18, 0x26

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 2852
    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0x71

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 2853
    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 2854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mScreenOffSaved:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$2900(Lcom/android/server/WifiService;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 2855
    const-string v17, "WifiService"

    const-string v18, "Screen Off: start blist filtering"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$17;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_blist()V

    goto/16 :goto_0

    .line 2777
    .restart local v16       #wifiSavedState:I
    :catch_0
    move-exception v17

    goto/16 :goto_2
.end method
