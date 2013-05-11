.class Landroid/bluetooth/BluetoothDeviceProfileState$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDeviceProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v12, 0x66

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 132
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 134
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_0

    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v7}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const-string v7, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 137
    const-string v7, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 138
    .local v3, newState:I
    const-string v7, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 140
    .local v4, oldState:I
    if-ne v3, v9, :cond_2

    .line 141
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->setTrust(I)V
    invoke-static {v7, v11}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$800(Landroid/bluetooth/BluetoothDeviceProfileState;I)V

    .line 143
    :cond_2
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpState:I
    invoke-static {v7, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$902(Landroid/bluetooth/BluetoothDeviceProfileState;I)I

    .line 144
    if-ne v4, v9, :cond_3

    if-nez v3, :cond_3

    .line 146
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v8, 0x35

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 148
    :cond_3
    if-eq v3, v9, :cond_4

    if-nez v3, :cond_0

    .line 150
    :cond_4
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-virtual {v7, v12}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    goto :goto_0

    .line 152
    .end local v3           #newState:I
    .end local v4           #oldState:I
    :cond_5
    const-string v7, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 153
    const-string v7, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 154
    .restart local v3       #newState:I
    const-string v7, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 156
    .restart local v4       #oldState:I
    if-ne v3, v9, :cond_6

    .line 157
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->setTrust(I)V
    invoke-static {v7, v11}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$800(Landroid/bluetooth/BluetoothDeviceProfileState;I)V

    .line 159
    :cond_6
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetState:I
    invoke-static {v7, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1002(Landroid/bluetooth/BluetoothDeviceProfileState;I)I

    .line 160
    if-ne v4, v9, :cond_7

    if-nez v3, :cond_7

    .line 162
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v8, 0x33

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 164
    :cond_7
    if-eq v3, v9, :cond_8

    if-nez v3, :cond_0

    .line 166
    :cond_8
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-virtual {v7, v12}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    goto :goto_0

    .line 168
    .end local v3           #newState:I
    .end local v4           #oldState:I
    :cond_9
    const-string v7, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 169
    const-string v7, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 170
    .restart local v3       #newState:I
    const-string v7, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 173
    .restart local v4       #oldState:I
    if-ne v3, v9, :cond_a

    .line 174
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->setTrust(I)V
    invoke-static {v7, v11}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$800(Landroid/bluetooth/BluetoothDeviceProfileState;I)V

    .line 176
    :cond_a
    if-ne v4, v9, :cond_b

    if-nez v3, :cond_b

    .line 178
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v8, 0x37

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 180
    :cond_b
    if-eq v3, v9, :cond_c

    if-nez v3, :cond_0

    .line 182
    :cond_c
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-virtual {v7, v12}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    goto/16 :goto_0

    .line 184
    .end local v3           #newState:I
    .end local v4           #oldState:I
    :cond_d
    const-string v7, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 187
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-virtual {v7, v12}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    goto/16 :goto_0

    .line 188
    :cond_e
    const-string v7, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 189
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1100(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1100(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 191
    :cond_f
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mConnectionAccessReplyReceived:Z
    invoke-static {v7}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1200(Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 195
    const-string v7, "BluetoothDeviceProfileState"

    const-string v8, "Process access reply"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v8, 0x69

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->removeMessages(I)V
    invoke-static {v7, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1300(Landroid/bluetooth/BluetoothDeviceProfileState;I)V

    .line 199
    const-string v7, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 201
    .local v6, val:I
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v8, 0x68

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 202
    .local v2, msg:Landroid/os/Message;
    iput v6, v2, Landroid/os/Message;->arg1:I

    .line 203
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-virtual {v7, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 204
    .end local v2           #msg:Landroid/os/Message;
    .end local v6           #val:I
    :cond_10
    const-string v7, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 205
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mPairingRequestRcvd:Z
    invoke-static {v7, v11}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1402(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    goto/16 :goto_0

    .line 206
    :cond_11
    const-string v7, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 207
    const-string v7, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v8, -0x8000

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 209
    .local v5, state:I
    const/16 v7, 0xc

    if-ne v5, v7, :cond_12

    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mPairingRequestRcvd:Z
    invoke-static {v7}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1400(Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 210
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->setTrust(I)V
    invoke-static {v7, v11}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$800(Landroid/bluetooth/BluetoothDeviceProfileState;I)V

    .line 211
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mPairingRequestRcvd:Z
    invoke-static {v7, v10}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1402(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    goto/16 :goto_0

    .line 212
    :cond_12
    const/16 v7, 0xa

    if-ne v5, v7, :cond_0

    .line 213
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mPairingRequestRcvd:Z
    invoke-static {v7, v10}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1402(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    goto/16 :goto_0
.end method
