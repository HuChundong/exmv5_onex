.class public abstract Lcom/android/internal/telephony/IccRecords;
.super Landroid/os/Handler;
.source "IccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;
    }
.end annotation


# static fields
.field protected static final DBG:Z = true

.field public static final EVENT_CFI:I = 0x1

.field public static final EVENT_GET_ICC_RECORD_DONE:I = 0x64

.field public static final EVENT_MWI:I = 0x0

.field protected static final EVENT_SET_MSISDN_DONE:I = 0x1e

.field public static final EVENT_SPN:I = 0x2

.field protected static final SPN_RULE_SHOW_PLMN:I = 0x2

.field protected static final SPN_RULE_SHOW_SPN:I = 0x1

.field protected static final UNINITIALIZED:I = -0x1

.field protected static final UNKNOWN:I


# instance fields
.field protected adnCache:Lcom/android/internal/telephony/AdnRecordCache;

.field protected countVoiceMessages:I

.field public iccid:Ljava/lang/String;

.field protected isVoiceMailFixed:Z

.field protected mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mContext:Landroid/content/Context;

.field protected mDestroyed:Z

.field protected mEPSMMI:Z

.field protected mEUTRAN:Z

.field protected mEUTRAN_excpetion:Z

.field protected mFh:Lcom/android/internal/telephony/IccFileHandler;

.field protected mIMSI_M_Programmed:Z

.field protected mIsControlledByIccCardProxy:Z

.field protected mIsFdnEnabled:Z

.field protected mIsRecordsLoad:Z

.field protected mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

.field protected mNewSmsRegistrants:Landroid/os/RegistrantList;

.field protected mParentCard:Lcom/android/internal/telephony/IccCard;

.field protected mRecordsEventsRegistrants:Landroid/os/RegistrantList;

.field protected mailboxIndex:I

.field protected mdn:Ljava/lang/String;

.field protected mncLength:I

.field protected msisdn:Ljava/lang/String;

.field protected msisdnTag:Ljava/lang/String;

.field protected msisdnTagTemp:Ljava/lang/String;

.field protected msisdnTemp:Ljava/lang/String;

.field protected newVoiceMailNum:Ljava/lang/String;

.field protected newVoiceMailTag:Ljava/lang/String;

.field protected recordsLoadedRegistrants:Landroid/os/RegistrantList;

.field protected recordsRequested:Z

.field protected recordsToLoad:I

.field protected spn:Ljava/lang/String;

.field protected spnDisplayCondition:I

.field protected voiceMailNum:Ljava/lang/String;

.field protected voiceMailNumSBM_home:Ljava/lang/String;

.field protected voiceMailNumSBM_roam:Ljava/lang/String;

.field protected voiceMailTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .parameter "card"
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 36
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->mDestroyed:Z

    .line 42
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    .line 43
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    .line 44
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    .line 45
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    .line 53
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 56
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    .line 60
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTemp:Ljava/lang/String;

    .line 61
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTagTemp:Ljava/lang/String;

    .line 64
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 65
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 66
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    .line 67
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    .line 68
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->isVoiceMailFixed:Z

    .line 69
    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 71
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNumSBM_home:Ljava/lang/String;

    .line 72
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNumSBM_roam:Ljava/lang/String;

    .line 76
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->mEUTRAN:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->mIMSI_M_Programmed:Z

    .line 81
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->mEPSMMI:Z

    .line 82
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->mEUTRAN_excpetion:Z

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 86
    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    .line 99
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->mIsRecordsLoad:Z

    .line 102
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->mIsControlledByIccCardProxy:Z

    .line 141
    iput-object p2, p0, Lcom/android/internal/telephony/IccRecords;->mContext:Landroid/content/Context;

    .line 142
    iput-object p3, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 143
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 144
    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    .line 145
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 3
    .parameter "card"
    .parameter "c"
    .parameter "ci"
    .parameter "fh"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 36
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->mDestroyed:Z

    .line 42
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    .line 43
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    .line 44
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    .line 45
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    .line 53
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 56
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    .line 60
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTemp:Ljava/lang/String;

    .line 61
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTagTemp:Ljava/lang/String;

    .line 64
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 65
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 66
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    .line 67
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    .line 68
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->isVoiceMailFixed:Z

    .line 69
    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 71
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNumSBM_home:Ljava/lang/String;

    .line 72
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNumSBM_roam:Ljava/lang/String;

    .line 76
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->mEUTRAN:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->mIMSI_M_Programmed:Z

    .line 81
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->mEPSMMI:Z

    .line 82
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->mEUTRAN_excpetion:Z

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 86
    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    .line 99
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->mIsRecordsLoad:Z

    .line 102
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->mIsControlledByIccCardProxy:Z

    .line 151
    iput-object p2, p0, Lcom/android/internal/telephony/IccRecords;->mContext:Landroid/content/Context;

    .line 152
    iput-object p3, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 153
    iput-object p4, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 154
    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    .line 155
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->mDestroyed:Z

    .line 163
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    .line 164
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 165
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 166
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mContext:Landroid/content/Context;

    .line 167
    return-void
