.class public Landroid/media/medialinkhd/WirelessDisplayHelper;
.super Ljava/lang/Object;
.source "WirelessDisplayHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/medialinkhd/WirelessDisplayHelper$1;,
        Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;,
        Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "WirelessDisplayHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;

.field private mReceiver:Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

.field private mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    .line 46
    iput-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    .line 47
    iput-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mReceiver:Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    .line 48
    iput-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mListener:Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;

    .line 57
    iput-object p1, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mListener:Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;

    .line 59
    iget-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v0

    iput-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    .line 60
    invoke-direct {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->registerReceiver()V

    .line 61
    const-string v0, "WirelessDisplayHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WirelessDisplayManager = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method static synthetic access$100(Landroid/media/medialinkhd/WirelessDisplayHelper;)Lcom/htc/service/WirelessDisplayManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/medialinkhd/WirelessDisplayHelper;)Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mListener:Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;

    return-object v0
.end method

.method public static getIPLong(Ljava/lang/String;)J
    .locals 10
    .parameter "ip"

    .prologue
    .line 128
    const-wide/16 v2, -0x1

    .line 130
    .local v2, num:J
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 132
    const-string v7, "\\."

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, addrArray:[Ljava/lang/String;
    const/16 v4, 0x20

    .line 134
    .local v4, offset:I
    array-length v7, v0

    add-int/lit8 v1, v7, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 136
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_0

    .line 137
    const-string v7, "WirelessDisplayHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addrArray("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    add-int/lit8 v4, v4, -0x8

    .line 140
    aget-object v7, v0, v1

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 141
    .local v5, token:J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-ltz v7, :cond_1

    const-wide/16 v7, 0x100

    cmp-long v7, v5, v7

    if-ltz v7, :cond_4

    .line 143
    :cond_1
    const-wide/16 v2, -0x1

    .line 148
    .end local v5           #token:J
    :cond_2
    const-string v7, "WirelessDisplayHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "long value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .end local v0           #addrArray:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v4           #offset:I
    :cond_3
    return-wide v2

    .line 146
    .restart local v0       #addrArray:[Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v4       #offset:I
    .restart local v5       #token:J
    :cond_4
    shl-long v7, v5, v4

    add-long/2addr v2, v7

    .line 134
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static getReadyDongle(Landroid/content/Context;)Lcom/htc/service/DongleInfo;
    .locals 1
    .parameter "context"

    .prologue
    .line 203
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getReadyDongle(Landroid/content/Context;Z)Lcom/htc/service/DongleInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getReadyDongle(Landroid/content/Context;Z)Lcom/htc/service/DongleInfo;
    .locals 8
    .parameter "context"
    .parameter "needConfig"

    .prologue
    const/4 v5, 0x0

    .line 218
    invoke-static {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v4

    .line 219
    .local v4, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v4}, Landroid/media/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v1, v5

    .line 252
    :goto_0
    return-object v1

    .line 226
    :cond_0
    invoke-virtual {v4}, Lcom/htc/service/WirelessDisplayManager;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v1

    .line 227
    .local v1, dongleInfo:Lcom/htc/service/DongleInfo;
    if-nez v1, :cond_6

    .line 231
    invoke-virtual {v4}, Lcom/htc/service/WirelessDisplayManager;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v2

    .line 232
    .local v2, dongles:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_2

    :cond_1
    move-object v1, v5

    .line 233
    goto :goto_0

    .line 235
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/DongleInfo;

    .line 237
    .local v0, dongle:Lcom/htc/service/DongleInfo;
    if-eqz v0, :cond_3

    .line 238
    if-eqz p1, :cond_5

    iget-boolean v5, v0, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-eqz v5, :cond_5

    .line 239
    move-object v1, v0

    .line 247
    .end local v0           #dongle:Lcom/htc/service/DongleInfo;
    :cond_4
    :goto_1
    const-string v5, "WirelessDisplayHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getReadyDongle] Found dongle via getDiscoveryDongleList = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 241
    .restart local v0       #dongle:Lcom/htc/service/DongleInfo;
    :cond_5
    if-nez p1, :cond_3

    .line 242
    move-object v1, v0

    .line 243
    goto :goto_1

    .line 249
    .end local v0           #dongle:Lcom/htc/service/DongleInfo;
    .end local v2           #dongles:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_6
    const-string v5, "WirelessDisplayHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getReadyDongle] Found dongle via getDefaultDongle = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 265
    invoke-static {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v0

    .line 266
    .local v0, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    const/4 v1, 0x0

    .line 268
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->getConnectedDongleIP()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 190
    const-string/jumbo v0, "wireless_display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    return-object v0
.end method

.method public static final isInMirrorMode(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 73
    const-string/jumbo v1, "wireless_display"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    .line 74
    .local v0, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    const/4 v1, 0x0

    .line 76
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v1

    goto :goto_0
.end method

.method private static isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z
    .locals 2
    .parameter "mgr"

    .prologue
    .line 443
    if-nez p0, :cond_0

    .line 444
    const-string v0, "WirelessDisplayHelper"

    const-string v1, "[isWirelessDisplayManagerNull][mgr is null]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v0, 0x1

    .line 448
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final pauseMirror(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 340
    invoke-static {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v1

    .line 341
    .local v1, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v1}, Landroid/media/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 345
    :goto_0
    return v2

    .line 343
    :cond_0
    invoke-virtual {v1, v2}, Lcom/htc/service/WirelessDisplayManager;->setMirrorDisplayOnOff(Z)I

    move-result v0

    .line 344
    .local v0, nRet:I
    const-string v2, "WirelessDisplayHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[pauseMirror] nRet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 157
    new-instance v1, Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;-><init>(Landroid/media/medialinkhd/WirelessDisplayHelper;Landroid/media/medialinkhd/WirelessDisplayHelper$1;)V

    iput-object v1, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mReceiver:Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    .line 158
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mReceiver:Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    return-void
.end method

.method public static final resumeMirror(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 323
    invoke-static {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v1

    .line 324
    .local v1, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v1}, Landroid/media/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    :goto_0
    return-void

    .line 326
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/service/WirelessDisplayManager;->setMirrorDisplayOnOff(Z)I

    move-result v0

    .line 327
    .local v0, nRet:I
    const-string v2, "WirelessDisplayHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[resumeMirror] nRet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final setDLNAPreloadFlag(Landroid/content/Context;Z)Z
    .locals 3
    .parameter "context"
    .parameter "flag"

    .prologue
    const/4 v1, 0x0

    .line 477
    if-nez p0, :cond_1

    .line 483
    :cond_0
    :goto_0
    return v1

    .line 479
    :cond_1
    invoke-static {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v0

    .line 480
    .local v0, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 482
    invoke-virtual {v0, p1}, Lcom/htc/service/WirelessDisplayManager;->setDLNAPreloadEnable(Z)V

    .line 483
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static setDefaultDongleMirrorEnabled(Landroid/content/Context;Z)Z
    .locals 4
    .parameter "context"
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 282
    invoke-static {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v1

    .line 283
    .local v1, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v1}, Landroid/media/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 288
    :cond_0
    :goto_0
    return v2

    .line 285
    :cond_1
    invoke-virtual {v1}, Lcom/htc/service/WirelessDisplayManager;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v0

    .line 286
    .local v0, dongleInfo:Lcom/htc/service/DongleInfo;
    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v1, p1}, Lcom/htc/service/WirelessDisplayManager;->mirrorModeStartStop(Z)Z

    move-result v2

    goto :goto_0
.end method

.method public static final shouldPlayOnTV(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 375
    const-string v3, "WirelessDisplayHelper"

    const-string v4, "[startMirror]"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-static {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v1

    .line 377
    .local v1, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v1}, Landroid/media/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 384
    :cond_0
    :goto_0
    return v2

    .line 380
    :cond_1
    invoke-static {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getReadyDongle(Landroid/content/Context;)Lcom/htc/service/DongleInfo;

    move-result-object v0

    .line 381
    .local v0, dongle:Lcom/htc/service/DongleInfo;
    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v1}, Lcom/htc/service/WirelessDisplayManager;->popDialog()Z

    move-result v2

    goto :goto_0
.end method

.method public static final startMirror(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 304
    const-string v1, "WirelessDisplayHelper"

    const-string v2, "[startMirror]"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-static {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v0

    .line 306
    .local v0, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    const/4 v1, 0x0

    .line 311
    :goto_0
    return v1

    .line 309
    :cond_0
    const-string v1, "WirelessDisplayHelper"

    const-string v2, "[startMirror][mirrorNow]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->mirrorNow()V

    .line 311
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static final stopMirror(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 358
    invoke-static {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v1

    .line 359
    .local v1, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v1}, Landroid/media/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    :goto_0
    return-void

    .line 361
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/service/WirelessDisplayManager;->mirrorModeStartStop(Z)Z

    move-result v0

    .line 362
    .local v0, bRet:Z
    const-string v2, "WirelessDisplayHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[stopMirror] bRet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mReceiver:Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 166
    return-void
.end method


# virtual methods
.method public final isInMirrorMode()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMirrorRenderer(J)Z
    .locals 6
    .parameter "ip"

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v3, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    if-nez v3, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v2

    .line 103
    :cond_1
    iget-object v3, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v3}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    iget-object v3, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v3}, Lcom/htc/service/WirelessDisplayManager;->getConnectedDongleIP()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getIPLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 106
    .local v0, dongleIP:J
    cmp-long v3, p1, v0

    if-nez v3, :cond_2

    .line 108
    const-string v2, "WirelessDisplayHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isMirrorRenderer] Dongle found with matching IP, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v2, 0x1

    goto :goto_0

    .line 113
    :cond_2
    const-string v3, "WirelessDisplayHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isMirrorRenderer] In mirror mode, not mataching with dongle IP = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", renderer IP = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 174
    invoke-direct {p0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->unregisterReceiver()V

    .line 175
    iput-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mListener:Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;

    .line 176
    iput-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mReceiver:Landroid/media/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;

    .line 177
    iput-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    .line 178
    iput-object v0, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    .line 179
    return-void
.end method

.method public setDLNAPreloadFlag(Z)Z
    .locals 3
    .parameter "flag"

    .prologue
    const/4 v1, 0x0

    .line 459
    iget-object v2, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 465
    :cond_0
    :goto_0
    return v1

    .line 461
    :cond_1
    iget-object v2, p0, Landroid/media/medialinkhd/WirelessDisplayHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getWirelessDisplayManager(Landroid/content/Context;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v0

    .line 462
    .local v0, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v0}, Landroid/media/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/service/WirelessDisplayManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 464
    invoke-virtual {v0, p1}, Lcom/htc/service/WirelessDisplayManager;->setDLNAPreloadEnable(Z)V

    .line 465
    const/4 v1, 0x1

    goto :goto_0
.end method
