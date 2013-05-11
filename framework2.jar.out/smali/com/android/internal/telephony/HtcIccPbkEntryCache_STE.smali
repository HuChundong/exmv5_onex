.class public final Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;
.super Landroid/os/Handler;
.source "HtcIccPbkEntryCache_STE.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;
.implements Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;


# static fields
.field static final ANR_ENTRY_INDEX_1:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final DBG:Z = false

.field static final EVENT_ADD_PB_ENTRY_DONE:I = 0x4

.field static final EVENT_DELETE_PB_ENTRY_DONE:I = 0x6

.field static final EVENT_GET_PB_LENGTH_DONE:I = 0x1

.field static final EVENT_GET_PB_USED_NUM_DONE:I = 0x2

.field static final EVENT_LOAD_PB_ADN_DONE:I = 0x8

.field static final EVENT_LOAD_PB_ENTRIES_DONE:I = 0x3

.field static final EVENT_LOAD_PB_PBR_DONE:I = 0x7

.field static final EVENT_UPDATE_PB_ENTRY_DONE:I = 0x5

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "HtcIccPbkEntryCache_STE"

.field static final SDBG:Z


# instance fields
.field private mIsloading:Z

.field private mMsgNumber:I

.field mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

.field mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPhoneBookEntriesLength:[I

.field mSimPbkEntryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/PhoneBookEntry;",
            ">;"
        }
    .end annotation
.end field

.field mSimPbkWaiters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mTotal:I

.field private mUsed:I

