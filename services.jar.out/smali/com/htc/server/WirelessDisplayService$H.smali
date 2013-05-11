.class final Lcom/htc/server/WirelessDisplayService$H;
.super Landroid/os/Handler;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method constructor <init>(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter

    .prologue
    .line 738
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 739
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 71
    .parameter "msg"

    .prologue
    .line 743
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v64, v0

    .line 744
    .local v64, type:I
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 745
    .local v10, arg1:I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg2:I

    .line 746
    .local v11, arg2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v48

    .line 748
    .local v48, previousState:I
    sparse-switch v64, :sswitch_data_0

    .line 1795
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 750
    :sswitch_0
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "HANDLE_CHANGE_STATE previousState = "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, ", state="

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, " err="

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    move/from16 v0, v48

    if-eq v10, v0, :cond_0

    .line 754
    const/16 v66, 0x8

    move/from16 v0, v48

    move/from16 v1, v66

    if-ne v0, v1, :cond_1

    const/16 v66, 0x1

    move/from16 v0, v66

    if-ne v10, v0, :cond_1

    .line 756
    const-string v66, "WirelessDisplayService"

    const-string v67, "[WFDERR][2] Wait 90000 secs and dongle not found."

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 759
    :cond_1
    const/16 v66, 0x1

    move/from16 v0, v66

    if-ne v10, v0, :cond_2

    .line 761
    const/16 v66, 0x33

    const/16 v67, 0x35

    move-object/from16 v0, p0

    move/from16 v1, v66

    move/from16 v2, v67

    invoke-virtual {v0, v1, v2, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v32

    .line 762
    .local v32, msg2:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 767
    .end local v32           #msg2:Landroid/os/Message;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static {v0, v10, v11}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto :goto_0

    .line 770
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$300(Lcom/htc/server/WirelessDisplayService;)I

    move-result v66

    if-lez v66, :cond_4

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$310(Lcom/htc/server/WirelessDisplayService;)I

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v66

    if-nez v66, :cond_3

    .line 773
    const-string v66, "WirelessDisplayService"

    const-string v67, "wifi scan fail!"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_3
    const/16 v66, 0x11

    const/16 v67, 0x0

    const/16 v68, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v66

    move/from16 v2, v67

    move/from16 v3, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v41

    .line 775
    .local v41, msgWifiScan:Landroid/os/Message;
    const-wide/16 v66, 0x1770

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-wide/from16 v2, v66

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 777
    .end local v41           #msgWifiScan:Landroid/os/Message;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x3

    #setter for: Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$302(Lcom/htc/server/WirelessDisplayService;I)I

    goto/16 :goto_0

    .line 781
    :sswitch_2
    new-instance v47, Landroid/content/Intent;

    const-string v66, "com.htc.intent.action.WIRELESS_NOTIFY_MIRROR_CONNECTED_SWITCH"

    move-object/from16 v0, v47

    move-object/from16 v1, v66

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 782
    .local v47, notifyUserSwitch:Landroid/content/Intent;
    const-string v66, "visible"

    const/16 v67, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v66

    move/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 784
    const-string v66, "WirelessDisplayService"

    const-string v67, "Disable INTENT_WIRELESS_NOTIFY_MIRROR_CONNECTED_SWITCH"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 787
    .end local v47           #notifyUserSwitch:Landroid/content/Intent;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v65

    .line 788
    .local v65, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v65, :cond_0

    .line 791
    invoke-virtual/range {v65 .. v65}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v23

    .line 792
    .local v23, ipAddress:I
    move/from16 v60, v23

    .line 793
    .local v60, temp:I
    const-string v66, "%d.%d.%d.%d"

    const/16 v67, 0x4

    move/from16 v0, v67

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v69

    aput-object v69, v67, v68

    const/16 v68, 0x1

    shr-int/lit8 v69, v23, 0x8

    move/from16 v0, v69

    and-int/lit16 v0, v0, 0xff

    move/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v69

    aput-object v69, v67, v68

    const/16 v68, 0x2

    shr-int/lit8 v69, v23, 0x10

    move/from16 v0, v69

    and-int/lit16 v0, v0, 0xff

    move/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v69

    aput-object v69, v67, v68

    const/16 v68, 0x3

    shr-int/lit8 v69, v23, 0x18

    move/from16 v0, v69

    and-int/lit16 v0, v0, 0xff

    move/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v69

    aput-object v69, v67, v68

    invoke-static/range {v66 .. v67}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 798
    .local v24, ipStr:Ljava/lang/String;
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "HANDLE_GET_DEVICE_IP:"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, "  "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Ljava/util/regex/Pattern;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v28

    .line 800
    .local v28, matcher2:Ljava/util/regex/Matcher;
    invoke-virtual/range {v28 .. v28}, Ljava/util/regex/Matcher;->find()Z

    move-result v66

    if-eqz v66, :cond_7

    invoke-virtual/range {v28 .. v28}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v66

    const-string v67, "0.0.0.0"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v66

    if-nez v66, :cond_7

    .line 801
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "Got the IP address"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v28 .. v28}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    if-nez v66, :cond_6

    .line 803
    new-instance v66, Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    const-string v69, "3655"

    invoke-direct/range {v66 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;-><init>(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$702(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 804
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService$WivuThread;->wivuInit()I

    move-result v66

    const/16 v67, -0x1

    move/from16 v0, v66

    move/from16 v1, v67

    if-ne v0, v1, :cond_5

    .line 805
    const-string v66, "WirelessDisplayService"

    const-string v67, "Something Wrong with netHD initialization Delete mWivuThread"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const/16 v66, 0x0

    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$702(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 821
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    #setter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1002(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 809
    :cond_5
    const-string v66, "WirelessDisplayService"

    const-string v67, "HANDLE_GET_DEVICE_IP: REQ_SET_MCAST_ROUTE, clearOldRoute = false"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 811
    .local v12, bundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v66

    const/16 v67, 0x1f

    const/16 v68, 0x191

    const/16 v69, -0x1

    invoke-virtual/range {v66 .. v69}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v54

    .line 812
    .local v54, setif:Landroid/os/Message;
    const-string v66, "interfaceRoute"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, v66

    move-object/from16 v1, v67

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    move-object/from16 v0, v54

    invoke-virtual {v0, v12}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 814
    invoke-virtual/range {v54 .. v54}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 818
    .end local v12           #bundle:Landroid/os/Bundle;
    .end local v54           #setif:Landroid/os/Message;
    :cond_6
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v66 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    .line 819
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->changeInterface(Ljava/lang/String;)V

    goto :goto_1

    .line 822
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v66

    if-eqz v66, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v66

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    invoke-virtual/range {v66 .. v67}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v66

    if-eqz v66, :cond_0

    .line 823
    const/16 v66, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .line 824
    .local v21, getIp:Landroid/os/Message;
    const-wide/16 v66, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, v66

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 830
    .end local v21           #getIp:Landroid/os/Message;
    .end local v23           #ipAddress:I
    .end local v24           #ipStr:Ljava/lang/String;
    .end local v28           #matcher2:Ljava/util/regex/Matcher;
    .end local v60           #temp:I
    .end local v65           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :sswitch_4
    const-string v66, "WirelessDisplayService"

    const-string v67, "HANDLE_STOP_DIS"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/16 v66, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/net/ConnectivityManager;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 834
    .local v5, activeNetwork:Landroid/net/NetworkInfo;
    if-eqz v5, :cond_c

    .line 835
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v66

    const/16 v67, 0x1

    move/from16 v0, v66

    move/from16 v1, v67

    if-ne v0, v1, :cond_a

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->setInterface(Ljava/lang/String;)V

    .line 837
    const-string v66, "WirelessDisplayService"

    const-string v67, "Wifi Connected, don\'t exit netHDencode"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :goto_2
    const/16 v66, 0x33

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 851
    const/16 v66, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 852
    const/16 v66, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 853
    const/16 v66, 0x1

    const/16 v67, 0x1

    const/16 v68, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    move/from16 v2, v67

    move/from16 v3, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v35

    .line 854
    .local v35, msgChangeState:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v66

    if-eqz v66, :cond_8

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    #setter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1302(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 859
    const-string v66, "persist.sys.wfd.lastdongle"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1300(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1202(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->clearDongleCache()Z
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1400(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v66

    if-eqz v66, :cond_9

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->notifyWHDMI()V
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)V

    .line 866
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v66

    invoke-interface/range {v66 .. v66}, Ljava/util/List;->clear()V

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v66

    const/16 v67, 0x49

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v66

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    #setter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1002(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 839
    .end local v35           #msgChangeState:Landroid/os/Message;
    :cond_a
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    if-eqz v66, :cond_b

    .line 840
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    .line 842
    :cond_b
    const/16 v66, 0x0

    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$702(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    goto/16 :goto_2

    .line 845
    :cond_c
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    if-eqz v66, :cond_d

    .line 846
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    .line 848
    :cond_d
    const/16 v66, 0x0

    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$702(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    goto/16 :goto_2

    .line 873
    .end local v5           #activeNetwork:Landroid/net/NetworkInfo;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->saveLimitedApInfo()V
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)V

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    .line 875
    new-instance v47, Landroid/content/Intent;

    const-string v66, "com.htc.intent.action.WIRELESS_NOTIFY_MIRROR_CONNECTED_SWITCH"

    move-object/from16 v0, v47

    move-object/from16 v1, v66

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 876
    .restart local v47       #notifyUserSwitch:Landroid/content/Intent;
    const-string v66, "visible"

    const/16 v67, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, v66

    move/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 878
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v66

    const/16 v67, 0xde

    const/16 v68, 0x0

    const/16 v69, 0x0

    invoke-virtual/range {v66 .. v69}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    .line 879
    .local v18, disableSwitchMsg:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v66

    const/16 v67, 0xde

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 880
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v66

    const-wide/16 v67, 0x1388

    move-object/from16 v0, v66

    move-object/from16 v1, v18

    move-wide/from16 v2, v67

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 882
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v66

    const/16 v67, 0x6f

    const/16 v68, 0x1

    const/16 v69, 0x0

    invoke-virtual/range {v66 .. v69}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v29

    .line 883
    .local v29, mirrorMsg:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v66

    const/16 v67, 0x6f

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 884
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v66

    const-wide/16 v67, 0x13ba

    move-object/from16 v0, v66

    move-object/from16 v1, v29

    move-wide/from16 v2, v67

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 890
    .end local v18           #disableSwitchMsg:Landroid/os/Message;
    .end local v29           #mirrorMsg:Landroid/os/Message;
    .end local v47           #notifyUserSwitch:Landroid/content/Intent;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$2100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/AudioManager;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v66

    if-eqz v66, :cond_e

    .line 891
    const-string v66, "WirelessDisplayService"

    const-string v67, "HANDLE_TIMEOUT_STOP, But Music Keep Playing, Wait 2 min later"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v66

    const/16 v67, 0x4

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v39

    .line 893
    .local v39, msgTimeOut:Landroid/os/Message;
    const-wide/32 v66, 0x1d4c0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-wide/from16 v2, v66

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 895
    .end local v39           #msgTimeOut:Landroid/os/Message;
    :cond_e
    const-string v66, "WirelessDisplayService"

    const-string v67, "HANDLE_TIMEOUT_STOP"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const/16 v66, 0x1f

    const/16 v67, 0x21

    const/16 v68, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    move/from16 v2, v67

    move/from16 v3, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v62

    .line 897
    .local v62, timeOutStop:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 902
    .end local v62           #timeOutStop:Landroid/os/Message;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->fallBackFromAppPause()V
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$2200(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .line 905
    :sswitch_8
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "HANDLE_STOP_TRANSMIT: transmit:"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    if-eqz v66, :cond_0

    .line 907
    const/16 v66, 0x1

    move/from16 v0, v66

    if-ne v10, v0, :cond_f

    .line 908
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v67, 0x1

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->setTransmit(Z)V

    goto/16 :goto_0

    .line 910
    :cond_f
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->setTransmit(Z)V

    goto/16 :goto_0

    .line 914
    :sswitch_9
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "HANDLE_TURN_OFF_CONCURRENT_HOTSPOT, getWifidisplayApEnabled: "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, "Mirror State: "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const/16 v66, 0x1

    move/from16 v0, v48

    move/from16 v1, v66

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v66

    if-eqz v66, :cond_0

    .line 916
    new-instance v66, Lcom/htc/server/WirelessDisplayService$H$1;

    move-object/from16 v0, v66

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$H$1;-><init>(Lcom/htc/server/WirelessDisplayService$H;)V

    invoke-virtual/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService$H$1;->start()V

    goto/16 :goto_0

    .line 931
    :sswitch_a
    const-string v66, "WirelessDisplayService"

    const-string v67, "HANDLE_WIFI_DIS"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->stopWivuDiscovery()V

    goto/16 :goto_0

    .line 935
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$2400(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v66

    if-nez v66, :cond_0

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v67

    new-instance v68, Landroid/content/Intent;

    const-string v69, "com.htc.wfdservice.IWfdService"

    invoke-direct/range {v68 .. v69}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigConnection:Landroid/content/ServiceConnection;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/ServiceConnection;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v67 .. v70}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v67

    #setter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$2402(Lcom/htc/server/WirelessDisplayService;Z)Z

    .line 938
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "Bind WHDMI WfdService = "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$2400(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 942
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$2400(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v66

    if-eqz v66, :cond_10

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigConnection:Landroid/content/ServiceConnection;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$2500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/ServiceConnection;

    move-result-object v67

    invoke-virtual/range {v66 .. v67}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$2402(Lcom/htc/server/WirelessDisplayService;Z)Z

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$2602(Lcom/htc/server/WirelessDisplayService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 946
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "Unbind WfdService = "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$2400(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :cond_10
    const/16 v66, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 949
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    const/16 v67, 0x1

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 952
    :sswitch_d
    const-string v66, "WirelessDisplayService"

    const-string v67, "HANDLE_RESET_WDS_USABLE_FLAG"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    const/16 v66, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 957
    :sswitch_e
    const-string v66, "WirelessDisplayService"

    const-string v67, "HANDLE_RESET_FINGERGESTURE_FLAG"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const-string v67, "HANDLE_RESET_FINGERGESTURE_FLAG"

    const/16 v68, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->addToHtcWDSrvHistory(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static/range {v66 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$2800(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x1

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->setFingerGestureEnable(Z)V

    goto/16 :goto_0

    .line 962
    :sswitch_f
    move v13, v10

    .line 963
    .local v13, configState:I
    const/16 v66, 0x3

    move/from16 v0, v66

    if-eq v10, v0, :cond_11

    const/16 v66, 0x4

    move/from16 v0, v66

    if-ne v10, v0, :cond_16

    .line 964
    :cond_11
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "receiver WfdServices Call back, "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    new-instance v30, Landroid/content/Intent;

    const-string v66, "com.htc.intent.action.WIRELESS_DISPLAY_MIRROR_RESULT"

    move-object/from16 v0, v30

    move-object/from16 v1, v66

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 966
    .local v30, mirrorResultIntent:Landroid/content/Intent;
    const/16 v66, 0x3

    move/from16 v0, v66

    if-ne v10, v0, :cond_15

    .line 967
    const-string v66, "RESULT"

    const-string v67, "SUCCESS"

    move-object/from16 v0, v30

    move-object/from16 v1, v66

    move-object/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 972
    :cond_12
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->getCurrentDongle()Lcom/htc/service/DongleInfo;

    move-result-object v14

    .line 974
    .local v14, currentDongle:Lcom/htc/service/DongleInfo;
    const/16 v66, 0x4

    move/from16 v0, v66

    if-eq v10, v0, :cond_13

    if-eqz v14, :cond_14

    iget v0, v14, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v66, v0

    const/16 v67, 0x2

    move/from16 v0, v66

    move/from16 v1, v67

    if-eq v0, v1, :cond_14

    .line 975
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 977
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->binder_finishService()V
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$2900(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .line 968
    .end local v14           #currentDongle:Lcom/htc/service/DongleInfo;
    :cond_15
    const/16 v66, 0x4

    move/from16 v0, v66

    if-ne v10, v0, :cond_12

    .line 969
    const-string v66, "RESULT"

    const-string v67, "FAIL"

    move-object/from16 v0, v30

    move-object/from16 v1, v66

    move-object/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    goto :goto_3

    .line 978
    .end local v30           #mirrorResultIntent:Landroid/content/Intent;
    :cond_16
    const/16 v66, 0x5

    move/from16 v0, v66

    if-ne v10, v0, :cond_0

    .line 979
    const/16 v66, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 989
    .end local v13           #configState:I
    :sswitch_10
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "HANDLE_WIFI_SCAN_RESULT_AVAILABLE, dongle scan = "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v66, 0x1

    move/from16 v0, v66

    if-ne v10, v0, :cond_17

    const/16 v66, 0x1

    :goto_4
    move-object/from16 v0, v67

    move/from16 v1, v66

    #calls: Lcom/htc/server/WirelessDisplayService;->constructDongleInfoFromWifi(Z)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$3000(Lcom/htc/server/WirelessDisplayService;Z)V

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->updateNotification()V
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$3100(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .line 990
    :cond_17
    const/16 v66, 0x0

    goto :goto_4

    .line 997
    :sswitch_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v66

    const-string v67, "wivu_res"

    invoke-virtual/range {v66 .. v67}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 998
    .local v58, status:Ljava/lang/String;
    const/16 v66, 0x3e

    move/from16 v0, v66

    if-ne v10, v0, :cond_1a

    .line 1000
    const-string v66, "WirelessDisplayService"

    move-object/from16 v0, v66

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const/16 v66, 0x1

    move/from16 v0, v66

    if-ne v11, v0, :cond_19

    .line 1002
    const-string v66, "VALUE=1"

    move-object/from16 v0, v58

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v66

    if-eqz v66, :cond_18

    .line 1003
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    const/16 v67, 0x1

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v66

    if-eqz v66, :cond_0

    const/16 v66, 0x1

    move/from16 v0, v48

    move/from16 v1, v66

    if-ne v0, v1, :cond_0

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x2

    const/16 v68, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v66 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    .line 1007
    const/16 v66, 0x1

    const/16 v67, 0x1

    const/16 v68, -0x6

    move-object/from16 v0, p0

    move/from16 v1, v66

    move/from16 v2, v67

    move/from16 v3, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v61

    .line 1008
    .local v61, timeOut2:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v66

    const-wide/32 v67, 0x15f90

    move-object/from16 v0, v66

    move-object/from16 v1, v61

    move-wide/from16 v2, v67

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1011
    .end local v61           #timeOut2:Landroid/os/Message;
    :cond_18
    const-string v66, "VALUE=0"

    move-object/from16 v0, v58

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v66

    if-eqz v66, :cond_0

    .line 1012
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 1015
    :cond_19
    const/16 v66, -0x1

    move/from16 v0, v66

    if-ne v11, v0, :cond_0

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x1

    const/16 v68, -0x5

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v66 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 1018
    :cond_1a
    const/16 v66, 0x3f

    move/from16 v0, v66

    if-ne v10, v0, :cond_1d

    .line 1020
    const-string v66, "WirelessDisplayService"

    move-object/from16 v0, v66

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const/16 v66, 0x1

    move/from16 v0, v66

    if-ne v11, v0, :cond_1c

    .line 1022
    const-string v66, "VALUE=1"

    move-object/from16 v0, v58

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v66

    if-eqz v66, :cond_1b

    .line 1023
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    const/16 v67, 0x1

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 1025
    :cond_1b
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 1026
    :cond_1c
    const/16 v66, -0x1

    move/from16 v0, v66

    if-ne v11, v0, :cond_0

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x1

    const/16 v68, -0x5

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v66 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 1029
    :cond_1d
    const/16 v66, 0x40

    move/from16 v0, v66

    if-ne v10, v0, :cond_1e

    .line 1030
    const-string v66, "WirelessDisplayService"

    move-object/from16 v0, v66

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1031
    :cond_1e
    const/16 v66, 0x41

    move/from16 v0, v66

    if-eq v10, v0, :cond_0

    .line 1033
    const/16 v66, 0x42

    move/from16 v0, v66

    if-ne v10, v0, :cond_0

    .line 1034
    const/16 v66, 0x1

    move/from16 v0, v66

    if-ne v11, v0, :cond_0

    .line 1035
    move-object/from16 v63, v58

    .line 1036
    .local v63, tosend:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move-object/from16 v1, v63

    #calls: Lcom/htc/server/WirelessDisplayService;->updteDongleInfo(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$3400(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1042
    .end local v58           #status:Ljava/lang/String;
    .end local v63           #tosend:Ljava/lang/String;
    :sswitch_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v66

    const-string v67, "wivu_req"

    invoke-virtual/range {v66 .. v67}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 1043
    .local v51, request:Ljava/lang/String;
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "WIVU_REQ:"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, ", arg1 = "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, " , arg2 = "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    if-eqz v51, :cond_27

    const/16 v66, 0x16

    move/from16 v0, v66

    if-ne v10, v0, :cond_27

    .line 1046
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3500()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v66

    const/16 v67, 0x16

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1047
    const/16 v66, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1048
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3600()Ljava/util/regex/Pattern;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v27

    .line 1049
    .local v27, matcher:Ljava/util/regex/Matcher;
    invoke-virtual/range {v27 .. v27}, Ljava/util/regex/Matcher;->find()Z

    move-result v66

    if-eqz v66, :cond_1f

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v67

    #setter for: Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$3702(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1051
    :cond_1f
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3800()Ljava/util/regex/Pattern;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v27

    .line 1052
    invoke-virtual/range {v27 .. v27}, Ljava/util/regex/Matcher;->find()Z

    move-result v66

    if-eqz v66, :cond_20

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v67

    #setter for: Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$3902(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1054
    :cond_20
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4000()Ljava/util/regex/Pattern;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v27

    .line 1055
    invoke-virtual/range {v27 .. v27}, Ljava/util/regex/Matcher;->find()Z

    move-result v66

    if-eqz v66, :cond_21

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v67

    #setter for: Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$4102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1057
    :cond_21
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "IP = "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$3700(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, ", audioPort = "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$3900(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, ", videoPort = "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$4100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$3700(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$3900(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    #calls: Lcom/htc/server/WirelessDisplayService;->setIPandPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v66 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4200(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v66

    if-eqz v66, :cond_26

    const/16 v66, 0x2

    move/from16 v0, v48

    move/from16 v1, v66

    if-eq v0, v1, :cond_22

    const/16 v66, 0x7

    move/from16 v0, v48

    move/from16 v1, v66

    if-ne v0, v1, :cond_26

    .line 1062
    :cond_22
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    if-eqz v66, :cond_24

    const/16 v66, 0x7

    move/from16 v0, v48

    move/from16 v1, v66

    if-ne v0, v1, :cond_24

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->synchronize_lock:Ljava/lang/Object;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$4300(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Object;

    move-result-object v67

    monitor-enter v67

    .line 1064
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$4400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Boolean;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v66

    if-eqz v66, :cond_23

    .line 1065
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v66

    const/16 v68, 0x29

    const/16 v69, 0x2a

    const/16 v70, 0x2c

    move-object/from16 v0, v66

    move/from16 v1, v68

    move/from16 v2, v69

    move/from16 v3, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v33

    .line 1066
    .local v33, msg3:Landroid/os/Message;
    const/16 v66, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1068
    const-wide/16 v68, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-wide/from16 v2, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1072
    .end local v33           #msg3:Landroid/os/Message;
    :goto_5
    monitor-exit v67

    goto/16 :goto_0

    :catchall_0
    move-exception v66

    monitor-exit v67
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v66

    .line 1070
    :cond_23
    :try_start_1
    const-string v66, "WirelessDisplayService"

    const-string v68, "Application wants to PAUSE so ignore WIVUSTART"

    move-object/from16 v0, v66

    move-object/from16 v1, v68

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 1073
    :cond_24
    const/16 v66, 0x2

    move/from16 v0, v48

    move/from16 v1, v66

    if-ne v0, v1, :cond_0

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$4500(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v66

    if-eqz v66, :cond_25

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x3

    const/16 v68, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v66 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    .line 1079
    const/16 v66, 0x1

    const/16 v67, 0x9

    const/16 v68, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v66

    move/from16 v2, v67

    move/from16 v3, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v66

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v66

    const/16 v67, 0x2

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1081
    const-string v66, "WirelessDisplayService"

    const-string v67, "IncomingCallReceiver during configuring set mAppCallScreen:2"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1083
    :cond_25
    const/16 v66, 0x33

    const/16 v67, 0x34

    const/16 v68, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    move/from16 v2, v67

    move/from16 v3, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v31

    .line 1085
    .local v31, msg1:Landroid/os/Message;
    const-wide/16 v66, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v66

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1091
    .end local v31           #msg1:Landroid/os/Message;
    :cond_26
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    if-eqz v66, :cond_0

    .line 1092
    const-string v66, "WirelessDisplayService"

    const-string v67, "Dongle wrong state: take it out"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v67, 0x1

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1094
    const/16 v66, 0x1f

    const/16 v67, 0x21

    const/16 v68, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    move/from16 v2, v67

    move/from16 v3, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v26

    .line 1095
    .local v26, makeSure:Landroid/os/Message;
    const-wide/16 v66, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v66

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1098
    .end local v26           #makeSure:Landroid/os/Message;
    .end local v27           #matcher:Ljava/util/regex/Matcher;
    :cond_27
    const/16 v66, 0x17

    move/from16 v0, v66

    if-ne v10, v0, :cond_2b

    .line 1100
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3500()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v66

    const/16 v67, 0x17

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1101
    const/16 v66, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1102
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    if-eqz v66, :cond_28

    .line 1103
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1104
    const/16 v66, 0x7

    move/from16 v0, v48

    move/from16 v1, v66

    if-eq v0, v1, :cond_28

    .line 1105
    const-string v66, "WirelessDisplayService"

    const-string v67, "Stop Initialized by Dongle, stop transmitting packets after timeout of 16sec"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    const/16 v66, 0x6

    const/16 v67, -0x1

    const/16 v68, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    move/from16 v2, v67

    move/from16 v3, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v59

    .line 1107
    .local v59, stopTrans:Landroid/os/Message;
    const-wide/16 v66, 0x3a98

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-wide/from16 v2, v66

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1110
    .end local v59           #stopTrans:Landroid/os/Message;
    :cond_28
    const/16 v66, 0x1

    move/from16 v0, v48

    move/from16 v1, v66

    if-eq v0, v1, :cond_29

    .line 1111
    const/16 v66, 0x7

    move/from16 v0, v48

    move/from16 v1, v66

    if-ne v0, v1, :cond_2a

    .line 1120
    const-string v66, "WirelessDisplayService"

    const-string v67, "Receive WIVUSTOP in APP_PAUSE State"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :cond_29
    :goto_6
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4600()Ljava/lang/Boolean;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v66

    if-eqz v66, :cond_0

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v66

    if-eqz v66, :cond_0

    .line 1132
    const-string v66, "WirelessDisplayService"

    const-string v67, "Switching the dongle"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->selectDongle(Ljava/lang/String;)V

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1135
    const/16 v66, 0x0

    invoke-static/range {v66 .. v66}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v66

    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$4602(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 1122
    :cond_2a
    const/16 v66, 0x1

    const/16 v67, 0x1

    const/16 v68, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    move/from16 v2, v67

    move/from16 v3, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v36

    .line 1123
    .local v36, msgChangeState1:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_6

    .line 1138
    .end local v36           #msgChangeState1:Landroid/os/Message;
    :cond_2b
    const/16 v66, 0x18

    move/from16 v0, v66

    if-ne v10, v0, :cond_2c

    .line 1139
    const-string v66, "="

    move-object/from16 v0, v51

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 1140
    .local v25, macs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move-object/from16 v1, v25

    #calls: Lcom/htc/server/WirelessDisplayService;->updateWivuList([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$4700(Lcom/htc/server/WirelessDisplayService;[Ljava/lang/String;)V

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v66

    if-eqz v66, :cond_0

    const/16 v66, 0x8

    move/from16 v0, v48

    move/from16 v1, v66

    if-ne v0, v1, :cond_0

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v66

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    invoke-interface/range {v66 .. v67}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v66

    if-eqz v66, :cond_0

    .line 1143
    const-string v66, "WirelessDisplayService"

    const-string v67, "Found the dongle: now remove the HANDLE_CHANGE_STATE"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    const/16 v66, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->selectDongle(Ljava/lang/String;)V

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1202(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1150
    .end local v25           #macs:[Ljava/lang/String;
    :cond_2c
    const/16 v66, 0x1b

    move/from16 v0, v66

    if-ne v10, v0, :cond_2d

    .line 1151
    move-object/from16 v6, v51

    .line 1152
    .local v6, addToList:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    #calls: Lcom/htc/server/WirelessDisplayService;->updteDongleInfo(Ljava/lang/String;)V
    invoke-static {v0, v6}, Lcom/htc/server/WirelessDisplayService;->access$3400(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v66

    if-eqz v66, :cond_0

    const/16 v66, 0x8

    move/from16 v0, v48

    move/from16 v1, v66

    if-ne v0, v1, :cond_0

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v66

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    invoke-interface/range {v66 .. v67}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v66

    if-eqz v66, :cond_0

    .line 1155
    const-string v66, "WirelessDisplayService"

    const-string v67, "Found the dongle: now remove the HANDLE_CHANGE_STATE"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    const/16 v66, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x2

    const/16 v68, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v66 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    const/16 v67, 0x1

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1160
    const/16 v66, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1202(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1165
    .end local v6           #addToList:Ljava/lang/String;
    :cond_2d
    const/16 v66, 0x19

    move/from16 v0, v66

    if-ne v10, v0, :cond_2e

    .line 1166
    const-string v66, "WirelessDisplayService"

    const-string v67, "SWUPGRADE and send notification"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->updateFWUpgradeNotification()V
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$4800(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .line 1242
    :cond_2e
    const/16 v66, 0x1a

    move/from16 v0, v66

    if-ne v10, v0, :cond_0

    .line 1243
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "RATE_FEEDBACK, rate: "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    if-eqz v11, :cond_2f

    const/16 v66, 0x2

    move/from16 v0, v66

    if-ge v11, v0, :cond_2f

    .line 1245
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "Current Interface"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, ", Mirror State:"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v66

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    invoke-virtual/range {v66 .. v67}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v66

    if-eqz v66, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v66

    const/16 v67, 0x3

    move/from16 v0, v66

    move/from16 v1, v67

    if-ne v0, v1, :cond_0

    .line 1247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->getCurrentDongle()Lcom/htc/service/DongleInfo;

    move-result-object v16

    .line 1248
    .local v16, dfDongle:Lcom/htc/service/DongleInfo;
    if-eqz v16, :cond_0

    .line 1249
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "curDongle state:"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v68, v0

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v66, v0

    const/16 v67, 0x3

    move/from16 v0, v66

    move/from16 v1, v67

    if-ne v0, v1, :cond_0

    .line 1251
    const/16 v66, 0x72

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1255
    .end local v16           #dfDongle:Lcom/htc/service/DongleInfo;
    :cond_2f
    if-eqz v11, :cond_30

    .line 1256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$4900(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v66

    if-eqz v66, :cond_0

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$4900(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v66

    move-object/from16 v0, v66

    invoke-virtual {v0, v11}, Landroid/media/MediaRecorder;->changeVideoBitRate(I)V

    goto/16 :goto_0

    .line 1260
    :cond_30
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "Should be not here, dongle feedbake rate is "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1266
    .end local v51           #request:Ljava/lang/String;
    :sswitch_13
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    if-eqz v66, :cond_0

    .line 1268
    const/16 v66, 0x20

    move/from16 v0, v66

    if-ne v10, v0, :cond_31

    .line 1269
    const-string v66, "WirelessDisplayService"

    const-string v67, "REQ_DISCOVERY"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestDiscover()V

    goto/16 :goto_0

    .line 1271
    :cond_31
    const/16 v66, 0x21

    move/from16 v0, v66

    if-ne v10, v0, :cond_33

    .line 1273
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "REQ_PLUGGED:"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    const/16 v50, -0x1

    .line 1275
    .local v50, req:I
    const/16 v66, 0x1

    move/from16 v0, v66

    if-ne v11, v0, :cond_32

    .line 1276
    const/16 v66, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1277
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v67, 0x1

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    move-result v50

    goto/16 :goto_0

    .line 1281
    :cond_32
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    move-result v50

    .line 1282
    const/16 v66, 0x1

    const/16 v67, 0x1

    const/16 v68, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    move/from16 v2, v67

    move/from16 v3, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v37

    .line 1283
    .local v37, msgChangeState2:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1287
    .end local v37           #msgChangeState2:Landroid/os/Message;
    .end local v50           #req:I
    :cond_33
    const/16 v66, 0x22

    move/from16 v0, v66

    if-ne v10, v0, :cond_34

    .line 1289
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService$WivuThread;->getDiscoveryStatus()I

    goto/16 :goto_0

    .line 1291
    :cond_34
    const/16 v66, 0x23

    move/from16 v0, v66

    if-ne v10, v0, :cond_35

    .line 1293
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService$WivuThread;->getPluggedStatus()I

    goto/16 :goto_0

    .line 1295
    :cond_35
    const/16 v66, 0x24

    move/from16 v0, v66

    if-ne v10, v0, :cond_37

    .line 1297
    const-string v66, "WirelessDisplayService"

    const-string v67, "REQ_STOP_DIS"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    .line 1299
    const/16 v66, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1300
    const/16 v66, 0x33

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1301
    const/16 v66, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1302
    const/16 v66, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1304
    const/16 v66, 0x1

    const/16 v67, 0x1

    const/16 v68, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    move/from16 v2, v67

    move/from16 v3, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v38

    .line 1305
    .local v38, msgChangeState3:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1309
    const/16 v66, 0x0

    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$702(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 1310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v66

    if-eqz v66, :cond_36

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    #setter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1302(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1312
    const-string v66, "persist.sys.wfd.lastdongle"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1300(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1202(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v66

    invoke-interface/range {v66 .. v66}, Ljava/util/List;->clear()V

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v66

    const/16 v67, 0x49

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v66

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_0

    .line 1319
    .end local v38           #msgChangeState3:Landroid/os/Message;
    :cond_37
    const/16 v66, 0x25

    move/from16 v0, v66

    if-ne v10, v0, :cond_38

    .line 1320
    const-string v66, "WirelessDisplayService"

    const-string v67, "REQ_PEER_SELECT"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    const/16 v66, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1322
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v66

    const-string v67, "dongle_staBssid"

    invoke-virtual/range {v66 .. v67}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 1323
    .local v55, staBssid2:Ljava/lang/String;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->selectPeer(Ljava/lang/String;)V

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move-object/from16 v1, v55

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$1202(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1325
    .end local v55           #staBssid2:Ljava/lang/String;
    :cond_38
    const/16 v66, 0x27

    move/from16 v0, v66

    if-ne v10, v0, :cond_3a

    .line 1326
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "REQ_SET_INTERFACE:"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v66

    const-string v67, "interface"

    invoke-virtual/range {v66 .. v67}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1328
    .local v22, ifname:Ljava/lang/String;
    const/16 v50, -0x1

    .line 1329
    .restart local v50       #req:I
    if-eqz v22, :cond_0

    .line 1330
    const/16 v66, 0x1

    move/from16 v0, v66

    if-ne v11, v0, :cond_39

    .line 1331
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v67, 0x1

    move-object/from16 v0, v66

    move-object/from16 v1, v22

    move/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    move-result v50

    .line 1335
    :goto_7
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->changeInterface(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1333
    :cond_39
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v67, 0x0

    move-object/from16 v0, v66

    move-object/from16 v1, v22

    move/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    move-result v50

    goto :goto_7

    .line 1338
    .end local v22           #ifname:Ljava/lang/String;
    .end local v50           #req:I
    :cond_3a
    const/16 v66, 0x28

    move/from16 v0, v66

    if-ne v10, v0, :cond_3c

    .line 1339
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "REQ_JOIN_GROUP:"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    const/16 v50, -0x1

    .line 1341
    .restart local v50       #req:I
    const/16 v66, 0x1

    move/from16 v0, v66

    if-ne v11, v0, :cond_3b

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v66

    if-nez v66, :cond_3b

    .line 1342
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    const/16 v67, 0x1

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1343
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v67, 0x1

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestJoin(Z)I

    move-result v50

    goto/16 :goto_0

    .line 1344
    :cond_3b
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v66

    if-eqz v66, :cond_0

    .line 1345
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1346
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestJoin(Z)I

    goto/16 :goto_0

    .line 1349
    .end local v50           #req:I
    :cond_3c
    const/16 v66, 0x191

    move/from16 v0, v66

    if-ne v10, v0, :cond_3e

    .line 1350
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "REQ_SET_MCAST_ROUTE:"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v66

    const-string v67, "interfaceRoute"

    invoke-virtual/range {v66 .. v67}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1352
    .restart local v22       #ifname:Ljava/lang/String;
    const/16 v50, -0x1

    .line 1353
    .restart local v50       #req:I
    if-eqz v22, :cond_0

    .line 1354
    const/16 v66, 0x1

    move/from16 v0, v66

    if-ne v11, v0, :cond_3d

    .line 1355
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v67, 0x1

    move-object/from16 v0, v66

    move-object/from16 v1, v22

    move/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    move-result v50

    goto/16 :goto_0

    .line 1357
    :cond_3d
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v67, 0x0

    move-object/from16 v0, v66

    move-object/from16 v1, v22

    move/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    goto/16 :goto_0

    .line 1360
    .end local v22           #ifname:Ljava/lang/String;
    .end local v50           #req:I
    :cond_3e
    const/16 v66, 0x192

    move/from16 v0, v66

    if-ne v10, v0, :cond_0

    .line 1361
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "REQ_SET_MCAST_ROUTE:"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSupportAAC:Z
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$5100(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    const/16 v50, -0x1

    .line 1363
    .restart local v50       #req:I
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSupportAAC:Z
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5100(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v67

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->enabledAAC(Z)I

    goto/16 :goto_0

    .line 1368
    .end local v50           #req:I
    :sswitch_14
    const/16 v66, 0x34

    move/from16 v0, v66

    if-ne v10, v0, :cond_41

    .line 1370
    const-string v66, "WirelessDisplayService"

    const-string v67, "MEDIA_START"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    const/16 v66, 0x3

    move/from16 v0, v48

    move/from16 v1, v66

    if-eq v0, v1, :cond_0

    .line 1376
    const/16 v56, -0x1

    .line 1377
    .local v56, star:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5300(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v56

    .line 1378
    if-nez v56, :cond_3f

    .line 1379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x3

    const/16 v68, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v66 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    .line 1380
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->wivuSQoSStart()Z

    goto/16 :goto_0

    .line 1383
    :cond_3f
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    if-eqz v66, :cond_40

    .line 1384
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1385
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x1

    const/16 v68, -0x4

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v66 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 1387
    .end local v56           #star:I
    :cond_41
    const/16 v66, 0x35

    move/from16 v0, v66

    if-ne v10, v0, :cond_43

    .line 1389
    const-string v66, "WirelessDisplayService"

    const-string v67, "MEDIA_STOP"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    const/16 v66, 0x4

    move/from16 v0, v48

    move/from16 v1, v66

    if-ne v0, v1, :cond_42

    .line 1395
    :cond_42
    const/16 v56, -0x1

    .line 1396
    .restart local v56       #star:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->stopDisplayRecorder()I
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$5400(Lcom/htc/server/WirelessDisplayService;)I

    move-result v56

    .line 1398
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->wivuSQoSStop()Z

    goto/16 :goto_0

    .line 1399
    .end local v56           #star:I
    :cond_43
    const/16 v66, 0x36

    move/from16 v0, v66

    if-ne v10, v0, :cond_0

    .line 1400
    const-string v66, "WirelessDisplayService"

    const-string v67, "MEDIA_RESTART"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    const/16 v56, -0x1

    .line 1402
    .restart local v56       #star:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5300(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v56

    .line 1406
    const/16 v66, -0x1

    move/from16 v0, v56

    move/from16 v1, v66

    if-ne v0, v1, :cond_0

    .line 1407
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    if-eqz v66, :cond_44

    .line 1408
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1409
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x1

    const/16 v68, -0x4

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v66 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 1415
    .end local v56           #star:I
    :sswitch_15
    move/from16 v57, v48

    .line 1416
    .local v57, state:I
    const/16 v19, 0x0

    .line 1418
    .local v19, err:I
    const/16 v66, 0x1

    move/from16 v0, v48

    move/from16 v1, v66

    if-eq v0, v1, :cond_0

    .line 1420
    const/16 v66, 0x2b

    move/from16 v0, v66

    if-ne v10, v0, :cond_48

    .line 1421
    const-string v66, "WirelessDisplayService"

    const-string v67, "MEDIA_PAUSE event"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    const/16 v66, 0x2c

    move/from16 v0, v66

    if-ne v11, v0, :cond_46

    .line 1423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->stopDisplayRecorder()I
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$5400(Lcom/htc/server/WirelessDisplayService;)I

    move-result v8

    .line 1424
    .local v8, app:I
    if-nez v8, :cond_45

    .line 1425
    const/16 v57, 0x7

    .line 1435
    .end local v8           #app:I
    :cond_45
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move/from16 v1, v57

    move/from16 v2, v19

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 1426
    :cond_46
    const/16 v66, 0x2d

    move/from16 v0, v66

    if-ne v11, v0, :cond_47

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$5500(Lcom/htc/server/WirelessDisplayService;)V

    .line 1428
    const/16 v57, 0x4

    goto :goto_8

    .line 1429
    :cond_47
    const/16 v66, 0x2e

    move/from16 v0, v66

    if-ne v11, v0, :cond_45

    .line 1430
    const-string v66, "WirelessDisplayService"

    const-string v67, "MEDIA_PAUSE: CALL_PAUSE event"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->stopDisplayRecorder()I
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$5400(Lcom/htc/server/WirelessDisplayService;)I

    move-result v8

    .line 1432
    .restart local v8       #app:I
    if-nez v8, :cond_45

    .line 1433
    const/16 v57, 0x9

    goto :goto_8

    .line 1436
    .end local v8           #app:I
    :cond_48
    const/16 v66, 0x2a

    move/from16 v0, v66

    if-ne v10, v0, :cond_0

    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->synchronize_lock:Ljava/lang/Object;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$4300(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Object;

    move-result-object v67

    monitor-enter v67

    .line 1438
    :try_start_2
    const-string v66, "WirelessDisplayService"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "MEDIA_RESUME event, App Resutest: "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Boolean;

    move-result-object v69

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v66

    move-object/from16 v1, v68

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$4400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Boolean;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v66

    if-nez v66, :cond_49

    .line 1440
    monitor-exit v67

    goto/16 :goto_0

    .line 1478
    :catchall_1
    move-exception v66

    monitor-exit v67
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v66

    .line 1442
    :cond_49
    const/16 v66, 0x2c

    move/from16 v0, v66

    if-ne v11, v0, :cond_4d

    .line 1443
    const/16 v66, 0x7

    move/from16 v0, v48

    move/from16 v1, v66

    if-ne v0, v1, :cond_4a

    .line 1444
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$5200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v66

    move-object/from16 v1, v68

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$5300(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v9

    .line 1445
    .local v9, app2:I
    if-nez v9, :cond_4b

    .line 1446
    const/16 v57, 0x3

    .line 1477
    .end local v9           #app2:I
    :cond_4a
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move/from16 v1, v57

    move/from16 v2, v19

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    .line 1478
    monitor-exit v67

    goto/16 :goto_0

    .line 1448
    .restart local v9       #app2:I
    :cond_4b
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    if-eqz v66, :cond_4c

    .line 1449
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v68, 0x0

    move-object/from16 v0, v66

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1450
    :cond_4c
    const/16 v57, 0x1

    .line 1451
    const/16 v19, -0x4

    goto :goto_9

    .line 1454
    .end local v9           #app2:I
    :cond_4d
    const/16 v66, 0x2d

    move/from16 v0, v66

    if-ne v11, v0, :cond_4e

    .line 1455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$5500(Lcom/htc/server/WirelessDisplayService;)V

    .line 1462
    const/16 v57, 0x3

    goto :goto_9

    .line 1463
    :cond_4e
    const/16 v66, 0x2e

    move/from16 v0, v66

    if-ne v11, v0, :cond_4a

    .line 1464
    const-string v66, "WirelessDisplayService"

    const-string v68, "MEDIA_RESUME: CALL_PAUSE event"

    move-object/from16 v0, v66

    move-object/from16 v1, v68

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    const/16 v66, 0x9

    move/from16 v0, v48

    move/from16 v1, v66

    if-ne v0, v1, :cond_4a

    .line 1466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$5200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v66

    move-object/from16 v1, v68

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$5300(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v9

    .line 1467
    .restart local v9       #app2:I
    if-nez v9, :cond_4f

    .line 1468
    const/16 v57, 0x3

    goto :goto_9

    .line 1470
    :cond_4f
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    if-eqz v66, :cond_50

    .line 1471
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v68, 0x0

    move-object/from16 v0, v66

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1472
    :cond_50
    const/16 v57, 0x1

    .line 1473
    const/16 v19, -0x4

    goto/16 :goto_9

    .line 1496
    .end local v9           #app2:I
    .end local v19           #err:I
    .end local v57           #state:I
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->writeConcurrentAPMacAddress()Z
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$5600(Lcom/htc/server/WirelessDisplayService;)Z

    .line 1497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const-string v68, "/data/misc/wifidisplay.conf"

    #calls: Lcom/htc/server/WirelessDisplayService;->readConfigFile(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$5800(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    #setter for: Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5702(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1500
    :sswitch_17
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "HANDLE_PROCESS_WFDSERVICE, mWfdServiceRetryCount: "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$5900(Lcom/htc/server/WirelessDisplayService;)I

    move-result v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, ", arg:"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$2600(Lcom/htc/server/WirelessDisplayService;)Landroid/os/IBinder;

    move-result-object v66

    if-nez v66, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$5900(Lcom/htc/server/WirelessDisplayService;)I

    move-result v66

    if-lez v66, :cond_51

    .line 1502
    const/16 v66, 0x70

    const/16 v67, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    move/from16 v2, v67

    invoke-virtual {v0, v1, v10, v2}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v40

    .line 1503
    .local v40, msgUseWfdService:Landroid/os/Message;
    const-wide/16 v66, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-wide/from16 v2, v66

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1504
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "WfdService not ready, resent, type = "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$5910(Lcom/htc/server/WirelessDisplayService;)I

    goto/16 :goto_0

    .line 1506
    .end local v40           #msgUseWfdService:Landroid/os/Message;
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$2600(Lcom/htc/server/WirelessDisplayService;)Landroid/os/IBinder;

    move-result-object v66

    if-eqz v66, :cond_53

    .line 1507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x5

    #setter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5902(Lcom/htc/server/WirelessDisplayService;I)I

    .line 1508
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v66

    if-eqz v66, :cond_52

    .line 1509
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1510
    const/16 v66, 0x13

    const/16 v67, 0x0

    const/16 v68, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v66

    move/from16 v2, v67

    move/from16 v3, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v52

    .line 1511
    .local v52, resetWFD_Flag:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v66

    const-wide/32 v67, 0x249f0

    move-object/from16 v0, v66

    move-object/from16 v1, v52

    move-wide/from16 v2, v67

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1512
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "Use WfdService, type = "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    packed-switch v10, :pswitch_data_0

    goto/16 :goto_0

    .line 1515
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x3

    #calls: Lcom/htc/server/WirelessDisplayService;->binder_setMode(I)V
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$6000(Lcom/htc/server/WirelessDisplayService;I)V

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v67

    #calls: Lcom/htc/server/WirelessDisplayService;->binder_attemptToConfigure(Lcom/htc/service/DongleInfo;)V
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$6100(Lcom/htc/server/WirelessDisplayService;Lcom/htc/service/DongleInfo;)V

    goto/16 :goto_0

    .line 1528
    .end local v52           #resetWFD_Flag:Landroid/os/Message;
    :cond_52
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "Can\'t use WfdService, WfdService is processing ignore message, type = "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1531
    :cond_53
    const-string v66, "WirelessDisplayService"

    const-string v67, "Can\'t use WfdService, WfdService bind false during 2 sec"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1535
    :sswitch_18
    move v4, v10

    .line 1536
    .local v4, absoluteDirection:I
    move/from16 v49, v11

    .line 1537
    .local v49, relativeDirection:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move/from16 v1, v49

    #calls: Lcom/htc/server/WirelessDisplayService;->mirrorOnOffDirection(II)I
    invoke-static {v0, v4, v1}, Lcom/htc/server/WirelessDisplayService;->access$6200(Lcom/htc/server/WirelessDisplayService;II)I

    move-result v20

    .line 1538
    .local v20, fingerIndicator:I
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "HANDLE_FINGER_GESTURE_DIRECTION, fingerIndicator = "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v66

    const/16 v67, 0x6f

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService$H;->hasMessages(I)Z

    move-result v66

    if-nez v66, :cond_0

    .line 1540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move/from16 v1, v20

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempFingerIndicator:I
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$6302(Lcom/htc/server/WirelessDisplayService;I)I

    .line 1545
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    const/16 v67, 0x1

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v66

    const/16 v67, 0x1

    invoke-virtual/range {v66 .. v67}, Landroid/net/wifi/WifiManager;->startDongleSingleCscan(I)Z

    .line 1547
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v66

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const/16 v68, 0x6f

    const/16 v69, 0x1

    move-object/from16 v0, v67

    move/from16 v1, v68

    move/from16 v2, v20

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v67

    const-wide/16 v68, 0x3e8

    invoke-virtual/range {v66 .. v69}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1558
    .end local v4           #absoluteDirection:I
    .end local v20           #fingerIndicator:I
    .end local v49           #relativeDirection:I
    :sswitch_19
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v66

    if-nez v66, :cond_54

    const/16 v66, 0x1

    move/from16 v0, v66

    if-ne v11, v0, :cond_54

    .line 1559
    const-string v66, "WirelessDisplayService"

    const-string v67, "ignore HANDLE_FINGER_GESTURE, due to already handle, it is error handling message"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1561
    :cond_54
    const/16 v66, 0x6f

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1562
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1563
    const/16 v66, 0x3

    move/from16 v0, v66

    if-ne v10, v0, :cond_56

    .line 1564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x1

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->setFingerGestureEnable(Z)V

    .line 1565
    const/16 v66, 0x1

    move/from16 v0, v66

    new-array v15, v0, [Ljava/lang/Object;

    .line 1566
    .local v15, debug2:[Ljava/lang/Object;
    const/16 v66, 0x0

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "curMirrStatus: "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    aput-object v67, v15, v66

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const-string v67, "HANDLE_FINGER_GESTURE, arg=3"

    move-object/from16 v0, v66

    move-object/from16 v1, v67

    #calls: Lcom/htc/server/WirelessDisplayService;->addToHtcWDSrvHistory(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v15}, Lcom/htc/server/WirelessDisplayService;->access$2800(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v66

    if-eqz v66, :cond_55

    .line 1569
    const-string v66, "WirelessDisplayService"

    const-string v67, "Stop mirror mode from finger gesture indicator."

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    goto/16 :goto_0

    .line 1572
    :cond_55
    const-string v66, "WirelessDisplayService"

    const-string v67, "Notify DLNA Service 3-finer down, mirror state is false"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    new-instance v45, Landroid/content/Intent;

    const-string v66, "com.htc.intent.action.NOTIFY_DLNA_WIRELESS_DISPLAY_MIRROR_OFF"

    move-object/from16 v0, v45

    move-object/from16 v1, v66

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1574
    .local v45, notifyDLNA_MirrrorOff:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1578
    .end local v15           #debug2:[Ljava/lang/Object;
    .end local v45           #notifyDLNA_MirrrorOff:Landroid/content/Intent;
    :cond_56
    const/16 v66, 0x1

    move/from16 v0, v66

    if-ne v10, v0, :cond_0

    .line 1580
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6500()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v66

    if-eqz v66, :cond_57

    .line 1581
    const-string v66, "WirelessDisplayService"

    const-string v67, "Pre Load DLNA Services"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    new-instance v67, Landroid/content/Intent;

    const-string v68, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct/range {v67 .. v68}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v66 .. v67}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1589
    :cond_57
    :goto_a
    const/16 v66, 0x3

    move/from16 v0, v48

    move/from16 v1, v66

    if-eq v0, v1, :cond_58

    const/16 v66, 0x7

    move/from16 v0, v48

    move/from16 v1, v66

    if-ne v0, v1, :cond_59

    .line 1590
    :cond_58
    new-instance v30, Landroid/content/Intent;

    const-string v66, "com.htc.intent.action.WIRELESS_DISPLAY_MIRROR_RESULT"

    move-object/from16 v0, v30

    move-object/from16 v1, v66

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1591
    .restart local v30       #mirrorResultIntent:Landroid/content/Intent;
    const-string v66, "RESULT"

    const-string v67, "SUCCESS"

    move-object/from16 v0, v30

    move-object/from16 v1, v66

    move-object/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1593
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "mirror mode status: "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, " ,ignore finger gesture, sendBroadcast Intent with SUCCESS "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    const/16 v66, 0x7

    move/from16 v0, v48

    move/from16 v1, v66

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6500()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v66

    if-nez v66, :cond_0

    .line 1595
    const-string v66, "WirelessDisplayService"

    const-string v67, "Notify DLNA Service user want to mirror replace DLNA"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    new-instance v44, Landroid/content/Intent;

    const-string v66, "com.htc.intent.action.NOTIFY_DLNA_WIRELESS_DISPLAY_MIRROR_REPLACE"

    move-object/from16 v0, v44

    move-object/from16 v1, v66

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1597
    .local v44, notifyDLNA_Mirror_Replace:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1584
    .end local v30           #mirrorResultIntent:Landroid/content/Intent;
    .end local v44           #notifyDLNA_Mirror_Replace:Landroid/content/Intent;
    :catch_0
    move-exception v53

    .line 1585
    .local v53, se:Ljava/lang/SecurityException;
    const-string v66, "WirelessDisplayService"

    const-string v67, "Pre Load DLNA Services occur SecurityException "

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1602
    .end local v53           #se:Ljava/lang/SecurityException;
    :cond_59
    new-instance v43, Landroid/content/Intent;

    const-string v66, "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_LIST"

    move-object/from16 v0, v43

    move-object/from16 v1, v66

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1603
    .local v43, notifyConfigerTool:Landroid/content/Intent;
    new-instance v42, Landroid/content/Intent;

    const-string v66, "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_CONFIG"

    move-object/from16 v0, v42

    move-object/from16 v1, v66

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1604
    .local v42, notifyConfigToolToConfig:Landroid/content/Intent;
    new-instance v46, Landroid/content/Intent;

    const-string v66, "com.htc.wifidisplay.CONFIGURE_MODE_NORMAL"

    move-object/from16 v0, v46

    move-object/from16 v1, v66

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1605
    .local v46, notifyNormalConfigTool:Landroid/content/Intent;
    const/high16 v66, 0x1000

    move-object/from16 v0, v43

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1606
    const/high16 v66, 0x1000

    move-object/from16 v0, v42

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1607
    const/high16 v66, 0x1000

    move-object/from16 v0, v46

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1608
    new-instance v30, Landroid/content/Intent;

    const-string v66, "com.htc.intent.action.WIRELESS_DISPLAY_MIRROR_RESULT"

    move-object/from16 v0, v30

    move-object/from16 v1, v66

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1609
    .restart local v30       #mirrorResultIntent:Landroid/content/Intent;
    const-string v66, "RESULT"

    const-string v67, "FAIL"

    move-object/from16 v0, v30

    move-object/from16 v1, v66

    move-object/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v66

    if-nez v66, :cond_5a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->notSupportConcurrent:Z
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$6600(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v66

    if-eqz v66, :cond_5b

    :cond_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$6700(Lcom/htc/server/WirelessDisplayService;)Ljava/util/Hashtable;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/util/Hashtable;->size()I

    move-result v66

    if-nez v66, :cond_5d

    .line 1612
    :cond_5b
    const-string v66, "WirelessDisplayService"

    const-string v67, "FINGER GESTURE, No Dongle Found(WIFI DISABLED)"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6500()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v66

    if-eqz v66, :cond_5c

    .line 1614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1617
    :cond_5c
    :try_start_5
    const-string v66, "caller"

    const-string v67, "3finger"

    move-object/from16 v0, v46

    move-object/from16 v1, v66

    move-object/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 1619
    :catch_1
    move-exception v7

    .line 1620
    .local v7, ae:Landroid/content/ActivityNotFoundException;
    const-string v66, "WirelessDisplayService"

    const-string v67, "ActivityNotFoundException, intent: notifyNormalConfigTool "

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1624
    .end local v7           #ae:Landroid/content/ActivityNotFoundException;
    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v66

    if-eqz v66, :cond_62

    .line 1625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v17

    .line 1626
    .local v17, dfgDongle:Lcom/htc/service/DongleInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->notSupportConcurrent:Z
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$6600(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v66

    if-eqz v66, :cond_5e

    .line 1627
    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    move/from16 v66, v0

    if-nez v66, :cond_0

    .line 1629
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 1630
    :catch_2
    move-exception v7

    .line 1631
    .restart local v7       #ae:Landroid/content/ActivityNotFoundException;
    const-string v66, "WirelessDisplayService"

    const-string v67, "ActivityNotFoundException, intent: notifyConfigerTool "

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1634
    .end local v7           #ae:Landroid/content/ActivityNotFoundException;
    :cond_5e
    if-eqz v17, :cond_0

    .line 1635
    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v66, v0

    const/16 v67, 0x4

    move/from16 v0, v66

    move/from16 v1, v67

    if-eq v0, v1, :cond_5f

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v66, v0

    const/16 v67, 0x1

    move/from16 v0, v66

    move/from16 v1, v67

    if-ne v0, v1, :cond_60

    .line 1636
    :cond_5f
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 1637
    .restart local v12       #bundle:Landroid/os/Bundle;
    const-string v66, "DONGLE_MAC"

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    move-object/from16 v67, v0

    move-object/from16 v0, v66

    move-object/from16 v1, v67

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    move-object/from16 v0, v42

    invoke-virtual {v0, v12}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1640
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 1641
    :catch_3
    move-exception v7

    .line 1642
    .restart local v7       #ae:Landroid/content/ActivityNotFoundException;
    const-string v66, "WirelessDisplayService"

    const-string v67, "ActivityNotFoundException, intent: notifyConfigToolToConfig"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1644
    .end local v7           #ae:Landroid/content/ActivityNotFoundException;
    .end local v12           #bundle:Landroid/os/Bundle;
    :cond_60
    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v66, v0

    const/16 v67, 0x2

    move/from16 v0, v66

    move/from16 v1, v67

    if-eq v0, v1, :cond_61

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v66, v0

    const/16 v67, 0x3

    move/from16 v0, v66

    move/from16 v1, v67

    if-ne v0, v1, :cond_0

    .line 1645
    :cond_61
    const/16 v66, 0xb

    const/16 v67, -0x1

    const/16 v68, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    move/from16 v2, v67

    move/from16 v3, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v34

    .line 1646
    .local v34, msgBindWfdService:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1647
    const/16 v66, 0x70

    const/16 v67, 0x0

    const/16 v68, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    move/from16 v2, v67

    move/from16 v3, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v40

    .line 1648
    .restart local v40       #msgUseWfdService:Landroid/os/Message;
    const-wide/16 v66, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-wide/from16 v2, v66

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1652
    .end local v17           #dfgDongle:Lcom/htc/service/DongleInfo;
    .end local v34           #msgBindWfdService:Landroid/os/Message;
    .end local v40           #msgUseWfdService:Landroid/os/Message;
    :cond_62
    const-string v66, "sys.wfd.autoTestFlag"

    const-string v67, ""

    invoke-static/range {v66 .. v67}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$6802(Ljava/lang/String;)Ljava/lang/String;

    .line 1653
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6800()Ljava/lang/String;

    move-result-object v66

    const-string v67, "reconnect"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v66

    if-eqz v66, :cond_63

    .line 1654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v66

    if-nez v66, :cond_0

    .line 1655
    const-string v66, "WirelessDisplayService"

    const-string v67, "wifi scan fail!"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1658
    :cond_63
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_8
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 1659
    :catch_4
    move-exception v7

    .line 1660
    .restart local v7       #ae:Landroid/content/ActivityNotFoundException;
    const-string v66, "WirelessDisplayService"

    const-string v67, "ActivityNotFoundException, intent: notifyConfigerTool "

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 748
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_6
        0x5 -> :sswitch_a
        0x6 -> :sswitch_8
        0x9 -> :sswitch_10
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_f
        0xf -> :sswitch_16
        0x10 -> :sswitch_9
        0x11 -> :sswitch_1
        0x13 -> :sswitch_d
        0x14 -> :sswitch_7
        0x15 -> :sswitch_12
        0x1f -> :sswitch_13
        0x29 -> :sswitch_15
        0x33 -> :sswitch_14
        0x3d -> :sswitch_11
        0x6f -> :sswitch_19
        0x70 -> :sswitch_17
        0x71 -> :sswitch_18
        0x72 -> :sswitch_5
        0x73 -> :sswitch_e
        0xde -> :sswitch_2
    .end sparse-switch

    .line 1513
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
