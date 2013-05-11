.class Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BipProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultBearerStateReceiver"
.end annotation


# instance fields
.field mBearerType:Lcom/android/internal/telephony/cat/BipProxy$BipType;

.field mChannel:I

.field mCm:Landroid/net/ConnectivityManager;

.field mContext:Landroid/content/Context;

.field mFilter:Landroid/content/IntentFilter;

.field mIsRegistered:Z

.field mOngoingSetupMessage:Landroid/os/Message;

.field final mSetupMessageLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/internal/telephony/cat/BipProxy;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/BipProxy;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 1928
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1917
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    .line 1918
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mSetupMessageLock:Ljava/lang/Object;

    .line 1929
    iput-object p2, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mContext:Landroid/content/Context;

    .line 1930
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mCm:Landroid/net/ConnectivityManager;

    .line 1931
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mFilter:Landroid/content/IntentFilter;

    .line 1932
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mIsRegistered:Z

    .line 1934
    return-void
.end method

.method private onConnected()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2035
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIP - DefaultBearerStateReceiver: onConnected mBearerType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mBearerType:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2038
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/BipProxy;->removeMessages(I)V

    .line 2040
    const/4 v1, 0x0

    .line 2041
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mSetupMessageLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2042
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    if-nez v2, :cond_1

    .line 2043
    monitor-exit v3

    .line 2064
    :goto_0
    return-void

    .line 2044
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->what:I

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    .line 2045
    monitor-exit v3

    goto :goto_0

    .line 2049
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2047
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    .line 2048
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    .line 2049
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2052
    const/4 v0, 0x0

    .line 2053
    .local v0, cid:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mBearerType:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    sget-object v3, Lcom/android/internal/telephony/cat/BipProxy$BipType;->DEFAULT_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    if-ne v2, v3, :cond_4

    .line 2054
    const-string v0, "-1"

    .line 2061
    :cond_3
    :goto_1
    invoke-static {v1, v0, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2062
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2055
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mBearerType:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    sget-object v3, Lcom/android/internal/telephony/cat/BipProxy$BipType;->SPECIFIC_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    if-ne v2, v3, :cond_3

    .line 2056
    const-string v0, "0"

    .line 2057
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "BIP - DefaultBearerStateReceiver: onConnected start timer!!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2058
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/BipProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0xd6d8

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/cat/BipProxy;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private onDisconnected()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1980
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "BIP - DefaultBearerStateReceiver: onDisconnected"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1981
    :cond_0
    const/4 v5, 0x0

    .line 1982
    .local v5, msg:Landroid/os/Message;
    const/4 v4, 0x0

    .line 1984
    .local v4, dropped:Z
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mSetupMessageLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1985
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    if-nez v6, :cond_3

    .line 1986
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "BIP - DefaultBearerStateReceiver: onDisconnected mOngoingSetupMessage is null"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1987
    :cond_1
    const/4 v4, 0x1

    .line 1997
    :goto_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2000
    if-eqz v4, :cond_8

    .line 2001
    iget-object v6, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    iget v6, v6, Landroid/os/Message;->what:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_7

    .line 2003
    iget-object v6, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    iget-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2004
    .local v0, ar:Landroid/os/AsyncResult;
    if-eqz v0, :cond_6

    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v6, :cond_6

    .line 2005
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2006
    .local v1, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v6, v7, :cond_2

    .line 2008
    iget-object v6, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cat/BipProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2009
    .local v3, disconnectMsg:Landroid/os/Message;
    iget v6, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mChannel:I

    iput v6, v3, Landroid/os/Message;->arg1:I

    .line 2010
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2012
    iget-object v6, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    const-wide/16 v7, 0x1388

    invoke-virtual {v6, v3, v7, v8}, Lcom/android/internal/telephony/cat/BipProxy;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2032
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    .end local v3           #disconnectMsg:Landroid/os/Message;
    :cond_2
    :goto_1
    return-void

    .line 1989
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    iget v6, v6, Landroid/os/Message;->what:I

    const/16 v8, 0xb

    if-eq v6, v8, :cond_5

    .line 1990
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "BIP - DefaultBearerStateReceiver: onDisconnected msg != MSG_ID_TEARDOWN_DATA_CALL"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1991
    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    .line 1993
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    .line 1994
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    goto :goto_0

    .line 1997
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 2015
    .restart local v0       #ar:Landroid/os/AsyncResult;
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "BIP - DefaultBearerStateReceiver: onDisconnected connect dropped. object null, TR not sent!"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 2018
    .end local v0           #ar:Landroid/os/AsyncResult;
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget v7, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mChannel:I

    shl-int/lit8 v7, v7, 0x8

    or-int/lit8 v7, v7, 0x5

    #calls: Lcom/android/internal/telephony/cat/BipProxy;->sendChannelStatusEvent(I)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/BipProxy;->access$600(Lcom/android/internal/telephony/cat/BipProxy;I)V

    .line 2019
    iget-object v6, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    iget v7, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mChannel:I

    #calls: Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/BipProxy;->access$900(Lcom/android/internal/telephony/cat/BipProxy;I)V

    goto :goto_1

    .line 2026
    :cond_8
    const/4 v2, 0x0

    .line 2027
    .local v2, csfe:Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
    iget-object v6, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mBearerType:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    sget-object v7, Lcom/android/internal/telephony/cat/BipProxy$BipType;->DEFAULT_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    if-ne v6, v7, :cond_9

    .line 2028
    new-instance v2, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;

    .end local v2           #csfe:Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
    iget-object v6, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    const-string v7, "Default bearer failed to connect"

    invoke-direct {v2, v6, v7}, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Ljava/lang/String;)V

    .line 2030
    .restart local v2       #csfe:Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
    :cond_9
    invoke-static {v5, v9, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2031
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method private onStillConnecting()V
    .locals 1

    .prologue
    .line 2067
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BIP - DefaultBearerStateReceiver: onStillConnecting"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2068
    :cond_0
    return-void
.end method


# virtual methods
.method public getBearerType()Lcom/android/internal/telephony/cat/BipProxy$BipType;
    .locals 2

    .prologue
    .line 1965
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BIP - DefaultBearerStateReceiver: getBearerType type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mBearerType:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1966
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mBearerType:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2072
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2128
    :cond_0
    :goto_0
    return-void

    .line 2077
    :cond_1
    const-string v4, "noConnectivity"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2078
    .local v1, noConnection:Z
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 2079
    .local v0, netInfo:Landroid/net/NetworkInfo;
    const-string v4, "otherNetwork"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 2081
    .local v2, otherNetInfo:Landroid/net/NetworkInfo;
    if-nez v0, :cond_2

    .line 2082
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "BIP - DefaultBearerStateReceiver: Network Info is null."

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 2087
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mBearerType:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    sget-object v5, Lcom/android/internal/telephony/cat/BipProxy$BipType;->DEFAULT_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    if-ne v4, v5, :cond_5

    .line 2090
    if-nez v1, :cond_3

    .line 2091
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->onConnected()V

    goto :goto_0

    .line 2092
    :cond_3
    if-eqz v2, :cond_4

    .line 2093
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->onStillConnecting()V

    goto :goto_0

    .line 2095
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->onDisconnected()V

    goto :goto_0

    .line 2097
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mBearerType:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    sget-object v5, Lcom/android/internal/telephony/cat/BipProxy$BipType;->SPECIFIC_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    if-ne v4, v5, :cond_0

    .line 2098
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/16 v5, 0x21

    if-ne v4, v5, :cond_0

    .line 2099
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 2100
    .local v3, state:Landroid/net/NetworkInfo$State;
    sget-object v4, Lcom/android/internal/telephony/cat/BipProxy$1;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {v3}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 2102
    :pswitch_0
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "BIP - DefaultBearerStateReceiver: (SPECIFIC) bearer CONNECTED"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2103
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->onConnected()V

    goto :goto_0

    .line 2106
    :pswitch_1
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "BIP - DefaultBearerStateReceiver: (SPECIFIC) bearer CONNECTING. Waiting..."

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2107
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->onStillConnecting()V

    goto :goto_0

    .line 2110
    :pswitch_2
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "BIP - DefaultBearerStateReceiver: (SPECIFIC) bearer SUSPENDED."

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2117
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->onDisconnected()V

    goto/16 :goto_0

    .line 2100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setBearerType(Lcom/android/internal/telephony/cat/BipProxy$BipType;I)V
    .locals 2
    .parameter "type"
    .parameter "channel"

    .prologue
    .line 1959
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BIP - DefaultBearerStateReceiver: setBearerType type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1960
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mBearerType:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    .line 1961
    iput p2, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mChannel:I

    .line 1962
    return-void
.end method

.method public setOngoingSetupMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1971
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mSetupMessageLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1972
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BIP - DefaultBearerStateReceiver: setOngoingSetupMessage msg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1973
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    .line 1974
    monitor-exit v1

    .line 1977
    return-void

    .line 1974
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startListening()V
    .locals 2

    .prologue
    .line 1937
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mIsRegistered:Z

    if-eqz v0, :cond_0

    .line 1944
    :goto_0
    return-void

    .line 1940
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BIP - DefaultBearerStateReceiver: registerReceiver"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1942
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1943
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mIsRegistered:Z

    goto :goto_0
.end method

.method public stopListening()V
    .locals 1

    .prologue
    .line 1947
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mIsRegistered:Z

    if-nez v0, :cond_0

    .line 1955
    :goto_0
    return-void

    .line 1950
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BIP - DefaultBearerStateReceiver: unregisterReceiver"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1952
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1953
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mOngoingSetupMessage:Landroid/os/Message;

    .line 1954
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->mIsRegistered:Z

    goto :goto_0
.end method
