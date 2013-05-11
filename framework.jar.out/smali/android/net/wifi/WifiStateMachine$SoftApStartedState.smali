.class Landroid/net/wifi/WifiStateMachine$SoftApStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftApStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 7704
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private getAssocCount(Ljava/lang/String;)I
    .locals 4
    .parameter "assoc"

    .prologue
    const/4 v1, 0x0

    .line 7973
    if-nez p1, :cond_1

    .line 7988
    :cond_0
    :goto_0
    return v1

    .line 7976
    :cond_1
    const-string/jumbo v3, "|"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 7977
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 7980
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 7983
    .local v0, clientNumber:Ljava/lang/String;
    const/4 v1, 0x0

    .line 7985
    .local v1, count:I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 7986
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 7707
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7708
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 7709
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 18
    .parameter "message"

    .prologue
    .line 7715
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7716
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    sparse-switch v13, :sswitch_data_0

    .line 7964
    const/4 v13, 0x0

    .line 7966
    :goto_0
    return v13

    .line 7720
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v13

    const/16 v14, 0xd

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v13

    const/16 v14, 0xc

    if-eq v13, v14, :cond_0

    .line 7721
    const/4 v13, 0x0

    goto :goto_0

    .line 7725
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v14, "Stopping Soft AP"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7726
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v14, 0xa

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$4200(Landroid/net/wifi/WifiStateMachine;I)V

    .line 7728
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->checkSleepPolicy()V
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$5900(Landroid/net/wifi/WifiStateMachine;)V

    .line 7731
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$3200()Z

    move-result v13

    if-nez v13, :cond_1

    .line 7732
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->stopTethering()V
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$21100(Landroid/net/wifi/WifiStateMachine;)V

    .line 7735
    :cond_1
    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v14, 0x25

    if-eq v13, v14, :cond_2

    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v14, 0x26

    if-ne v13, v14, :cond_3

    .line 7737
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->stopSoftapEventLoop()V

    .line 7743
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v14, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mUser:I
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$5602(Landroid/net/wifi/WifiStateMachine;I)I

    .line 7744
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 7745
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.net.hotspot.ASSOCLIST"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7748
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7754
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_5

    .line 7755
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v14, 0xb

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$4200(Landroid/net/wifi/WifiStateMachine;I)V

    .line 7756
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    .line 7757
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$3400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v14

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$21200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 7765
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mUloghotspotMaxUsers:I
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mUlogHotspotDuration:J
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6100(Landroid/net/wifi/WifiStateMachine;)J

    move-result-wide v13

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-eqz v13, :cond_7

    .line 7766
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v16, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mUlogHotspotStartTime:J
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiStateMachine;->access$6200(Landroid/net/wifi/WifiStateMachine;)J

    move-result-wide v16

    sub-long v14, v14, v16

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    #setter for: Landroid/net/wifi/WifiStateMachine;->mUlogHotspotDuration:J
    invoke-static {v13, v14, v15}, Landroid/net/wifi/WifiStateMachine;->access$6102(Landroid/net/wifi/WifiStateMachine;J)J

    .line 7768
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v10

    .line 7770
    .local v10, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v13, "WifiHotspot"

    invoke-virtual {v10, v13}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v13

    const-string/jumbo v14, "usage_time"

    invoke-interface {v13, v14}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v13

    const-string v14, "duration"

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mUlogHotspotDuration:J
    invoke-static {v15}, Landroid/net/wifi/WifiStateMachine;->access$6100(Landroid/net/wifi/WifiStateMachine;)J

    move-result-wide v15

    long-to-float v15, v15

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v13

    const-string/jumbo v14, "max_user"

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mUloghotspotMaxUsers:I
    invoke-static {v15}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 7775
    invoke-static {v10}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 7777
    invoke-virtual {v10}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 7778
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v14, -0x1

    #setter for: Landroid/net/wifi/WifiStateMachine;->mUloghotspotMaxUsers:I
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$6002(Landroid/net/wifi/WifiStateMachine;I)I

    .line 7779
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-wide/16 v14, -0x1

    #setter for: Landroid/net/wifi/WifiStateMachine;->mUlogHotspotDuration:J
    invoke-static {v13, v14, v15}, Landroid/net/wifi/WifiStateMachine;->access$6102(Landroid/net/wifi/WifiStateMachine;J)J

    .line 7966
    .end local v10           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :cond_7
    :goto_2
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 7749
    :catch_0
    move-exception v3

    .line 7750
    .local v3, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v14, "Exception in stopAccessPoint()"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7786
    .end local v3           #e:Ljava/lang/Exception;
    :sswitch_1
    const-string v13, "WifiStateMachine"

    const-string v14, "SoftAP set on a running access point"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7788
    const/4 v13, 0x0

    :try_start_1
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$21302(Z)Z

    .line 7789
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/net/wifi/WifiConfiguration;

    .line 7790
    .local v11, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    if-eqz v11, :cond_10

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v13

    if-eqz v13, :cond_10

    .line 7791
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->persistApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v13, v11}, Landroid/net/wifi/WifiStateMachine;->access$5400(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    .line 7792
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$21400()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    .line 7793
    const-string v13, "WifiStateMachine"

    const-string v14, "NeedConfig AutoChannel"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7794
    const/4 v13, 0x1

    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$21302(Z)Z

    .line 7795
    const/4 v13, 0x0

    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$21402(Z)Z

    .line 7803
    :cond_8
    :goto_3
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$21300()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 7804
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string/jumbo v14, "set wifi hotspot"

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v15}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/net/wifi/WifiStateMachine;->printProfile(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    .line 7806
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiPassword:Z
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v13

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableMdnPassword:Z
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v13

    if-eqz v13, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->checkWifiApPassword()V

    .line 7807
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiSsid:Z
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$1800(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v13

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->checkWifiApSsid()V

    .line 7809
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v15}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "wlan0"

    invoke-interface/range {v13 .. v16}, Landroid/os/INetworkManagementService;->setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 7813
    .end local v11           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :catch_1
    move-exception v3

    .line 7814
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v13, "WifiStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception in softap set "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7817
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v14, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mUser:I
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$5602(Landroid/net/wifi/WifiStateMachine;I)I

    .line 7818
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 7819
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.net.hotspot.ASSOCLIST"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7821
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V

    .line 7822
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiPassword:Z
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v13

    if-nez v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableMdnPassword:Z
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v13

    if-eqz v13, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->checkWifiApPassword()V

    .line 7823
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiSsid:Z
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$1800(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v13

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->checkWifiApSsid()V

    .line 7825
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v15}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "wlan0"

    move-object/from16 v0, v16

    invoke-interface {v14, v13, v15, v0}, Landroid/os/INetworkManagementService;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 7828
    :catch_2
    move-exception v4

    .line 7829
    .local v4, ee:Ljava/lang/Exception;
    const-string v13, "WifiStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not restart softap after set failed "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7830
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v15, 0x20002

    const/16 v16, 0xe

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 7797
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #ee:Ljava/lang/Exception;
    .restart local v11       #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_10
    if-nez v11, :cond_8

    .line 7798
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v13

    if-nez v13, :cond_8

    .line 7799
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->updateProfile()V

    .line 7800
    const/4 v13, 0x1

    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$21302(Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 7839
    .end local v11           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v13

    const/16 v14, 0xb

    if-eq v13, v14, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_13

    .line 7841
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$4900(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v13

    invoke-static {v13}, Landroid/net/wifi/WifiNative;->startSupplicant(Z)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 7842
    const-string v13, "WifiStateMachine"

    const-string v14, "Supplicant start successful"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7843
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$5000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiMonitor;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiMonitor;->startMonitoring()V

    .line 7844
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$5100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v14

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$21500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 7846
    const/4 v13, 0x1

    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$21602(Z)Z

    goto/16 :goto_2

    .line 7849
    :cond_12
    const-string v13, "WifiStateMachine"

    const-string v14, "Cannot start supplicant with a running soft AP"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7850
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v14, 0x4

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$4100(Landroid/net/wifi/WifiStateMachine;I)V

    goto/16 :goto_2

    .line 7853
    :cond_13
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 7864
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/WifiStateMachine$TetherStateChange;

    .line 7865
    .local v7, stateChange:Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$3200()Z

    move-result v13

    if-nez v13, :cond_14

    .line 7866
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v13

    const/16 v14, 0xb

    if-eq v13, v14, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v13

    const/16 v14, 0xa

    if-eq v13, v14, :cond_7

    .line 7868
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v14, v7, Landroid/net/wifi/WifiStateMachine$TetherStateChange;->available:Ljava/util/ArrayList;

    #calls: Landroid/net/wifi/WifiStateMachine;->startTethering(Ljava/util/ArrayList;)Z
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$21700(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    goto/16 :goto_2

    .line 7871
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v14, v7, Landroid/net/wifi/WifiStateMachine$TetherStateChange;->available:Ljava/util/ArrayList;

    #calls: Landroid/net/wifi/WifiStateMachine;->startTethering(Ljava/util/ArrayList;)Z
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$21700(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 7872
    const-string v13, "WifiStateMachine"

    const-string/jumbo v14, "skip transit to mTetheringState"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 7879
    .end local v7           #stateChange:Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    :sswitch_4
    const-string v13, "WifiStateMachine"

    const-string v14, "WIFIAP:Connection request.."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7880
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 7881
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 7882
    .local v6, mac:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 7883
    .local v8, time:J
    new-instance v5, Landroid/content/Intent;

    const-string v13, "android.net.hotspot.connecitonrequest"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7884
    .local v5, intent:Landroid/content/Intent;
    const-string v13, "hotspot_block_mac"

    invoke-virtual {v5, v13, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7885
    const-string v13, "hotspot_lastest_time_of_request"

    invoke-virtual {v5, v13, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 7886
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 7892
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #mac:Ljava/lang/String;
    .end local v8           #time:J
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->getAssocListStr()Ljava/lang/String;

    move-result-object v1

    .line 7893
    .local v1, assocList:Ljava/lang/String;
    const-string v13, "WifiStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SoftAP update assoc list: assocList="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7894
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->getAssocCount(Ljava/lang/String;)I

    move-result v14

    #setter for: Landroid/net/wifi/WifiStateMachine;->mUser:I
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$5602(Landroid/net/wifi/WifiStateMachine;I)I

    .line 7895
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mUser:I
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$5600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mUloghotspotMaxUsers:I
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;)I

    move-result v14

    if-le v13, v14, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mUser:I
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$5600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v14

    #setter for: Landroid/net/wifi/WifiStateMachine;->mUloghotspotMaxUsers:I
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$6002(Landroid/net/wifi/WifiStateMachine;I)I

    .line 7896
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->checkSleepPolicy()V
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$5900(Landroid/net/wifi/WifiStateMachine;)V

    .line 7897
    const-string v13, "WifiStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SoftAP update assoc list: mUser="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mUser:I
    invoke-static {v15}, Landroid/net/wifi/WifiStateMachine;->access$5600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7898
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 7899
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.net.hotspot.ASSOCLIST"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 7903
    .end local v1           #assocList:Ljava/lang/String;
    :sswitch_6
    const-string v13, "WifiStateMachine"

    const-string v14, "WIFIAP:MAC_LIST_PROFILE_CHANGE.."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7905
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 7906
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->persistApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v13, v2}, Landroid/net/wifi/WifiStateMachine;->access$5400(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    .line 7908
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v14

    invoke-interface {v13, v14}, Landroid/os/INetworkManagementService;->setMACList(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 7913
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->notifyAssocListChange()V

    goto/16 :goto_2

    .line 7910
    :catch_3
    move-exception v3

    .line 7911
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v13, "WifiStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception in update mac list fail "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 7917
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #e:Ljava/lang/Exception;
    :sswitch_7
    const-string v13, "WifiStateMachine"

    const-string v14, "WIFIAP:WIFIDISPLAY_MAC_LIST_PROFILE_CHANGE.."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7918
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/wifi/WifiConfiguration;

    .line 7920
    .local v12, wifiDisplayConfig:Landroid/net/wifi/WifiConfiguration;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v13

    invoke-interface {v13, v12}, Landroid/os/INetworkManagementService;->setMACList(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_2

    .line 7921
    :catch_4
    move-exception v3

    .line 7922
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v13, "WifiStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception in update wifidisplay mac list fail "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 7928
    .end local v3           #e:Ljava/lang/Exception;
    .end local v12           #wifiDisplayConfig:Landroid/net/wifi/WifiConfiguration;
    :sswitch_8
    :try_start_6
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/net/wifi/WpsInfo;

    invoke-interface {v14, v13}, Landroid/os/INetworkManagementService;->startWpsRegistrar(Landroid/net/wifi/WpsInfo;)V

    .line 7929
    const-string v13, "WifiStateMachine"

    const-string v14, "OK to startWpsRegistrar()"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_2

    .line 7930
    :catch_5
    move-exception v3

    .line 7931
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v13, "WifiStateMachine"

    const-string v14, "Exception in startWpsRegistrar()"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 7936
    .end local v3           #e:Ljava/lang/Exception;
    :sswitch_9
    :try_start_7
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v13

    invoke-interface {v13}, Landroid/os/INetworkManagementService;->stopWpsRegistrar()V

    .line 7937
    const-string v13, "WifiStateMachine"

    const-string v14, "OK to stopWpsRegistrar()"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_2

    .line 7938
    :catch_6
    move-exception v3

    .line 7939
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v13, "WifiStateMachine"

    const-string v14, "Exception in stopWpsRegistrar()"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 7943
    .end local v3           #e:Ljava/lang/Exception;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.net.hotspot.WPS_REGISTRAR_START"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 7946
    :sswitch_b
    const-string v13, "WifiStateMachine"

    const-string v14, "WPS_REGISTRAR_SUCCESSFUL"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7947
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.net.hotspot.WPS_REGISTRAR_SUCCESSFUL"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 7950
    :sswitch_c
    const-string v13, "WifiStateMachine"

    const-string v14, "WPS_REGISTRAR_FAIL"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7951
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.net.hotspot.WPS_REGISTRAR_FAIL"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 7955
    :sswitch_d
    const-string v13, "WifiStateMachine"

    const-string v14, "L2PE_SUCCESSFUL"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7956
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.net.hotspot.L2PE_SUCCESSFUL"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 7959
    :sswitch_e
    const-string v13, "WifiStateMachine"

    const-string v14, "L2PE_FAIL"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7960
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.net.hotspot.L2PE_FAIL"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 7716
    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_2
        0x20015 -> :sswitch_1
        0x20018 -> :sswitch_0
        0x2001d -> :sswitch_3
        0x20061 -> :sswitch_8
        0x20062 -> :sswitch_9
        0x20063 -> :sswitch_a
        0x20064 -> :sswitch_b
        0x20065 -> :sswitch_c
        0x20066 -> :sswitch_d
        0x20067 -> :sswitch_e
        0x20080 -> :sswitch_7
        0x2008d -> :sswitch_4
        0x2008e -> :sswitch_5
        0x2008f -> :sswitch_6
    .end sparse-switch
.end method
