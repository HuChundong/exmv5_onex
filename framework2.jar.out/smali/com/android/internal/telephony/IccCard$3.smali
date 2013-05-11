.class Lcom/android/internal/telephony/IccCard$3;
.super Landroid/os/Handler;
.source "IccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .locals 0
    .parameter

    .prologue
    .line 2398
    iput-object p1, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/16 v11, 0x51

    const/16 v13, 0x3f9

    const/4 v12, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2402
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 2551
    :cond_0
    :goto_0
    return-void

    .line 2405
    :pswitch_0
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v7, v7, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v10, "EVENT_SIM_HOT_SWAP_STATUS"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v7, v10}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 2406
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 2407
    .local v2, ar:Landroid/os/AsyncResult;
    iget-object v7, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [I

    move-object v5, v7

    check-cast v5, [I

    .line 2410
    .local v5, isSIMRemoved:[I
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v10, Lcom/android/internal/telephony/IccCard$IccCardState;->CARD_INIT:Lcom/android/internal/telephony/IccCard$IccCardState;

    iput-object v10, v7, Lcom/android/internal/telephony/IccCard;->mOldCardState:Lcom/android/internal/telephony/IccCard$IccCardState;

    .line 2414
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v10, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppState;

    #setter for: Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsAppState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    invoke-static {v7, v10}, Lcom/android/internal/telephony/IccCard;->access$102(Lcom/android/internal/telephony/IccCard;Lcom/android/internal/telephony/IccCardApplication$AppState;)Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 2417
    if-eqz v5, :cond_a

    array-length v7, v5

    if-lez v7, :cond_a

    .line 2418
    sget v7, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    .line 2420
    aget v7, v5, v9

    if-nez v7, :cond_2

    .line 2422
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    #setter for: Lcom/android/internal/telephony/IccCard;->isHotSwapInserted:Z
    invoke-static {v7, v9}, Lcom/android/internal/telephony/IccCard;->access$1602(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 2424
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v10, "ICC_HOT_SWAP_ABSENT"

    invoke-virtual {v7, v10}, Lcom/android/internal/telephony/IccCard;->setIccCardRemovedOrInsertedError(Ljava/lang/String;)V

    .line 2427
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v7, v11, :cond_3

    .line 2428
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2429
    .local v6, shutdown:Landroid/content/Intent;
    const-string v7, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2430
    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2431
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2437
    .end local v6           #shutdown:Landroid/content/Intent;
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    #setter for: Lcom/android/internal/telephony/IccCard;->isHotSwapInserted:Z
    invoke-static {v7, v8}, Lcom/android/internal/telephony/IccCard;->access$1602(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 2439
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v10, "ICC_HOT_SWAP_INSERTED"

    invoke-virtual {v7, v10, v12}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2442
    :cond_3
    const-string v7, "sys.shutdown.hibernate.mode"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 2443
    .local v4, hibernate:Z
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "airplane_mode_on"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_6

    move v1, v8

    .line 2445
    .local v1, airplane:Z
    :goto_1
    if-nez v4, :cond_4

    if-eqz v1, :cond_7

    .line 2446
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v7, v7, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_SIM_HOT_SWAP_STATUS hibernate = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " airplane = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 2447
    :cond_5
    sput v9, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    goto/16 :goto_0

    .end local v1           #airplane:Z
    :cond_6
    move v1, v9

    .line 2443
    goto :goto_1

    .line 2449
    .restart local v1       #airplane:Z
    :cond_7
    sget v7, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    if-ne v7, v8, :cond_9

    .line 2450
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v7, v7, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v8, "EVENT_SIM_HOT_SWAP_STATUS radio off"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 2451
    :cond_8
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v8, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->ACTION_OFF:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    iput-object v8, v7, Lcom/android/internal/telephony/IccCard;->mCurrentAction:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    .line 2452
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, p0, v13, v12}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2454
    const-string v7, "gsm.sim.hotswap.procedure"

    const-string v8, "1"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2456
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    goto/16 :goto_0

    .line 2458
    :cond_9
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v7, v7, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wait for previous hot swap procedure completed, mHotSwap = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2462
    .end local v1           #airplane:Z
    .end local v4           #hibernate:Z
    :cond_a
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v7, v7, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v8, "invalid sim hot swap data"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2467
    .end local v2           #ar:Landroid/os/AsyncResult;
    .end local v5           #isSIMRemoved:[I
    :pswitch_1
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    .line 2468
    .local v3, currentState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    const-string v7, "sys.shutdown.hibernate.mode"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 2469
    .restart local v4       #hibernate:Z
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "airplane_mode_on"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_e

    move v1, v8

    .line 2471
    .restart local v1       #airplane:Z
    :goto_2
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v7, v7, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EVENT_RADIO_STATE_CHANGED radioState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "hibernate = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " airplane = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v7, v10}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 2473
    :cond_b
    if-nez v4, :cond_c

    if-eqz v1, :cond_10

    .line 2474
    :cond_c
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mCurrentAction:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    sget-object v8, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->ACTION_OFF:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    if-ne v7, v8, :cond_f

    .line 2475
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 2479
    :cond_d
    :goto_3
    sput v9, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    .line 2480
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v8, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->ACTION_INIT:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    iput-object v8, v7, Lcom/android/internal/telephony/IccCard;->mCurrentAction:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    goto/16 :goto_0

    .end local v1           #airplane:Z
    :cond_e
    move v1, v9

    .line 2469
    goto :goto_2

    .line 2476
    .restart local v1       #airplane:Z
    :cond_f
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mCurrentAction:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    sget-object v8, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->ACTION_ON:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    if-ne v7, v8, :cond_d

    .line 2477
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    goto :goto_3

    .line 2484
    :cond_10
    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v3, v7, :cond_12

    .line 2485
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v7, v7, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v9, "EVENT_SIM_HOT_SWAP_STATUS radio on"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v7, v9}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 2486
    :cond_11
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 2487
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, p0, v13, v12}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2488
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v9, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->ACTION_ON:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    iput-object v9, v7, Lcom/android/internal/telephony/IccCard;->mCurrentAction:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    .line 2489
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    goto/16 :goto_0

    .line 2490
    :cond_12
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2491
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v7, v7, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "radio on mHotSwap = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v7, v10}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 2492
    :cond_13
    sget v7, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    if-le v7, v8, :cond_15

    .line 2493
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v7, v7, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v10, "EVENT_SIM_HOT_SWAP_STATUS radio off"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v7, v10}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 2494
    :cond_14
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 2495
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, p0, v13, v12}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2496
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v10, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->ACTION_OFF:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    iput-object v10, v7, Lcom/android/internal/telephony/IccCard;->mCurrentAction:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    .line 2497
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    .line 2498
    sput v8, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    goto/16 :goto_0

    .line 2500
    :cond_15
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v7, v7, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v8, "Stop to trun radio on/off"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 2502
    :cond_16
    const-string v7, "gsm.sim.hotswap.procedure"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2504
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v8, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->ACTION_INIT:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    iput-object v8, v7, Lcom/android/internal/telephony/IccCard;->mCurrentAction:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    .line 2505
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 2506
    sput v9, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    goto/16 :goto_0

    .line 2515
    .end local v1           #airplane:Z
    .end local v3           #currentState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .end local v4           #hibernate:Z
    :pswitch_2
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v7, v7, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v8, "EVENT_MDMRST_SIM_HOT_SWAP_STATUS"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 2517
    :cond_17
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 2518
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v7, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [I

    move-object v0, v7

    check-cast v0, [I

    .line 2521
    .local v0, SIMStatus:[I
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v8, Lcom/android/internal/telephony/IccCard$IccCardState;->CARD_INIT:Lcom/android/internal/telephony/IccCard$IccCardState;

    iput-object v8, v7, Lcom/android/internal/telephony/IccCard;->mOldCardState:Lcom/android/internal/telephony/IccCard$IccCardState;

    .line 2525
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v8, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppState;

    #setter for: Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsAppState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    invoke-static {v7, v8}, Lcom/android/internal/telephony/IccCard;->access$102(Lcom/android/internal/telephony/IccCard;Lcom/android/internal/telephony/IccCardApplication$AppState;)Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 2528
    if-eqz v0, :cond_19

    array-length v7, v0

    if-lez v7, :cond_19

    .line 2529
    aget v7, v0, v9

    if-nez v7, :cond_18

    .line 2530
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v8, "ICC_HOT_SWAP_ABSENT"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/IccCard;->setIccCardRemovedOrInsertedError(Ljava/lang/String;)V

    .line 2533
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v7, v11, :cond_0

    .line 2534
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2535
    .restart local v6       #shutdown:Landroid/content/Intent;
    const-string v7, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2536
    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2537
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v7, v7, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2542
    .end local v6           #shutdown:Landroid/content/Intent;
    :cond_18
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v8, "ICC_HOT_SWAP_INSERTED"

    invoke-virtual {v7, v8, v12}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2545
    :cond_19
    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v7, v7, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard$3;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v8, "invalid MdmRst sim hot swap data"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2402
    :pswitch_data_0
    .packed-switch 0x3f8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