.field mUserWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private pollingContext:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->DBG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkWaiters:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPhoneBookEntriesLength:[I

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mIsloading:Z

    .line 102
    iput-object p1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 103
    return-void
.end method

.method private getPbkEntryListIfLoaded()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/PhoneBookEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private handlePollPBResult(ILandroid/os/AsyncResult;)V
    .locals 5
    .parameter "what"
    .parameter "ar"

    .prologue
    .line 338
    iget-object v3, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->pollingContext:[I

    if-eq v3, v4, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 343
    sget-boolean v3, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->DBG:Z

    if-eqz v3, :cond_2

    .line 344
    const-string v3, "handlePollPBResult()"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sLog(Ljava/lang/String;)V

    .line 346
    :cond_2
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 347
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 349
    :pswitch_0
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 351
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 353
    .local v2, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/PhoneBookEntry;>;"
    if-eqz v2, :cond_0

    .line 354
    sget-boolean v3, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->DBG:Z

    if-eqz v3, :cond_3

    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePollPBResult() temp.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sLog(Ljava/lang/String;)V

    .line 360
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 361
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 363
    .local v0, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    sget-boolean v3, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->DBG:Z

    if-eqz v3, :cond_4

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePollPBResult() entry.index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sLog(Ljava/lang/String;)V

    .line 367
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    iget v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private notifySimPbkWaiter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 593
    const-string v1, "notifySimPbkWaiter"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sLog(Ljava/lang/String;)V

    .line 595
    new-instance v0, Landroid/os/AsyncResult;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 596
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 597
    return-void
.end method

.method private notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .locals 6
    .parameter
    .parameter "ar"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    const/4 v5, 0x0

    .line 600
    if-nez p1, :cond_0

    .line 611
    :goto_0
    return-void

    .line 604
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, s:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 605
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 607
    .local v2, waiter:Landroid/os/Message;
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 608
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 604
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 610
    .end local v2           #waiter:Landroid/os/Message;
    :cond_1
    iput-boolean v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mIsloading:Z

    goto :goto_0
.end method

.method private pollPBList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 427
    const/4 v3, 0x1

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->pollingContext:[I

    .line 428
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->pollingContext:[I

    aput v5, v3, v5

    .line 430
    const/4 v2, 0x0

    .local v2, start:I
    const/4 v0, 0x0

    .line 432
    .local v0, end:I
    sget-boolean v3, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->DBG:Z

    if-eqz v3, :cond_0

    .line 433
    const-string v3, "pollPBList()"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sLog(Ljava/lang/String;)V

    .line 435
    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mTotal:I

    if-ge v0, v3, :cond_2

    .line 436
    add-int/lit8 v2, v0, 0x1

    .line 437
    add-int/lit8 v0, v2, 0xa

    .line 439
    iget v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mTotal:I

    if-le v0, v3, :cond_1

    .line 440
    iget v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mTotal:I

    .line 442
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->pollingContext:[I

    aget v4, v3, v5

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v5

    .line 443
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->pollingContext:[I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 445
    .local v1, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v2, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookEntries(IILandroid/os/Message;)V

    .line 447
    sget-boolean v3, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->DBG:Z

    if-eqz v3, :cond_0

    .line 448
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sLog(Ljava/lang/String;)V

    goto :goto_0

    .line 450
    .end local v1           #response:Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private sLog(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 634
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .parameter "response"
    .parameter "errString"

    .prologue
    .line 614
    if-eqz p1, :cond_0

    .line 615
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 616
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 617
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 619
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "response"
    .parameter "result"
    .parameter "ex"

    .prologue
    .line 622
    if-nez p1, :cond_0

    .line 629
    :goto_0
    return-void

    .line 626
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 628
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public addPBKEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)J
    .locals 7
    .parameter "name"
    .parameter "number"
    .parameter "number1"
    .parameter "number2"
    .parameter "email"
    .parameter "response"

    .prologue
    const/4 v6, 0x0

    .line 466
    const-wide/16 v1, 0x0

    .line 468
    .local v1, index:J
    invoke-virtual {p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->getFirstEmptyPbkRecord()Lcom/android/internal/telephony/PhoneBookEntry;

    move-result-object v0

    .line 470
    .local v0, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-nez v0, :cond_0

    .line 471
    const-string v4, "AdnFull"

    invoke-direct {p0, p6, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 497
    :goto_0
    return-wide v1

    .line 473
    :cond_0
    iput-object p1, v0, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    .line 474
    iput-object p2, v0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    .line 475
    iput-object p5, v0, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    .line 476
    iget-object v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    aput-object p3, v4, v6

    .line 479
    const/16 v4, 0x2b

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 480
    const/16 v4, 0x91

    iput v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    .line 487
    :goto_1
    iget v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    rem-int/lit16 v4, v4, 0xff

    iput v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    .line 488
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    iget v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    invoke-virtual {v4, v5, p6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 490
    const/4 v4, 0x4

    iget v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    invoke-virtual {p0, v4, v5, v6, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 492
    .local v3, res:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneBookEntries(Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V

    .line 494
    iget v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    int-to-long v1, v4

    goto :goto_0

    .line 482
    .end local v3           #res:Landroid/os/Message;
    :cond_1
    const/16 v4, 0x81

    iput v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    goto :goto_1
.end method

.method public deletePBKEntry(ILandroid/os/Message;)V
    .locals 6
    .parameter "recordNumber"
    .parameter "response"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 510
    iget v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    rem-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    .line 511
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    invoke-virtual {v2, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 513
    new-instance v0, Lcom/android/internal/telephony/PhoneBookEntry;

    invoke-direct {v0}, Lcom/android/internal/telephony/PhoneBookEntry;-><init>()V

    .line 514
    .local v0, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    iput-object v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    .line 515
    iput-object v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    .line 516
    iput v5, v0, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    .line 517
    iput v5, v0, Lcom/android/internal/telephony/PhoneBookEntry;->hidden:I

    .line 518
    iput v5, v0, Lcom/android/internal/telephony/PhoneBookEntry;->adtype:I

    .line 519
    iput-object v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    .line 520
    iget-object v2, v0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    .line 521
    iput p1, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    .line 522
    const/4 v2, 0x6

    iget v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 524
    .local v1, res:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneBookEntries(Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V

    .line 525
    return-void
.end method

.method public dispose()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 666
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkWaiters:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 667
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v7, :cond_0

    .line 668
    const-string v4, "HtcIccPbkEntryCache_STE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispose()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    new-instance v1, Ljava/lang/Exception;

    const-string v4, "SIM Phonebook Entries have been droped."

    invoke-direct {v1, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 672
    .local v1, ex:Ljava/lang/Exception;
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v8, v8, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 673
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 677
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    if-eqz v4, :cond_3

    .line 678
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lt v4, v7, :cond_3

    .line 679
    const-string v4, "HtcIccPbkEntryCache_STE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispose()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const/4 v2, 0x0

    .local v2, msgNum:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gt v2, v4, :cond_3

    .line 681
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 682
    .local v3, response:Landroid/os/Message;
    if-eqz v3, :cond_2

    .line 683
    iget v4, v3, Landroid/os/Message;->what:I

    if-eqz v4, :cond_1

    .line 684
    const-string v4, "error"

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 686
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 680
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 691
    .end local v2           #msgNum:I
    .end local v3           #response:Landroid/os/Message;
    :cond_3
    return-void
.end method

.method public dropSimPbkEntries()V
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 653
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 655
    :cond_0
    return-void
.end method

.method getFirstEmptyPbkRecord()Lcom/android/internal/telephony/PhoneBookEntry;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 574
    const/4 v0, 0x0

    .line 576
    .local v0, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-object v2

    .line 579
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 580
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    check-cast v0, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 582
    .restart local v0       #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBookEntry;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v2, v0

    .line 583
    goto :goto_0

    .line 579
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getPBKEntrisLength()[I
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPhoneBookEntriesLength:[I

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .parameter "msg"

    .prologue
    .line 112
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 114
    :pswitch_0
    const-string v17, "EVENT_LOAD_PB_PBR_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sLog(Ljava/lang/String;)V

    .line 115
    const/4 v13, 0x0

    .line 117
    .local v13, readFlag:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v9

    .line 123
    .local v9, iccFH:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v9, :cond_0

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getANRnums()I

    move-result v17

    if-lez v17, :cond_1

    .line 130
    const-string v17, "gsm.usim.anr.max-no"

    const-string v18, "1"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEmailNums()I

    move-result v17

    if-lez v17, :cond_2

    .line 133
    const-string v17, "gsm.usim.email.max-no"

    const-string v18, "1"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0xc0

    invoke-virtual/range {v17 .. v19}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v5

    .line 137
    .local v5, efid:I
    if-eqz v5, :cond_3

    .line 138
    const/16 v17, 0x8

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v5, v0}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 140
    const/4 v13, 0x1

    .line 145
    .end local v5           #efid:I
    :cond_3
    if-nez v13, :cond_0

    .line 146
    const/16 v17, 0x6f3a

    const/16 v18, 0x8

    const/16 v19, 0x6f3a

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 154
    .end local v9           #iccFH:Lcom/android/internal/telephony/IccFileHandler;
    .end local v13           #readFlag:Z
    :pswitch_1
    const-string v17, "EVENT_LOAD_PB_ADN_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sLog(Ljava/lang/String;)V

    .line 155
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v4, v17

    check-cast v4, Landroid/os/AsyncResult;

    .line 156
    .local v4, ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    .line 157
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [I

    move-object/from16 v15, v17

    check-cast v15, [I

    .line 163
    .local v15, recordSize:[I
    array-length v0, v15

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 164
    const/16 v17, 0x0

    aget v11, v15, v17

    .line 165
    .local v11, maxAlphaTagLength:I
    const/16 v17, 0xe

    move/from16 v0, v17

    if-ge v11, v0, :cond_4

    const/4 v11, 0x0

    .line 167
    :goto_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "maxAlphaTagLength is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sLog(Ljava/lang/String;)V

    .line 169
    const-string v17, "gsm.usim.alpha-tag.length"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .end local v11           #maxAlphaTagLength:I
    .end local v15           #recordSize:[I
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 165
    .restart local v11       #maxAlphaTagLength:I
    .restart local v15       #recordSize:[I
    :cond_4
    add-int/lit8 v11, v11, -0xe

    goto :goto_1

    .line 171
    .end local v11           #maxAlphaTagLength:I
    :cond_5
    const-string v17, "get wrong EF record size format"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sLog(Ljava/lang/String;)V

    goto :goto_2

    .line 174
    .end local v15           #recordSize:[I
    :cond_6
    const-string v17, "get EF-ADN record size failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sLog(Ljava/lang/String;)V

    goto :goto_2

    .line 181
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    const-string v17, "EVENT_GET_PB_USED_NUM_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sLog(Ljava/lang/String;)V

    .line 183
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 186
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_b

    .line 187
    iget-object v10, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/telephony/PhoneBookMemory;

    .line 188
    .local v10, mPBMemory:Lcom/android/internal/telephony/PhoneBookMemory;
    sget-boolean v17, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->DBG:Z

    if-eqz v17, :cond_7

    .line 189
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get PB length:total="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v10, Lcom/android/internal/telephony/PhoneBookMemory;->total:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "  used="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v10, Lcom/android/internal/telephony/PhoneBookMemory;->used:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sLog(Ljava/lang/String;)V

    .line 191
    :cond_7
    iget v0, v10, Lcom/android/internal/telephony/PhoneBookMemory;->total:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mTotal:I

    .line 192
    iget v0, v10, Lcom/android/internal/telephony/PhoneBookMemory;->used:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUsed:I

    .line 193
    sget-boolean v17, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->DBG:Z

    if-eqz v17, :cond_8

    .line 194
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get PB length:total="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mTotal:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "  used="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUsed:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sLog(Ljava/lang/String;)V

    .line 197
    :cond_8
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mTotal:I

    move/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 199
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mTotal:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_9

    .line 200
    new-instance v6, Lcom/android/internal/telephony/PhoneBookEntry;

    invoke-direct {v6}, Lcom/android/internal/telephony/PhoneBookEntry;-><init>()V

    .line 201
    .local v6, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    add-int/lit8 v17, v8, 0x1

    move/from16 v0, v17

    iput v0, v6, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 205
    .end local v6           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mTotal:I

    move/from16 v17, v0

    if-lez v17, :cond_a

    .line 206
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->pollPBList()V

    goto/16 :goto_0

    .line 208
    :cond_a
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mTotal:I

    .line 209
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 210
    const-string v17, "load PB complete!! "

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sLog(Ljava/lang/String;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkWaiters:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 214
    .end local v8           #i:I
    .end local v10           #mPBMemory:Lcom/android/internal/telephony/PhoneBookMemory;
    :cond_b
    sget-boolean v17, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->DBG:Z

    if-eqz v17, :cond_c

    const-string v17, "Cannot get PB memory"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sLog(Ljava/lang/String;)V

    .line 215
    :cond_c
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mTotal:I

    .line 216
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 217
    sget-boolean v17, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->DBG:Z

    if-eqz v17, :cond_d

    const-string v17, "load PB complete!! "

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sLog(Ljava/lang/String;)V

    .line 218
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkWaiters:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 223
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 224
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_11

    .line 225
    sget-boolean v17, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->DBG:Z

    if-eqz v17, :cond_e

    .line 226
    const-string v17, "EVENT_LOAD_PB_ENTRIES_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sLog(Ljava/lang/String;)V

    .line 227
    :cond_e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->handlePollPBResult(ILandroid/os/AsyncResult;)V

    .line 232
    :cond_f
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->pollingContext:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v19, v17, v18

    add-int/lit8 v19, v19, -0x1

    aput v19, v17, v18

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->pollingContext:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    if-nez v17, :cond_0

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 235
    sget-boolean v17, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->DBG:Z

    if-eqz v17, :cond_10

    .line 236
    const-string v17, "load PB complete!! "

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sLog(Ljava/lang/String;)V

    .line 238
    :cond_10
    new-instance v17, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v17, v0

    const/16 v18, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->loadEfPBRFromUsim(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 229
    :cond_11
    sget-boolean v17, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->DBG:Z

    if-eqz v17, :cond_f

    .line 230
    const-string v17, "Error on loading PB"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sLog(Ljava/lang/String;)V

    goto :goto_4

    .line 245
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 246
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 247
    .local v12, msgNum:I
    iget-object v6, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 248
    .restart local v6       #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Message;

    .line 250
    .local v16, response:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->remove(I)V

    .line 252
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_12

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget v0, v6, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 255
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 257
    :cond_12
    sget-boolean v17, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->DBG:Z

    if-eqz v17, :cond_13

    .line 258
    const-string v17, "Cannot add PB entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sLog(Ljava/lang/String;)V

    .line 260
    :cond_13
    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBookEntry;->clear()V

    .line 262
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v17, v0

    if-eqz v17, :cond_14

    .line 263
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/internal/telephony/CommandException;

    check-cast v17, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v7

    .line 266
    .local v7, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v17, Lcom/android/internal/telephony/CommandException$Error;->PB_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v17

    if-ne v7, v0, :cond_14

    .line 267
    const-string v17, "Cannot add PB entry PB_MEM_FULL"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sLog(Ljava/lang/String;)V

    .line 268
    const-string v17, "AdnFull"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 273
    .end local v7           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_14
    const-string v17, "add falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 280
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v6           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v12           #msgNum:I
    .end local v16           #response:Landroid/os/Message;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 281
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 282
    .restart local v12       #msgNum:I
    iget-object v6, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 283
    .restart local v6       #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Message;

    .line 285
    .restart local v16       #response:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->remove(I)V

    .line 287
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_15

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget v0, v6, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 290
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 292
    :cond_15
    sget-boolean v17, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->DBG:Z

    if-eqz v17, :cond_16

    .line 293
    const-string v17, "Cannot update PB entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sLog(Ljava/lang/String;)V

    .line 295
    :cond_16
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v17, v0

    if-eqz v17, :cond_17

    .line 296
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/internal/telephony/CommandException;

    check-cast v17, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v7

    .line 299
    .restart local v7       #err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v17, Lcom/android/internal/telephony/CommandException$Error;->PB_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v17

    if-ne v7, v0, :cond_17

    .line 300
    const-string v17, "Cannot update PB entry PB_MEM_FULL"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sLog(Ljava/lang/String;)V

    .line 301
    const-string v17, "AdnFull"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 306
    .end local v7           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_17
    const-string v17, "update falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 312
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v6           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v12           #msgNum:I
    .end local v16           #response:Landroid/os/Message;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 313
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 314
    .restart local v12       #msgNum:I
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    .line 315
    .local v14, recordNumber:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Message;

    .line 317
    .restart local v16       #response:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->remove(I)V

    .line 319
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_18

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    add-int/lit8 v18, v14, -0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 322
    .restart local v6       #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBookEntry;->clear()V

    .line 324
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 326
    .end local v6           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_18
    sget-boolean v17, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->DBG:Z

    if-eqz v17, :cond_19

    .line 327
    const-string v17, "Cannot delete PB entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sLog(Ljava/lang/String;)V

    .line 329
    :cond_19
    const-string v17, "delete falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isSIMPhonebookFileId(I)Z
    .locals 2
    .parameter "efid"

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 707
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isSIMPhonebookFileId(I)Z

    move-result v0

    .line 710
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestLoadAllPBEntry(Landroid/os/Message;)V
    .locals 4
    .parameter "response"

    .prologue
    const/4 v3, 0x1

    .line 395
    iget-boolean v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mIsloading:Z

    if-nez v2, :cond_2

    .line 396
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->getPbkEntryListIfLoaded()Ljava/util/ArrayList;

    move-result-object v1

    .line 400
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/PhoneBookEntry;>;"
    if-eqz v1, :cond_2

    .line 401
    if-eqz p1, :cond_0

    .line 402
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 403
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 405
    :cond_0
    sget-boolean v2, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->DBG:Z

    if-eqz v2, :cond_1

    .line 406
    const-string v2, "PB has already loaded"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sLog(Ljava/lang/String;)V

    .line 422
    .end local v1           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/PhoneBookEntry;>;"
    :cond_1
    :goto_0
    return-void

    .line 410
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v3, :cond_1

    .line 418
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 419
    .local v0, res:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookMemory(Landroid/os/Message;)V

    .line 421
    iput-boolean v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mIsloading:Z

    goto :goto_0
.end method

.method public setupIccFileHandler(Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 1
    .parameter "iccFileHandler"

    .prologue
    .line 720
    const-string v0, "Does not support it"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sLog(Ljava/lang/String;)V

    .line 721
    return-void
.end method

.method public updatePBKEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "recordNumber"
    .parameter "name"
    .parameter "number"
    .parameter "number1"
    .parameter "number2"
    .parameter "email"
    .parameter "response"

    .prologue
    const/4 v4, 0x0

    .line 546
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 548
    .local v0, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-nez v0, :cond_0

    .line 549
    const-string v2, "error"

    invoke-direct {p0, p7, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 571
    :goto_0
    return-void

    .line 551
    :cond_0
    iput-object p2, v0, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    .line 552
    iput-object p3, v0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    .line 553
    iput-object p6, v0, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    .line 554
    iget-object v2, v0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    aput-object p4, v2, v4

    .line 557
    const/16 v2, 0x2b

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 558
    const/16 v2, 0x91

    iput v2, v0, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    .line 564
    :goto_1
    iget v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    rem-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    .line 565
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    invoke-virtual {v2, v3, p7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 567
    const/4 v2, 0x5

    iget v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 569
    .local v1, res:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneBookEntries(Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V

    goto :goto_0

    .line 560
    .end local v1           #res:Landroid/os/Message;
    :cond_1
    const/16 v2, 0x81

    iput v2, v0, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    goto :goto_1
.end method
