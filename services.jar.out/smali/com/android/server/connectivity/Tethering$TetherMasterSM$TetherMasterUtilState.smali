.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
.super Lcom/android/internal/util/State;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherMasterUtilState"
.end annotation


# static fields
.field protected static final TRY_TO_SETUP_MOBILE_CONNECTION:Z = true

.field protected static final WAIT_FOR_NETWORK_TO_SETTLE:Z


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .locals 0
    .parameter

    .prologue
    .line 2692
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method protected activeAllUpstreamTypes()I
    .locals 14

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x4

    .line 3055
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOnWiMaxConnection()Z

    .line 3058
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->access$2600(Lcom/android/server/connectivity/Tethering;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOnUpstreamMobileConnection(I)I

    move-result v6

    .line 3061
    .local v6, mobileRequest:I
    const/4 v4, 0x0

    .line 3062
    .local v4, info:Landroid/net/NetworkInfo;
    if-nez v6, :cond_4

    .line 3065
    :try_start_0
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->access$5900(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;

    move-result-object v12

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->access$2600(Lcom/android/server/connectivity/Tethering;)I

    move-result v9

    if-ne v9, v11, :cond_2

    move v9, v11

    :goto_0
    invoke-interface {v12, v9}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 3088
    :cond_0
    :goto_1
    const/4 v7, 0x1

    .line 3089
    .local v7, startStatus:I
    const/4 v8, -0x1

    .line 3090
    .local v8, upType:I
    if-eqz v4, :cond_6

    .line 3091
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    .line 3092
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->access$7500(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 3093
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->access$7500(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 3094
    .local v5, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->access$7500(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    if-ge v2, v9, :cond_6

    .line 3095
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 3096
    const/4 v7, 0x0

    .line 3094
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2           #i:I
    .end local v5           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v7           #startStatus:I
    .end local v8           #upType:I
    :cond_2
    move v9, v10

    .line 3065
    goto :goto_0

    .line 3068
    :catch_0
    move-exception v1

    .line 3069
    .local v1, ex:Ljava/lang/Exception;
    const-string v12, "Tethering"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "get mobile DUN="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->access$2600(Lcom/android/server/connectivity/Tethering;)I

    move-result v9

    if-ne v9, v11, :cond_3

    const-string v9, "true"

    :goto_3
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, " active info failed:"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v9, "false"

    goto :goto_3

    .line 3075
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_4
    :try_start_1
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->access$5900(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 3079
    :goto_4
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->access$2600(Lcom/android/server/connectivity/Tethering;)I

    move-result v9

    if-ne v9, v11, :cond_0

    .line 3083
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 3076
    :catch_1
    move-exception v1

    .line 3077
    .restart local v1       #ex:Ljava/lang/Exception;
    const-string v9, "Tethering"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "get if active info failed:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3101
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v7       #startStatus:I
    .restart local v8       #upType:I
    :cond_5
    const/4 v7, 0x0

    .line 3105
    :cond_6
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2400()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 3106
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$5000()Ljava/lang/String;

    move-result-object v12

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "check active if "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    :goto_5
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, ", upIf="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v7, :cond_a

    const/4 v9, 0x1

    :goto_6
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", DUN="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->access$2600(Lcom/android/server/connectivity/Tethering;)I

    move-result v9

    if-ne v9, v11, :cond_b

    const-string v9, "true"

    :goto_7
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mobile="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3113
    :cond_7
    if-nez v7, :cond_8

    if-eqz v4, :cond_8

    .line 3114
    const/4 v7, 0x1

    .line 3116
    const/4 v3, 0x0

    .line 3118
    .local v3, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_2
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->access$4300(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->htcGetInterfaceName(Landroid/net/NetworkInfo;)Ljava/lang/String;
    invoke-static {v10, v4}, Lcom/android/server/connectivity/Tethering;->access$8100(Lcom/android/server/connectivity/Tethering;Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    .line 3123
    :goto_8
    if-eqz v3, :cond_8

    const-string v9, "up"

    invoke-virtual {v3, v9}, Landroid/net/InterfaceConfiguration;->hasFlag(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 3124
    const/4 v7, 0x0

    .line 3127
    .end local v3           #ifcg:Landroid/net/InterfaceConfiguration;
    :cond_8
    return v7

    .line 3106
    :cond_9
    const/4 v9, -0x1

    goto :goto_5

    :cond_a
    move v9, v10

    goto :goto_6

    :cond_b
    const-string v9, "false"

    goto :goto_7

    .line 3119
    .restart local v3       #ifcg:Landroid/net/InterfaceConfiguration;
    :catch_2
    move-exception v0

    .line 3120
    .local v0, e:Ljava/lang/Exception;
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error getting iface config :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method protected chooseUpstreamType(Z)V
    .locals 20
    .parameter "tryCell"

    .prologue
    .line 2894
    const/4 v14, -0x1

    .line 2895
    .local v14, upType:I
    const/4 v7, 0x0

    .line 2897
    .local v7, iface:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 2899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static/range {v16 .. v16}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v17

    monitor-enter v17

    .line 2901
    :try_start_0
    const-string v16, "Tethering"

    const-string v18, "chooseUpstreamType has upstream iface types:"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;
    invoke-static/range {v16 .. v16}, Lcom/android/server/connectivity/Tethering;->access$7500(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 2903
    .local v10, netType:Ljava/lang/Integer;
    const-string v16, "Tethering"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2917
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v10           #netType:Ljava/lang/Integer;
    :catchall_0
    move-exception v16

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v16

    .line 2907
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;
    invoke-static/range {v16 .. v16}, Lcom/android/server/connectivity/Tethering;->access$7500(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2908
    .restart local v10       #netType:Ljava/lang/Integer;
    const/4 v8, 0x0

    .line 2910
    .local v8, info:Landroid/net/NetworkInfo;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static/range {v16 .. v16}, Lcom/android/server/connectivity/Tethering;->access$5900(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;

    move-result-object v16

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v8

    .line 2912
    :goto_1
    if-eqz v8, :cond_1

    :try_start_3
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 2913
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 2917
    .end local v8           #info:Landroid/net/NetworkInfo;
    .end local v10           #netType:Ljava/lang/Integer;
    :cond_2
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2920
    const-string v16, "Tethering"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "chooseUpstreamType("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "), preferredApn ="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/connectivity/Tethering;->access$2600(Lcom/android/server/connectivity/Tethering;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", got type="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2925
    const/16 v16, 0x4

    move/from16 v0, v16

    if-eq v14, v0, :cond_3

    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v14, v0, :cond_7

    .line 2927
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOnUpstreamMobileConnection(I)I

    .line 2938
    :cond_4
    :goto_2
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_9

    .line 2939
    const/4 v13, 0x1

    .line 2947
    .local v13, tryAgainLater:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/connectivity/Tethering;->access$2600(Lcom/android/server/connectivity/Tethering;)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOnUpstreamMobileConnection(I)I

    move-result v11

    .line 2948
    .local v11, retValue:I
    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v11, v0, :cond_8

    if-eqz v11, :cond_8

    const/4 v12, 0x1

    .line 2949
    .local v12, success:Z
    :goto_3
    const/16 v16, 0x1

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    if-eqz v12, :cond_5

    .line 2952
    const/4 v13, 0x0

    .line 2954
    :cond_5
    if-eqz v13, :cond_6

    .line 2955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v16, v0

    const/16 v17, 0x5

    const-wide/16 v18, 0x2710

    invoke-virtual/range {v16 .. v19}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->sendMessageDelayed(IJ)V

    .line 2986
    .end local v11           #retValue:I
    .end local v12           #success:Z
    .end local v13           #tryAgainLater:Z
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->notifyTetheredOfNewUpstreamIface(Ljava/lang/String;)V

    .line 2987
    return-void

    .line 2928
    :cond_7
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v14, v0, :cond_4

    .line 2935
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOffUpstreamMobileConnection()Z

    goto :goto_2

    .line 2948
    .restart local v11       #retValue:I
    .restart local v13       #tryAgainLater:Z
    :cond_8
    const/4 v12, 0x0

    goto :goto_3

    .line 2958
    .end local v11           #retValue:I
    .end local v13           #tryAgainLater:Z
    :cond_9
    const/4 v9, 0x0

    .line 2960
    .local v9, linkProperties:Landroid/net/LinkProperties;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static/range {v16 .. v16}, Lcom/android/server/connectivity/Tethering;->access$5900(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v9

    .line 2962
    :goto_5
    if-eqz v9, :cond_6

    .line 2963
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    .line 2964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/server/connectivity/Tethering;->access$6600(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v3

    .line 2965
    .local v3, dnsServers:[Ljava/lang/String;
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v4

    .line 2966
    .local v4, dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    if-eqz v4, :cond_c

    .line 2968
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v16

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(I)V

    .line 2970
    .local v15, v4Dnses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 2971
    .local v2, dnsAddress:Ljava/net/InetAddress;
    instance-of v0, v2, Ljava/net/Inet4Address;

    move/from16 v16, v0

    if-eqz v16, :cond_a

    .line 2972
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2975
    .end local v2           #dnsAddress:Ljava/net/InetAddress;
    :cond_b
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_c

    .line 2976
    invoke-static {v15}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v3

    .line 2980
    .end local v15           #v4Dnses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :cond_c
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static/range {v16 .. v16}, Lcom/android/server/connectivity/Tethering;->access$4300(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/os/INetworkManagementService;->setDnsForwarders([Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_4

    .line 2981
    :catch_0
    move-exception v5

    .line 2982
    .local v5, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/State;
    invoke-static/range {v17 .. v17}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v17

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v16 .. v17}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_4

    .line 2961
    .end local v3           #dnsServers:[Ljava/lang/String;
    .end local v4           #dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v5           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v16

    goto :goto_5

    .line 2911
    .end local v9           #linkProperties:Landroid/net/LinkProperties;
    .restart local v8       #info:Landroid/net/NetworkInfo;
    .restart local v10       #netType:Ljava/lang/Integer;
    :catch_2
    move-exception v16

    goto/16 :goto_1
.end method

.method protected dynamicChangeUpstreamIface()V
    .locals 8

    .prologue
    .line 3263
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->getActivedTetherUpstream()Landroid/net/NetworkInfo;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$8500(Lcom/android/server/connectivity/Tethering;)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 3264
    .local v2, info:Landroid/net/NetworkInfo;
    if-nez v2, :cond_0

    .line 3265
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->activeAllUpstreamTypes()I

    move-result v5

    if-nez v5, :cond_0

    .line 3266
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->getActivedTetherUpstream()Landroid/net/NetworkInfo;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$8500(Lcom/android/server/connectivity/Tethering;)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 3270
    :cond_0
    const/4 v3, 0x0

    .line 3272
    .local v3, mNewUpstreamIfaceName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 3274
    .local v4, mNewUpstreamIfaceNameV6:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 3276
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    .line 3277
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOffUpstreamMobileConnection()Z

    .line 3280
    :cond_1
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->htcGetInterfaceName(Landroid/net/NetworkInfo;)Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/android/server/connectivity/Tethering;->access$8100(Lcom/android/server/connectivity/Tethering;Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v3

    .line 3283
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$4600()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3284
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->htcGetInterfaceNameV6(Landroid/net/NetworkInfo;)Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/android/server/connectivity/Tethering;->access$8600(Lcom/android/server/connectivity/Tethering;Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v4

    .line 3289
    :cond_2
    const/4 v1, 0x0

    .line 3290
    .local v1, ifChanged:Z
    const/4 v0, 0x0

    .line 3292
    .local v0, dnsUpdated:Z
    if-nez v3, :cond_7

    .line 3293
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    .line 3315
    :goto_0
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$4600()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3316
    if-nez v4, :cond_b

    .line 3317
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceNameV6:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a

    .line 3341
    :cond_3
    :goto_1
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update if="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3344
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$4600()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3345
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update if="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceNameV6:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (IPV6)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3349
    :cond_4
    if-eqz v1, :cond_f

    .line 3351
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$4600()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 3352
    invoke-virtual {p0, v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->notifyTetheredOfNewUpstreamIface(Ljava/lang/String;Ljava/lang/String;)V

    .line 3363
    :cond_5
    :goto_2
    return-void

    .line 3297
    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    .line 3301
    :cond_7
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8

    .line 3302
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 3305
    :cond_8
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 3307
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 3310
    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 3321
    :cond_a
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 3325
    :cond_b
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceNameV6:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_c

    .line 3326
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 3329
    :cond_c
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceNameV6:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 3331
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 3334
    :cond_d
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 3355
    :cond_e
    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->notifyTetheredOfNewUpstreamIface(Ljava/lang/String;)V

    goto :goto_2

    .line 3360
    :cond_f
    if-eqz v0, :cond_5

    .line 3361
    invoke-virtual {p0, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->updateDnsServer(Landroid/net/NetworkInfo;)V

    goto :goto_2
.end method

.method protected enableString(I)Ljava/lang/String;
    .locals 3
    .parameter "apnType"

    .prologue
    .line 2706
    packed-switch p1, :pswitch_data_0

    .line 2714
    :pswitch_0
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2400()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$5000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableString return null, apnType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2708
    :pswitch_1
    const-string v0, "enableDUNAlways"

    goto :goto_0

    .line 2711
    :pswitch_2
    const-string v0, "enableHIPRI"

    goto :goto_0

    .line 2706
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getDnsServers(Landroid/net/NetworkInfo;)[Ljava/lang/String;
    .locals 12
    .parameter "info"

    .prologue
    .line 3130
    const/4 v3, 0x0

    .line 3131
    .local v3, dnsServers:[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 3133
    :try_start_0
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->access$5900(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    invoke-interface {v8, v9}, Landroid/net/IConnectivityManager;->getNetworkNameServers(I)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3143
    :cond_0
    :goto_0
    if-eqz v3, :cond_5

    .line 3144
    const/4 v5, 0x0

    .line 3145
    .local v5, i:I
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_2

    aget-object v2, v0, v6

    .line 3146
    .local v2, dns:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v8, "0.0.0.0"

    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 3147
    add-int/lit8 v5, v5, 0x1

    .line 3145
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3134
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #dns:Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #i$:I
    .end local v7           #len$:I
    :catch_0
    move-exception v4

    .line 3135
    .local v4, e4:Ljava/lang/Exception;
    const-string v8, "Tethering"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error getting DNS servers :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3151
    .end local v4           #e4:Ljava/lang/Exception;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v5       #i:I
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    :cond_2
    const/4 v1, 0x0

    .line 3152
    .local v1, avaliableDns:[Ljava/lang/String;
    if-lez v5, :cond_4

    .line 3153
    new-array v1, v5, [Ljava/lang/String;

    .line 3154
    const/4 v5, 0x0

    .line 3155
    move-object v0, v3

    array-length v7, v0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_4

    aget-object v2, v0, v6

    .line 3156
    .restart local v2       #dns:Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v8, "0.0.0.0"

    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 3157
    aput-object v2, v1, v5

    .line 3158
    add-int/lit8 v5, v5, 0x1

    .line 3155
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3162
    .end local v2           #dns:Ljava/lang/String;
    :cond_4
    move-object v3, v1

    .line 3164
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #avaliableDns:[Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #i$:I
    .end local v7           #len$:I
    :cond_5
    if-nez v3, :cond_6

    .line 3169
    const-string v8, "Tethering"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Use default DNS servers : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$6600(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/server/connectivity/Tethering;->dumpStringArray([Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/android/server/connectivity/Tethering;->access$8200(Lcom/android/server/connectivity/Tethering;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->access$6600(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v3

    .line 3173
    :cond_6
    return-object v3
.end method

.method protected notifyTetheredOfNewUpstreamIface(Ljava/lang/String;)V
    .locals 1
    .parameter "ifaceName"

    .prologue
    .line 2991
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->notifyTetheredOfNewUpstreamIface(Ljava/lang/String;Ljava/lang/String;)V

    .line 2992
    return-void
.end method

.method protected notifyTetheredOfNewUpstreamIface(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "ifaceName"
    .parameter "ifaceNameV6"

    .prologue
    .line 2995
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$4600()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z
    invoke-static {v4, p1}, Lcom/android/server/connectivity/Tethering;->access$4700(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2996
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifying tethered with iface ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ifaceV6 ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    :goto_0
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v1, v4

    const/4 v4, 0x1

    aput-object p2, v1, v4

    .line 3003
    .local v1, interfaces:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceNameV6:Ljava/lang/String;
    invoke-static {v4, p2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7702(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;

    .line 3005
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v4, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7802(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;

    .line 3006
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, o:Ljava/lang/Object;
    move-object v3, v2

    .line 3007
    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 3015
    .local v3, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    const/16 v4, 0xc

    invoke-virtual {v3, v4, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(ILjava/lang/Object;)V

    goto :goto_1

    .line 2999
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #interfaces:[Ljava/lang/String;
    .end local v2           #o:Ljava/lang/Object;
    .end local v3           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_0
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifying tethered with iface ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3019
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #interfaces:[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 2699
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2400()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2700
    const/4 v0, 0x1

    .line 2703
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected turnOffMasterTetherSettings()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2878
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$4300(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->stopTethering()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2884
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$4300(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2889
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    .line 2890
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 2879
    :catch_0
    move-exception v0

    .line 2880
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStopTetheringErrorState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v3

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 2885
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2886
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v3

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method protected turnOffUpstreamMobileConnection()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 2823
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2400()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2824
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$5000()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "turnOffMobile DUN="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$2600(Lcom/android/server/connectivity/Tethering;)I

    move-result v1

    const/4 v5, 0x4

    if-ne v1, v5, :cond_2

    const-string v1, "true"

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " prev="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6004(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    .line 2829
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v1

    if-eq v1, v6, :cond_1

    .line 2839
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mPrviousDunRequestResponse:Ljava/lang/Integer;
    invoke-static {v1, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5802(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 2840
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$5900(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "enableDUN"

    invoke-interface {v1, v3, v4}, Landroid/net/IConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2846
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v1, v6}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5702(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I

    .line 2848
    :cond_1
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 2824
    :cond_2
    const-string v1, "false"

    goto :goto_0

    .line 2843
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, v2

    .line 2844
    goto :goto_1
.end method

.method protected turnOffWiMaxConnection()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3037
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mWiMaxConnectionRequested:Z
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3038
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "wimax"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/net/wimax/WimaxController;

    .line 3039
    .local v1, mWimaxController:Lcom/htc/net/wimax/WimaxController;
    if-eqz v1, :cond_0

    .line 3041
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Lcom/htc/net/wimax/WimaxController;->setWimaxDunMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3046
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mWiMaxConnectionRequested:Z
    invoke-static {v2, v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8002(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Z)Z

    .line 3048
    .end local v1           #mWimaxController:Lcom/htc/net/wimax/WimaxController;
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 3042
    .restart local v1       #mWimaxController:Lcom/htc/net/wimax/WimaxController;
    :catch_0
    move-exception v0

    .line 3043
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WiMaxDUN=false fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected turnOnMasterTetherSettings()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2852
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$4300(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2858
    :try_start_1
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$4300(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$6300(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2869
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$4300(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$6600(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->setDnsForwarders([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move v2, v3

    .line 2874
    :goto_1
    return v2

    .line 2853
    :catch_0
    move-exception v0

    .line 2854
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 2859
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2861
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_3
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$4300(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/INetworkManagementService;->stopTethering()V

    .line 2862
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$4300(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$6300(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 2863
    :catch_2
    move-exception v1

    .line 2864
    .local v1, ee:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStartTetheringErrorState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 2870
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ee:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 2871
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto :goto_1
.end method

.method protected turnOnTethering()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3227
    const-string v1, "Tethering"

    const-string v2, "turnOnTethering"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3228
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #setter for: Lcom/android/server/connectivity/Tethering;->pDhcpRange:[Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/server/connectivity/Tethering;->access$8402(Lcom/android/server/connectivity/Tethering;[Ljava/lang/String;)[Ljava/lang/String;

    .line 3229
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->updateDhcpRange()V

    .line 3233
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->getActivedTetherUpstream()Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$8500(Lcom/android/server/connectivity/Tethering;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3234
    .local v0, info:Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    .line 3241
    const-string v1, "Tethering"

    const-string v2, "No active network"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3243
    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->updateDnsServer(Landroid/net/NetworkInfo;)V

    .line 3261
    :goto_0
    return-void

    .line 3247
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 3248
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOffUpstreamMobileConnection()Z

    .line 3253
    :cond_1
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$4600()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3254
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->htcGetInterfaceName(Landroid/net/NetworkInfo;)Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/server/connectivity/Tethering;->access$8100(Lcom/android/server/connectivity/Tethering;Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->htcGetInterfaceNameV6(Landroid/net/NetworkInfo;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/server/connectivity/Tethering;->access$8600(Lcom/android/server/connectivity/Tethering;Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->notifyTetheredOfNewUpstreamIface(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3257
    :cond_2
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->htcGetInterfaceName(Landroid/net/NetworkInfo;)Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/server/connectivity/Tethering;->access$8100(Lcom/android/server/connectivity/Tethering;Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->notifyTetheredOfNewUpstreamIface(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected turnOnUpstreamMobileConnection(I)I
    .locals 10
    .parameter "apnType"

    .prologue
    const/4 v9, 0x4

    .line 2726
    const/4 v4, 0x1

    .line 2734
    .local v4, retValue:Z
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v5

    if-eq p1, v5, :cond_0

    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOffUpstreamMobileConnection()Z

    .line 2735
    :cond_0
    const/4 v3, 0x3

    .line 2736
    .local v3, result:I
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->enableString(I)Ljava/lang/String;

    move-result-object v1

    .line 2743
    .local v1, enableString:Ljava/lang/String;
    if-nez v1, :cond_1

    move v5, v3

    .line 2818
    :goto_0
    return v5

    .line 2754
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$2600(Lcom/android/server/connectivity/Tethering;)I

    move-result v5

    if-ne v5, v9, :cond_7

    .line 2755
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mPrviousDunRequestResponse:Ljava/lang/Integer;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 2756
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mPrviousDunRequestResponse:Ljava/lang/Integer;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0

    .line 2758
    :cond_2
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$5900(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "enableDUN"

    new-instance v8, Landroid/os/Binder;

    invoke-direct {v8}, Landroid/os/Binder;-><init>()V

    invoke-interface {v5, v6, v7, v8}, Landroid/net/IConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2781
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2400()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2782
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$5000()Ljava/lang/String;

    move-result-object v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "turnOnMobile DUN="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$2600(Lcom/android/server/connectivity/Tethering;)I

    move-result v5

    if-ne v5, v9, :cond_9

    const-string v5, "true"

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ret="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    :cond_4
    packed-switch v3, :pswitch_data_0

    .line 2804
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$2600(Lcom/android/server/connectivity/Tethering;)I

    move-result v5

    if-ne v5, v9, :cond_5

    .line 2805
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6008(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    .line 2808
    :cond_5
    const/4 v4, 0x0

    :cond_6
    :goto_3
    move v5, v3

    .line 2818
    goto :goto_0

    .line 2761
    :cond_7
    :try_start_1
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const/4 v6, 0x0

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mPrviousDunRequestResponse:Ljava/lang/Integer;
    invoke-static {v5, v6}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5802(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 2762
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$5900(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/net/IConnectivityManager;->getMobileDataEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2763
    sget-object v5, Lcom/android/server/connectivity/Tethering$2;->$SwitchMap$android$net$NetworkInfo$State:[I

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$5900(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v6

    aget v5, v5, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    packed-switch v5, :pswitch_data_1

    goto :goto_1

    .line 2765
    :pswitch_0
    const/4 v3, 0x1

    .line 2766
    goto :goto_1

    .line 2769
    :pswitch_1
    const/4 v3, 0x0

    goto :goto_1

    .line 2775
    :catch_0
    move-exception v0

    .line 2777
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "turnOnMobile DUN="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$2600(Lcom/android/server/connectivity/Tethering;)I

    move-result v5

    if-ne v5, v9, :cond_8

    const-string v5, "true"

    :goto_4
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " fail:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    const-string v5, "false"

    goto :goto_4

    .line 2782
    .end local v0           #e:Ljava/lang/Exception;
    :cond_9
    const-string v5, "false"

    goto/16 :goto_2

    .line 2790
    :pswitch_2
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$2600(Lcom/android/server/connectivity/Tethering;)I

    move-result v5

    if-ne v5, v9, :cond_6

    .line 2791
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v3}, Ljava/lang/Integer;-><init>(I)V

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mPrviousDunRequestResponse:Ljava/lang/Integer;
    invoke-static {v5, v6}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5802(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 2793
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v5, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5702(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I

    .line 2794
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-virtual {v5, v9}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2795
    .local v2, m:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6004(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v5

    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 2796
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const-wide/32 v6, 0x9c40

    invoke-virtual {v5, v2, v6, v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_3

    .line 2785
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 2763
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected turnOnWiMaxConnection()Z
    .locals 5

    .prologue
    .line 3025
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "wimax"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/net/wimax/WimaxController;

    .line 3026
    .local v1, mWimaxController:Lcom/htc/net/wimax/WimaxController;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mWiMaxConnectionRequested:Z
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3028
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Lcom/htc/net/wimax/WimaxController;->setWimaxDunMode(Z)V

    .line 3029
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const/4 v3, 0x1

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mWiMaxConnectionRequested:Z
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8002(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3034
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mWiMaxConnectionRequested:Z
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Z

    move-result v2

    return v2

    .line 3030
    :catch_0
    move-exception v0

    .line 3031
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WiMaxDUN=true fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected declared-synchronized updateDhcpRange()V
    .locals 22

    .prologue
    .line 3369
    monitor-enter p0

    :try_start_0
    const-string v18, "wifi"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    .line 3370
    .local v17, wifib:Landroid/os/IBinder;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v15

    .line 3372
    .local v15, wifiService:Landroid/net/wifi/IWifiManager;
    const-string v18, "Tethering"

    const-string v19, "updateDhcpRange +"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3374
    const/16 v16, 0x0

    .line 3375
    .local v16, wifiTethered:Z
    const/4 v14, 0x0

    .line 3376
    .local v14, usbTethered:Z
    const/4 v3, 0x0

    .line 3378
    .local v3, bluetoothTethered:Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lcom/android/server/connectivity/Tethering;->access$8700(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v19

    monitor-enter v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3379
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lcom/android/server/connectivity/Tethering;->access$8700(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 3380
    .local v9, ifaces:Ljava/util/Set;
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 3381
    .local v8, iface:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lcom/android/server/connectivity/Tethering;->access$8700(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 3382
    .local v13, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v13, :cond_0

    .line 3383
    invoke-virtual {v13}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 3384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 3385
    const/16 v16, 0x1

    goto :goto_0

    .line 3386
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    #calls: Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$4700(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 3387
    const/4 v14, 0x1

    goto :goto_0

    .line 3388
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v18, v0

    check-cast v8, Ljava/lang/String;

    .end local v8           #iface:Ljava/lang/Object;
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 3389
    const/4 v3, 0x1

    goto :goto_0

    .line 3394
    .end local v13           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_3
    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3396
    :try_start_3
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 3397
    .local v12, myDhcpRange:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 3398
    invoke-interface {v15}, Landroid/net/wifi/IWifiManager;->getTetheringDhcpRange()[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v12, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3399
    const-string v18, "Tethering"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "myDhcpRange.length = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3400
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v18

    rem-int/lit8 v18, v18, 0x2

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 3401
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_4

    .line 3402
    const-string v19, "Tethering"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "            ["

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "]= "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 3401
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3394
    .end local v6           #i:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #ifaces:Ljava/util/Set;
    .end local v12           #myDhcpRange:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v18

    :try_start_4
    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 3430
    :catch_0
    move-exception v5

    .line 3431
    .local v5, e1:Ljava/lang/Exception;
    :try_start_6
    const-string v18, "Tethering"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error updateDhcpRange :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3434
    .end local v5           #e1:Ljava/lang/Exception;
    :goto_2
    monitor-exit p0

    return-void

    .line 3407
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v9       #ifaces:Ljava/util/Set;
    .restart local v12       #myDhcpRange:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/server/connectivity/Tethering;->access$6300(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v12, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3409
    invoke-virtual {v12}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->pDhcpRange:[Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/server/connectivity/Tethering;->access$8400(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 3410
    const-string v18, "update dhcp range from"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 3411
    .local v11, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->pDhcpRange:[Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/server/connectivity/Tethering;->access$8400(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_5

    .line 3412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->pDhcpRange:[Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/server/connectivity/Tethering;->access$8400(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/String;
    array-length v10, v2

    .local v10, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_3
    if-ge v7, v10, :cond_6

    aget-object v4, v2, v7

    .local v4, d:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 3414
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #d:Ljava/lang/String;
    .end local v10           #len$:I
    .local v7, i$:Ljava/util/Iterator;
    :cond_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " null"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3416
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_6
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3417
    if-eqz v12, :cond_7

    .line 3418
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .restart local v4       #d:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 3420
    .end local v4           #d:Ljava/lang/String;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_7
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " null"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3422
    :cond_8
    const-string v18, "Tethering"

    const-string v19, "%s"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v11, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v19, v0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    #setter for: Lcom/android/server/connectivity/Tethering;->pDhcpRange:[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$8402(Lcom/android/server/connectivity/Tethering;[Ljava/lang/String;)[Ljava/lang/String;

    .line 3426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static/range {v18 .. v18}, Lcom/android/server/connectivity/Tethering;->access$4300(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/os/INetworkManagementService;->stopTethering()V

    .line 3427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static/range {v18 .. v18}, Lcom/android/server/connectivity/Tethering;->access$4300(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->pDhcpRange:[Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/server/connectivity/Tethering;->access$8400(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V

    .line 3429
    .end local v11           #msg:Ljava/lang/String;
    :cond_9
    const-string v18, "Tethering"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateDhcpRange :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2

    .line 3369
    .end local v3           #bluetoothTethered:Z
    .end local v9           #ifaces:Ljava/util/Set;
    .end local v12           #myDhcpRange:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14           #usbTethered:Z
    .end local v15           #wifiService:Landroid/net/wifi/IWifiManager;
    .end local v16           #wifiTethered:Z
    .end local v17           #wifib:Landroid/os/IBinder;
    :catchall_1
    move-exception v18

    monitor-exit p0

    throw v18
.end method

.method protected updateDnsServer(Landroid/net/NetworkInfo;)V
    .locals 8
    .parameter "info"

    .prologue
    const/4 v5, 0x1

    .line 3177
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->getDnsServers(Landroid/net/NetworkInfo;)[Ljava/lang/String;

    move-result-object v0

    .line 3182
    .local v0, dnsServers:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2400()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3183
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$5000()Ljava/lang/String;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update if "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " DNS "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->dumpStringArray([Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/server/connectivity/Tethering;->access$8200(Lcom/android/server/connectivity/Tethering;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3187
    :cond_0
    if-nez v0, :cond_2

    move v4, v5

    :goto_1
    new-array v3, v4, [Ljava/lang/Object;

    .line 3188
    .local v3, mParams:[Ljava/lang/Object;
    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    .line 3189
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceNameV6:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v4, "null"

    :goto_2
    aput-object v4, v3, v5

    .line 3190
    if-eqz v0, :cond_4

    .line 3191
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    array-length v4, v0

    if-ge v2, v4, :cond_4

    .line 3192
    add-int/lit8 v4, v2, 0x2

    aget-object v5, v0, v2

    aput-object v5, v3, v4

    .line 3191
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3183
    .end local v2           #i:I
    .end local v3           #mParams:[Ljava/lang/Object;
    :cond_1
    const/4 v4, -0x1

    goto :goto_0

    .line 3187
    :cond_2
    array-length v4, v0

    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 3189
    .restart local v3       #mParams:[Ljava/lang/Object;
    :cond_3
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceNameV6:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 3195
    :cond_4
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    const/16 v5, 0xf

    #calls: Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V
    invoke-static {v4, v5, v3}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;I[Ljava/lang/Object;)V

    .line 3201
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$4300(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/os/INetworkManagementService;->setDnsForwarders([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3207
    :goto_4
    return-void

    .line 3202
    :catch_0
    move-exception v1

    .line 3203
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dnsfwd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v5

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto :goto_4
.end method
