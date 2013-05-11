.class public Lcom/android/internal/telephony/cat/BipProxy;
.super Landroid/os/Handler;
.source "BipProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/BipProxy$1;,
        Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;,
        Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;,
        Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;,
        Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;,
        Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;,
        Lcom/android/internal/telephony/cat/BipProxy$BipChannel;,
        Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;,
        Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;,
        Lcom/android/internal/telephony/cat/BipProxy$BipSession;,
        Lcom/android/internal/telephony/cat/BipProxy$BipType;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field static final MSG_ID_DISCONNECT_DELAYED:I = 0x10

.field static final MSG_ID_EXTEND_NW_TIMER:I = 0xf

.field static final MSG_ID_INSERT_APN_RETRY:I = 0xc

.field static final MSG_ID_RECEIVE_SOCKET_DATA:I = 0xe

.field static final MSG_ID_SETUP_DATA_CALL:I = 0xa

.field static final MSG_ID_START_NW_FEATURE:I = 0xd

.field static final MSG_ID_TEARDOWN_DATA_CALL:I = 0xb

.field private static final SECURE:Z


# instance fields
.field final APN_NAME_BIP:Ljava/lang/String;

.field final APN_TYPE_BIP:Ljava/lang/String;

.field final APN_URI:Landroid/net/Uri;

.field final CONNECTIVE_FEATURE_BIP:Ljava/lang/String;

.field final CONNECTIVE_TYPE_BIP:I

.field final MAX_CHANNEL_NUM:I

.field final NW_EXPIRED_TIMEOUT:I

.field final RETRY_DELAY:I

.field final TCP_CHANNEL_BUFFER_SIZE:I

.field final UDP_CHANNEL_BUFFER_SIZE:I

.field private apn_retry:I

.field private mApnObserver:Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;

.field private mApnUpdated:Z

.field private mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

.field private mBipHandler:Landroid/os/Handler;

