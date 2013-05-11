.class Lcom/htc/server/WirelessDisplayService$WifiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method private constructor <init>(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter

    .prologue
    .line 1923
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/WirelessDisplayService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1923
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayService$WifiReceiver;-><init>(Lcom/htc/server/WirelessDisplayService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x1

    const/16 v9, 0xb

    const/4 v8, 0x0

    .line 1926
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1927
    .local v0, action:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 1928
    .local v1, curMirrState:I
    const-string v5, "WirelessDisplayService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiReceiver: action:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "state"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1930
    const-string v5, "wifi_state"

    invoke-virtual {p2, v5, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1931
    .local v2, curWifiState:I
    const-string v5, "previous_wifi_state"

    invoke-virtual {p2, v5, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1933
    .local v3, preWifiState:I
    if-nez v3, :cond_0

    if-ne v2, v10, :cond_0

    .line 1934
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1935
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1936
    const-string v5, "WirelessDisplayService"

    const-string v6, "WIFI Trun OFF"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1938
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-virtual {v5}, Lcom/htc/server/WirelessDisplayService;->stopWivuDiscovery()V

    .line 1942
    :cond_0
    if-ne v2, v10, :cond_1

    .line 1943
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #calls: Lcom/htc/server/WirelessDisplayService;->updateNotification()V
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$3100(Lcom/htc/server/WirelessDisplayService;)V

    .line 1992
    .end local v2           #curWifiState:I
    .end local v3           #preWifiState:I
    :cond_1
    :goto_0
    return-void

    .line 1944
    :cond_2
    const-string v5, "android.net.wifi.WIFIDISPLAY_AP_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1945
    const-string v5, "wifi_state"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1947
    .local v4, state:I
    const-string v5, "WirelessDisplayService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wifi AP state changed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", is DFS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$7000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    if-ne v4, v9, :cond_5

    .line 1951
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #calls: Lcom/htc/server/WirelessDisplayService;->cancelTurnOffConcurrentHotspot()V
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$7100(Lcom/htc/server/WirelessDisplayService;)V

    .line 1952
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$7200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1953
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$7300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1954
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mTurnOffHotspotWakeLock:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$2300(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1955
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mTurnOffHotspotWakeLock:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$2300(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1956
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    iget-object v5, v5, Lcom/htc/server/WirelessDisplayService;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1958
    :cond_3
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1959
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSoftapInterface:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/server/WirelessDisplayService;->access$7400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1960
    const-string v5, "WirelessDisplayService"

    const-string v6, "WIFI AP Trun OFF"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-virtual {v5}, Lcom/htc/server/WirelessDisplayService;->stopWivuDiscovery()V

    .line 1964
    :cond_4
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$7000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1965
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 1966
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$7000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 1969
    :cond_5
    const/16 v5, 0xd

    if-ne v4, v5, :cond_1

    .line 1970
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$5700(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$5700(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1971
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v5

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v6

    const/16 v7, 0xf

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1974
    .end local v4           #state:I
    :cond_6
    const-string v5, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1975
    const-string v5, "wifi_state"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1976
    .restart local v4       #state:I
    if-ne v4, v9, :cond_1

    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->notSupportConcurrent:Z
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$6600(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1977
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$7200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1978
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #calls: Lcom/htc/server/WirelessDisplayService;->cancelTurnOffConcurrentHotspot()V
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$7100(Lcom/htc/server/WirelessDisplayService;)V

    .line 1979
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$7300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1980
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mTurnOffHotspotWakeLock:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$2300(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1981
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mTurnOffHotspotWakeLock:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$2300(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1982
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    iget-object v5, v5, Lcom/htc/server/WirelessDisplayService;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1984
    :cond_7
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1985
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSoftapInterface:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/server/WirelessDisplayService;->access$7400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1986
    const-string v5, "WirelessDisplayService"

    const-string v6, "WIFI AP Trun OFF"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$WifiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-virtual {v5}, Lcom/htc/server/WirelessDisplayService;->stopWivuDiscovery()V

    goto/16 :goto_0
.end method
