.class Lcom/android/internal/policy/impl/KeyguardViewMediator$3;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter

    .prologue
    .line 998
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public DualonReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, -0x1

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 1112
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1113
    .local v0, action:Ljava/lang/String;
    const-string v7, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1115
    const-string v7, "seq"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1120
    .local v4, sequence:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    monitor-enter v7

    .line 1121
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/KeyguardViewMediator;)I

    move-result v6

    if-ne v6, v4, :cond_0

    .line 1124
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const/4 v8, 0x1

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v6, v8}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$902(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z

    .line 1126
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    .line 1128
    :cond_0
    monitor-exit v7

    .line 1220
    .end local v4           #sequence:I
    :cond_1
    :goto_0
    return-void

    .line 1128
    .restart local v4       #sequence:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1129
    .end local v4           #sequence:I
    :cond_2
    const-string v7, "android.intent.action.PHONE_STATE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "android.intent.action.PHONE_STATE_EXT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1132
    :cond_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->getPhoneState()Ljava/lang/String;
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Ljava/lang/String;

    move-result-object v2

    .line 1134
    .local v2, phoneState:Ljava/lang/String;
    const-string v6, "phone_type"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1135
    .local v3, phoneType:I
    if-eq v3, v8, :cond_4

    .line 1136
    const-string v6, "android.intent.action.PHONE_STATE_EXT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1137
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const-string v7, "state"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDualPhoneState:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1602(Lcom/android/internal/policy/impl/KeyguardViewMediator;Ljava/lang/String;)Ljava/lang/String;

    .line 1142
    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    monitor-enter v7

    .line 1143
    :try_start_1
    sget-object v6, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->getPhoneState()Ljava/lang/String;
    invoke-static {v8}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1156
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    .line 1158
    :cond_5
    monitor-exit v7

    goto :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v6

    .line 1139
    :cond_6
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const-string v7, "state"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1002(Lcom/android/internal/policy/impl/KeyguardViewMediator;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 1160
    .end local v2           #phoneState:Ljava/lang/String;
    .end local v3           #phoneType:I
    :cond_7
    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1161
    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_a

    .line 1163
    .local v1, enabled:Z
    :goto_2
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0xd1

    if-ne v6, v7, :cond_c

    .line 1164
    if-nez v1, :cond_8

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/IccCard$State;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1165
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v6

    if-nez v6, :cond_b

    .line 1166
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    .line 1183
    :cond_8
    :goto_3
    if-eqz v1, :cond_1

    .line 1184
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v5

    .line 1185
    .local v5, state:Lcom/android/internal/telephony/IccCard$State;
    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v5, v6, :cond_9

    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v5, v6, :cond_9

    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v5, v6, :cond_1

    .line 1188
    :cond_9
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimAbsent()V

    goto/16 :goto_0

    .end local v1           #enabled:Z
    .end local v5           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_a
    move v1, v6

    .line 1161
    goto :goto_2

    .line 1168
    .restart local v1       #enabled:Z
    :cond_b
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_3

    .line 1172
    :cond_c
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isStuckNetworkLock()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1173
    if-nez v1, :cond_8

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/IccCard$State;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1174
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v6

    if-nez v6, :cond_d

    .line 1175
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_3

    .line 1177
    :cond_d
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_3

    .line 1193
    .end local v1           #enabled:Z
    :cond_e
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1194
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBootCompleted:Z
    invoke-static {v6, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1302(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z

    goto/16 :goto_0

    .line 1196
    :cond_f
    const-string v7, "com.htc.intent.action.LOCKSCREEN_DO_KEYGUARD"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1197
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1198
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto/16 :goto_0

    .line 1203
    :cond_10
    const-string v7, "com.android.systemui.statusbar.StatusBarService.STATUS_BAR_READY"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1204
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto/16 :goto_0

    .line 1206
    :cond_11
    const-string v7, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1207
    const-string v7, "KeyguardViewMediator"

    const-string v8, "ACTION_QUICKBOOT_POWEROFF"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSoundEnabled:Z
    invoke-static {v7, v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1402(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z

    .line 1209
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->resetSimStateToDefault()V

    .line 1210
    monitor-enter p0

    .line 1211
    :try_start_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1212
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    .line 1214
    :cond_12
    monitor-exit p0

    goto/16 :goto_0

    :catchall_2
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v6

    .line 1215
    :cond_13
    const-string v6, "com.htc.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1216
    const-string v6, "KeyguardViewMediator"

    const-string v7, "ACTION_QUICKBOOT_POWERON"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSoundEnabled:Z
    invoke-static {v6, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1402(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z

    goto/16 :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 1002
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDualPhoneDevice()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1003
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->DualonReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1108
    :cond_0
    :goto_0
    return-void

    .line 1007
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1008
    .local v0, action:Ljava/lang/String;
    const-string v6, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1010
    const-string v6, "seq"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1015
    .local v3, sequence:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    monitor-enter v6

    .line 1016
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/KeyguardViewMediator;)I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 1019
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const/4 v7, 0x1

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v5, v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$902(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z

    .line 1021
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    .line 1023
    :cond_2
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1024
    .end local v3           #sequence:I
    :cond_3
    const-string v6, "android.intent.action.PHONE_STATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1026
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Ljava/lang/String;

    move-result-object v2

    .line 1028
    .local v2, phoneState:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const-string v6, "state"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1002(Lcom/android/internal/policy/impl/KeyguardViewMediator;Ljava/lang/String;)Ljava/lang/String;

    .line 1030
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    monitor-enter v6

    .line 1031
    :try_start_1
    sget-object v5, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1044
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    .line 1046
    :cond_4
    monitor-exit v6

    goto :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v5

    .line 1048
    .end local v2           #phoneState:Ljava/lang/String;
    :cond_5
    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1049
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_8

    .line 1051
    .local v1, enabled:Z
    :goto_1
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xd1

    if-ne v5, v6, :cond_a

    .line 1052
    if-nez v1, :cond_6

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCard$State;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1053
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v5

    if-nez v5, :cond_9

    .line 1054
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    .line 1071
    :cond_6
    :goto_2
    if-eqz v1, :cond_0

    .line 1072
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    .line 1073
    .local v4, state:Lcom/android/internal/telephony/IccCard$State;
    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v5, :cond_7

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v5, :cond_7

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_0

    .line 1076
    :cond_7
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimAbsent()V

    goto/16 :goto_0

    .end local v1           #enabled:Z
    .end local v4           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_8
    move v1, v5

    .line 1049
    goto :goto_1

    .line 1056
    .restart local v1       #enabled:Z
    :cond_9
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_2

    .line 1060
    :cond_a
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isStuckNetworkLock()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1061
    if-nez v1, :cond_6

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCard$State;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1062
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v5

    if-nez v5, :cond_b

    .line 1063
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_2

    .line 1065
    :cond_b
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_2

    .line 1081
    .end local v1           #enabled:Z
    :cond_c
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1082
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBootCompleted:Z
    invoke-static {v5, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1302(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z

    goto/16 :goto_0

    .line 1084
    :cond_d
    const-string v6, "com.htc.intent.action.LOCKSCREEN_DO_KEYGUARD"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1085
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1086
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto/16 :goto_0

    .line 1091
    :cond_e
    const-string v6, "com.android.systemui.statusbar.StatusBarService.STATUS_BAR_READY"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1092
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto/16 :goto_0

    .line 1094
    :cond_f
    const-string v6, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1095
    const-string v6, "KeyguardViewMediator"

    const-string v7, "ACTION_QUICKBOOT_POWEROFF"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSoundEnabled:Z
    invoke-static {v6, v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1402(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z

    .line 1097
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->resetSimStateToDefault()V

    .line 1098
    monitor-enter p0

    .line 1099
    :try_start_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1100
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    .line 1102
    :cond_10
    monitor-exit p0

    goto/16 :goto_0

    :catchall_2
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v5

    .line 1103
    :cond_11
    const-string v5, "com.htc.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1104
    const-string v5, "KeyguardViewMediator"

    const-string v6, "ACTION_QUICKBOOT_POWERON"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSoundEnabled:Z
    invoke-static {v5, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1402(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z

    goto/16 :goto_0
.end method
