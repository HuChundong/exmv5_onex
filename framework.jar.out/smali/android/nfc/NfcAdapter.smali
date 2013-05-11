.class public final Landroid/nfc/NfcAdapter;
.super Ljava/lang/Object;
.source "NfcAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/NfcAdapter$6;,
        Landroid/nfc/NfcAdapter$CallNfcHelper;,
        Landroid/nfc/NfcAdapter$CallNfcMethod;,
        Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;,
        Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;,
        Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    }
.end annotation


# static fields
.field public static final ACTION_ADAPTER_STATE_CHANGED:Ljava/lang/String; = "android.nfc.action.ADAPTER_STATE_CHANGED"

.field public static final ACTION_CONNECTIVITY_EVENT_DETECTED:Ljava/lang/String; = "com.nxp.action.CONNECTIVITY_EVENT_DETECTED"

.field public static final ACTION_HANDOVER_TRANSFER_DONE:Ljava/lang/String; = "android.nfc.action.HANDOVER_TRANSFER_DONE"

.field public static final ACTION_HANDOVER_TRANSFER_STARTED:Ljava/lang/String; = "android.nfc.action.HANDOVER_TRANSFER_STARTED"

.field public static final ACTION_NDEF_DISCOVERED:Ljava/lang/String; = "android.nfc.action.NDEF_DISCOVERED"

.field public static final ACTION_TAG_DISCOVERED:Ljava/lang/String; = "android.nfc.action.TAG_DISCOVERED"

.field public static final ACTION_TAG_LEFT_FIELD:Ljava/lang/String; = "android.nfc.action.TAG_LOST"

.field public static final ACTION_TECH_DISCOVERED:Ljava/lang/String; = "android.nfc.action.TECH_DISCOVERED"

.field public static final ACTION_TRANSACTION_DETECTED:Ljava/lang/String; = "com.nxp.action.TRANSACTION_DETECTED"

.field public static final EXTRA_ADAPTER_STATE:Ljava/lang/String; = "android.nfc.extra.ADAPTER_STATE"

.field public static final EXTRA_AID:Ljava/lang/String; = "com.nxp.extra.AID"

.field public static final EXTRA_DATA:Ljava/lang/String; = "com.nxp.extra.DATA"

.field public static final EXTRA_HANDOVER_TRANSFER_STATUS:Ljava/lang/String; = "android.nfc.extra.HANDOVER_TRANSFER_STATUS"

.field public static final EXTRA_HANDOVER_TRANSFER_URI:Ljava/lang/String; = "android.nfc.extra.HANDOVER_TRANSFER_URI"

.field public static final EXTRA_ID:Ljava/lang/String; = "android.nfc.extra.ID"

.field public static final EXTRA_NDEF_MESSAGES:Ljava/lang/String; = "android.nfc.extra.NDEF_MESSAGES"

.field public static final EXTRA_TAG:Ljava/lang/String; = "android.nfc.extra.TAG"

.field public static final HANDOVER_TRANSFER_STATUS_FAILURE:I = 0x1

.field public static final HANDOVER_TRANSFER_STATUS_SUCCESS:I = 0x0

.field public static final LLCP_LINK_STATE_ACTIVATED:I = 0x0

.field public static final SMART_MX_ID:Ljava/lang/String; = "com.nxp.smart_mx.ID"

.field public static final STATE_OFF:I = 0x1

.field public static final STATE_ON:I = 0x3

.field public static final STATE_TURNING_OFF:I = 0x4

.field public static final STATE_TURNING_ON:I = 0x2

.field static final TAG:Ljava/lang/String; = "NFC"

.field public static final UICC_ID:Ljava/lang/String; = "com.nxp.uicc.ID"

.field static sIsInitialized:Z

.field static sNfcAdapters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/nfc/NfcAdapter;",
            ">;"
        }
    .end annotation
.end field

.field static sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;

.field static sService:Landroid/nfc/INfcAdapter;

.field static sTagService:Landroid/nfc/INfcTag;