.end method

.method public getAdnCache()Lcom/android/internal/telephony/AdnRecordCache;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    return-object v0
.end method

.method public abstract getDisplayRule(Ljava/lang/String;)I
.end method

.method public getFdnEnabledStatus()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->mIsFdnEnabled:Z

    return v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    return-object v0
.end method

.method protected getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/ims/IsimRecords;
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecordLoadedStatus()Z
    .locals 1

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->mIsRecordsLoad:Z

    return v0
.end method

.method public getRecordsLoaded()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 354
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    if-ne v1, v0, :cond_0

    .line 357
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    return-object v0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceCallForwardingFlag()Z
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    return v0
.end method

.method public getVoiceMessageWaiting()Z
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 364
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 386
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 388
    :goto_0
    return-void

    .line 367
    :pswitch_0
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 368
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;

    .line 369
    .local v2, recordLoaded:Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;->getEfName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LOADED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccRecords;->log(Ljava/lang/String;)V

    .line 371
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Record Load Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccRecords;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #recordLoaded:Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccRecords;->onRecordLoaded()V

    goto :goto_0

    .line 374
    .restart local v0       #ar:Landroid/os/AsyncResult;
    .restart local v2       #recordLoaded:Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;
    :cond_0
    :try_start_1
    invoke-interface {v2, v0}, Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;->onRecordLoaded(Landroid/os/AsyncResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 376
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #recordLoaded:Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;
    :catch_0
    move-exception v1

    .line 378
    .local v1, exc:Ljava/lang/RuntimeException;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception parsing SIM record: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccRecords;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 381
    .end local v1           #exc:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccRecords;->onRecordLoaded()V

    throw v3

    .line 364
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public htcIsAllHexDigits(Ljava/lang/String;)Z
    .locals 5
    .parameter "digits"

    .prologue
    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, allHexDigits:Z
    if-eqz p1, :cond_4

    .line 481
    const/4 v0, 0x1

    .line 482
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 483
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-eqz v0, :cond_4

    if-ge v2, v3, :cond_4

    .line 484
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 485
    .local v1, digit:C
    const/16 v4, 0x30

    if-gt v4, v1, :cond_0

    const/16 v4, 0x39

    if-le v1, v4, :cond_2

    :cond_0
    const/16 v4, 0x61

    if-gt v4, v1, :cond_1

    const/16 v4, 0x66

    if-le v1, v4, :cond_2

    :cond_1
    const/16 v4, 0x41

    if-gt v4, v1, :cond_3

    const/16 v4, 0x46

    if-gt v1, v4, :cond_3

    .line 483
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 491
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 495
    .end local v1           #digit:C
    .end local v2           #i:I
    .end local v3           #len:I
    :cond_4
    return v0
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method public isProvisioned()Z
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method protected abstract onAllRecordsLoaded()V
.end method

.method protected abstract onRadioOffOrNotAvailable()V
.end method

.method public abstract onReady()V
.end method

.method protected abstract onRecordLoaded()V
.end method

.method public abstract onRefresh(Z[I)V
.end method

.method public registerForNetworkSelectionModeAutomatic(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 223
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 224
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 225
    return-void
.end method

.method public registerForNewSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 214
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 215
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 216
    return-void
.end method

.method public registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 206
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 207
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 208
    return-void
.end method

.method public registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 190
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->mDestroyed:Z

    if-eqz v1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 195
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 197
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 198
    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 263
    iput-object p2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    .line 264
    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set MSISDN: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccRecords;->log(Ljava/lang/String;)V

    .line 269
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v2, 0x6f40

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/IccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 273
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZ)V
    .locals 0
    .parameter "line"
    .parameter "enable"

    .prologue
    .line 439
    return-void
.end method

.method public abstract setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setVoiceMessageWaiting(II)V
.end method

.method public unregisterForNetworkSelectionModeAutomatic(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 228
    return-void
.end method

.method public unregisterForNewSms(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 219
    return-void
.end method

.method public unregisterForRecordsEvents(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 211
    return-void
.end method

.method public unregisterForRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 203
    return-void
.end method
