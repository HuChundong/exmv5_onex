.class public Lcom/htc/server/WirelessDisplayService$CallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method public constructor <init>(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter

    .prologue
    .line 2066
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2070
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2071
    .local v1, bundle:Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 2190
    :cond_0
    :goto_0
    return-void

    .line 2073
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2074
    .local v0, action:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 2075
    .local v3, curState:I
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 2076
    .local v2, condState:I
    const-string v8, "WirelessDisplayService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CallReceiver: action"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x14

    invoke-virtual {v8, v9}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 2078
    const-string v8, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2079
    const-string v8, "state"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2080
    .local v7, state:Ljava/lang/String;
    const-string v8, "WirelessDisplayService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IncomingCallReceiver State: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " curState"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " condState"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$4500(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v8

    if-nez v8, :cond_7

    sget-object v8, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2085
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    const/4 v9, 0x1

    #setter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v8, v9}, Lcom/htc/server/WirelessDisplayService;->access$4502(Lcom/htc/server/WirelessDisplayService;Z)Z

    .line 2088
    const/4 v8, 0x3

    if-ne v3, v8, :cond_2

    .line 2089
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x29

    const/16 v10, 0x2b

    const/16 v11, 0x2e

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 2090
    .local v4, msg1:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2091
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2092
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver: mAppCallScreen:2"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2093
    .end local v4           #msg1:Landroid/os/Message;
    :cond_2
    const/4 v8, 0x4

    if-ne v3, v8, :cond_4

    .line 2095
    const/4 v8, 0x1

    if-ne v2, v8, :cond_3

    .line 2096
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2097
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver: mAppCallScreen:3"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2098
    :cond_3
    const/4 v8, 0x5

    if-ne v2, v8, :cond_0

    .line 2099
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2100
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver: mAppCallScreen:7"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2102
    :cond_4
    const/4 v8, 0x7

    if-ne v3, v8, :cond_0

    .line 2103
    const/4 v8, 0x4

    if-ne v2, v8, :cond_5

    .line 2104
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2105
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver: mAppCallScreen:6"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2106
    :cond_5
    const/4 v8, 0x5

    if-ne v2, v8, :cond_6

    .line 2107
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2108
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver: mAppCallScreen:7"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2109
    :cond_6
    if-nez v2, :cond_0

    .line 2110
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2111
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver: mAppCallScreen:2"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2114
    :cond_7
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$4500(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v8

    if-eqz v8, :cond_12

    sget-object v8, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 2116
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver :EXTRA_STATE_IDLE"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    const/16 v8, 0x9

    if-ne v3, v8, :cond_c

    .line 2118
    const/4 v8, 0x2

    if-ne v2, v8, :cond_9

    .line 2119
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x29

    const/16 v10, 0x2a

    const/16 v11, 0x2e

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 2120
    .local v5, msg2:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const-wide/16 v9, 0xbb8

    invoke-virtual {v8, v5, v9, v10}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2121
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2122
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver :mAppCallScreen:0"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    .end local v5           #msg2:Landroid/os/Message;
    :cond_8
    :goto_1
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    const/4 v9, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v8, v9}, Lcom/htc/server/WirelessDisplayService;->access$4502(Lcom/htc/server/WirelessDisplayService;Z)Z

    goto/16 :goto_0

    .line 2123
    :cond_9
    const/4 v8, 0x3

    if-ne v2, v8, :cond_a

    .line 2124
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2125
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver: mAppCallScreen:1"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2126
    :cond_a
    const/4 v8, 0x7

    if-ne v2, v8, :cond_b

    .line 2127
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2128
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver: mAppCallScreen:5"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2129
    :cond_b
    const/4 v8, 0x6

    if-ne v2, v8, :cond_8

    .line 2130
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2131
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver: mAppCallScreen:4"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2133
    :cond_c
    const/4 v8, 0x4

    if-ne v3, v8, :cond_f

    .line 2134
    const/4 v8, 0x2

    if-ne v2, v8, :cond_d

    .line 2135
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x29

    const/16 v10, 0x2a

    const/16 v11, 0x2d

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 2136
    .restart local v5       #msg2:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const-wide/16 v9, 0xbb8

    invoke-virtual {v8, v5, v9, v10}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2137
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2138
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver :mAppCallScreen:0"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2139
    .end local v5           #msg2:Landroid/os/Message;
    :cond_d
    const/4 v8, 0x7

    if-ne v2, v8, :cond_e

    .line 2140
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2141
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver :mAppCallScreen:5"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2142
    :cond_e
    const/4 v8, 0x3

    if-ne v2, v8, :cond_8

    .line 2143
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2144
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver :mAppCallScreen:1"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2146
    :cond_f
    const/4 v8, 0x7

    if-ne v3, v8, :cond_8

    .line 2147
    const/4 v8, 0x2

    if-ne v2, v8, :cond_10

    .line 2148
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x1f

    const/16 v10, 0x21

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 2149
    .restart local v5       #msg2:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const-wide/16 v9, 0xbb8

    invoke-virtual {v8, v5, v9, v10}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2150
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2152
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x14

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 2153
    .local v6, msgFallBackfromAppPause:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const-wide/16 v9, 0xbb8

    invoke-virtual {v8, v6, v9, v10}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2154
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver :mAppCallScreen:0"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2155
    .end local v5           #msg2:Landroid/os/Message;
    .end local v6           #msgFallBackfromAppPause:Landroid/os/Message;
    :cond_10
    const/4 v8, 0x7

    if-ne v2, v8, :cond_11

    .line 2156
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2157
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver :mAppCallScreen:5"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2158
    :cond_11
    const/4 v8, 0x6

    if-ne v2, v8, :cond_8

    .line 2159
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2160
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver :mAppCallScreen:4"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2164
    :cond_12
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$4500(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2165
    const-string v8, "WirelessDisplayService"

    const-string v9, "IncomingCallReceiver :EXTRA_STATE_OFFHOOK"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$CallReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    const/4 v9, 0x1

    #setter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static {v8, v9}, Lcom/htc/server/WirelessDisplayService;->access$4502(Lcom/htc/server/WirelessDisplayService;Z)Z

    goto/16 :goto_0
.end method