.field private mBipSessionState:[Lcom/android/internal/telephony/cat/BipProxy$BipSession;

.field private mCatService:Lcom/android/internal/telephony/cat/CatService;

.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

.field private nw_retry:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;)V
    .locals 3
    .parameter "stkService"
    .parameter "cmdIf"
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 120
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 66
    const/16 v0, 0x4000

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->TCP_CHANNEL_BUFFER_SIZE:I

    .line 67
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->UDP_CHANNEL_BUFFER_SIZE:I

    .line 68
    iput v2, p0, Lcom/android/internal/telephony/cat/BipProxy;->MAX_CHANNEL_NUM:I

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 86
    const/16 v0, 0x21

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->CONNECTIVE_TYPE_BIP:I

    .line 87
    const-string v0, "enableBIP"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->CONNECTIVE_FEATURE_BIP:Ljava/lang/String;

    .line 88
    const-string v0, "HTC_BIP"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->APN_NAME_BIP:Ljava/lang/String;

    .line 89
    const-string v0, "bip"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->APN_TYPE_BIP:Ljava/lang/String;

    .line 90
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->RETRY_DELAY:I

    .line 91
    const v0, 0xd6d8

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->NW_EXPIRED_TIMEOUT:I

    .line 93
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->APN_URI:Landroid/net/Uri;

    .line 95
    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->apn_retry:I

    .line 96
    iput v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->nw_retry:I

    .line 99
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mApnUpdated:Z

    .line 100
    new-array v0, v2, [Lcom/android/internal/telephony/cat/BipProxy$BipSession;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipSessionState:[Lcom/android/internal/telephony/cat/BipProxy$BipSession;

    .line 118
    new-array v0, v2, [Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    .line 121
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 122
    iput-object p2, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 123
    iput-object p3, p0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    .line 124
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    invoke-direct {v0, p0, p3}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    .line 125
    iput-object p0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipHandler:Landroid/os/Handler;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cat/BipProxy;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/cat/BipProxy;)[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/cat/BipProxy;)[Lcom/android/internal/telephony/cat/BipProxy$BipSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipSessionState:[Lcom/android/internal/telephony/cat/BipProxy$BipSession;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mApnObserver:Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/cat/BipProxy;Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;)Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mApnObserver:Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cat/BipProxy;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/cat/BipProxy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mApnUpdated:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/CatService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/cat/BipProxy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->sendChannelStatusEvent(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/cat/BipProxy;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cat/BipProxy;->sendDataAvailableEvent(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/cat/BipProxy;Lcom/android/internal/telephony/cat/CatCmdMessage;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cat/BipProxy;->teardownDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/cat/BipProxy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V

    return-void
.end method

.method private allChannelsClosed()Z
    .locals 5

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    .local v0, arr$:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 295
    .local v1, channel:Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    if-eqz v1, :cond_0

    .line 296
    const/4 v4, 0x0

    .line 298
    .end local v1           #channel:Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    :goto_1
    return v4

    .line 294
    .restart local v1       #channel:Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 298
    .end local v1           #channel:Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private checkAPN(Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;)Z
    .locals 1
    .parameter "channel"

    .prologue
    .line 885
    const/4 v0, 0x0

    return v0
.end method

.method private cleanupBipChannel(I)V
    .locals 3
    .parameter "channel"

    .prologue
    .line 302
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BIP - cleanupBipChannel: channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " set to null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 304
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipProxy;->allChannelsClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->stopListening()V

    .line 308
    :cond_1
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "BIP - cleanupBipChannel: cleanup BipType"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    sget-object v1, Lcom/android/internal/telephony/cat/BipProxy$BipType;->NONE_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->setBearerType(Lcom/android/internal/telephony/cat/BipProxy$BipType;I)V

    .line 310
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipProxy;->deleteAPN()V

    .line 312
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipSessionState:[Lcom/android/internal/telephony/cat/BipProxy$BipSession;

    add-int/lit8 v1, p1, -0x1

    sget-object v2, Lcom/android/internal/telephony/cat/BipProxy$BipSession;->BIP_STATE_IDLE:Lcom/android/internal/telephony/cat/BipProxy$BipSession;

    aput-object v2, v0, v1

    .line 314
    return-void
.end method

.method private deleteAPN()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 858
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 859
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "name"

    aput-object v5, v2, v3

    const-string v3, "name = \'HTC_BIP\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 864
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 865
    sget-boolean v1, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "BIP - deleteAPN: start"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 866
    :cond_0
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "name = \'HTC_BIP\'"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 870
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 871
    const/4 v6, 0x0

    .line 872
    sget-boolean v1, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "BIP - deleteAPN: end"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 874
    :cond_1
    return-void
.end method

.method private findAvailableDefaultBearer([Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 9
    .parameter "networkInfos"

    .prologue
    .line 356
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v1, availableBearers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/NetworkInfo;>;"
    move-object v0, p1

    .local v0, arr$:[Landroid/net/NetworkInfo;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 358
    .local v4, info:Landroid/net/NetworkInfo;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 359
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 357
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 363
    :sswitch_0
    sget-boolean v7, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BIP - findAvailableDefaultBearer: find a default type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 372
    .end local v4           #info:Landroid/net/NetworkInfo;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_5

    .line 373
    sget-boolean v7, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "BIP - findAvailableDefaultBearer: No default bearers available"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    :cond_3
    const/4 v2, 0x0

    .line 390
    .end local v3           #i$:I
    :cond_4
    :goto_2
    return-object v2

    .line 377
    .restart local v3       #i$:I
    :cond_5
    const/4 v2, 0x0

    .line 378
    .local v2, candidateBearer:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 379
    .restart local v4       #info:Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    .line 380
    .local v6, state:Landroid/net/NetworkInfo$State;
    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_7

    .line 382
    move-object v2, v4

    .line 383
    goto :goto_2

    .line 384
    :cond_7
    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v6, v7, :cond_8

    sget-object v7, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_6

    .line 386
    :cond_8
    move-object v2, v4

    goto :goto_3

    .line 359
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleDisconnectDelayed(Lcom/android/internal/telephony/cat/CatCmdMessage;I)V
    .locals 6
    .parameter "cmdMsg"
    .parameter "channel"

    .prologue
    const/4 v3, 0x0

    .line 2177
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BIP - handleDisconnectDelayed: connect dropped, send TR for OPEN_CHANNEL"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2178
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2180
    shl-int/lit8 v0, p2, 0x8

    or-int/lit8 v0, v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->sendChannelStatusEvent(I)V

    .line 2181
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V

    .line 2182
    return-void
.end method

.method private onSetupConnectionCompleted(Landroid/os/AsyncResult;)V
    .locals 21
    .parameter "ar"

    .prologue
    .line 612
    if-nez p1, :cond_1

    .line 613
    sget-boolean v2, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "BIP - onSetupConnectionCompleted: AsyncResult is null"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 619
    .local v17, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    .line 622
    .local v18, response:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    .line 623
    sget-boolean v2, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIP - onSetupConnectionCompleted: Failed to setup data connection for channel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->cid:Ljava/lang/Integer;

    .line 625
    new-instance v7, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    const/4 v3, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-direct {v7, v2, v3, v4}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(ILjava/lang/Integer;Lcom/android/internal/telephony/cat/BearerDescription;)V

    .line 626
    .local v7, resp:Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 627
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V

    goto :goto_0

    .line 629
    .end local v7           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :cond_3
    if-eqz v18, :cond_8

    .line 630
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 631
    .local v15, cid:I
    const/4 v2, -0x1

    if-ne v15, v2, :cond_5

    .line 632
    sget-boolean v2, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "BIP - onSetupConnectionCompleted: Succeeded to setup data connection for channel - Default bearer"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 683
    :cond_4
    new-instance v20, Ljava/lang/Thread;

    new-instance v2, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v4

    iget v4, v4, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Lcom/android/internal/telephony/cat/AppInterface$CommandType;ILcom/android/internal/telephony/cat/CatCmdMessage;)V

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 684
    .local v20, t:Ljava/lang/Thread;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 637
    .end local v20           #t:Ljava/lang/Thread;
    :cond_5
    sget-boolean v2, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIP - onSetupConnectionCompleted: Succeeded to setup data connection for channel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 639
    :cond_6
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->cid:Ljava/lang/Integer;

    .line 642
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->destinationAddress:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->destinationAddress:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->destinationAddress:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->destinationAddress:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int v14, v2, v3

    .line 663
    .local v14, addr:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/ConnectivityManager;

    .line 665
    .local v16, cm:Landroid/net/ConnectivityManager;
    const/16 v2, 0x21

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v14}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v19

    .line 666
    .local v19, success:Z
    if-nez v19, :cond_4

    .line 667
    sget-boolean v2, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "BIP - onSetupConnectionCompleted: requestRouteToHost failure. BIP_ERROR"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 668
    :cond_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 669
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V

    goto/16 :goto_0

    .line 687
    .end local v14           #addr:I
    .end local v15           #cid:I
    .end local v16           #cm:Landroid/net/ConnectivityManager;
    .end local v19           #success:Z
    :cond_8
    sget-boolean v2, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v2, :cond_9

    const-string v2, "BIP - onSetupConnectionCompleted: response is null. BIP_ERROR"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 688
    :cond_9
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 689
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V

    goto/16 :goto_0
.end method

.method private onTeardownConnectionCompleted(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 698
    if-nez p1, :cond_1

    .line 699
    sget-boolean v2, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "BIP - onTeardownConnectionCompleted: AsyncResult is null"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 704
    .local v1, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    if-nez v1, :cond_2

    .line 705
    sget-boolean v2, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "BIP - onTeardownConnectionCompleted: cmdMsg is null"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 709
    :cond_2
    sget-boolean v2, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIP - onTeardownConnectionCompleted: CmdType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 711
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v2, v3, :cond_5

    .line 712
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v2

    iget v0, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    .line 719
    .local v0, channel:I
    :goto_1
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_6

    .line 720
    sget-boolean v2, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIP - onTeardownConnectionCompleted: Failed to teardown data connection for channel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 725
    :cond_4
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V

    goto :goto_0

    .line 713
    .end local v0           #channel:I
    :cond_5
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v2, v3, :cond_0

    .line 714
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v2

    iget v0, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    .restart local v0       #channel:I
    goto :goto_1

    .line 722
    :cond_6
    sget-boolean v2, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIP - onTeardownConnectionCompleted: Succedded to teardown data connection for channel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private sendChannelStatusEvent(I)V
    .locals 6
    .parameter "channelStatus"

    .prologue
    const/16 v1, 0xa

    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->checkEventEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 318
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BIP - sendChannelStatusEvent: CHANNEL_STATUS event not enabled"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    const/4 v0, 0x4

    new-array v4, v0, [B

    fill-array-data v4, :array_0

    .line 324
    .local v4, additionalInfo:[B
    const/4 v0, 0x2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    .line 325
    const/4 v0, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    .line 328
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "BIP - sendChannelStatusEvent: event not one shot!!!!"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    const/16 v2, 0x82

    const/16 v3, 0x81

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    goto :goto_0

    .line 323
    :array_0
    .array-data 0x1
        0xb8t
        0x2t
        0x0t
        0x0t
    .end array-data
.end method

.method private sendDataAvailableEvent(II)V
    .locals 6
    .parameter "channelStatus"
    .parameter "dataAvailable"

    .prologue
    const/16 v1, 0x9

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->checkEventEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 334
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BIP - sendDataAvailableEvent: DATA_AVAILABLE event not enabled"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    const/4 v0, 0x7

    new-array v4, v0, [B

    fill-array-data v4, :array_0

    .line 340
    .local v4, additionalInfo:[B
    const/4 v0, 0x2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    .line 341
    const/4 v0, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    .line 342
    const/4 v0, 0x6

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    .line 345
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "BIP - sendDataAvailableEvent: event not one shot!!!!"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    const/16 v2, 0x82

    const/16 v3, 0x81

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    goto :goto_0

    .line 339
    :array_0
    .array-data 0x1
        0xb8t
        0x2t
        0x0t
        0x0t
        0xb7t
        0x1t
        0x0t
    .end array-data
.end method

.method private setupDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 11
    .parameter "cmdMsg"

    .prologue
    const/4 v10, 0x0

    .line 520
    const/4 v9, 0x0

    .line 521
    .local v9, result:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v8

    .line 523
    .local v8, newChannel:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    iget-object v0, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    sget-object v1, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->TCP_CLIENT_REMOTE:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    if-eq v0, v1, :cond_1

    iget-object v0, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    sget-object v1, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->UDP_CLIENT_REMOTE:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    if-eq v0, v1, :cond_1

    .line 525
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BIP - setupDataConnection: No data connection needed for this channel(only TCP_CLIENT_REMOTE/UDP_CLIENT_REMOTE)"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 526
    :cond_0
    const/4 v0, 0x1

    .line 555
    :goto_0
    return v0

    .line 529
    :cond_1
    iget-object v6, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    .line 533
    .local v6, bd:Lcom/android/internal/telephony/cat/BearerDescription;
    :try_start_0
    iget-object v0, v6, Lcom/android/internal/telephony/cat/BearerDescription;->type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    sget-object v1, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->DEFAULT_BEARER:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    if-ne v0, v1, :cond_2

    .line 534
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->setupDefaultDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v9

    :goto_1
    move v0, v9

    .line 555
    goto :goto_0

    .line 535
    :cond_2
    iget-object v0, v6, Lcom/android/internal/telephony/cat/BearerDescription;->type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    sget-object v1, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->MOBILE_PS:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    if-eq v0, v1, :cond_3

    iget-object v0, v6, Lcom/android/internal/telephony/cat/BearerDescription;->type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    sget-object v1, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->MOBILE_PS_EXTENDED_QOS:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    if-ne v0, v1, :cond_5

    .line 536
    :cond_3
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x71

    if-ne v0, v1, :cond_4

    .line 538
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->setupDefaultDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v9

    goto :goto_1

    .line 540
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->setupSpecificPdpConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v9

    goto :goto_1

    .line 544
    :cond_5
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "BIP - setupDataConnection: Unsupported bearer type"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 548
    :catch_0
    move-exception v7

    .line 549
    .local v7, csfe:Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BIP - setupDataConnection: setupDataConnection Failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    iget v1, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v1, v1, -0x1

    aput-object v10, v0, v1

    .line 552
    iget v0, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V

    goto :goto_1
.end method

.method private setupDefaultDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 22
    .parameter "cmdMsg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
        }
    .end annotation

    .prologue
    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/ConnectivityManager;

    .line 395
    .local v14, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v14}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v16

    .line 396
    .local v16, netInfos:[Landroid/net/NetworkInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v17

    .line 397
    .local v17, newChannel:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    const/16 v18, 0x0

    .line 399
    .local v18, result:Z
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    array-length v2, v0

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy;->findAvailableDefaultBearer([Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_2

    .line 400
    :cond_0
    sget-boolean v2, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "BIP - setupDefaultDataConnection: No available bearer"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 402
    new-instance v2, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;

    const-string v3, "No default bearer available"

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Ljava/lang/String;)V

    throw v2

    .line 405
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy;->findAvailableDefaultBearer([Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v15

    .line 406
    .local v15, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v15}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v21

    .line 407
    .local v21, state:Landroid/net/NetworkInfo$State;
    const/16 v20, 0x0

    .line 409
    .local v20, setupFailedException:Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
    sget-object v2, Lcom/android/internal/telephony/cat/BipProxy$1;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 432
    sget-boolean v2, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "BIP - setupDefaultDataConnection: Default bearer is Disconnected"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    :cond_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 434
    new-instance v20, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;

    .end local v20           #setupFailedException:Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
    const-string v2, "Default bearer is disconnected!"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Ljava/lang/String;)V

    .line 438
    .restart local v20       #setupFailedException:Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
    :goto_0
    if-eqz v20, :cond_7

    .line 439
    throw v20

    .line 411
    :pswitch_0
    sget-boolean v2, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "BIP - setupDefaultDataConnection: Default bearer is connected"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    sget-object v3, Lcom/android/internal/telephony/cat/BipProxy$BipType;->DEFAULT_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->setBearerType(Lcom/android/internal/telephony/cat/BipProxy$BipType;I)V

    .line 413
    const/16 v18, 0x1

    .line 414
    goto :goto_0

    .line 416
    :pswitch_1
    sget-boolean v2, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "BIP - setupDefaultDataConnection: Default bearer is connecting.  Waiting for connect"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    :cond_5
    const/16 v2, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/cat/BipProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    .line 418
    .local v19, resultMsg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->setOngoingSetupMessage(Landroid/os/Message;)V

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    sget-object v3, Lcom/android/internal/telephony/cat/BipProxy$BipType;->DEFAULT_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->setBearerType(Lcom/android/internal/telephony/cat/BipProxy$BipType;I)V

    .line 420
    const/16 v18, 0x0

    .line 421
    goto :goto_0

    .line 424
    .end local v19           #resultMsg:Landroid/os/Message;
    :pswitch_2
    sget-boolean v2, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "BIP - setupDefaultDataConnection: Default bearer not connected, busy on voice call"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    :cond_6
    new-instance v7, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    const/4 v3, 0x0

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-direct {v7, v2, v3, v4}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(ILjava/lang/Integer;Lcom/android/internal/telephony/cat/BearerDescription;)V

    .line 426
    .local v7, resp:Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 427
    new-instance v20, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;

    .end local v20           #setupFailedException:Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
    const-string v2, "Default bearer suspended!"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Ljava/lang/String;)V

    .line 428
    .restart local v20       #setupFailedException:Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
    goto :goto_0

    .line 442
    .end local v7           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :cond_7
    return v18

    .line 409
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setupSpecificPdpConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 10
    .parameter "cmdMsg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 446
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 447
    .local v6, cm:Landroid/net/ConnectivityManager;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 448
    .local v9, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v7

    .line 450
    .local v7, newChannel:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    if-eqz v6, :cond_0

    if-nez v9, :cond_2

    .line 451
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "BIP - setupSpecificPdpConnection: Cannot get instance of ConnectivityManager/TelephonyManager"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 453
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;

    const-string v1, "ConnectivityManager/TelephonyManager not available!"

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_2
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 457
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "BIP - setupSpecificPdpConnection: User does not allow mobile data connections"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 459
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;

    const-string v1, "No mobile data connections allowed!"

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_4
    iget-object v0, v7, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->networkAccessName:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 463
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "BIP - setupSpecificPdpConnection: no accessname for PS bearer req"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->setupDefaultDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v3

    .line 511
    :goto_0
    return v3

    .line 467
    :cond_6
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_8

    .line 468
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "BIP - setupSpecificPdpConnection: Bearer not setup, busy on voice call"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    :cond_7
    new-instance v8, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    iget v0, v7, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    iget-object v1, v7, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-direct {v8, v0, v5, v1}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(ILjava/lang/Integer;Lcom/android/internal/telephony/cat/BearerDescription;)V

    .line 470
    .local v8, resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v3, 0x1

    const/4 v4, 0x2

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 471
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;

    const-string v1, "Busy on voice call"

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Ljava/lang/String;)V

    throw v0

    .line 475
    .end local v8           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :cond_8
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "BIP - setupSpecificPdpConnection: Detected new data connection parameters"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    :cond_9
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cat/BipProxy;->insertAPN(Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 477
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string v0, "BIP - setupSpecificPdpConnection: Cannot insert APN"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 479
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;

    const-string v1, "APN not inserted"

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cat/BipProxy$ConnectionSetupFailedException;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->startBipNetworkFeature(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto :goto_0
.end method

.method private startBipNetworkFeature(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 10
    .parameter "cmdMsg"

    .prologue
    const/4 v3, 0x0

    .line 889
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mApnUpdated:Z

    if-nez v0, :cond_1

    .line 890
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BIP - startBipNetworkFeature: APN not updated yet. sendMessageDelayed..."

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 891
    :cond_0
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 892
    .local v7, msg:Landroid/os/Message;
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v7, v0, v1}, Lcom/android/internal/telephony/cat/BipProxy;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 917
    .end local v7           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 897
    :cond_1
    iput v3, p0, Lcom/android/internal/telephony/cat/BipProxy;->nw_retry:I

    .line 899
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 900
    .local v6, cm:Landroid/net/ConnectivityManager;
    const-string v0, "enableBIP"

    invoke-virtual {v6, v3, v0}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v8

    .line 901
    .local v8, result:I
    if-nez v8, :cond_3

    .line 902
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "BIP - startBipNetworkFeature: startUsingNetworkFeature APN_ALREADY_ACTIVE"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 903
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    sget-object v1, Lcom/android/internal/telephony/cat/BipProxy$BipType;->SPECIFIC_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->setBearerType(Lcom/android/internal/telephony/cat/BipProxy$BipType;I)V

    .line 905
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Lcom/android/internal/telephony/cat/AppInterface$CommandType;ILcom/android/internal/telephony/cat/CatCmdMessage;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 906
    .local v9, t:Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 907
    .end local v9           #t:Ljava/lang/Thread;
    :cond_3
    const/4 v0, 0x1

    if-ne v8, v0, :cond_5

    .line 908
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "BIP - startBipNetworkFeature: startUsingNetworkFeature APN_REQUEST_STARTED"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 909
    :cond_4
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cat/BipProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 910
    .restart local v7       #msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->setOngoingSetupMessage(Landroid/os/Message;)V

    .line 911
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    sget-object v1, Lcom/android/internal/telephony/cat/BipProxy$BipType;->SPECIFIC_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->setBearerType(Lcom/android/internal/telephony/cat/BipProxy$BipType;I)V

    goto :goto_0

    .line 913
    .end local v7           #msg:Landroid/os/Message;
    :cond_5
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BIP - startBipNetworkFeature: startUsingNetworkFeature failed. result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 914
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 915
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V

    goto/16 :goto_0
.end method

.method private teardownDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;I)Z
    .locals 5
    .parameter "cmdMsg"
    .parameter "channel"

    .prologue
    .line 565
    sget-boolean v3, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BIP - teardownDataConnection: channel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy;->mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->getBearerType()Lcom/android/internal/telephony/cat/BipProxy$BipType;

    move-result-object v2

    .line 582
    .local v2, type:Lcom/android/internal/telephony/cat/BipProxy$BipType;
    sget-boolean v3, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BIP - teardownDataConnection: BearerType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 584
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/cat/BipProxy$BipType;->SPECIFIC_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    if-ne v2, v3, :cond_6

    .line 585
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 586
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_4

    .line 587
    sget-boolean v3, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "BIP - teardownDataConnection: remove timer!!"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    :cond_2
    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cat/BipProxy;->removeMessages(I)V

    .line 590
    sget-boolean v3, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "BIP - teardownDataConnection: stopUsingNetworkFeature"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    :cond_3
    const/4 v3, 0x0

    const-string v4, "enableBIP"

    invoke-virtual {v0, v3, v4}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 593
    :cond_4
    const/16 v3, 0xb

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/cat/BipProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 594
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipProxy;->mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->setOngoingSetupMessage(Landroid/os/Message;)V

    .line 604
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #msg:Landroid/os/Message;
    :cond_5
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 595
    :cond_6
    sget-object v3, Lcom/android/internal/telephony/cat/BipProxy$BipType;->DEFAULT_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    if-ne v2, v3, :cond_5

    .line 596
    sget-boolean v3, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string v3, "BIP - teardownDataConnection: BipType.DEFAULT_BIP clean channel directly"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cat/BipProxy;->cleanupBipChannel(I)V

    goto :goto_0
.end method


# virtual methods
.method public canHandleNewChannel()Z
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 135
    const/4 v1, 0x1

    .line 138
    :goto_1
    return v1

    .line 133
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public handleBipCommand(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 22
    .parameter "cmdMsg"

    .prologue
    .line 153
    if-nez p1, :cond_1

    .line 154
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    array-length v3, v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_5

    .line 155
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    aget-object v3, v3, v19

    if-eqz v3, :cond_0

    .line 156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    aget-object v3, v3, v19

    invoke-interface {v3}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->onSessionEnd()V

    .line 154
    :cond_0
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 162
    .end local v19           #i:I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v17

    .line 164
    .local v17, curCmdType:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    sget-boolean v3, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BIP - handleBipCommand: Command Type is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/cat/BipProxy$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 284
    :cond_3
    sget-boolean v3, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "BIP - handleBipCommand: CMD_DATA_NOT_UNDERSTOOD"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v11, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 287
    .end local v17           #curCmdType:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    :cond_5
    :goto_1
    return-void

    .line 168
    .restart local v17       #curCmdType:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v15

    .line 169
    .local v15, channelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    if-eqz v15, :cond_3

    .line 171
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/BipProxy;->allChannelsClosed()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 173
    sget-boolean v3, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v3, :cond_6

    const-string v3, "BIP - handleBipCommand: This is our first open channel request. Fire up the broadcast receiver"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mDefaultBearerStateReceiver:Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/BipProxy$DefaultBearerStateReceiver;->startListening()V

    .line 178
    :cond_7
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    array-length v3, v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_8

    .line 179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    aget-object v3, v3, v19

    if-nez v3, :cond_9

    .line 180
    add-int/lit8 v3, v19, 0x1

    iput v3, v15, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    .line 181
    sget-boolean v3, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BIP - handleBipCommand: find the first available channel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v15, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    :cond_8
    iget v3, v15, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    if-nez v3, :cond_a

    .line 188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_1

    .line 178
    :cond_9
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 192
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipSessionState:[Lcom/android/internal/telephony/cat/BipProxy$BipSession;

    iget v4, v15, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v4, v4, -0x1

    sget-object v5, Lcom/android/internal/telephony/cat/BipProxy$BipSession;->BIP_STATE_IDLE:Lcom/android/internal/telephony/cat/BipProxy$BipSession;

    aput-object v5, v3, v4

    .line 194
    sget-object v3, Lcom/android/internal/telephony/cat/BipProxy$1;->$SwitchMap$com$android$internal$telephony$cat$InterfaceTransportLevel$TransportProtocol:[I

    iget-object v4, v15, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 210
    sget-boolean v3, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v3, :cond_b

    const-string v3, "BIP - handleBipCommand: protocol not understood"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 197
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    iget v4, v15, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v4, v4, -0x1

    new-instance v5, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/BipProxy$TcpServerChannel;-><init>(Lcom/android/internal/telephony/cat/BipProxy;)V

    aput-object v5, v3, v4

    .line 215
    :goto_3
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/BipProxy;->setupDataConnection(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 217
    sget-boolean v3, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v3, :cond_c

    const-string v3, "BIP - handleBipCommand: Data connection available. Continue processing open channel"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    :cond_c
    new-instance v21, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;

    iget v4, v15, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v3, v0, v1, v4, v2}, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Lcom/android/internal/telephony/cat/AppInterface$CommandType;ILcom/android/internal/telephony/cat/CatCmdMessage;)V

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 222
    .local v21, t:Ljava/lang/Thread;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 202
    .end local v21           #t:Ljava/lang/Thread;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    iget v4, v15, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v4, v4, -0x1

    new-instance v5, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/BipProxy$TcpClientChannel;-><init>(Lcom/android/internal/telephony/cat/BipProxy;)V

    aput-object v5, v3, v4

    goto :goto_3

    .line 207
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    iget v4, v15, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v4, v4, -0x1

    new-instance v5, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/BipProxy$UdpClientChannel;-><init>(Lcom/android/internal/telephony/cat/BipProxy;)V

    aput-object v5, v3, v4

    goto :goto_3

    .line 232
    .end local v15           #channelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    .end local v19           #i:I
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 234
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v4

    iget v4, v4, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    add-int/lit8 v4, v4, -0x1

    aget-object v16, v3, v4

    .line 235
    .local v16, curChannel:Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    if-eqz v16, :cond_e

    .line 249
    new-instance v21, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-result-object v4

    iget v4, v4, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v3, v0, v1, v4, v2}, Lcom/android/internal/telephony/cat/BipProxy$sendBipCmdRunnable;-><init>(Lcom/android/internal/telephony/cat/BipProxy;Lcom/android/internal/telephony/cat/AppInterface$CommandType;ILcom/android/internal/telephony/cat/CatCmdMessage;)V

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 250
    .restart local v21       #t:Ljava/lang/Thread;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 259
    .end local v16           #curChannel:Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    .end local v21           #t:Ljava/lang/Thread;
    :catch_0
    move-exception v18

    .line 260
    .local v18, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-boolean v3, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BIP - handleBipCommand: Send TR exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 254
    .end local v18           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v16       #curChannel:Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    :cond_e
    :try_start_1
    sget-boolean v3, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v3, :cond_f

    const-string v3, "BIP - handleBipCommand: Send TR Channel identifier not valid"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 269
    .end local v16           #curChannel:Lcom/android/internal/telephony/cat/BipProxy$BipChannel;
    :pswitch_5
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v20, v0

    .line 270
    .local v20, status:[I
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_4
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ge v0, v3, :cond_11

    .line 271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    aget-object v3, v3, v19

    if-eqz v3, :cond_10

    .line 272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    aget-object v3, v3, v19

    invoke-interface {v3}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->getStatus()I

    move-result v3

    aput v3, v20, v19

    .line 270
    :goto_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 274
    :cond_10
    const/4 v3, 0x0

    aput v3, v20, v19

    goto :goto_5

    .line 278
    :cond_11
    new-instance v8, Lcom/android/internal/telephony/cat/ChannelStatusResponseData;

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Lcom/android/internal/telephony/cat/ChannelStatusResponseData;-><init>([I)V

    .line 279
    .local v8, resp:Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 194
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 731
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BIP - handleMessage: msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 733
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 796
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 735
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 736
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->onSetupConnectionCompleted(Landroid/os/AsyncResult;)V

    .line 798
    :cond_2
    :goto_1
    return-void

    .line 740
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 741
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->onTeardownConnectionCompleted(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 745
    :pswitch_2
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "BIP - handleMessage: MSG_ID_RECEIVE_SOCKET_DATA"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 746
    :cond_3
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    .line 748
    .local v10, setting:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    iget v1, v10, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    .line 749
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mBipChannels:[Lcom/android/internal/telephony/cat/BipProxy$BipChannel;

    iget v1, v10, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/android/internal/telephony/cat/BipProxy$BipChannel;->getSocketData()V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 753
    :catch_0
    move-exception v8

    .line 754
    .local v8, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BIP - handleMessage: MSG_ID_RECEIVE_SOCKET_DATA exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 751
    .end local v8           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    :try_start_1
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "BIP - handleMessage: MSG_ID_RECEIVE_SOCKET_DATA channel is null."

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 758
    .end local v10           #setting:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    :pswitch_3
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BIP - handleMessage: MSG_ID_INSERT_APN_RETRY apn_retry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->apn_retry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 759
    :cond_5
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->apn_retry:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_6

    .line 760
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->apn_retry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->apn_retry:I

    .line 761
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->insertAPN(Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;)Z

    goto/16 :goto_1

    .line 763
    :cond_6
    iput v3, p0, Lcom/android/internal/telephony/cat/BipProxy;->apn_retry:I

    goto/16 :goto_1

    .line 767
    :pswitch_4
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "BIP - handleMessage: MSG_ID_DISCONNECT_DELAYED"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 768
    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cat/BipProxy;->handleDisconnectDelayed(Lcom/android/internal/telephony/cat/CatCmdMessage;I)V

    goto/16 :goto_1

    .line 771
    :pswitch_5
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BIP - handleMessage: MSG_ID_START_NW_FEATURE nw_retry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cat/BipProxy;->nw_retry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 772
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->nw_retry:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_9

    .line 773
    iget v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->nw_retry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->nw_retry:I

    .line 774
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->startBipNetworkFeature(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto/16 :goto_1

    .line 776
    :cond_9
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string v0, "BIP - handleMessage: MSG_ID_START_NW_FEATURE over max retry count!"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 777
    :cond_a
    iput v3, p0, Lcom/android/internal/telephony/cat/BipProxy;->nw_retry:I

    .line 779
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 780
    .local v7, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, v7, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 784
    .end local v7           #cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 785
    .local v6, cm:Landroid/net/ConnectivityManager;
    if-eqz v6, :cond_d

    .line 786
    const-string v0, "enableBIP"

    invoke-virtual {v6, v3, v0}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v9

    .line 787
    .local v9, result:I
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BIP - handleMessage: MSG_ID_EXTEND_NW_TIMER result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 788
    :cond_b
    if-nez v9, :cond_1

    .line 789
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "BIP - handleMessage: MSG_ID_EXTEND_NW_TIMER start timer!!"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 790
    :cond_c
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/BipProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0xd6d8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/cat/BipProxy;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 793
    .end local v9           #result:I
    :cond_d
    sget-boolean v0, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "BIP - handleMessage: MSG_ID_EXTEND_NW_TIMER cm is null"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 733
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method public insertAPN(Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;)Z
    .locals 10
    .parameter "channel"

    .prologue
    const/4 v9, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 802
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 803
    .local v2, resolver:Landroid/content/ContentResolver;
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 804
    .local v3, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 805
    .local v1, imsi:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 806
    sget-boolean v6, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "BIP - insertAPN: imsi not ready yet"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 854
    :cond_0
    :goto_0
    return v5

    .line 813
    :cond_1
    if-nez p1, :cond_2

    .line 814
    sget-boolean v6, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "BIP - insertAPN: channel setting is null"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 818
    :cond_2
    sget-boolean v7, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "BIP - insertAPN: start"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 820
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipProxy;->deleteAPN()V

    .line 822
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 823
    .local v4, values:Landroid/content/ContentValues;
    const-string v7, "type"

    const-string v8, "bip"

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const-string v7, "name"

    const-string v8, "HTC_BIP"

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string v7, "apn"

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->networkAccessName:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const-string v7, "user"

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->userLogin:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    const-string v7, "password"

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->userPassword:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const-string v7, "numeric"

    invoke-virtual {v4, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const-string v7, "mcc"

    invoke-virtual {v1, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string v7, "mnc"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const-string v7, "proxy"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const-string v7, "port"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const-string v7, "mmsproxy"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    const-string v7, "mmsport"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const-string v7, "server"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const-string v7, "mmsc"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    :try_start_0
    new-instance v7, Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;-><init>(Lcom/android/internal/telephony/cat/BipProxy;)V

    iput-object v7, p0, Lcom/android/internal/telephony/cat/BipProxy;->mApnObserver:Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;

    .line 840
    sget-object v7, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/internal/telephony/cat/BipProxy;->mApnObserver:Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 845
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/cat/BipProxy;->mApnUpdated:Z

    .line 846
    sget-object v7, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v7, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    sget-boolean v5, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "BIP - insertAPN: end"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    move v5, v6

    .line 854
    goto/16 :goto_0

    .line 847
    :catch_0
    move-exception v0

    .line 848
    .local v0, e:Landroid/database/SQLException;
    sget-boolean v6, Lcom/android/internal/telephony/cat/BipProxy;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "BIP - insertAPN: SQLException="

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
