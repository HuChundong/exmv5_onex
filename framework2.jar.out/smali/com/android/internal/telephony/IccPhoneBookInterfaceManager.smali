.class public abstract Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.super Lcom/android/internal/telephony/IIccPhoneBook$Stub;
.source "IccPhoneBookInterfaceManager.java"


# static fields
.field protected static final ALLOW_SIM_OP_IN_UI_THREAD:Z = false

.field protected static final DBG:Z = true

.field protected static final EVENT_ADD_PB_DONE:I = 0x7

.field protected static final EVENT_DELETE_PB_DONE:I = 0x8

.field protected static final EVENT_GET_SIZE_DONE:I = 0x1

.field protected static final EVENT_LOAD_DONE:I = 0x2

.field protected static final EVENT_LOAD_PB_DONE:I = 0x6

.field protected static final EVENT_UPDATE_DONE:I = 0x3

.field protected static final EVENT_UPDATE_PB_DONE:I = 0x9

.field private static final FAKE_ADN_SIZE_RESULT:[I


# instance fields
.field protected adnCache:Lcom/android/internal/telephony/AdnRecordCache;

.field private mAdnError:Lcom/android/internal/telephony/ADNErrorType;

.field protected mBaseHandler:Landroid/os/Handler;

.field protected mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

.field protected final mLock:Ljava/lang/Object;

.field protected final mLockHtcPbk:Ljava/lang/Object;

.field protected final mQueryHtcPbk:Ljava/lang/Object;

.field private mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field protected phone:Lcom/android/internal/telephony/PhoneBase;

.field private phoneBookEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/PhoneBookEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected recordSize:[I

.field protected records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected success:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->FAKE_ADN_SIZE_RESULT:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLockHtcPbk:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mQueryHtcPbk:Ljava/lang/Object;

    .line 93
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    .line 257
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 260
    invoke-static {p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getHtcIccPbkEntryCache(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    .line 262
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 264
    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->FAKE_ADN_SIZE_RESULT:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phoneBookEntries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phoneBookEntries:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static getHtcIccPbkEntryCache(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;
    .locals 1
    .parameter "phone"

    .prologue
    .line 245
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->STE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 250
    :goto_0
    return-object v0

    .line 247
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportSIMPhonebookbyIccIO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    new-instance v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    goto :goto_0

    .line 250
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 718
    const-string v0, "IccPhoneBookInterfaceManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    return-void
.end method

.method private updateEfForIccType(I)I
    .locals 2
    .parameter "efid"

    .prologue
    .line 451
    const/16 v0, 0x6f3a

    if-ne p1, v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    const/16 p1, 0x4f30

    .line 456
    .end local p1
    :cond_0
    return p1
.end method


# virtual methods
.method public addSimPbkEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;
    .locals 12
    .parameter "name"
    .parameter "number"
    .parameter "number1"
    .parameter "number2"
    .parameter "email"

    .prologue
    .line 465
    new-instance v8, Lcom/android/internal/telephony/ADNErrorType;

    invoke-direct {v8}, Lcom/android/internal/telephony/ADNErrorType;-><init>()V

    .line 467
    .local v8, error:Lcom/android/internal/telephony/ADNErrorType;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-nez v0, :cond_1

    .line 476
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/android/internal/telephony/ADNErrorType;->success:Z

    .line 477
    const/4 v0, 0x2

    iput v0, v8, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    .line 479
    const-string v0, "addSimPbkEntry failed because SIM is not ready"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    .line 511
    :goto_0
    return-object v8

    .line 485
    :cond_1
    iget-object v11, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLockHtcPbk:Ljava/lang/Object;

    monitor-enter v11

    .line 486
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 488
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    if-eqz v0, :cond_2

    .line 490
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 492
    .local v6, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;->addPBKEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)J

    move-result-wide v9

    .line 494
    .local v9, index:J
    iput-wide v9, v8, Lcom/android/internal/telephony/ADNErrorType;->index:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    .end local v6           #response:Landroid/os/Message;
    .end local v9           #index:J
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLockHtcPbk:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 506
    :goto_1
    :try_start_2
    iget v0, v8, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    if-eqz v0, :cond_3

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addSimPbkEntry failed: mError = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    .line 511
    :cond_3
    monitor-exit v11

    goto :goto_0

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 501
    :catch_0
    move-exception v7

    .line 503
    .local v7, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v0, "interrupted while trying to add pbk entry"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method protected checkThread()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const-string v0, "query() called on the main UI thread!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 433
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call query on this provder from the main UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_0
    return-void
.end method

.method public deleteSimPbkEntry(I)Lcom/android/internal/telephony/ADNErrorType;
    .locals 6
    .parameter "recordNumber"

    .prologue
    .line 523
    new-instance v1, Lcom/android/internal/telephony/ADNErrorType;

    invoke-direct {v1}, Lcom/android/internal/telephony/ADNErrorType;-><init>()V

    .line 525
    .local v1, error:Lcom/android/internal/telephony/ADNErrorType;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 528
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 532
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v3

    if-nez v3, :cond_1

    .line 534
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/internal/telephony/ADNErrorType;->success:Z

    .line 535
    const/4 v3, 0x2

    iput v3, v1, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    .line 537
    const-string v3, "deleteSimPbkEntry failed because SIM is not ready"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    .line 568
    :goto_0
    return-object v1

    .line 543
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLockHtcPbk:Ljava/lang/Object;

    monitor-enter v4

    .line 544
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 546
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    if-eqz v3, :cond_2

    .line 548
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/16 v5, 0x8

    invoke-virtual {v3, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 550
    .local v2, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    invoke-interface {v3, p1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;->deletePBKEntry(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    .end local v2           #response:Landroid/os/Message;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLockHtcPbk:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 563
    :goto_1
    :try_start_2
    iget v3, v1, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    if-eqz v3, :cond_3

    .line 565
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteSimPbkEntry failed: mError = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v1, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    .line 568
    :cond_3
    monitor-exit v4

    goto :goto_0

    .line 569
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 558
    :catch_0
    move-exception v0

    .line 560
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "interrupted while trying to delete sim pbk entry"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 268
    const-string v0, "dispose"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;->dispose()V

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    .line 274
    :cond_0
    return-void
.end method

.method public dropSimPbkEntries()V
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;->dropSimPbkEntries()V

    .line 697
    :cond_0
    return-void
.end method

.method public dropSimPbkEntriesExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->dropSimPbkEntries()V

    .line 703
    return-void
.end method

.method public getAdnCapacity()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->getAdnCapacity()I

    move-result v0

    return v0
.end method

.method public getAdnRecordsInEf(I)Ljava/util/List;
    .locals 5
    .parameter "efid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 411
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 415
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdnRecordsInEF: efid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 418
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 419
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 420
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 421
    .local v1, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 422
    .local v0, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/AdnRecordCache;->extensionEfForEf(I)I

    move-result v4

    invoke-virtual {v2, p1, v4, v0}, Lcom/android/internal/telephony/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 423
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 424
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->records:Ljava/util/List;

    return-object v2

    .line 424
    .end local v0           #response:Landroid/os/Message;
    .end local v1           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public abstract getAdnRecordsSize(I)[I
.end method

.method public getFreeAdn()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->getFreeAdn()I

    move-result v0

    return v0
.end method

.method public getAdnRecordsSizeExt(II)[I
    .locals 1
    .parameter "efid"
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 752
    const-string v0, "Error! getAdnRecordsSizeExt() in IccPhoneBookInterfaceManager should not be called."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 753
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastError()Lcom/android/internal/telephony/ADNErrorType;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->getLastError()Lcom/android/internal/telephony/ADNErrorType;

    move-result-object v0

    return-object v0
.end method

.method public getPBKEntries()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/PhoneBookEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 637
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 640
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 644
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v2

    if-nez v2, :cond_1

    .line 646
    new-instance v2, Lcom/android/internal/telephony/IccPhoneBookException;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccPhoneBookException;-><init>(I)V

    throw v2

    .line 650
    :cond_1
    const-string v2, "getPBKEntries"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    .line 652
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mQueryHtcPbk:Ljava/lang/Object;

    monitor-enter v3

    .line 653
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 654
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 659
    .local v1, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    if-eqz v2, :cond_2

    .line 661
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;->requestLoadAllPBEntry(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mQueryHtcPbk:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 676
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 677
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phoneBookEntries:Ljava/util/List;

    return-object v2

    .line 665
    :cond_2
    :try_start_3
    const-string v2, "getPBKEntries with no cache"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    .line 666
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 667
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 676
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 673
    .restart local v1       #response:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 674
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "interrupted while trying to load from the SIM"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public isSIMPhonebookFileId(I)Z
    .locals 1
    .parameter "efid"

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;->isSIMPhonebookFileId(I)Z

    move-result v0

    .line 713
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract logd(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method protected publish()V
    .locals 1

    .prologue
    .line 278
    const-string v0, "simphonebook"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 279
    return-void
.end method

.method public setupIccRecords(Lcom/android/internal/telephony/IccRecords;)V
    .locals 3
    .parameter "iccRecords"

    .prologue
    .line 724
    const/4 v0, 0x0

    .line 725
    .local v0, iccFileHandler:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz p1, :cond_0

    .line 726
    iget-object v0, p1, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 729
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access Phonebook from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    .line 732
    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 733
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    if-eqz v1, :cond_1

    .line 734
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;->setupIccFileHandler(Lcom/android/internal/telephony/IccFileHandler;)V

    .line 736
    :cond_1
    return-void

    .line 729
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 8
    .parameter "efid"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "index"
    .parameter "pin2"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAdnRecordsInEfByIndex: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pin2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 371
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 374
    iget-object v7, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 375
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    .line 377
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 378
    .local v6, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 379
    .local v5, response:Landroid/os/Message;
    new-instance v2, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {v2, p2, p3}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .local v2, newAdn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move v1, p1

    move v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/AdnRecordCache;->updateAdnByIndex(ILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    .line 381
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 382
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    return v0

    .line 382
    .end local v2           #newAdn:Lcom/android/internal/telephony/AdnRecord;
    .end local v5           #response:Landroid/os/Message;
    .end local v6           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "efid"
    .parameter "oldTag"
    .parameter "oldPhoneNumber"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "pin2"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAdnRecordsInEfBySearch: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "==>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pin2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 323
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 325
    iget-object v7, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 326
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    .line 328
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 329
    .local v6, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 330
    .local v5, response:Landroid/os/Message;
    new-instance v2, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {v2, p2, p3}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .local v2, oldAdn:Lcom/android/internal/telephony/AdnRecord;
    new-instance v3, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {v3, p4, p5}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .local v3, newAdn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move v1, p1

    move-object v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/AdnRecordCache;->updateAdnBySearch(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V

    .line 333
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 334
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    return v0

    .line 334
    .end local v2           #oldAdn:Lcom/android/internal/telephony/AdnRecord;
    .end local v3           #newAdn:Lcom/android/internal/telephony/AdnRecord;
    .end local v5           #response:Landroid/os/Message;
    .end local v6           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateSimPbkEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;
    .locals 11
    .parameter "recordNumber"
    .parameter "name"
    .parameter "number"
    .parameter "number1"
    .parameter "number2"
    .parameter "email"

    .prologue
    .line 577
    new-instance v9, Lcom/android/internal/telephony/ADNErrorType;

    invoke-direct {v9}, Lcom/android/internal/telephony/ADNErrorType;-><init>()V

    .line 579
    .local v9, error:Lcom/android/internal/telephony/ADNErrorType;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-nez v0, :cond_1

    .line 589
    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/android/internal/telephony/ADNErrorType;->success:Z

    .line 590
    const/4 v0, 0x2

    iput v0, v9, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    .line 592
    const-string v0, "updateSimPbkEntry failed because SIM is not ready"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    .line 622
    :goto_0
    return-object v9

    .line 597
    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLockHtcPbk:Ljava/lang/Object;

    monitor-enter v10

    .line 598
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 600
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    if-eqz v0, :cond_2

    .line 602
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 604
    .local v7, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;->updatePBKEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    .end local v7           #response:Landroid/os/Message;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLockHtcPbk:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 617
    :goto_1
    :try_start_2
    iget v0, v9, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    if-eqz v0, :cond_3

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSimPbkEntry failed: mError = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    .line 622
    :cond_3
    monitor-exit v10

    goto :goto_0

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 612
    :catch_0
    move-exception v8

    .line 614
    .local v8, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v0, "interrupted while trying to update sim pbk entry"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method protected waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2
    .parameter "status"

    .prologue
    .line 440
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 442
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "interrupted while trying to update by search"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 447
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