# instance fields
.field final mContext:Landroid/content/Context;

.field mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

.field final mNfcActivityManager:Landroid/nfc/NfcActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    sput-boolean v0, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    .line 295
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 487
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1159
    new-instance v0, Landroid/nfc/NfcAdapter$3;

    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapter$3;-><init>(Landroid/nfc/NfcAdapter;)V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    .line 488
    iput-object p1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    .line 489
    new-instance v0, Landroid/nfc/NfcActivityManager;

    invoke-direct {v0, p0}, Landroid/nfc/NfcActivityManager;-><init>(Landroid/nfc/NfcAdapter;)V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    .line 490
    return-void
.end method

.method public static getDefaultAdapter()Landroid/nfc/NfcAdapter;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 481
    const-string v0, "NFC"

    const-string v1, "WARNING: NfcAdapter.getDefaultAdapter() is deprecated, use NfcAdapter.getDefaultAdapter(Context) instead"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 484
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    .locals 3
    .parameter "context"

    .prologue
    .line 450
    if-nez p0, :cond_0

    .line 451
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 453
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 454
    if-nez p0, :cond_1

    .line 455
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context not associated with any application (using a mock context?)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 459
    :cond_1
    const-string/jumbo v1, "nfc"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    .line 460
    .local v0, manager:Landroid/nfc/NfcManager;
    if-nez v0, :cond_2

    .line 462
    const/4 v1, 0x0

    .line 464
    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    goto :goto_0
.end method

.method public static declared-synchronized getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    .locals 5
    .parameter "context"

    .prologue
    .line 391
    const-class v3, Landroid/nfc/NfcAdapter;

    monitor-enter v3

    :try_start_0
    sget-boolean v2, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    if-nez v2, :cond_2

    .line 393
    invoke-static {}, Landroid/nfc/NfcAdapter;->hasNfcFeature()Z

    move-result v2

    if-nez v2, :cond_0

    .line 394
    const-string v2, "NFC"

    const-string/jumbo v4, "this device does not have NFC support"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 398
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/nfc/NfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    .line 399
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    if-nez v2, :cond_1

    .line 400
    const-string v2, "NFC"

    const-string v4, "could not retrieve NFC service"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    :cond_1
    :try_start_2
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 410
    const/4 v2, 0x1

    :try_start_3
    sput-boolean v2, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    .line 412
    :cond_2
    if-nez p0, :cond_5

    .line 413
    sget-object v2, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v2, :cond_3

    .line 414
    new-instance v2, Landroid/nfc/NfcAdapter;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/nfc/NfcAdapter;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 416
    :cond_3
    sget-object v0, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 423
    :cond_4
    :goto_0
    monitor-exit v3

    return-object v0

    .line 405
    :catch_0
    move-exception v1

    .line 406
    .local v1, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v2, "NFC"

    const-string v4, "could not retrieve NFC Tag service"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 418
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_5
    sget-object v2, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcAdapter;

    .line 419
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_4

    .line 420
    new-instance v0, Landroid/nfc/NfcAdapter;

    .end local v0           #adapter:Landroid/nfc/NfcAdapter;
    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapter;-><init>(Landroid/content/Context;)V

    .line 421
    .restart local v0       #adapter:Landroid/nfc/NfcAdapter;
    sget-object v2, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private static getServiceInterface()Landroid/nfc/INfcAdapter;
    .locals 2

    .prologue
    .line 429
    const-string/jumbo v1, "nfc"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 430
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 431
    const/4 v1, 0x0

    .line 433
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v1

    goto :goto_0
.end method

