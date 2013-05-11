.class public Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;
.super Ljava/lang/Object;
.source "AddressFinderServiceManager.java"

# interfaces
.implements Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressLookUpTask;,
        Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;,
        Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;
    }
.end annotation


# static fields
.field public static final EARTH_RADIUS_METERS:I = 0x615299

.field public static final LAT_MAX:I = 0x5a

.field public static final LON_MAX:I = 0xb4

.field private static final MSG_CHECK_TASKLIST_STATUS:I = 0xc364

.field public static final MSG_UPDATE_ADAPTER_LOCATION:I = 0xc352

.field public static final MSG_UPDATE_UI_LOCATION:I = 0xc351

.field private static final SERVICE_KEY_BEGIN_NETWORKACCESS:Ljava/lang/String; = "isBeginNetworkAccess"

.field private static final TIME_TO_CHECK_STATUS:I = 0x7530


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mAddressDataArray:[Lcom/htc/AddressFinderService/interfaces/AddressData;

.field private final mCOMPONENT:Landroid/content/ComponentName;

.field private mCallback:Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mEnableNetworkAccessWarning:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsNetworkUseFirstTime:Z

.field private mIsbindService:Z

.field private mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLockNetworkAccessErrorWarning:Z

.field private mLockNetworkAccessWarning:Z

.field private mMessageHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

.field private mNeedPostATask:Z

.field private mResetNetworkAccessWarning:Z

.field private mResultMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;

.field private mTaskHandler:I

.field private mTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressLookUpTask;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateCount:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "AddressFinderServiceManager"

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->LOG_TAG:Ljava/lang/String;

    .line 43
    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mContext:Landroid/content/Context;

    .line 44
    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mService:Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mTaskHandler:I

    .line 46
    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mAddressDataArray:[Lcom/htc/AddressFinderService/interfaces/AddressData;

    .line 47
    iput v3, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mUpdateCount:I

    .line 48
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.htc.MediaCacheService"

    const-string v2, "com.htc.AddressFinderService.main.AddressFinderService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mCOMPONENT:Landroid/content/ComponentName;

    .line 51
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mNeedPostATask:Z

    .line 52
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mIsbindService:Z

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mTaskList:Ljava/util/ArrayList;

    .line 55
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mIsNetworkUseFirstTime:Z

    .line 56
    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mMessageHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

    .line 57
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mEnableNetworkAccessWarning:Z

    .line 58
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mLockNetworkAccessWarning:Z

    .line 59
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mLockNetworkAccessErrorWarning:Z

    .line 60
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mResetNetworkAccessWarning:Z

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mResultMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 78
    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$1;-><init>(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mConnection:Landroid/content/ServiceConnection;

    .line 427
    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$2;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$2;-><init>(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mHandler:Landroid/os/Handler;

    .line 448
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mListeners:Ljava/util/HashMap;

    .line 542
    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$3;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$3;-><init>(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mCallback:Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;

    .line 623
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mService:Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;)Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mService:Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mCallback:Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mMessageHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mEnableNetworkAccessWarning:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mLockNetworkAccessWarning:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mLockNetworkAccessWarning:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;[Lcom/htc/AddressFinderService/interfaces/AddressData;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->onUpdateFinderResult([Lcom/htc/AddressFinderService/interfaces/AddressData;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;[Lcom/htc/AddressFinderService/interfaces/AddressData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->onDispatchFinderResults([Lcom/htc/AddressFinderService/interfaces/AddressData;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mLockNetworkAccessErrorWarning:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mLockNetworkAccessErrorWarning:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->onDispatchFinderEnd()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mNeedPostATask:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mNeedPostATask:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mIsNetworkUseFirstTime:Z

    return v0
.end method

.method static synthetic access$302(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mIsNetworkUseFirstTime:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mTaskList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->disconnect()V

    return-void
.end method

.method static synthetic access$702(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mIsbindService:Z

    return p1
.end method

.method static synthetic access$800(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->onDispatchFinderBegin()V

    return-void
.end method

.method private bindMediaService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .locals 4
    .parameter "context"
    .parameter "connection"

    .prologue
    const/4 v1, 0x0

    .line 375
    const-string v2, "AddressFinderServiceManager"

    const-string v3, "[HTCAlbum][AddressFinderServiceManager][bindMediaService]"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    if-nez p1, :cond_0

    .line 378
    const-string v2, "AddressFinderServiceManager"

    const-string v3, "[HTCAlbum][AddressFinderServiceManager][bindMediaService]: context is null"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :goto_0
    return v1

    .line 382
    :cond_0
    if-nez p2, :cond_1

    .line 383
    const-string v2, "AddressFinderServiceManager"

    const-string v3, "[HTCAlbum][AddressFinderServiceManager][bindMediaService]: connection is null"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_1
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->getBindIntent()Landroid/content/Intent;

    move-result-object v0

    .line 389
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    goto :goto_0
.end method

.method private connect()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mService:Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-direct {p0, v0, v1}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->bindMediaService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    goto :goto_0
.end method

.method private disconnect()V
    .locals 4

    .prologue
    .line 353
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mService:Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;

    if-nez v1, :cond_0

    .line 371
    :goto_0
    return-void

    .line 358
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mService:Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mCallback:Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;

    invoke-interface {v1, v2}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;->unRegisterCallback(Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;)V

    .line 359
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-direct {p0, v1, v2}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->unBindMediaService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    .line 360
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mService:Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;

    .line 361
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mAddressDataArray:[Lcom/htc/AddressFinderService/interfaces/AddressData;

    .line 362
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mUpdateCount:I

    .line 363
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mResultMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 368
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AddressFinderServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AddressFinderServiceManager][disconnect]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getBindIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 413
    const-string v1, "AddressFinderServiceManager"

    const-string v2, "[HTCAlbum][AddressFinderServiceManager][getBindIntent]"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 416
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 417
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mCOMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 419
    :cond_0
    return-object v0
.end method

.method public static final getLocationKey(DD)J
    .locals 6
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    const-wide v4, 0x4056800000000000L

    .line 423
    add-double v0, p0, v4

    const-wide/high16 v2, 0x4000

    mul-double/2addr v0, v2

    mul-double/2addr v0, v4

    const-wide v2, 0x4066800000000000L

    add-double/2addr v2, p2

    add-double/2addr v0, v2

    const-wide v2, 0x415854a640000000L

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method private onDispatchFinderBegin()V
    .locals 7

    .prologue
    .line 453
    :try_start_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 454
    .local v3, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 455
    .local v2, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 457
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 458
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;

    invoke-interface {v4}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;->onUpdateAddressBegin()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 462
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;>;"
    .end local v2           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;>;>;"
    .end local v3           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;>;>;"
    :catch_0
    move-exception v0

    .line 464
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "AddressFinderServiceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][AddressFinderServiceManager][onDispatchFinderBegin]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private onDispatchFinderEnd()V
    .locals 7

    .prologue
    .line 488
    :try_start_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 489
    .local v3, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 490
    .local v2, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 492
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 493
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;

    invoke-interface {v4}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;->onUpdateAddressEnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 497
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;>;"
    .end local v2           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;>;>;"
    .end local v3           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;>;>;"
    :catch_0
    move-exception v0

    .line 499
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "AddressFinderServiceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][AddressFinderServiceManager][onDispatchFinderEnd]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private onDispatchFinderResults([Lcom/htc/AddressFinderService/interfaces/AddressData;)V
    .locals 7
    .parameter "data"

    .prologue
    .line 471
    :try_start_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 472
    .local v3, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 473
    .local v2, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 475
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 476
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;

    invoke-interface {v4, p1}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;->onUpdateAddressResult([Lcom/htc/AddressFinderService/interfaces/AddressData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 479
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;>;"
    .end local v2           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;>;>;"
    .end local v3           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;>;>;"
    :catch_0
    move-exception v0

    .line 481
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "AddressFinderServiceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][AddressFinderServiceManager][onDispatchFinderResults]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private onUpdateFinderResult([Lcom/htc/AddressFinderService/interfaces/AddressData;)Z
    .locals 16
    .parameter "addressData"

    .prologue
    .line 504
    if-nez p1, :cond_1

    .line 505
    const/4 v1, 0x0

    .line 540
    :cond_0
    return v1

    .line 507
    :cond_1
    const/4 v1, 0x1

    .line 508
    .local v1, bResult:Z
    move-object/from16 v0, p1

    array-length v11, v0

    .line 510
    .local v11, size:I
    const/4 v4, 0x0

    .local v4, index:I
    :goto_0
    if-ge v4, v11, :cond_0

    .line 512
    aget-object v3, p1, v4

    .line 514
    .local v3, data:Lcom/htc/AddressFinderService/interfaces/AddressData;
    if-nez v3, :cond_2

    .line 516
    const-string v13, "AddressFinderServiceManager"

    const-string v14, "[HTCAlbum][AddressFinderServiceManager][onUpdateFinderResult]: skip 1"

    invoke-static {v13, v14}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 520
    :cond_2
    invoke-virtual {v3}, Lcom/htc/AddressFinderService/interfaces/AddressData;->getLatitude()D

    move-result-wide v7

    .line 521
    .local v7, latitude:D
    invoke-virtual {v3}, Lcom/htc/AddressFinderService/interfaces/AddressData;->getLongitude()D

    move-result-wide v9

    .line 523
    .local v9, longitude:D
    invoke-static {v7, v8, v9, v10}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->getLocationKey(DD)J

    move-result-wide v5

    .line 524
    .local v5, key:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mResultMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;

    .line 526
    .local v2, cache:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;
    if-nez v2, :cond_3

    .line 528
    const-string v13, "AddressFinderServiceManager"

    const-string v14, "[HTCAlbum][AddressFinderServiceManager][onUpdateFinderResult]: skip 2"

    invoke-static {v13, v14}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 531
    :cond_3
    invoke-virtual {v3}, Lcom/htc/AddressFinderService/interfaces/AddressData;->getAddress()Ljava/lang/String;

    move-result-object v12

    .line 532
    .local v12, szAddress:Ljava/lang/String;
    sget-object v13, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;->COMPLETE:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;

    iput-object v13, v2, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;->mState:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;

    .line 533
    iget-object v13, v2, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;->mData:Lcom/htc/AddressFinderService/interfaces/AddressData;

    invoke-virtual {v13, v12}, Lcom/htc/AddressFinderService/interfaces/AddressData;->setAddress(Ljava/lang/String;)V

    .line 534
    iget-object v13, v2, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;->mData:Lcom/htc/AddressFinderService/interfaces/AddressData;

    invoke-virtual {v3}, Lcom/htc/AddressFinderService/interfaces/AddressData;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/htc/AddressFinderService/interfaces/AddressData;->setLanguage(Ljava/lang/String;)V

    .line 536
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_5

    .line 537
    :cond_4
    const/4 v1, 0x0

    .line 538
    :cond_5
    const-string v13, "AddressFinderServiceManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[HTCAlbum][AddressFinderServiceManager][onUpdateFinderResult]: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private unBindMediaService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .locals 3
    .parameter "context"
    .parameter "connection"

    .prologue
    const/4 v0, 0x0

    .line 395
    const-string v1, "AddressFinderServiceManager"

    const-string v2, "[HTCAlbum][AddressFinderServiceManager][unBindMediaService]"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    if-nez p1, :cond_0

    .line 398
    const-string v1, "AddressFinderServiceManager"

    const-string v2, "[HTCAlbum][AddressFinderServiceManager][unBindMediaService]: context is null"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :goto_0
    return v0

    .line 402
    :cond_0
    if-nez p2, :cond_1

    .line 403
    const-string v1, "AddressFinderServiceManager"

    const-string v2, "[HTCAlbum][AddressFinderServiceManager][unBindMediaService]: connection is null"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 407
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 408
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addressLookup(Z)V
    .locals 15
    .parameter "isUseNetwork"

    .prologue
    const/4 v14, 0x1

    .line 133
    const-string v11, "AddressFinderServiceManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][AddressFinderServiceManager][addressLookup]: auto: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-boolean v11, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mIsbindService:Z

    if-nez v11, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->connect()V

    .line 137
    iput-boolean v14, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mIsbindService:Z

    .line 140
    :cond_0
    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mTaskList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_1

    .line 142
    const-string v11, "AddressFinderServiceManager"

    const-string v12, "[HTCAlbum][AddressFinderServiceManager][addressLookup]: no task..."

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mService:Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;

    if-nez v11, :cond_2

    .line 147
    iput-boolean v14, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mNeedPostATask:Z

    .line 148
    move/from16 v0, p1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mIsNetworkUseFirstTime:Z

    .line 149
    const-string v11, "AddressFinderServiceManager"

    const-string v12, "[HTCAlbum][AddressFinderServiceManager][addressLookup]: mService is null"

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_2
    const/4 v6, 0x1

    .line 158
    .local v6, nUpdateCount:I
    const/4 v7, 0x0

    .line 161
    .local v7, task:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressLookUpTask;
    :try_start_0
    iget-boolean v11, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mNeedPostATask:Z

    if-eqz v11, :cond_4

    .line 162
    const/4 v8, 0x0

    .line 167
    .local v8, taskIndex:I
    :goto_1
    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mTaskList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressLookUpTask;

    move-object v7, v0

    .line 169
    if-nez v7, :cond_5

    .line 171
    const-string v11, "AddressFinderServiceManager"

    const-string v12, "[HTCAlbum][AddressFinderServiceManager][addressLookup]: skip..."

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mTaskList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    .end local v8           #taskIndex:I
    :catch_0
    move-exception v4

    .line 180
    .local v4, e:Ljava/lang/Exception;
    const-string v11, "AddressFinderServiceManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][AddressFinderServiceManager][addressLookup]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .end local v4           #e:Ljava/lang/Exception;
    :goto_2
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 188
    .local v10, todoMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/AddressFinderService/interfaces/AddressData;>;"
    const/4 v5, 0x0

    .line 191
    .local v5, nTodoCount:I
    :try_start_1
    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mResultMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 192
    .local v3, cacheSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 193
    .local v2, cacheIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;>;>;"
    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 195
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 196
    .local v1, cacheEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;>;"
    sget-object v12, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;->UNKNOWN:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;

    iget-object v11, v11, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;->mState:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;

    if-ne v12, v11, :cond_3

    .line 198
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;

    sget-object v12, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;->RETRIEVING:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;

    iput-object v12, v11, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;->mState:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;

    .line 199
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;

    iget-object v11, v11, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;->mData:Lcom/htc/AddressFinderService/interfaces/AddressData;

    invoke-virtual {v10, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 200
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 164
    .end local v1           #cacheEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;>;"
    .end local v2           #cacheIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;>;>;"
    .end local v3           #cacheSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;>;>;"
    .end local v5           #nTodoCount:I
    .end local v10           #todoMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/AddressFinderService/interfaces/AddressData;>;"
    :cond_4
    :try_start_2
    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mTaskList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v8, v11, -0x1

    .restart local v8       #taskIndex:I
    goto :goto_1

    .line 176
    :cond_5
    invoke-virtual {v7}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressLookUpTask;->getUpdateCount()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v6

    goto :goto_2

    .line 205
    .end local v8           #taskIndex:I
    .restart local v5       #nTodoCount:I
    .restart local v10       #todoMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/AddressFinderService/interfaces/AddressData;>;"
    :catch_1
    move-exception v4

    .line 207
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v11, "AddressFinderServiceManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][AddressFinderServiceManager][addressLookup]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .end local v4           #e:Ljava/lang/Exception;
    :cond_6
    if-nez v5, :cond_7

    .line 211
    const-string v11, "AddressFinderServiceManager"

    const-string v12, "[HTCAlbum][AddressFinderServiceManager][addressLookup]: no to do items skip..."

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 214
    :cond_7
    const-string v11, "AddressFinderServiceManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][AddressFinderServiceManager][addressLookup]: to do: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :try_start_3
    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    new-array v12, v5, [Lcom/htc/AddressFinderService/interfaces/AddressData;

    invoke-interface {v11, v12}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/htc/AddressFinderService/interfaces/AddressData;

    .line 219
    .local v9, todoAddressDataArray:[Lcom/htc/AddressFinderService/interfaces/AddressData;
    invoke-static {v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 220
    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mService:Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;

    move/from16 v0, p1

    invoke-interface {v11, v9, v6, v0}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;->requestLookup([Lcom/htc/AddressFinderService/interfaces/AddressData;IZ)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 227
    .end local v9           #todoAddressDataArray:[Lcom/htc/AddressFinderService/interfaces/AddressData;
    :goto_4
    const-string v11, "AddressFinderServiceManager"

    const-string v12, "[HTCAlbum][AddressFinderServiceManager][addressLookup]: end..."

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 222
    :catch_2
    move-exception v4

    .line 225
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v11, "AddressFinderServiceManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][AddressFinderServiceManager][addressLookup]: Exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public bindAddressListener(Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;)V
    .locals 3
    .parameter "szIdentifier"
    .parameter "listener"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 234
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mEnableNetworkAccessWarning:Z

    if-ne v2, v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mResetNetworkAccessWarning:Z

    if-ne v2, v0, :cond_0

    .line 237
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mLockNetworkAccessWarning:Z

    .line 238
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mLockNetworkAccessErrorWarning:Z

    .line 241
    :cond_0
    const-string v0, "AddressFinderServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AddressFinderServiceManager][bindAddressListener]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public getAddressResultMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .parameter "scene"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/AddressFinderService/interfaces/AddressData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 323
    .local v4, resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/AddressFinderService/interfaces/AddressData;>;"
    :try_start_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mResultMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 324
    .local v2, cacheSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 325
    .local v1, cacheIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 327
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 328
    .local v0, cacheEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;

    iget-object v5, v5, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;->mData:Lcom/htc/AddressFinderService/interfaces/AddressData;

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    .end local v0           #cacheEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;>;"
    .end local v1           #cacheIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;>;>;"
    .end local v2           #cacheSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;>;>;"
    :catch_0
    move-exception v3

    .line 334
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "AddressFinderServiceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][AddressFinderServiceManager][getAddressResultMap]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .end local v3           #e:Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method

.method public isFinderSearchInProgress()Z
    .locals 6

    .prologue
    .line 683
    const/4 v0, 0x0

    .line 684
    .local v0, bResult:Z
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mService:Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;

    if-nez v3, :cond_0

    move v1, v0

    .line 698
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 689
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mService:Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;

    invoke-interface {v3}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;->isRequestInProgress()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 696
    :goto_1
    const-string v3, "AddressFinderServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][AddressFinderServiceManager][isFinderSearchInProgress]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 698
    .restart local v1       #bResult:I
    goto :goto_0

    .line 691
    .end local v1           #bResult:I
    :catch_0
    move-exception v2

    .line 694
    .local v2, e:Landroid/os/RemoteException;
    const-string v3, "AddressFinderServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][AddressFinderServiceManager][isFinderSearchInProgress]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public lockNetworkAccessWarning()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 703
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mLockNetworkAccessWarning:Z

    .line 704
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mLockNetworkAccessErrorWarning:Z

    .line 705
    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mContext:Landroid/content/Context;

    .line 110
    const-string v0, "AddressFinderServiceManager"

    const-string v1, "[HTCAlbum][AddressFinderServiceManager][onCreate]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mContext:Landroid/content/Context;

    .line 115
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 116
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mResultMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 117
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mMessageHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

    const/16 v1, 0x13a5

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;->onRemoveMessage(I)V

    .line 118
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mMessageHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

    const/16 v1, 0x13a6

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;->onRemoveMessage(I)V

    .line 119
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mMessageHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

    .line 120
    const-string v0, "AddressFinderServiceManager"

    const-string v1, "[HTCAlbum][AddressFinderServiceManager][onDestroy]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public onNotifyServiceFirstTimer()V
    .locals 0

    .prologue
    .line 667
    return-void
.end method

.method public setAddressLookUpSource(Ljava/util/HashMap;I)V
    .locals 11
    .parameter
    .parameter "updateCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/AddressFinderService/interfaces/AddressData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, sourceMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/AddressFinderService/interfaces/AddressData;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 261
    :cond_0
    const-string v7, "AddressFinderServiceManager"

    const-string v8, "[HTCAlbum][AddressFinderServiceManager][setAddressLookUpSource]: skip 1..."

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :goto_0
    return-void

    .line 266
    :cond_1
    new-instance v6, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressLookUpTask;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressLookUpTask;-><init>(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$1;)V

    .line 267
    .local v6, task:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressLookUpTask;
    invoke-virtual {v6, p2}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressLookUpTask;->setUpdateCount(I)V

    .line 268
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mTaskList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    const/4 v5, 0x0

    .line 276
    .local v5, nNewEntries:I
    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 277
    .local v4, inputSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/htc/AddressFinderService/interfaces/AddressData;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 278
    .local v3, inputIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/htc/AddressFinderService/interfaces/AddressData;>;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 280
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 285
    .local v2, inputEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/htc/AddressFinderService/interfaces/AddressData;>;"
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mResultMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 287
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mResultMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    new-instance v10, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/AddressFinderService/interfaces/AddressData;

    invoke-direct {v10, p0, v7}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;-><init>(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;Lcom/htc/AddressFinderService/interfaces/AddressData;)V

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 292
    :cond_2
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mResultMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;

    .line 293
    .local v0, cache:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;
    sget-object v7, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;->COMPLETE:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;

    iget-object v8, v0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;->mState:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;

    if-ne v7, v8, :cond_3

    .line 295
    sget-object v7, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;->UNKNOWN:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;

    iput-object v7, v0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;->mState:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;

    .line 296
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 300
    :cond_3
    const-string v7, "AddressFinderServiceManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][AddressFinderServiceManager][setAddressLookUpSource]: waiting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 307
    .end local v0           #cache:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;
    .end local v2           #inputEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/htc/AddressFinderService/interfaces/AddressData;>;"
    .end local v3           #inputIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/htc/AddressFinderService/interfaces/AddressData;>;>;"
    .end local v4           #inputSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/htc/AddressFinderService/interfaces/AddressData;>;>;"
    :catch_0
    move-exception v1

    .line 309
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "AddressFinderServiceManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][AddressFinderServiceManager][setAddressLookUpSource]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 305
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #inputIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/htc/AddressFinderService/interfaces/AddressData;>;>;"
    .restart local v4       #inputSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/htc/AddressFinderService/interfaces/AddressData;>;>;"
    :cond_4
    :try_start_1
    const-string v7, "AddressFinderServiceManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][AddressFinderServiceManager][setAddressLookUpSource]: new entries: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public setEnableNetworkAccessWarning(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 672
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mEnableNetworkAccessWarning:Z

    .line 673
    return-void
.end method

.method public setMessageHost(Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mMessageHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

    .line 125
    return-void
.end method

.method public setResetNetworkAccessWarning(Z)V
    .locals 0
    .parameter "bReset"

    .prologue
    .line 709
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mResetNetworkAccessWarning:Z

    .line 710
    return-void
.end method

.method public unbindAddressListener(Ljava/lang/String;)V
    .locals 3
    .parameter "szIdentifier"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->disconnect()V

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mIsbindService:Z

    .line 253
    :cond_0
    const-string v0, "AddressFinderServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AddressFinderServiceManager][unbindAddressListener]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public unlockNetworkAccessWarning()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 676
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mLockNetworkAccessWarning:Z

    .line 677
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mLockNetworkAccessErrorWarning:Z

    .line 678
    return-void
.end method
