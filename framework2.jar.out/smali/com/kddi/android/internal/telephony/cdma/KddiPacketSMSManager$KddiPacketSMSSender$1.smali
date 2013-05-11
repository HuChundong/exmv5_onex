.class Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;
.super Landroid/os/Handler;
.source "KddiPacketSMSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;


# direct methods
.method constructor <init>(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 2036
    iput-object p1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 2038
    const/4 v0, 0x0

    .line 2039
    .local v0, bErr:Z
    const/4 v3, -0x1

    .line 2040
    .local v3, error:I
    const/4 v1, 0x0

    .line 2041
    .local v1, checkResult:I
    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$000()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2042
    const-string v8, "KddiPacketSMSManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage Start EVENT["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] Received"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    :cond_0
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 2457
    :cond_1
    :goto_0
    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$000()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2458
    const-string v8, "KddiPacketSMSManager"

    const-string v9, "handleMessage End"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    :cond_2
    :goto_1
    return-void

    .line 2048
    :pswitch_0
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v9, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    monitor-enter v9

    .line 2049
    const/4 v8, 0x1

    :try_start_0
    iget-object v10, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-ne v8, v10, :cond_19

    .line 2051
    sget-object v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v8, :cond_3

    .line 2053
    sget-object v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    sput-object v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2057
    :cond_3
    const/4 v8, 0x1

    iget-object v10, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-virtual {v10}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiIsCallState()Z

    move-result v10

    if-ne v8, v10, :cond_7

    .line 2058
    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$000()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2059
    const-string v8, "KddiPacketSMSManager"

    const-string v10, "ON Calling"

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    :cond_4
    const/4 v8, 0x1

    sget v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v8, v10, :cond_5

    .line 2063
    const/16 v8, 0x16

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    .line 2069
    :goto_2
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-virtual {v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiRelease()V

    .line 2070
    monitor-exit v9

    goto :goto_1

    .line 2203
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 2064
    :cond_5
    const/4 v8, 0x2

    :try_start_1
    sget v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v8, v10, :cond_6

    .line 2065
    const/16 v8, 0x2a

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_2

    .line 2067
    :cond_6
    const/4 v8, 0x1

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_2

    .line 2074
    :cond_7
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-virtual {v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiSetIntentFilter()V

    .line 2077
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-virtual {v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiConnectSession()I

    move-result v3

    .line 2079
    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$000()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2080
    const-string v8, "KddiPacketSMSManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "connectSession return["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    :cond_8
    const/4 v8, 0x2

    if-ne v8, v3, :cond_c

    .line 2087
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v10, 0x3e8

    invoke-virtual {p0, v8, v10, v11}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    .line 2090
    if-nez v0, :cond_9

    .line 2092
    const/4 v8, 0x1

    sget v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v8, v10, :cond_a

    .line 2093
    const/16 v8, 0x17

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    .line 2099
    :goto_3
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-virtual {v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiRelease()V

    .line 2101
    :cond_9
    monitor-exit v9

    goto/16 :goto_1

    .line 2094
    :cond_a
    const/4 v8, 0x2

    sget v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v8, v10, :cond_b

    .line 2095
    const/16 v8, 0x2b

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_3

    .line 2097
    :cond_b
    const/4 v8, 0x1

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_3

    .line 2105
    :cond_c
    const/4 v8, 0x1

    if-eq v8, v3, :cond_f

    if-eqz v3, :cond_f

    .line 2108
    const/4 v8, 0x1

    sget v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v8, v10, :cond_d

    .line 2109
    const/16 v8, 0x17

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    .line 2115
    :goto_4
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-virtual {v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiRelease()V

    .line 2116
    monitor-exit v9

    goto/16 :goto_1

    .line 2110
    :cond_d
    const/4 v8, 0x2

    sget v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v8, v10, :cond_e

    .line 2111
    const/16 v8, 0x2b

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_4

    .line 2113
    :cond_e
    const/4 v8, 0x1

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_4

    .line 2120
    :cond_f
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    const/4 v10, 0x2

    iput v10, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    .line 2124
    if-nez v3, :cond_14

    .line 2125
    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$000()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 2126
    const-string v8, "KddiPacketSMSManager"

    const-string v10, "return = PROFILE_ALREADY_ACTIVE"

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    #calls: Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static {v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$400(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)Landroid/net/ConnectivityManager;

    move-result-object v8

    const/16 v10, 0x17

    invoke-virtual {v8, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 2129
    .local v5, nInfo:Landroid/net/NetworkInfo;
    const-string v8, "KddiPacketSMSManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cmail nInfo> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    .end local v5           #nInfo:Landroid/net/NetworkInfo;
    :cond_10
    const/4 v8, 0x5

    invoke-virtual {p0, v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->sendMessage(Landroid/os/Message;)Z

    move-result v6

    .line 2143
    .local v6, regErr:Z
    if-nez v6, :cond_11

    .line 2145
    const/4 v8, 0x1

    sget v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v8, v10, :cond_12

    .line 2146
    const/16 v8, 0x17

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    .line 2152
    :goto_5
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-virtual {v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiRelease()V

    .line 2154
    :cond_11
    monitor-exit v9

    goto/16 :goto_1

    .line 2147
    :cond_12
    const/4 v8, 0x2

    sget v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v8, v10, :cond_13

    .line 2148
    const/16 v8, 0x2b

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_5

    .line 2150
    :cond_13
    const/4 v8, 0x1

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_5

    .line 2158
    .end local v6           #regErr:Z
    :cond_14
    const/4 v8, 0x1

    if-ne v8, v3, :cond_19

    .line 2159
    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$000()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 2160
    const-string v8, "KddiPacketSMSManager"

    const-string v10, "return = KDDI_PROFILE_REQUEST_STARTED"

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    :cond_15
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    #getter for: Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mConnectingLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$500(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2164
    const/4 v6, 0x1

    .line 2167
    .restart local v6       #regErr:Z
    :try_start_2
    const-string v8, "KddiPacketSMSManager"

    const-string v11, "wait! "

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    #getter for: Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mConnectingLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$500(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)Ljava/lang/Object;

    move-result-object v8

    const-wide/16 v11, 0x7530

    invoke-virtual {v8, v11, v12}, Ljava/lang/Object;->wait(J)V

    .line 2169
    const-string v8, "KddiPacketSMSManager"

    const-string v11, "leave wait KDDI_PROFILE_REQUEST_STARTED "

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    #calls: Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static {v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$400(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)Landroid/net/ConnectivityManager;

    move-result-object v8

    const/16 v11, 0x17

    invoke-virtual {v8, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 2173
    .restart local v5       #nInfo:Landroid/net/NetworkInfo;
    const-string v8, "KddiPacketSMSManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "nInfo> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    if-eqz v5, :cond_17

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 2176
    const/4 v8, 0x5

    invoke-virtual {p0, v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v6

    .line 2185
    :goto_6
    :try_start_3
    const-string v8, "KddiPacketSMSManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "regErr? "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    if-nez v6, :cond_16

    .line 2188
    const/4 v8, 0x1

    sget v11, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v8, v11, :cond_43

    .line 2189
    const/16 v8, 0x17

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    .line 2195
    :goto_7
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-virtual {v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiRelease()V

    .line 2198
    .end local v5           #nInfo:Landroid/net/NetworkInfo;
    :cond_16
    :goto_8
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2199
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 2179
    .restart local v5       #nInfo:Landroid/net/NetworkInfo;
    :cond_17
    const/4 v6, 0x0

    goto :goto_6

    .line 2181
    .end local v5           #nInfo:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v2

    .line 2182
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_5
    const-string v8, "KddiPacketSMSManager"

    const-string v11, "interrupted exception!> "

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2183
    const/4 v6, 0x0

    .line 2185
    :try_start_6
    const-string v8, "KddiPacketSMSManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "regErr? "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    if-nez v6, :cond_16

    .line 2188
    const/4 v8, 0x1

    sget v11, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v8, v11, :cond_41

    .line 2189
    const/16 v8, 0x17

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    .line 2195
    :goto_9
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-virtual {v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiRelease()V

    goto :goto_8

    .line 2198
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v8

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2185
    :catchall_2
    move-exception v8

    :try_start_8
    const-string v11, "KddiPacketSMSManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "regErr? "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    if-nez v6, :cond_18

    .line 2188
    const/4 v11, 0x1

    sget v12, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v11, v12, :cond_3f

    .line 2189
    const/16 v11, 0x17

    sput v11, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    .line 2195
    :goto_a
    iget-object v11, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v11, v11, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-virtual {v11}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiRelease()V

    .line 2185
    :cond_18
    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2203
    .end local v6           #regErr:Z
    :cond_19
    :try_start_9
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 2207
    :pswitch_1
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v9, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    monitor-enter v9

    .line 2208
    const/4 v8, 0x5

    :try_start_a
    iget-object v10, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-eq v8, v10, :cond_2b

    .line 2209
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-virtual {v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiCheckCmailProfile()I

    move-result v1

    .line 2210
    packed-switch v1, :pswitch_data_1

    .line 2245
    :pswitch_2
    monitor-exit v9

    goto/16 :goto_1

    .line 2312
    :catchall_3
    move-exception v8

    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v8

    .line 2216
    :pswitch_3
    const/4 v8, 0x1

    :try_start_b
    sget v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v8, v10, :cond_1a

    .line 2217
    const/16 v8, 0x17

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    .line 2224
    :goto_b
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-virtual {v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiRelease()V

    .line 2225
    monitor-exit v9

    goto/16 :goto_1

    .line 2218
    :cond_1a
    const/4 v8, 0x2

    sget v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v8, v10, :cond_1b

    .line 2219
    const/16 v8, 0x2b

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_b

    .line 2221
    :cond_1b
    const/4 v8, 0x1

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_b

    .line 2228
    :pswitch_4
    const/4 v8, 0x3

    iget-object v10, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-eq v8, v10, :cond_1c

    const/4 v8, 0x6

    iget-object v10, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-ne v8, v10, :cond_1d

    .line 2231
    :cond_1c
    const/4 v8, 0x1

    sget v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v8, v10, :cond_1e

    .line 2232
    const/16 v8, 0x17

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    .line 2239
    :goto_c
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-virtual {v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiRelease()V

    .line 2241
    :cond_1d
    monitor-exit v9

    goto/16 :goto_1

    .line 2233
    :cond_1e
    const/4 v8, 0x2

    sget v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v8, v10, :cond_1f

    .line 2234
    const/16 v8, 0x2b

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_c

    .line 2236
    :cond_1f
    const/4 v8, 0x1

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_c

    .line 2248
    :pswitch_5
    const/4 v8, 0x2

    iget-object v10, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-ne v8, v10, :cond_2a

    .line 2261
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/32 v10, 0xc350

    invoke-virtual {p0, v8, v10, v11}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    .line 2262
    if-nez v0, :cond_23

    .line 2263
    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$000()Z

    move-result v8

    if-eqz v8, :cond_20

    .line 2264
    const-string v8, "KddiPacketSMSManager"

    const-string v10, "sendMessageDelayed failed"

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    :cond_20
    const/4 v8, 0x1

    sget v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v8, v10, :cond_21

    .line 2268
    const/16 v8, 0x17

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    .line 2274
    :goto_d
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-virtual {v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiRelease()V

    .line 2275
    monitor-exit v9

    goto/16 :goto_1

    .line 2269
    :cond_21
    const/4 v8, 0x2

    sget v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v8, v10, :cond_22

    .line 2270
    const/16 v8, 0x2b

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_d

    .line 2272
    :cond_22
    const/4 v8, 0x1

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_d

    .line 2279
    :cond_23
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-virtual {v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiChangeNwDevice()Z

    move-result v0

    .line 2280
    if-nez v0, :cond_29

    .line 2281
    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$000()Z

    move-result v8

    if-eqz v8, :cond_24

    .line 2282
    const-string v8, "KddiPacketSMSManager"

    const-string v10, "changeNwDevice Error"

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    :cond_24
    const/4 v8, 0x5

    invoke-virtual {p0, v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v10, 0x12c

    invoke-virtual {p0, v8, v10, v11}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    .line 2286
    if-nez v0, :cond_26

    .line 2287
    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$600()Z

    move-result v8

    if-eqz v8, :cond_25

    .line 2288
    const-string v8, "KddiPacketSMSManager"

    const-string v10, "sendMessageDelayed(KDDI_EVENT_SEND) Error"

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    :cond_25
    const/4 v8, 0x1

    sget v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v8, v10, :cond_27

    .line 2292
    const/16 v8, 0x17

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    .line 2299
    :goto_e
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-virtual {v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiRelease()V

    .line 2301
    :cond_26
    monitor-exit v9

    goto/16 :goto_1

    .line 2293
    :cond_27
    const/4 v8, 0x2

    sget v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v8, v10, :cond_28

    .line 2294
    const/16 v8, 0x2b

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_e

    .line 2296
    :cond_28
    const/4 v8, 0x1

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_e

    .line 2305
    :cond_29
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-virtual {v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiWriteSocket()V

    .line 2312
    :cond_2a
    :goto_f
    monitor-exit v9

    goto/16 :goto_0

    .line 2308
    :cond_2b
    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$000()Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 2309
    const-string v8, "KddiPacketSMSManager"

    const-string v10, "Send State is CANCEL"

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_f

    .line 2318
    :pswitch_6
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v9, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    monitor-enter v9

    .line 2319
    const/4 v8, 0x5

    :try_start_c
    iget-object v10, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-eq v8, v10, :cond_2c

    .line 2320
    const/4 v8, 0x1

    sget v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v8, v10, :cond_2d

    .line 2322
    const/16 v8, 0x17

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    .line 2331
    :goto_10
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-virtual {v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiRelease()V

    .line 2333
    :cond_2c
    monitor-exit v9

    goto/16 :goto_0

    :catchall_4
    move-exception v8

    monitor-exit v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v8

    .line 2323
    :cond_2d
    const/4 v8, 0x2

    :try_start_d
    sget v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v8, v10, :cond_2e

    .line 2325
    const/16 v8, 0x2b

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_10

    .line 2328
    :cond_2e
    const/4 v8, 0x1

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_10

    .line 2337
    :pswitch_7
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v9, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    monitor-enter v9

    .line 2338
    :try_start_e
    const-string v8, "KddiPacketSMSManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KDDI_EVENT_REQ_CONNECT: state>["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v11, v11, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v11, v11, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v11, v11, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    const/4 v8, 0x2

    iget-object v10, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-eq v8, v10, :cond_2f

    const/4 v8, 0x3

    iget-object v10, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-eq v8, v10, :cond_2f

    const/4 v8, 0x6

    iget-object v10, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-ne v8, v10, :cond_31

    .line 2342
    :cond_2f
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-virtual {v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiCheckCmailProfile()I

    move-result v1

    .line 2343
    const/4 v8, 0x7

    if-ne v8, v1, :cond_31

    .line 2344
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-virtual {v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiConnectSession()I

    move-result v3

    .line 2345
    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$000()Z

    move-result v8

    if-eqz v8, :cond_30

    .line 2346
    const-string v8, "KddiPacketSMSManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "connectSession return["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    :cond_30
    if-nez v3, :cond_34

    .line 2351
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/32 v10, 0xc350

    invoke-virtual {p0, v8, v10, v11}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    .line 2352
    if-nez v0, :cond_31

    .line 2353
    const/4 v8, 0x1

    sget v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v8, v10, :cond_32

    .line 2355
    const/16 v8, 0x17

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    .line 2364
    :goto_11
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-virtual {v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiRelease()V

    .line 2385
    :cond_31
    :goto_12
    monitor-exit v9

    goto/16 :goto_0

    :catchall_5
    move-exception v8

    monitor-exit v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v8

    .line 2356
    :cond_32
    const/4 v8, 0x2

    :try_start_f
    sget v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v8, v10, :cond_33

    .line 2358
    const/16 v8, 0x2b

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_11

    .line 2361
    :cond_33
    const/4 v8, 0x1

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_11

    .line 2369
    :cond_34
    const/4 v8, 0x1

    sget v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v8, v10, :cond_35

    .line 2371
    const/16 v8, 0x17

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    .line 2380
    :goto_13
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-virtual {v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiRelease()V

    goto :goto_12

    .line 2372
    :cond_35
    const/4 v8, 0x2

    sget v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v8, v10, :cond_36

    .line 2374
    const/16 v8, 0x2b

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_13

    .line 2377
    :cond_36
    const/4 v8, 0x1

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_13

    .line 2390
    :pswitch_8
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v9, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    monitor-enter v9

    .line 2391
    const/4 v8, 0x2

    :try_start_10
    iget-object v10, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-ne v8, v10, :cond_3b

    .line 2393
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-virtual {v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiChangeNwDevice()Z

    move-result v0

    .line 2394
    if-nez v0, :cond_3a

    .line 2395
    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$600()Z

    move-result v8

    if-eqz v8, :cond_37

    .line 2396
    const-string v8, "KddiPacketSMSManager"

    const-string v10, "changeNwDevice Error"

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    :cond_37
    const/4 v8, 0x1

    sget v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v8, v10, :cond_38

    .line 2400
    const/16 v8, 0x17

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    .line 2407
    :goto_14
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-virtual {v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiRelease()V

    .line 2408
    monitor-exit v9

    goto/16 :goto_1

    .line 2413
    :catchall_6
    move-exception v8

    monitor-exit v9
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw v8

    .line 2401
    :cond_38
    const/4 v8, 0x2

    :try_start_11
    sget v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v8, v10, :cond_39

    .line 2402
    const/16 v8, 0x2b

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_14

    .line 2404
    :cond_39
    const/4 v8, 0x1

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_14

    .line 2411
    :cond_3a
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-virtual {v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiWriteSocket()V

    .line 2413
    :cond_3b
    monitor-exit v9
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    goto/16 :goto_0

    .line 2417
    :pswitch_9
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v9, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    monitor-enter v9

    .line 2419
    const/4 v8, 0x5

    :try_start_12
    iget-object v10, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-ne v8, v10, :cond_3c

    .line 2421
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v8, v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-virtual {v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiRelease()V

    .line 2423
    :cond_3c
    monitor-exit v9

    goto/16 :goto_0

    :catchall_7
    move-exception v8

    monitor-exit v9
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    throw v8

    .line 2429
    :pswitch_a
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/PendingIntent;

    .line 2430
    .local v4, intent:Landroid/app/PendingIntent;
    if-eqz v4, :cond_1

    .line 2432
    const/4 v7, 0x0

    .line 2433
    .local v7, result:I
    const/4 v8, 0x1

    :try_start_13
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v9, :cond_3d

    .line 2434
    const/16 v7, 0x17

    .line 2441
    :goto_15
    invoke-virtual {v4, v7}, Landroid/app/PendingIntent;->send(I)V

    .line 2442
    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$000()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2443
    const-string v8, "KddiPacketSMSManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Send Result ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_13 .. :try_end_13} :catch_1

    goto/16 :goto_0

    .line 2445
    :catch_1
    move-exception v2

    .line 2446
    .local v2, e:Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v2}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 2447
    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$600()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2448
    const-string v8, "KddiPacketSMSManager"

    invoke-virtual {v2}, Landroid/app/PendingIntent$CanceledException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2435
    .end local v2           #e:Landroid/app/PendingIntent$CanceledException;
    :cond_3d
    const/4 v8, 0x2

    :try_start_14
    iget v9, p1, Landroid/os/Message;->arg1:I
    :try_end_14
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_14 .. :try_end_14} :catch_1

    if-ne v8, v9, :cond_3e

    .line 2436
    const/16 v7, 0x2b

    goto :goto_15

    .line 2439
    :cond_3e
    const/4 v7, 0x1

    goto :goto_15

    .line 2190
    .end local v4           #intent:Landroid/app/PendingIntent;
    .end local v7           #result:I
    .restart local v6       #regErr:Z
    :cond_3f
    const/4 v11, 0x2

    :try_start_15
    sget v12, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v11, v12, :cond_40

    .line 2191
    const/16 v11, 0x2b

    sput v11, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto/16 :goto_a

    .line 2193
    :cond_40
    const/4 v11, 0x1

    sput v11, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto/16 :goto_a

    .line 2190
    .local v2, e:Ljava/lang/InterruptedException;
    :cond_41
    const/4 v8, 0x2

    sget v11, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v8, v11, :cond_42

    .line 2191
    const/16 v8, 0x2b

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto/16 :goto_9

    .line 2193
    :cond_42
    const/4 v8, 0x1

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto/16 :goto_9

    .line 2190
    .end local v2           #e:Ljava/lang/InterruptedException;
    .restart local v5       #nInfo:Landroid/net/NetworkInfo;
    :cond_43
    const/4 v8, 0x2

    sget v11, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v8, v11, :cond_44

    .line 2191
    const/16 v8, 0x2b

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto/16 :goto_7

    .line 2193
    :cond_44
    const/4 v8, 0x1

    sput v8, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/16 :goto_7

    .line 2045
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_6
    .end packed-switch

    .line 2210
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