.method private static hasNfcFeature()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 372
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 373
    .local v1, pm:Landroid/content/pm/IPackageManager;
    if-nez v1, :cond_0

    .line 374
    const-string v3, "NFC"

    const-string v4, "Cannot get package manager, assuming no NFC feature"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :goto_0
    return v2

    .line 378
    :cond_0
    :try_start_0
    const-string v3, "android.hardware.nfc"

    invoke-interface {v1, v3}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "NFC"

    const-string v4, "Package manager query failed, assuming no NFC feature"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private helperCallNfc(Landroid/nfc/NfcAdapter$CallNfcHelper;)Z
    .locals 2
    .parameter "usage"

    .prologue
    .line 573
    new-instance v0, Landroid/nfc/NfcAdapter$1;

    invoke-direct {v0, p0, p1}, Landroid/nfc/NfcAdapter$1;-><init>(Landroid/nfc/NfcAdapter;Landroid/nfc/NfcAdapter$CallNfcHelper;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter$1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public activeSwp()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1414
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getDefaultSelectedSecureElement()Ljava/lang/String;

    move-result-object v1

    .line 1417
    .local v1, seID:Ljava/lang/String;
    const-string v2, "com.nxp.uicc.ID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1418
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "UICC is not selected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1422
    :cond_0
    :try_start_0
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->activeSwp()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1427
    return-void

    .line 1423
    :catch_0
    move-exception v0

    .line 1424
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v3, "activeSwp failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1425
    new-instance v2, Ljava/io/IOException;

    const-string v3, "activeSwp failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 522
    const-string v2, "NFC"

    const-string v3, "NFC service dead - attempting to recover"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 523
    invoke-static {}, Landroid/nfc/NfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v1

    .line 524
    .local v1, service:Landroid/nfc/INfcAdapter;
    if-nez v1, :cond_0

    .line 525
    const-string v2, "NFC"

    const-string v3, "could not retrieve NFC service during service recovery"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :goto_0
    return-void

    .line 532
    :cond_0
    sput-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    .line 534
    :try_start_0
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, ee:Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v3, "could not retrieve NFC tag service during service recovery"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public createNfcSecureElementConnection()Landroid/nfc/NfcSecureElement;
    .locals 3

    .prologue
    .line 1518
    :try_start_0
    new-instance v1, Landroid/nfc/NfcSecureElement;

    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getNfcSecureElementInterface()Landroid/nfc/INfcSecureElement;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/nfc/NfcSecureElement;-><init>(Landroid/nfc/INfcSecureElement;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1521
    :goto_0
    return-object v1

    .line 1519
    :catch_0
    move-exception v0

    .line 1520
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "createNfcSecureElementConnection failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1521
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deSelectedSecureElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1464
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->deselectSecureElement()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1469
    return-void

    .line 1465
    :catch_0
    move-exception v0

    .line 1466
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "deselectSecureElement failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1467
    new-instance v1, Ljava/io/IOException;

    const-string v2, "deselectSecureElement failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public disable()Z
    .locals 1

    .prologue
    .line 687
    sget-object v0, Landroid/nfc/NfcAdapter$CallNfcHelper;->NFC_OFF:Landroid/nfc/NfcAdapter$CallNfcHelper;

    invoke-direct {p0, v0}, Landroid/nfc/NfcAdapter;->helperCallNfc(Landroid/nfc/NfcAdapter$CallNfcHelper;)Z

    move-result v0

    return v0
.end method

.method public disableForegroundDispatch(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 1154
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    .line 1156
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatchInternal(Landroid/app/Activity;Z)V

    .line 1157
    return-void
.end method

.method disableForegroundDispatchInternal(Landroid/app/Activity;Z)V
    .locals 5
    .parameter "activity"
    .parameter "force"

    .prologue
    .line 1168
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/nfc/INfcAdapter;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    .line 1169
    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1170
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You must disable foreground dispatching while your activity is still resumed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1173
    :catch_0
    move-exception v0

    .line 1174
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 1176
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public disableForegroundNdefPush(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1234
    if-nez p1, :cond_0

    .line 1235
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1237
    :cond_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->enforceResumed(Landroid/app/Activity;)V

    .line 1238
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, v1}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V

    .line 1239
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, v1}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;)V

    .line 1240
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, v1}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V

    .line 1241
    return-void
.end method

