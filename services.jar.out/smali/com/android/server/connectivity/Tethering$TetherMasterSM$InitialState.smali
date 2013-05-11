.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;
.super Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitialState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .locals 0
    .parameter

    .prologue
    .line 3438
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 3442
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TetherMasterSM: enter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3445
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->turnOffWiMaxConnection()Z

    .line 3446
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->turnOffUpstreamMobileConnection()Z

    .line 3447
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const/4 v1, 0x0

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->changeIpForwardSetting(Z)Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Z)Z

    .line 3448
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->notifyTetheredOfNewUpstreamIface(Ljava/lang/String;)V

    .line 3450
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const/4 v1, -0x1

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5702(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I

    .line 3451
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 3455
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TetherMasterSM: exit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3456
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 11
    .parameter "message"

    .prologue
    const/4 v9, 0x3

    .line 3466
    const-string v6, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TetherMasterSM: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " processMessage what="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3468
    const/4 v4, 0x1

    .line 3469
    .local v4, retValue:Z
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 3508
    const/4 v4, 0x0

    .line 3511
    :cond_0
    :goto_0
    return v4

    .line 3471
    :pswitch_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 3472
    .local v5, who:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    const-string v6, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Tether Mode requested by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3473
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3474
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetherModeAliveState:Lcom/android/internal/util/State;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v7

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$9000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    .line 3476
    sget-boolean v6, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v6, :cond_0

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x94

    if-ne v6, v7, :cond_0

    .line 3478
    const/4 v2, 0x0

    .line 3480
    .local v2, info:Landroid/net/NetworkInfo;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$5900(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3484
    :goto_1
    if-eqz v2, :cond_0

    .line 3485
    const-string v6, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Check tethering request for :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getInterface()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3486
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-static {v6}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3487
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v7, v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    #calls: Lcom/android/server/connectivity/Tethering;->htcPermittedTetherLanIf(Ljava/lang/String;)I
    invoke-static {v6, v7}, Lcom/android/server/connectivity/Tethering;->access$9100(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)I

    move-result v3

    .line 3488
    .local v3, lanIf:I
    if-ltz v3, :cond_0

    if-ge v3, v9, :cond_0

    .line 3489
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPermittedTetherLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$1900(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 3490
    :try_start_1
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$2000(Lcom/android/server/connectivity/Tethering;)[I

    move-result-object v6

    const/4 v8, 0x3

    aput v8, v6, v3

    .line 3491
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3492
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/Integer;

    add-int/lit8 v10, v3, 0x10

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/connectivity/Tethering;->htcRequestPermittedTether(Ljava/lang/Boolean;ZLjava/lang/Object;)I

    goto/16 :goto_0

    .line 3481
    .end local v3           #lanIf:I
    :catch_0
    move-exception v0

    .line 3482
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error getting active network for request :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3491
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #lanIf:I
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 3500
    .end local v2           #info:Landroid/net/NetworkInfo;
    .end local v3           #lanIf:I
    .end local v5           #who:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :pswitch_1
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 3501
    .restart local v5       #who:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    const-string v6, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Tether Mode unrequested by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3502
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 3503
    .local v1, index:I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    .line 3504
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3469
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
