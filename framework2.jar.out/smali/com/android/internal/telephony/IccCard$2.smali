.class Lcom/android/internal/telephony/IccCard$2;
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
    .line 1515
    iput-object p1, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 1527
    const/4 v3, 0x7

    .line 1531
    .local v3, serviceClassX:I
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-nez v0, :cond_1

    .line 1532
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] while being destroyed. Ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    :cond_0
    :goto_0
    return-void

    .line 1537
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 2003
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccCard] Unknown Event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1539
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 1544
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->updateStateProperty(Lcom/android/internal/telephony/IccCard$State;)V

    .line 1546
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v1, "NOT_READY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    const-string v0, "sys.shutdown.hibernate.mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 1551
    .local v9, hibernate:Z
    if-eqz v9, :cond_2

    .line 1552
    new-instance v11, Landroid/content/Intent;

    const-string v0, "android.htc.intent.action.clearSIMUI"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1553
    .local v11, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1558
    .end local v11           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v1, Lcom/android/internal/telephony/IccCard$IccCardState;->CARD_INIT:Lcom/android/internal/telephony/IccCard$IccCardState;

    iput-object v1, v0, Lcom/android/internal/telephony/IccCard;->mOldCardState:Lcom/android/internal/telephony/IccCard$IccCardState;

    .line 1561
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppState;

    #setter for: Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsAppState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccCard;->access$102(Lcom/android/internal/telephony/IccCard;Lcom/android/internal/telephony/IccCardApplication$AppState;)Lcom/android/internal/telephony/IccCardApplication$AppState;

    goto :goto_0

    .line 1566
    .end local v9           #hibernate:Z
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->is3gpp:Z

    if-nez v0, :cond_3

    .line 1567
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #calls: Lcom/android/internal/telephony/IccCard;->handleCdmaSubscriptionSource()V
    invoke-static {v0}, Lcom/android/internal/telephony/IccCard;->access$200(Lcom/android/internal/telephony/IccCard;)V

    .line 1572
    :cond_3
    :sswitch_2
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x49

    if-eq v0, v1, :cond_4

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x54

    if-eq v0, v1, :cond_4

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x55

    if-ne v0, v1, :cond_5

    .line 1579
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1583
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 1585
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1589
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v8

    .line 1590
    .local v8, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v8, :cond_0

    .line 1591
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/IccFileHandler;->loadIccDetailStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1597
    .end local v8           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #calls: Lcom/android/internal/telephony/IccCard;->handleCdmaSubscriptionSource()V
    invoke-static {v0}, Lcom/android/internal/telephony/IccCard;->access$200(Lcom/android/internal/telephony/IccCard;)V

    goto/16 :goto_0

    .line 1601
    :sswitch_4
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1602
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadIccDetailStatus(Landroid/os/Message;)V

    .line 1603
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    const-string v2, ""

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 1606
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "FD"

    const-string v2, ""

    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1610
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v8

    .line 1611
    .restart local v8       #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v8, :cond_0

    .line 1612
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/IccFileHandler;->loadIccDetailStatus(Landroid/os/Message;)V

    .line 1613
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->isSubscriptionFromIccCard:Z

    if-eqz v0, :cond_0

    .line 1614
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    const-string v2, ""

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 1617
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "FD"

    const-string v2, ""

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1627
    .end local v8           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :sswitch_5
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1628
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    const-string v2, ""

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1632
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v8

    .line 1633
    .restart local v8       #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v8, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    const-string v2, ""

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1642
    .end local v8           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :sswitch_6
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1644
    .local v6, ar:Landroid/os/AsyncResult;
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x49

    if-eq v0, v1, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x54

    if-eq v0, v1, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x55

    if-ne v0, v1, :cond_d

    .line 1648
    :cond_8
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_9

    .line 1650
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_GET_ICC_STATUS_DONE exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", use fake state instead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1652
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #calls: Lcom/android/internal/telephony/IccCard;->getFakeIccCardStatus()Lcom/android/internal/telephony/IccCardStatus;
    invoke-static {v4}, Lcom/android/internal/telephony/IccCard;->access$300(Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/IccCardStatus;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #calls: Lcom/android/internal/telephony/IccCard;->getIccCardStatusDone(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccCard;->access$400(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1655
    :cond_9
    iget-object v10, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/telephony/IccCardStatus;

    .line 1656
    .local v10, iccCardStatus:Lcom/android/internal/telephony/IccCardStatus;
    invoke-virtual {v10}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v0, v1, :cond_a

    invoke-virtual {v10}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v0, v1, :cond_c

    .line 1659
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_b

    .line 1660
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_GET_ICC_STATUS_DONE card state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", use fake state instead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1663
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #calls: Lcom/android/internal/telephony/IccCard;->getFakeIccCardStatus()Lcom/android/internal/telephony/IccCardStatus;
    invoke-static {v4}, Lcom/android/internal/telephony/IccCard;->access$300(Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/IccCardStatus;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #calls: Lcom/android/internal/telephony/IccCard;->getIccCardStatusDone(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccCard;->access$400(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1666
    :cond_c
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1667
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_d

    .line 1671
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1672
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadIccDetailStatus(Landroid/os/Message;)V

    .line 1673
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    const-string v2, ""

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 1676
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "FD"

    const-string v2, ""

    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 1696
    .end local v10           #iccCardStatus:Lcom/android/internal/telephony/IccCardStatus;
    :cond_d
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #calls: Lcom/android/internal/telephony/IccCard;->getIccCardStatusDone(Landroid/os/AsyncResult;)V
    invoke-static {v0, v6}, Lcom/android/internal/telephony/IccCard;->access$400(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V

    .line 1698
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1699
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1682
    .restart local v10       #iccCardStatus:Lcom/android/internal/telephony/IccCardStatus;
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v8

    .line 1683
    .restart local v8       #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v8, :cond_d

    .line 1684
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/IccFileHandler;->loadIccDetailStatus(Landroid/os/Message;)V

    .line 1685
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    const-string v2, ""

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 1687
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "FD"

    const-string v2, ""

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 1705
    .end local v6           #ar:Landroid/os/AsyncResult;
    .end local v8           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    .end local v10           #iccCardStatus:Lcom/android/internal/telephony/IccCardStatus;
    :sswitch_7
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1707
    .restart local v6       #ar:Landroid/os/AsyncResult;
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #calls: Lcom/android/internal/telephony/IccCard;->getIccDetailStatusDone(Landroid/os/AsyncResult;)V
    invoke-static {v0, v6}, Lcom/android/internal/telephony/IccCard;->access$500(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V

    .line 1709
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v0, :cond_f

    .line 1710
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    iget-object v2, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 1719
    :cond_f
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_0

    .line 1720
    :cond_10
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v2, "LOCKED"

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v4, :cond_11

    const-string v0, "PIN"

    :goto_2
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const-string v0, "PUK"

    goto :goto_2

    .line 1731
    .end local v6           #ar:Landroid/os/AsyncResult;
    :sswitch_8
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1733
    .restart local v6       #ar:Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iget-object v1, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1740
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v8

    .line 1741
    .restart local v8       #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v8, :cond_13

    .line 1742
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x32

    iget-object v2, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadIccDetailStatus(Landroid/os/Message;)V

    .line 1757
    :cond_12
    :goto_3
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 1759
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1760
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    const-string v2, ""

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1744
    :cond_13
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1745
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    iget-object v2, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto :goto_3

    .line 1764
    :cond_14
    if-eqz v8, :cond_0

    .line 1765
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    const-string v2, ""

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1781
    .end local v6           #ar:Landroid/os/AsyncResult;
    .end local v8           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :sswitch_9
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1782
    .restart local v6       #ar:Landroid/os/AsyncResult;
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #calls: Lcom/android/internal/telephony/IccCard;->getIccCardStatusDone(Landroid/os/AsyncResult;)V
    invoke-static {v0, v6}, Lcom/android/internal/telephony/IccCard;->access$400(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V

    .line 1783
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1786
    .end local v6           #ar:Landroid/os/AsyncResult;
    :sswitch_a
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1787
    .restart local v6       #ar:Landroid/os/AsyncResult;
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #calls: Lcom/android/internal/telephony/IccCard;->onQueryFacilityLock(Landroid/os/AsyncResult;)V
    invoke-static {v0, v6}, Lcom/android/internal/telephony/IccCard;->access$600(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1790
    .end local v6           #ar:Landroid/os/AsyncResult;
    :sswitch_b
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1791
    .restart local v6       #ar:Landroid/os/AsyncResult;
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #calls: Lcom/android/internal/telephony/IccCard;->onQueryFdnEnabled(Landroid/os/AsyncResult;)V
    invoke-static {v0, v6}, Lcom/android/internal/telephony/IccCard;->access$700(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1794
    .end local v6           #ar:Landroid/os/AsyncResult;
    :sswitch_c
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1795
    .restart local v6       #ar:Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_16

    .line 1796
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mDesiredPinLocked:Z
    invoke-static {v1}, Lcom/android/internal/telephony/IccCard;->access$900(Lcom/android/internal/telephony/IccCard;)Z

    move-result v1

    #setter for: Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccCard;->access$802(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 1797
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_CHANGE_FACILITY_LOCK_DONE: mIccPinLocked= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z
    invoke-static {v2}, Lcom/android/internal/telephony/IccCard;->access$800(Lcom/android/internal/telephony/IccCard;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1803
    :cond_15
    :goto_4
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iget-object v1, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1808
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v8

    .line 1809
    .restart local v8       #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v8, :cond_17

    .line 1810
    const/16 v0, 0x32

    iget-object v1, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/IccFileHandler;->loadIccDetailStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1800
    .end local v8           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :cond_16
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error change facility lock with exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1812
    .restart local v8       #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :cond_17
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1813
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1822
    .end local v6           #ar:Landroid/os/AsyncResult;
    .end local v8           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :sswitch_d
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1824
    .restart local v6       #ar:Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_19

    .line 1825
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mDesiredFdnEnabled:Z
    invoke-static {v1}, Lcom/android/internal/telephony/IccCard;->access$1100(Lcom/android/internal/telephony/IccCard;)Z

    move-result v1

    #setter for: Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccCard;->access$1002(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 1826
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_CHANGE_FACILITY_FDN_DONE: mIccFdnEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z
    invoke-static {v2}, Lcom/android/internal/telephony/IccCard;->access$1000(Lcom/android/internal/telephony/IccCard;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1832
    :cond_18
    :goto_5
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iget-object v1, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1838
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v8

    .line 1839
    .restart local v8       #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v8, :cond_1a

    .line 1840
    const/16 v0, 0x32

    iget-object v1, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/IccFileHandler;->loadIccDetailStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1829
    .end local v8           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :cond_19
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error change facility fdn with exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1842
    .restart local v8       #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :cond_1a
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1843
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1852
    .end local v6           #ar:Landroid/os/AsyncResult;
    .end local v8           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :sswitch_e
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1853
    .restart local v6       #ar:Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1b

    .line 1854
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in change sim password with exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    :cond_1b
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iget-object v1, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1863
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v8

    .line 1864
    .restart local v8       #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v8, :cond_1c

    .line 1865
    const/16 v0, 0x32

    iget-object v1, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/IccFileHandler;->loadIccDetailStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1867
    :cond_1c
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1868
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1885
    .end local v6           #ar:Landroid/os/AsyncResult;
    .end local v8           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :sswitch_f
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/telephony/IccCard;->onIccSwap(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccCard;->access$1200(Lcom/android/internal/telephony/IccCard;Z)V

    goto/16 :goto_0

    .line 1888
    :sswitch_10
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v1, 0x1

    #calls: Lcom/android/internal/telephony/IccCard;->onIccSwap(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccCard;->access$1200(Lcom/android/internal/telephony/IccCard;Z)V

    goto/16 :goto_0

    .line 1892
    :sswitch_11
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1894
    .restart local v6       #ar:Landroid/os/AsyncResult;
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #calls: Lcom/android/internal/telephony/IccCard;->getSubsidyLockTypesDone(Landroid/os/AsyncResult;)V
    invoke-static {v0, v6}, Lcom/android/internal/telephony/IccCard;->access$1300(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V

    .line 1896
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1e

    .line 1898
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v1, "Notify SIM network locked."

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1899
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;
    invoke-static {v0}, Lcom/android/internal/telephony/IccCard;->access$1400(Lcom/android/internal/telephony/IccCard;)Landroid/os/RegistrantList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1900
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v1, "LOCKED"

    const-string v2, "NETWORK"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1903
    :cond_1e
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v0, :cond_1f

    .line 1904
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    iget-object v2, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1906
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1911
    .end local v6           #ar:Landroid/os/AsyncResult;
    :sswitch_12
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1912
    .restart local v6       #ar:Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iget-object v1, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1914
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1915
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1916
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1919
    :cond_20
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v0, :cond_21

    .line 1920
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/16 v2, 0x33

    iget-object v4, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getSubsidyLock(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1922
    :cond_21
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/16 v2, 0x33

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getSubsidyLock(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1933
    .end local v6           #ar:Landroid/os/AsyncResult;
    :sswitch_13
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1934
    .restart local v6       #ar:Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_22

    .line 1935
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in SIM access with exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    :cond_22
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    iget-object v1, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v2, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1938
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1944
    .end local v6           #ar:Landroid/os/AsyncResult;
    :sswitch_14
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x50

    if-ne v0, v1, :cond_0

    .line 1945
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1946
    .restart local v6       #ar:Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_24

    .line 1947
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in getting ICC Type with exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    :goto_6
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v1, "Notify SIM failure after getting ICC Type."

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1958
    :cond_23
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mIccFailRegistrants:Landroid/os/RegistrantList;
    invoke-static {v0}, Lcom/android/internal/telephony/IccCard;->access$1500(Lcom/android/internal/telephony/IccCard;)Landroid/os/RegistrantList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1959
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v1, "ICC_FAIL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1949
    :cond_24
    iget-object v13, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    .line 1951
    .local v13, simTypes:Lcom/android/internal/telephony/CommandsInterface$SimTypes;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.types"

    invoke-virtual {v13}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.numeric.types"

    invoke-virtual {v13}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 1953
    :catch_0
    move-exception v7

    .line 1954
    .local v7, exc:Ljava/lang/Exception;
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in getting ICC Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1966
    .end local v6           #ar:Landroid/os/AsyncResult;
    .end local v7           #exc:Ljava/lang/Exception;
    .end local v13           #simTypes:Lcom/android/internal/telephony/CommandsInterface$SimTypes;
    :sswitch_15
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-eq v0, v1, :cond_25

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x49

    if-eq v0, v1, :cond_25

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x54

    if-eq v0, v1, :cond_25

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x55

    if-ne v0, v1, :cond_0

    .line 1972
    :cond_25
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x36

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCdmaSubscriptionSource(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1976
    :sswitch_16
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-eq v0, v1, :cond_26

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x49

    if-eq v0, v1, :cond_26

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x54

    if-eq v0, v1, :cond_26

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x55

    if-ne v0, v1, :cond_0

    .line 1982
    :cond_26
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1983
    .restart local v6       #ar:Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_27

    .line 1984
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cdma subscrion source query returned exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1986
    :cond_27
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x0

    aget v12, v0, v1

    .line 1988
    .local v12, newSubscriptionSource:I
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget v0, v0, Lcom/android/internal/telephony/IccCard;->mCdmaSubscriptionSource:I

    if-eq v12, v0, :cond_0

    .line 1989
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cdma subscription Source changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget v2, v2, Lcom/android/internal/telephony/IccCard;->mCdmaSubscriptionSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1991
    :cond_28
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iput v12, v0, Lcom/android/internal/telephony/IccCard;->mCdmaSubscriptionSource:I

    .line 1993
    const/4 v0, 0x1

    if-ne v12, v0, :cond_0

    .line 1995
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/android/internal/telephony/BaseCommands;

    iget-object v0, v0, Lcom/android/internal/telephony/BaseCommands;->mNVReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 1537
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_6
        0x3 -> :sswitch_0
        0x4 -> :sswitch_8
        0x5 -> :sswitch_9
        0x6 -> :sswitch_4
        0x7 -> :sswitch_a
        0x8 -> :sswitch_c
        0x9 -> :sswitch_e
        0xa -> :sswitch_b
        0xb -> :sswitch_d
        0xc -> :sswitch_2
        0xd -> :sswitch_f
        0xe -> :sswitch_10
        0xf -> :sswitch_3
        0x10 -> :sswitch_1
        0x32 -> :sswitch_7
        0x33 -> :sswitch_11
        0x34 -> :sswitch_12
        0x35 -> :sswitch_15
        0x36 -> :sswitch_16
        0x38 -> :sswitch_14
        0x3f4 -> :sswitch_13
        0x3f5 -> :sswitch_13
        0x3f6 -> :sswitch_13
        0x3f7 -> :sswitch_13
    .end sparse-switch
.end method