.method public disableNdefPush()Z
    .locals 1

    .prologue
    .line 1258
    sget-object v0, Landroid/nfc/NfcAdapter$CallNfcHelper;->NDEF_DISABLE:Landroid/nfc/NfcAdapter$CallNfcHelper;

    invoke-direct {p0, v0}, Landroid/nfc/NfcAdapter;->helperCallNfc(Landroid/nfc/NfcAdapter$CallNfcHelper;)Z

    move-result v0

    return v0
.end method

.method public disableP2P()Z
    .locals 1

    .prologue
    .line 1608
    sget-object v0, Landroid/nfc/NfcAdapter$CallNfcHelper;->NFC_DISABLE_P2P:Landroid/nfc/NfcAdapter$CallNfcHelper;

    invoke-direct {p0, v0}, Landroid/nfc/NfcAdapter;->helperCallNfc(Landroid/nfc/NfcAdapter$CallNfcHelper;)Z

    move-result v0

    return v0
.end method

.method public disableReaderWriter()Z
    .locals 1

    .prologue
    .line 1584
    sget-object v0, Landroid/nfc/NfcAdapter$CallNfcHelper;->NFC_DISABLE_RW:Landroid/nfc/NfcAdapter$CallNfcHelper;

    invoke-direct {p0, v0}, Landroid/nfc/NfcAdapter;->helperCallNfc(Landroid/nfc/NfcAdapter$CallNfcHelper;)Z

    move-result v0

    return v0
.end method

