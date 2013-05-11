.class Landroid/net/hotspot/SoftapMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "SoftapMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/hotspot/SoftapMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/hotspot/SoftapMonitor;


# direct methods
.method public constructor <init>(Landroid/net/hotspot/SoftapMonitor;)V
    .locals 1
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    .line 114
    const-string v0, "SoftapMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method private handleAssocListChange()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #getter for: Landroid/net/hotspot/SoftapMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v0}, Landroid/net/hotspot/SoftapMonitor;->access$600(Landroid/net/hotspot/SoftapMonitor;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->notifyAssocListChange()V

    .line 235
    return-void
.end method

.method private handleConnectionRequest(Ljava/lang/String;)V
    .locals 1
    .parameter "mac"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #getter for: Landroid/net/hotspot/SoftapMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v0}, Landroid/net/hotspot/SoftapMonitor;->access$600(Landroid/net/hotspot/SoftapMonitor;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->notifyConnectionRequest(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method private handleL2peFailEvent()V
    .locals 2

    .prologue
    .line 262
    const-string v0, "SoftapMonitor"

    const-string v1, "L2PE: SoftapMonitor@handleL2peFailEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #getter for: Landroid/net/hotspot/SoftapMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v0}, Landroid/net/hotspot/SoftapMonitor;->access$600(Landroid/net/hotspot/SoftapMonitor;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->notifyL2peFail()V

    .line 264
    return-void
.end method

.method private handleL2peSuccessfulEvent()V
    .locals 2

    .prologue
    .line 258
    const-string v0, "SoftapMonitor"

    const-string v1, "L2PE: SoftapMonitor@handleL2peSuccessfulEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #getter for: Landroid/net/hotspot/SoftapMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v0}, Landroid/net/hotspot/SoftapMonitor;->access$600(Landroid/net/hotspot/SoftapMonitor;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->notifyL2peSuccessful()V

    .line 260
    return-void
.end method

.method private handleWpsRegistrarFailEvent()V
    .locals 2

    .prologue
    .line 253
    const-string v0, "SoftapMonitor"

    const-string v1, "SoftapMonitor@handleWpsRegistrarFailEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #getter for: Landroid/net/hotspot/SoftapMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v0}, Landroid/net/hotspot/SoftapMonitor;->access$600(Landroid/net/hotspot/SoftapMonitor;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->notifyWpsRegistrarFail()V

    .line 255
    return-void
.end method

.method private handleWpsRegistrarStartEvent()V
    .locals 2

    .prologue
    .line 245
    const-string v0, "SoftapMonitor"

    const-string v1, "SoftapMonitor@handleWpsRegistrarStartEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #getter for: Landroid/net/hotspot/SoftapMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v0}, Landroid/net/hotspot/SoftapMonitor;->access$600(Landroid/net/hotspot/SoftapMonitor;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->notifyWpsRegistrarStart()V

    .line 247
    return-void
.end method

.method private handleWpsRegistrarSuccessfulEvent()V
    .locals 2

    .prologue
    .line 249
    const-string v0, "SoftapMonitor"

    const-string v1, "SoftapMonitor@handleWpsRegistrarSuccessfulEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #getter for: Landroid/net/hotspot/SoftapMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v0}, Landroid/net/hotspot/SoftapMonitor;->access$600(Landroid/net/hotspot/SoftapMonitor;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->notifyWpsRegistrarSuccessful()V

    .line 251
    return-void
.end method

