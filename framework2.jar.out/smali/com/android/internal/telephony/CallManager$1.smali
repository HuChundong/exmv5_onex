.class Lcom/android/internal/telephony/CallManager$1;
.super Landroid/os/Handler;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CallManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .parameter

    .prologue
    .line 3006
    iput-object p1, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3011
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 3155
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->handleHtcMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Lcom/android/internal/telephony/CallManager;->access$600(Lcom/android/internal/telephony/CallManager;Landroid/os/Message;)V

    .line 3159
    :cond_0
    :goto_0
    return-void

    .line 3013
    :pswitch_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "CallManager"

    const-string v5, " handleMessage (EVENT_DISCONNECT)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$100()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$200()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3018
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->htcMultiplePhoneSingleAudioCallChange(ZZ)V
    invoke-static {v4, v7, v6}, Lcom/android/internal/telephony/CallManager;->access$300(Lcom/android/internal/telephony/CallManager;ZZ)V

    .line 3021
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 3024
    :pswitch_1
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "CallManager"

    const-string v5, " handleMessage (EVENT_PRECISE_CALL_STATE_CHANGED)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$100()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$200()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3030
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->htcMultiplePhoneSingleAudioCallChange(ZZ)V
    invoke-static {v4, v6, v6}, Lcom/android/internal/telephony/CallManager;->access$300(Lcom/android/internal/telephony/CallManager;ZZ)V

    .line 3032
    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->htcBlockLoopbackMTdetection()V
    invoke-static {v4}, Lcom/android/internal/telephony/CallManager;->access$400(Lcom/android/internal/telephony/CallManager;)V

    .line 3034
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 3037
    :pswitch_2
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "CallManager"

    const-string v5, " handleMessage (EVENT_NEW_RINGING_CONNECTION)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v4, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/CallManager;->htcBlockRingingMT(Lcom/android/internal/telephony/Connection;)Z

    .line 3043
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->hasMoreThanOneRingingCall()Z
    invoke-static {v4}, Lcom/android/internal/telephony/CallManager;->access$500(Lcom/android/internal/telephony/CallManager;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3044
    :cond_8
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 3046
    .local v0, c:Lcom/android/internal/telephony/Connection;
    :try_start_0
    const-string v4, "CallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "silently drop incoming call: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3048
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVoLTEEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->hasMoreThanOneRingingCall()Z
    invoke-static {v4}, Lcom/android/internal/telephony/CallManager;->access$500(Lcom/android/internal/telephony/CallManager;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3050
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/Connection;->setCollided(Z)V

    .line 3053
    :cond_9
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3054
    :catch_0
    move-exception v1

    .line 3055
    .local v1, e:Lcom/android/internal/telephony/CallStateException;
    const-string v4, "CallManager"

    const-string v5, "new ringing connection"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3058
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_a
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3062
    :pswitch_3
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "CallManager"

    const-string v5, " handleMessage (EVENT_UNKNOWN_CONNECTION)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$100()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$200()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3066
    :cond_c
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->htcMultiplePhoneSingleAudioCallChange(ZZ)V
    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/CallManager;->access$300(Lcom/android/internal/telephony/CallManager;ZZ)V

    .line 3069
    :cond_d
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3072
    :pswitch_4
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "CallManager"

    const-string v5, " handleMessage (EVENT_INCOMING_RING)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3074
    :cond_e
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v4

    if-nez v4, :cond_f

    .line 3075
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3081
    :cond_f
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3086
    :pswitch_5
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, "CallManager"

    const-string v5, " handleMessage (EVENT_RINGBACK_TONE)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    :cond_10
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3090
    :pswitch_6
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "CallManager"

    const-string v5, " handleMessage (EVENT_IN_CALL_VOICE_PRIVACY_ON)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    :cond_11
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3094
    :pswitch_7
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "CallManager"

    const-string v5, " handleMessage (EVENT_IN_CALL_VOICE_PRIVACY_OFF)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3095
    :cond_12
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3098
    :pswitch_8
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "CallManager"

    const-string v5, " handleMessage (EVENT_CALL_WAITING)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    :cond_13
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3102
    :pswitch_9
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, "CallManager"

    const-string v5, " handleMessage (EVENT_DISPLAY_INFO)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    :cond_14
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3106
    :pswitch_a
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v4, "CallManager"

    const-string v5, " handleMessage (EVENT_SIGNAL_INFO)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3107
    :cond_15
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3110
    :pswitch_b
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, "CallManager"

    const-string v5, " handleMessage (EVENT_CDMA_OTA_STATUS_CHANGE)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    :cond_16
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3114
    :pswitch_c
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v4, "CallManager"

    const-string v5, " handleMessage (EVENT_RESEND_INCALL_MUTE)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3115
    :cond_17
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3118
    :pswitch_d
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, "CallManager"

    const-string v5, " handleMessage (EVENT_MMI_INITIATE)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3119
    :cond_18
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3122
    :pswitch_e
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "CallManager"

    const-string v5, " handleMessage (EVENT_MMI_COMPLETE)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3123
    :cond_19
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3126
    :pswitch_f
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string v4, "CallManager"

    const-string v5, " handleMessage (EVENT_ECM_TIMER_RESET)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    :cond_1a
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3130
    :pswitch_10
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v4, "CallManager"

    const-string v5, " handleMessage (EVENT_SUBSCRIPTION_INFO_READY)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3131
    :cond_1b
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3134
    :pswitch_11
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string v4, "CallManager"

    const-string v5, " handleMessage (EVENT_SUPP_SERVICE_FAILED)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3135
    :cond_1c
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3138
    :pswitch_12
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1d

    const-string v4, "CallManager"

    const-string v5, " handleMessage (EVENT_SERVICE_STATE_CHANGED)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3139
    :cond_1d
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3144
    :pswitch_13
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string v4, "CallManager"

    const-string v5, " handleMessage (EVENT_POST_DIAL_CHARACTER)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3145
    :cond_1e
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v4, v4, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 3147
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v4, v4, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4, v2}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Registrant;

    invoke-virtual {v4}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v3

    .line 3148
    .local v3, notifyMsg:Landroid/os/Message;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3149
    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 3150
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 3145
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3011
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method
