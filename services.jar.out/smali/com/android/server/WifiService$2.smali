.class Lcom/android/server/WifiService$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
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
    .line 768
    iput-object p1, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 772
    iget-object v6, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->isAirplaneModeOn()Z
    invoke-static {v6}, Lcom/android/server/WifiService;->access$1600(Lcom/android/server/WifiService;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->isAirplaneToggleable()Z
    invoke-static {v6}, Lcom/android/server/WifiService;->access$1700(Lcom/android/server/WifiService;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v0, v4

    .line 773
    .local v0, airplane:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 774
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0xd8

    if-ne v6, v7, :cond_0

    .line 775
    const-string v6, "WifiService"

    const-string v7, "\n[C+W] ACTION_AIRPLANE_MODE_CHANGED trigger CWDeRegister++\n"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v6, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v6}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateMachine;->tryTostartCWDeRegister()V

    .line 777
    const-string v6, "WifiService"

    const-string v7, "\n[C+W] ACTION_AIRPLANE_MODE_CHANGED trigger CWDeRegister--\n"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_0
    const-string v6, "WifiService"

    const-string v7, "Receive Intent.ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v6, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v6}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->isAirplaneModeOn()Z
    invoke-static {v7}, Lcom/android/server/WifiService;->access$1600(Lcom/android/server/WifiService;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 785
    iget-object v6, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v6}, Lcom/android/server/WifiService;->access$1900(Lcom/android/server/WifiService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 786
    iget-object v6, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v6}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v6}, Lcom/android/server/WifiService;->access$2000(Lcom/android/server/WifiService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 787
    iget-object v6, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->persistWifiState(Z)V
    invoke-static {v6, v4}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;Z)V

    .line 790
    :cond_1
    iget-object v6, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mEnableMhsFeature:Z
    invoke-static {v6}, Lcom/android/server/WifiService;->access$1000(Lcom/android/server/WifiService;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiApMhsPermission:Z
    invoke-static {v6}, Lcom/android/server/WifiService;->access$1100(Lcom/android/server/WifiService;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 791
    iget-object v6, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->getPersistedWifiApEnabled()Z
    invoke-static {v6}, Lcom/android/server/WifiService;->access$2200(Lcom/android/server/WifiService;)Z

    move-result v2

    .line 792
    .local v2, wifiApEnabled:Z
    iget-object v6, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->isAirplaneModeOn()Z
    invoke-static {v6}, Lcom/android/server/WifiService;->access$1600(Lcom/android/server/WifiService;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v6}, Lcom/android/server/WifiService;->access$1900(Lcom/android/server/WifiService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_5

    move v1, v4

    .line 793
    .local v1, wifiApAirplaneMode:Z
    :goto_1
    if-eqz v2, :cond_6

    if-nez v1, :cond_6

    move v3, v4

    .line 794
    .local v3, wifiApShouldBeEnabled:Z
    :goto_2
    if-eqz v3, :cond_7

    .line 795
    const-string v5, "WifiService"

    const-string v6, "enable hotspot : receive Intent.ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v5, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    #calls: Lcom/android/server/WifiService;->sendAccessPointMhsRequestMessage(ZLandroid/net/wifi/WifiConfiguration;I)V
    invoke-static {v5, v4, v8, v6}, Lcom/android/server/WifiService;->access$2300(Lcom/android/server/WifiService;ZLandroid/net/wifi/WifiConfiguration;I)V

    .line 804
    .end local v1           #wifiApAirplaneMode:Z
    .end local v2           #wifiApEnabled:Z
    .end local v3           #wifiApShouldBeEnabled:Z
    :cond_2
    :goto_3
    iget-object v4, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static {v4}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)V

    .line 807
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_EAP_AKA_flag:Z

    if-eqz v4, :cond_3

    .line 808
    iget-object v4, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->isAirplaneModeOn()Z
    invoke-static {v4}, Lcom/android/server/WifiService;->access$1600(Lcom/android/server/WifiService;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 809
    iget-object v4, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->notifyGetAirPlaneMode()V

    .line 811
    :cond_3
    return-void

    .end local v0           #airplane:Z
    :cond_4
    move v0, v5

    .line 772
    goto/16 :goto_0

    .restart local v0       #airplane:Z
    .restart local v2       #wifiApEnabled:Z
    :cond_5
    move v1, v5

    .line 792
    goto :goto_1

    .restart local v1       #wifiApAirplaneMode:Z
    :cond_6
    move v3, v5

    .line 793
    goto :goto_2

    .line 798
    .restart local v3       #wifiApShouldBeEnabled:Z
    :cond_7
    const-string v4, "WifiService"

    const-string v6, "disable hotspot : receive Intent.ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v4, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4, v8, v5}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 800
    iget-object v4, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    iget-object v4, v4, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    iget-object v4, v4, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    const/16 v6, -0x43

    const/4 v7, -0x1

    invoke-virtual {v4, v6, v7, v8}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    .line 801
    :cond_8
    iget-object v4, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mWifiApMhsPermission:Z
    invoke-static {v4, v5}, Lcom/android/server/WifiService;->access$1102(Lcom/android/server/WifiService;Z)Z

    goto :goto_3
.end method