.method private nap(I)V
    .locals 2
    .parameter "secs"

    .prologue
    .line 275
    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/16 v11, 0x26

    const/16 v10, 0x25

    const/4 v9, 0x0

    .line 117
    const-string v6, "SoftapMonitor"

    const-string v7, "Start waiting Hotspot event"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    :goto_0
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v6, v10, :cond_1

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v6, v11, :cond_2

    .line 122
    :cond_1
    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #getter for: Landroid/net/hotspot/SoftapMonitor;->ShouldStopMonitor:Z
    invoke-static {v6}, Landroid/net/hotspot/SoftapMonitor;->access$000(Landroid/net/hotspot/SoftapMonitor;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #getter for: Landroid/net/hotspot/SoftapMonitor;->IsAPDown:Z
    invoke-static {v6}, Landroid/net/hotspot/SoftapMonitor;->access$100(Landroid/net/hotspot/SoftapMonitor;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 123
    const-string v6, "SoftapMonitor"

    const-string v7, "force to stop SoftapMonitor"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleAssocListChange()V

    .line 125
    invoke-static {}, Landroid/net/hotspot/HotspotNative;->stopEventWaiting()Z

    .line 126
    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #calls: Landroid/net/hotspot/SoftapMonitor;->setMonitorflag(Z)V
    invoke-static {v6, v9}, Landroid/net/hotspot/SoftapMonitor;->access$200(Landroid/net/hotspot/SoftapMonitor;Z)V

    .line 127
    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #calls: Landroid/net/hotspot/SoftapMonitor;->setAPdownflag(Z)V
    invoke-static {v6, v9}, Landroid/net/hotspot/SoftapMonitor;->access$300(Landroid/net/hotspot/SoftapMonitor;Z)V

    .line 228
    :goto_1
    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #setter for: Landroid/net/hotspot/SoftapMonitor;->mRecvErrors:I
    invoke-static {v6, v9}, Landroid/net/hotspot/SoftapMonitor;->access$502(Landroid/net/hotspot/SoftapMonitor;I)I

    .line 229
    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #setter for: Landroid/net/hotspot/SoftapMonitor;->mNullErrors:I
    invoke-static {v6, v9}, Landroid/net/hotspot/SoftapMonitor;->access$402(Landroid/net/hotspot/SoftapMonitor;I)I

    .line 230
    return-void

    .line 132
    :cond_2
    invoke-static {}, Landroid/net/hotspot/HotspotNative;->waitForEvent()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, eventStr:Ljava/lang/String;
    if-nez v2, :cond_3

    .line 134
    const-string v6, "SoftapMonitor"

    const-string v7, "HotspotNative.waitForEvent() return NULL"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v6, 0x5

    invoke-direct {p0, v6}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->nap(I)V

    .line 136
    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    invoke-static {v6}, Landroid/net/hotspot/SoftapMonitor;->access$404(Landroid/net/hotspot/SoftapMonitor;)I

    move-result v6

    const/4 v7, 0x6

    if-le v6, v7, :cond_0

    .line 137
    const-string v6, "SoftapMonitor"

    const-string v7, "Too many NULL EVENT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {}, Landroid/net/hotspot/HotspotNative;->stopEventWaiting()Z

    goto :goto_1

    .line 144
    :cond_3
    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #setter for: Landroid/net/hotspot/SoftapMonitor;->mNullErrors:I
    invoke-static {v6, v9}, Landroid/net/hotspot/SoftapMonitor;->access$402(Landroid/net/hotspot/SoftapMonitor;I)I

    .line 146
    const-string v6, "AP_UP"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 147
    const/4 v0, 0x1

    .line 148
    .local v0, event:I
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", AP_UP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 149
    .end local v0           #event:I
    :cond_4
    const-string v6, "AP_DOWN"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 150
    const/4 v0, 0x2

    .line 151
    .restart local v0       #event:I
    invoke-direct {p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleAssocListChange()V

    .line 152
    invoke-static {}, Landroid/net/hotspot/HotspotNative;->stopEventWaiting()Z

    .line 154
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v6, v10, :cond_5

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v6, v11, :cond_6

    .line 156
    :cond_5
    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #calls: Landroid/net/hotspot/SoftapMonitor;->setMonitorflag(Z)V
    invoke-static {v6, v9}, Landroid/net/hotspot/SoftapMonitor;->access$200(Landroid/net/hotspot/SoftapMonitor;Z)V

    .line 157
    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    const/4 v7, 0x1

    #calls: Landroid/net/hotspot/SoftapMonitor;->setAPdownflag(Z)V
    invoke-static {v6, v7}, Landroid/net/hotspot/SoftapMonitor;->access$300(Landroid/net/hotspot/SoftapMonitor;Z)V

    .line 160
    :cond_6
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", AP_DOWN"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 162
    .end local v0           #event:I
    :cond_7
    const-string v6, "STA_JOIN"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "AP-STA-CONNECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 163
    :cond_8
    const/4 v0, 0x3

    .line 164
    .restart local v0       #event:I
    invoke-direct {p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleAssocListChange()V

    .line 165
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", STA_JOIN"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 166
    .end local v0           #event:I
    :cond_9
    const-string v6, "STA_LEAVE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "AP-STA-DISCONNECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 167
    :cond_a
    const/4 v0, 0x4

    .line 168
    .restart local v0       #event:I
    invoke-direct {p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleAssocListChange()V

    .line 169
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", STA_LEAVE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 170
    .end local v0           #event:I
    :cond_b
    const-string v6, "STA_BLOCK"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 171
    const/4 v0, 0x5

    .line 173
    .restart local v0       #event:I
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 174
    .local v3, ind:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_c

    .line 175
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, eventData:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 177
    .local v4, time:J
    invoke-direct {p0, v1}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleConnectionRequest(Ljava/lang/String;)V

    .line 179
    .end local v1           #eventData:Ljava/lang/String;
    .end local v4           #time:J
    :cond_c
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", STA_BLOCK"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 181
    .end local v0           #event:I
    .end local v3           #ind:I
    :cond_d
    const-string v6, "ERROR_EVENT"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 182
    const/4 v0, 0x6

    .line 183
    .restart local v0       #event:I
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ERROR_EVENT"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    invoke-static {v6}, Landroid/net/hotspot/SoftapMonitor;->access$504(Landroid/net/hotspot/SoftapMonitor;)I

    move-result v6

    const/16 v7, 0xc

    if-le v6, v7, :cond_0

    .line 185
    const-string v6, "SoftapMonitor"

    const-string v7, "Too many ERROR_EVENT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {}, Landroid/net/hotspot/HotspotNative;->stopEventWaiting()Z

    goto/16 :goto_1

    .line 191
    .end local v0           #event:I
    :cond_e
    const-string v6, "WPS_START"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 192
    const/16 v0, 0x8

    .line 193
    .restart local v0       #event:I
    invoke-direct {p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleWpsRegistrarStartEvent()V

    .line 194
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", WPS_REGISTRAR_START"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 195
    .end local v0           #event:I
    :cond_f
    const-string v6, "WPS_SUCCESSFUL"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 196
    const/16 v0, 0x9

    .line 197
    .restart local v0       #event:I
    invoke-direct {p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleWpsRegistrarSuccessfulEvent()V

    .line 198
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", WPS_REGISTRAR_SUCCESSFUL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 199
    .end local v0           #event:I
    :cond_10
    const-string v6, "WPS_FAIL"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 200
    const/16 v0, 0xa

    .line 201
    .restart local v0       #event:I
    invoke-direct {p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleWpsRegistrarFailEvent()V

    .line 202
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", WPS_REGISTRAR_FAIL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 205
    .end local v0           #event:I
    :cond_11
    const-string v6, "L2PE_SUCCESSFUL"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 206
    const/16 v0, 0xb

    .line 207
    .restart local v0       #event:I
    invoke-direct {p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleL2peSuccessfulEvent()V

    .line 208
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", L2PE_SUCCESSFUL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 210
    .end local v0           #event:I
    :cond_12
    const-string v6, "L2PE_FAIL"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 211
    const/16 v0, 0xc

    .line 212
    .restart local v0       #event:I
    invoke-direct {p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleL2peFailEvent()V

    .line 213
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", L2PE_FAIL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 217
    .end local v0           #event:I
    :cond_13
    const-string v6, "HANG"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 218
    const/16 v0, 0xd

    .line 219
    .restart local v0       #event:I
    invoke-direct {p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleAssocListChange()V

    .line 220
    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #getter for: Landroid/net/hotspot/SoftapMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v6}, Landroid/net/hotspot/SoftapMonitor;->access$600(Landroid/net/hotspot/SoftapMonitor;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v6

    const v7, 0x2400c

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 221
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", HANGED"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