.method public dispatch(Landroid/nfc/Tag;)V
    .locals 3
    .parameter "tag"

    .prologue
    .line 1296
    if-nez p1, :cond_0

    .line 1297
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "tag cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1300
    :cond_0
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->dispatch(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1304
    :goto_0
    return-void

    .line 1301
    :catch_0
    move-exception v0

    .line 1302
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public enable()Z
    .locals 1

    .prologue
    .line 664
    sget-object v0, Landroid/nfc/NfcAdapter$CallNfcHelper;->NFC_ON:Landroid/nfc/NfcAdapter$CallNfcHelper;

    invoke-direct {p0, v0}, Landroid/nfc/NfcAdapter;->helperCallNfc(Landroid/nfc/NfcAdapter$CallNfcHelper;)Z

    move-result v0

    return v0
.end method

.method public enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V
    .locals 5
    .parameter "activity"
    .parameter "intent"
    .parameter "filters"
    .parameter "techLists"

    .prologue
    .line 1119
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1120
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1122
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1123
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Foreground dispatch can only be enabled when your activity is resumed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1127
    :cond_2
    const/4 v1, 0x0

    .line 1128
    .local v1, parcel:Landroid/nfc/TechListParcel;
    if-eqz p4, :cond_3

    :try_start_0
    array-length v3, p4

    if-lez v3, :cond_3

    .line 1129
    new-instance v2, Landroid/nfc/TechListParcel;

    invoke-direct {v2, p4}, Landroid/nfc/TechListParcel;-><init>([[Ljava/lang/String;)V

    .end local v1           #parcel:Landroid/nfc/TechListParcel;
    .local v2, parcel:Landroid/nfc/TechListParcel;
    move-object v1, v2

    .line 1131
    .end local v2           #parcel:Landroid/nfc/TechListParcel;
    .restart local v1       #parcel:Landroid/nfc/TechListParcel;
    :cond_3
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    invoke-virtual {v3, p1, v4}, Landroid/app/ActivityThread;->registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    .line 1133
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v3, p2, p3, v1}, Landroid/nfc/INfcAdapter;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1137
    :goto_0
    return-void

    .line 1134
    :catch_0
    move-exception v0

    .line 1135
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public enableForegroundNdefPush(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V
    .locals 1
    .parameter "activity"
    .parameter "message"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1206
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1207
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1209
    :cond_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->enforceResumed(Landroid/app/Activity;)V

    .line 1210
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V

    .line 1211
    return-void
.end method

.method public enableNdefPush()Z
    .locals 1

    .prologue
    .line 1249
    sget-object v0, Landroid/nfc/NfcAdapter$CallNfcHelper;->NDEF_ENABLE:Landroid/nfc/NfcAdapter$CallNfcHelper;

    invoke-direct {p0, v0}, Landroid/nfc/NfcAdapter;->helperCallNfc(Landroid/nfc/NfcAdapter$CallNfcHelper;)Z

    move-result v0

    return v0
.end method

.method public enableP2P()Z
    .locals 1

    .prologue
    .line 1596
    sget-object v0, Landroid/nfc/NfcAdapter$CallNfcHelper;->NFC_ENABLE_P2P:Landroid/nfc/NfcAdapter$CallNfcHelper;

    invoke-direct {p0, v0}, Landroid/nfc/NfcAdapter;->helperCallNfc(Landroid/nfc/NfcAdapter$CallNfcHelper;)Z

    move-result v0

    return v0
.end method

.method public enableReaderWriter()Z
    .locals 1

    .prologue
    .line 1572
    sget-object v0, Landroid/nfc/NfcAdapter$CallNfcHelper;->NFC_ENABLE_RW:Landroid/nfc/NfcAdapter$CallNfcHelper;

    invoke-direct {p0, v0}, Landroid/nfc/NfcAdapter;->helperCallNfc(Landroid/nfc/NfcAdapter$CallNfcHelper;)Z

    move-result v0

    return v0
.end method

.method enforceResumed(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 1334
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1335
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "API cannot be called while activity is paused"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1337
    :cond_0
    return-void
.end method

.method public getAdapterState()I
    .locals 2

    .prologue
    .line 639
    new-instance v0, Landroid/nfc/NfcAdapter$2;

    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapter$2;-><init>(Landroid/nfc/NfcAdapter;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter$2;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultSelectedSecureElement()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1437
    const/4 v1, 0x0

    .line 1441
    .local v1, seID:I
    :try_start_0
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getSelectedSecureElement()I

    move-result v1

    .line 1442
    const v2, 0xabcdf0

    if-ne v1, v2, :cond_0

    .line 1443
    const-string v2, "com.nxp.uicc.ID"

    .line 1445
    :goto_0
    return-object v2

    .line 1444
    :cond_0
    const v2, 0xabcdef

    if-ne v1, v2, :cond_1

    .line 1445
    const-string v2, "com.nxp.smart_mx.ID"

    goto :goto_0

    .line 1447
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No Secure Element selected"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1449
    :catch_0
    move-exception v0

    .line 1450
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v3, "getSelectedSecureElement failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1451
    new-instance v2, Ljava/io/IOException;

    const-string v3, "getSelectedSecureElement failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getNfcAdapterExtrasInterface()Landroid/nfc/INfcAdapterExtras;
    .locals 3

    .prologue
    .line 1321
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1322
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "You need a context on NfcAdapter to use the  NFC extras APIs"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1326
    :cond_0
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/nfc/INfcAdapter;->getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1329
    :goto_0
    return-object v1

    .line 1327
    :catch_0
    move-exception v0

    .line 1328
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 1329
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "param"

    .prologue
    .line 1620
    new-instance v0, Landroid/nfc/NfcAdapter$4;

    invoke-direct {v0, p0, p1}, Landroid/nfc/NfcAdapter$4;-><init>(Landroid/nfc/NfcAdapter;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter$4;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getSdkVersion()I
    .locals 1

    .prologue
    .line 1340
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1341
    const/16 v0, 0x9

    .line 1343
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_0
.end method

.method public getService()Landroid/nfc/INfcAdapter;
    .locals 1

    .prologue
    .line 504
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 505
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    return-object v0
.end method

.method public getTagService()Landroid/nfc/INfcTag;
    .locals 1

    .prologue
    .line 513
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 514
    sget-object v0, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;

    return-object v0
.end method

.method public isCardEmuEnabled()Z
    .locals 1

    .prologue
    .line 1560
    sget-object v0, Landroid/nfc/NfcAdapter$CallNfcHelper;->NFC_CARDEMU_ENABLED:Landroid/nfc/NfcAdapter$CallNfcHelper;

    invoke-direct {p0, v0}, Landroid/nfc/NfcAdapter;->helperCallNfc(Landroid/nfc/NfcAdapter$CallNfcHelper;)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 622
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNdefPushEnabled()Z
    .locals 1

    .prologue
    .line 1285
    sget-object v0, Landroid/nfc/NfcAdapter$CallNfcHelper;->NDEF_QUERY:Landroid/nfc/NfcAdapter$CallNfcHelper;

    invoke-direct {p0, v0}, Landroid/nfc/NfcAdapter;->helperCallNfc(Landroid/nfc/NfcAdapter$CallNfcHelper;)Z

    move-result v0

    return v0
.end method

.method public isP2PEnabled()Z
    .locals 1

    .prologue
    .line 1546
    sget-object v0, Landroid/nfc/NfcAdapter$CallNfcHelper;->NFC_P2P_ENABLED:Landroid/nfc/NfcAdapter$CallNfcHelper;

    invoke-direct {p0, v0}, Landroid/nfc/NfcAdapter;->helperCallNfc(Landroid/nfc/NfcAdapter$CallNfcHelper;)Z

    move-result v0

    return v0
.end method

.method public isReaderWriterEnabled()Z
    .locals 1

    .prologue
    .line 1534
    sget-object v0, Landroid/nfc/NfcAdapter$CallNfcHelper;->NFC_RW_ENABLED:Landroid/nfc/NfcAdapter$CallNfcHelper;

    invoke-direct {p0, v0}, Landroid/nfc/NfcAdapter;->helperCallNfc(Landroid/nfc/NfcAdapter$CallNfcHelper;)Z

    move-result v0

    return v0
.end method

.method public selectDefaultSecureElement(Ljava/lang/String;)V
    .locals 7
    .parameter "seId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1356
    const/4 v2, 0x0

    .line 1357
    .local v2, seID:I
    const/4 v4, 0x0

    .line 1359
    .local v4, seSelected:Z
    const-string v5, "com.nxp.uicc.ID"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1360
    const v2, 0xabcdf0

    .line 1370
    :goto_0
    :try_start_0
    sget-object v5, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getSelectedSecureElement()I

    move-result v5

    if-eq v5, v2, :cond_0

    .line 1371
    sget-object v5, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->deselectSecureElement()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1380
    :cond_0
    :try_start_1
    sget-object v5, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getSecureElementList()[I

    move-result-object v3

    .line 1381
    .local v3, seList:[I
    if-eqz v3, :cond_4

    array-length v5, v3

    if-eqz v5, :cond_4

    .line 1382
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_4

    .line 1383
    aget v5, v3, v1

    if-ne v5, v2, :cond_1

    .line 1385
    sget-object v5, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v5, v2}, Landroid/nfc/INfcAdapter;->selectSecureElement(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1386
    const/4 v4, 0x1

    .line 1382
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1361
    .end local v1           #i:I
    .end local v3           #seList:[I
    :cond_2
    const-string v5, "com.nxp.smart_mx.ID"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1362
    const v2, 0xabcdef

    goto :goto_0

    .line 1364
    :cond_3
    const-string v5, "NFC"

    const-string/jumbo v6, "selectDefaultSecureElement: wrong Secure Element ID"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "selectDefaultSecureElement failed: Wronf Secure Element ID"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1373
    :catch_0
    move-exception v0

    .line 1374
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "NFC"

    const-string/jumbo v6, "selectDefaultSecureElement: getSelectedSecureElement failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1375
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Failure in deselecting the selected Secure Element"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1391
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v3       #seList:[I
    :cond_4
    if-nez v4, :cond_5

    .line 1392
    :try_start_2
    const-string v5, "com.nxp.uicc.ID"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1393
    sget-object v5, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v5, v2}, Landroid/nfc/INfcAdapter;->storeSePreference(I)V

    .line 1394
    new-instance v5, Ljava/io/IOException;

    const-string v6, "UICC not detected"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1400
    .end local v3           #seList:[I
    :catch_1
    move-exception v0

    .line 1401
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v5, "NFC"

    const-string/jumbo v6, "selectUiccCardEmulation: getSecureElementList failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1403
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5
    return-void

    .line 1395
    .restart local v3       #seList:[I
    :cond_6
    :try_start_3
    const-string v5, "com.nxp.smart_mx.ID"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1396
    sget-object v5, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v5, v2}, Landroid/nfc/INfcAdapter;->storeSePreference(I)V

    .line 1397
    new-instance v5, Ljava/io/IOException;

    const-string v6, "SMART_MX not detected"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method public setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V
    .locals 7
    .parameter "uris"
    .parameter "activity"

    .prologue
    .line 751
    if-nez p2, :cond_0

    .line 752
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "activity cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 754
    :cond_0
    if-eqz p1, :cond_4

    .line 755
    move-object v0, p1

    .local v0, arr$:[Landroid/net/Uri;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_4

    aget-object v4, v0, v1

    .line 756
    .local v4, uri:Landroid/net/Uri;
    if-nez v4, :cond_1

    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "Uri not allowed to be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 758
    :cond_1
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 759
    .local v3, scheme:Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v5, "file"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "content"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 761
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "URI needs to have either scheme file or scheme content"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 755
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 766
    .end local v0           #arr$:[Landroid/net/Uri;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #scheme:Ljava/lang/String;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_4
    iget-object v5, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v5, p2, p1}, Landroid/nfc/NfcActivityManager;->setNdefPushContentUri(Landroid/app/Activity;[Landroid/net/Uri;)V

    .line 767
    return-void
.end method

.method public setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V
    .locals 2
    .parameter "callback"
    .parameter "activity"

    .prologue
    .line 827
    if-nez p2, :cond_0

    .line 828
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 830
    :cond_0
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p2, p1}, Landroid/nfc/NfcActivityManager;->setNdefPushContentUriCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;)V

    .line 831
    return-void
.end method

.method public setDefaultSecureElementState(Z)V
    .locals 4
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1478
    const/4 v1, 0x0

    .line 1482
    .local v1, seID:I
    :try_start_0
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getSelectedSecureElement()I

    move-result v1

    .line 1485
    if-nez v1, :cond_0

    .line 1486
    const-string v2, "NFC"

    const-string v3, "No Secure Element selected"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1511
    :goto_0
    return-void

    .line 1490
    :cond_0
    if-eqz p1, :cond_1

    .line 1493
    :try_start_1
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/nfc/INfcAdapter;->setSecureElementState(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1494
    :catch_0
    move-exception v0

    .line 1495
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "NFC"

    const-string v3, "Enable card emulation failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1496
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Enable card emulation failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1507
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1508
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v3, "getSelectedSecureElement failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1509
    new-instance v2, Ljava/io/IOException;

    const-string v3, "getSelectedSecureElement failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1501
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    :try_start_3
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/nfc/INfcAdapter;->setSecureElementState(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1502
    :catch_2
    move-exception v0

    .line 1503
    .restart local v0       #e:Landroid/os/RemoteException;
    :try_start_4
    const-string v2, "NFC"

    const-string v3, "Disable card emulation failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1504
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Disable card emulation failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
.end method

.method public varargs setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 8
    .parameter "message"
    .parameter "activity"
    .parameter "activities"

    .prologue
    .line 906
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getSdkVersion()I

    move-result v5

    .line 908
    .local v5, targetSdkVersion:I
    if-nez p2, :cond_1

    .line 909
    :try_start_0
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "activity cannot be null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    :catch_0
    move-exception v2

    .line 919
    .local v2, e:Ljava/lang/IllegalStateException;
    const/16 v6, 0x10

    if-ge v5, v6, :cond_3

    .line 921
    const-string v6, "NFC"

    const-string v7, "Cannot call API with Activity that has already been destroyed"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 928
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :cond_0
    return-void

    .line 911
    :cond_1
    :try_start_1
    iget-object v6, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v6, p2, p1}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V

    .line 912
    move-object v1, p3

    .local v1, arr$:[Landroid/app/Activity;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 913
    .local v0, a:Landroid/app/Activity;
    if-nez v0, :cond_2

    .line 914
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "activities cannot contain null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 916
    :cond_2
    iget-object v6, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v6, v0, p1}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 912
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 925
    .end local v0           #a:Landroid/app/Activity;
    .end local v1           #arr$:[Landroid/app/Activity;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .restart local v2       #e:Ljava/lang/IllegalStateException;
    :cond_3
    throw v2
.end method

.method public varargs setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 8
    .parameter "callback"
    .parameter "activity"
    .parameter "activities"

    .prologue
    .line 997
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getSdkVersion()I

    move-result v5

    .line 999
    .local v5, targetSdkVersion:I
    if-nez p2, :cond_1

    .line 1000
    :try_start_0
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "activity cannot be null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1009
    :catch_0
    move-exception v2

    .line 1010
    .local v2, e:Ljava/lang/IllegalStateException;
    const/16 v6, 0x10

    if-ge v5, v6, :cond_3

    .line 1012
    const-string v6, "NFC"

    const-string v7, "Cannot call API with Activity that has already been destroyed"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1019
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :cond_0
    return-void

    .line 1002
    :cond_1
    :try_start_1
    iget-object v6, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v6, p2, p1}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;)V

    .line 1003
    move-object v1, p3

    .local v1, arr$:[Landroid/app/Activity;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 1004
    .local v0, a:Landroid/app/Activity;
    if-nez v0, :cond_2

    .line 1005
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "activities cannot contain null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1007
    :cond_2
    iget-object v6, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v6, v0, p1}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1003
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1016
    .end local v0           #a:Landroid/app/Activity;
    .end local v1           #arr$:[Landroid/app/Activity;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .restart local v2       #e:Ljava/lang/IllegalStateException;
    :cond_3
    throw v2
.end method

.method public varargs setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 8
    .parameter "callback"
    .parameter "activity"
    .parameter "activities"

    .prologue
    .line 1060
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getSdkVersion()I

    move-result v5

    .line 1062
    .local v5, targetSdkVersion:I
    if-nez p2, :cond_1

    .line 1063
    :try_start_0
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "activity cannot be null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1072
    :catch_0
    move-exception v2

    .line 1073
    .local v2, e:Ljava/lang/IllegalStateException;
    const/16 v6, 0x10

    if-ge v5, v6, :cond_3

    .line 1075
    const-string v6, "NFC"

    const-string v7, "Cannot call API with Activity that has already been destroyed"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1082
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :cond_0
    return-void

    .line 1065
    :cond_1
    :try_start_1
    iget-object v6, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v6, p2, p1}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V

    .line 1066
    move-object v1, p3

    .local v1, arr$:[Landroid/app/Activity;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 1067
    .local v0, a:Landroid/app/Activity;
    if-nez v0, :cond_2

    .line 1068
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "activities cannot contain null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1070
    :cond_2
    iget-object v6, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v6, v0, p1}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1066
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1079
    .end local v0           #a:Landroid/app/Activity;
    .end local v1           #arr$:[Landroid/app/Activity;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .restart local v2       #e:Ljava/lang/IllegalStateException;
    :cond_3
    throw v2
.end method

.method public setP2pModes(II)V
    .locals 2
    .parameter "initiatorModes"
    .parameter "targetModes"

    .prologue
    .line 1311
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1, p2}, Landroid/nfc/INfcAdapter;->setP2pModes(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1315
    :goto_0
    return-void

    .line 1312
    :catch_0
    move-exception v0

    .line 1313
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setProperties(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "param"
    .parameter "value"

    .prologue
    .line 1637
    new-instance v0, Landroid/nfc/NfcAdapter$5;

    invoke-direct {v0, p0, p1, p2}, Landroid/nfc/NfcAdapter$5;-><init>(Landroid/nfc/NfcAdapter;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter$5;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
