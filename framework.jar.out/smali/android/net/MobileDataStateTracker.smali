.class public Landroid/net/MobileDataStateTracker;
.super Ljava/lang/Object;
.source "MobileDataStateTracker.java"

# interfaces
.implements Landroid/net/NetworkStateTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/MobileDataStateTracker$1;,
        Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;,
        Landroid/net/MobileDataStateTracker$MdstHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "MobileDataStateTracker"

.field private static final VDBG:Z = true


# instance fields
.field private mApnType:Ljava/lang/String;

.field private mCdmaCarrierId:Ljava/lang/String;

.field private mCdmaSid:Ljava/lang/Integer;

.field private mContext:Landroid/content/Context;

.field private mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

.field private mDefaultRouteSet:Z

.field private mEntitleError:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHtcBroadcastReceiver:Landroid/net/HtcMobileDataStateReceiver;

.field private mLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMessenger:Landroid/os/Messenger;

.field private mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field protected mPolicyDataEnabled:Z

.field private mPrivateDnsRouteSet:Z

.field private mTarget:Landroid/os/Handler;

.field private mTeardownRequested:Z

.field protected mUserDataEnabled:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 3
    .parameter "netType"
    .parameter "tag"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mTeardownRequested:Z

    .line 88
    iput-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mPrivateDnsRouteSet:Z

    .line 89
    iput-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mDefaultRouteSet:Z

    .line 93
    iput-boolean v1, p0, Landroid/net/MobileDataStateTracker;->mUserDataEnabled:Z

    .line 94
    iput-boolean v1, p0, Landroid/net/MobileDataStateTracker;->mPolicyDataEnabled:Z

    .line 100
    const-string v0, "0"

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mEntitleError:Ljava/lang/String;

    .line 114
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 117
    invoke-static {p1}, Landroid/net/MobileDataStateTracker;->networkTypeToApnType(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;ILjava/lang/String;Landroid/net/HtcMobileDataStateReceiver;)V
    .locals 0
    .parameter "context"
    .parameter "target"
    .parameter "netType"
    .parameter "tag"
    .parameter "receiver"

    .prologue
    .line 123
    invoke-direct {p0, p3, p4}, Landroid/net/MobileDataStateTracker;-><init>(ILjava/lang/String;)V

    .line 124
    iput-object p5, p0, Landroid/net/MobileDataStateTracker;->mHtcBroadcastReceiver:Landroid/net/HtcMobileDataStateReceiver;

    .line 125
    return-void
.end method

.method static synthetic access$100(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Landroid/net/MobileDataStateTracker;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method private getPhoneService(Z)V
    .locals 1
    .parameter "forceRefresh"

    .prologue
    .line 382
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 383
    :cond_0
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 385
    :cond_1
    return-void
.end method

.method private isFixedDnsNeeded()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 823
    const/4 v2, 0x4

    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtc_PROJECT_flag()S

    move-result v3

    if-eq v2, v3, :cond_1

    .line 834
    :cond_0
    :goto_0
    return v1

    .line 826
    :cond_1
    const/4 v0, 0x1

    .line 827
    .local v0, isSidRoaming:Z
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mCdmaSid:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 828
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Replace DNSs based on sid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mCdmaSid:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 829
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mCdmaSid:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mCdmaSid:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x87f

    if-lt v2, v3, :cond_4

    :cond_2
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mCdmaSid:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x900

    if-lt v2, v3, :cond_3

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mCdmaSid:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x1dff

    if-lt v2, v3, :cond_4

    :cond_3
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mCdmaSid:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x543f

    if-le v2, v3, :cond_5

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mCdmaSid:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x547e

    if-ge v2, v3, :cond_5

    .line 831
    :cond_4
    const/4 v0, 0x0

    .line 834
    :cond_5
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 782
    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 786
    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    return-void
.end method

.method public static networkTypeToApnType(I)Ljava/lang/String;
    .locals 2
    .parameter "netType"

    .prologue
    .line 720
    packed-switch p0, :pswitch_data_0

    .line 762
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error mapping networkType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to apnType."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/MobileDataStateTracker;->sloge(Ljava/lang/String;)V

    .line 763
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 722
    :pswitch_1
    const-string v0, "default"

    goto :goto_0

    .line 724
    :pswitch_2
    const-string/jumbo v0, "mms"

    goto :goto_0

    .line 726
    :pswitch_3
    const-string/jumbo v0, "supl"

    goto :goto_0

    .line 728
    :pswitch_4
    const-string v0, "dun"

    goto :goto_0

    .line 730
    :pswitch_5
    const-string v0, "hipri"

    goto :goto_0

    .line 732
    :pswitch_6
    const-string v0, "fota"

    goto :goto_0

    .line 734
    :pswitch_7
    const-string v0, "ims"

    goto :goto_0

    .line 736
    :pswitch_8
    const-string v0, "cbs"

    goto :goto_0

    .line 739
    :pswitch_9
    const-string v0, "internet"

    goto :goto_0

    .line 741
    :pswitch_a
    const-string v0, "entitle"

    goto :goto_0

    .line 743
    :pswitch_b
    const-string v0, "admin"

    goto :goto_0

    .line 746
    :pswitch_c
    const-string v0, "cmail"

    goto :goto_0

    .line 748
    :pswitch_d
    const-string/jumbo v0, "otasp"

    goto :goto_0

    .line 751
    :pswitch_e
    const-string v0, "httpproxy"

    goto :goto_0

    .line 755
    :pswitch_f
    const-string v0, "cmmail"

    goto :goto_0

    .line 759
    :pswitch_10
    const-string v0, "bip"

    goto :goto_0

    .line 720
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_c
        :pswitch_a
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method private setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "state"
    .parameter "reason"
    .parameter "extraInfo"

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDetailed state, old="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " and new state="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " reason="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " extra="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " mEntitleError="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mEntitleError:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 524
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-eq p1, v1, :cond_2

    .line 525
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v1, v4, :cond_3

    move v8, v9

    .line 526
    .local v8, wasConnecting:Z
    :goto_0
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v6

    .line 528
    .local v6, lastReason:Ljava/lang/String;
    const/4 v2, 0x0

    .line 529
    .local v2, isIpv4Connected:Z
    const/4 v3, 0x0

    .line 531
    .local v3, isIpv6Connected:Z
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    move v2, v9

    .line 534
    :goto_1
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceNameV6()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    move v3, v9

    .line 543
    :cond_0
    :goto_2
    if-eqz v8, :cond_1

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    if-eqz v6, :cond_1

    .line 545
    move-object p2, v6

    .line 548
    :cond_1
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const-string v1, "entitle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 550
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_6

    .line 551
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v5, p0, Landroid/net/MobileDataStateTracker;->mEntitleError:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 566
    :goto_3
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    new-instance v1, Landroid/net/NetworkInfo;

    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v1, v4}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 567
    .local v7, msg:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 569
    .end local v2           #isIpv4Connected:Z
    .end local v3           #isIpv6Connected:Z
    .end local v6           #lastReason:Ljava/lang/String;
    .end local v7           #msg:Landroid/os/Message;
    .end local v8           #wasConnecting:Z
    :cond_2
    return-void

    :cond_3
    move v8, v0

    .line 525
    goto :goto_0

    .restart local v2       #isIpv4Connected:Z
    .restart local v3       #isIpv6Connected:Z
    .restart local v6       #lastReason:Ljava/lang/String;
    .restart local v8       #wasConnecting:Z
    :cond_4
    move v2, v0

    .line 533
    goto :goto_1

    :cond_5
    move v3, v0

    .line 534
    goto :goto_2

    .line 554
    :cond_6
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mEntitleError:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 559
    :cond_7
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_8

    .line 560
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 563
    :cond_8
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private setEnableApn(Ljava/lang/String;Z)I
    .locals 4
    .parameter "apnType"
    .parameter "enable"

    .prologue
    .line 693
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 698
    const/4 v1, 0x0

    .local v1, retry:I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 699
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_1

    .line 700
    const-string v2, "Ignoring feature request because could not acquire PhoneService"

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 715
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_4

    const-string v2, "enable"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " APN type \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 716
    const/4 v2, 0x3

    :goto_2
    return v2

    .line 705
    :cond_1
    if-eqz p2, :cond_2

    .line 706
    :try_start_0
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    .line 708
    :cond_2
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_2

    .line 710
    :catch_0
    move-exception v0

    .line 711
    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_3

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 698
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 715
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4
    const-string v2, "disable"

    goto :goto_1
.end method

.method private static sloge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 790
    const-string v0, "MobileDataStateTracker"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    return-void
.end method


# virtual methods
.method public defaultRouteSet(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 209
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mDefaultRouteSet:Z

    .line 210
    return-void
.end method

.method fillInFixedDns()Z
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 838
    iget-object v12, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v12, :cond_0

    .line 902
    :goto_0
    return v10

    .line 842
    :cond_0
    iget-object v12, p0, Landroid/net/MobileDataStateTracker;->mCdmaCarrierId:Ljava/lang/String;

    if-nez v12, :cond_1

    .line 844
    :try_start_0
    const-string/jumbo v12, "ro.ril.carrier"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Landroid/net/MobileDataStateTracker;->mCdmaCarrierId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    :cond_1
    iget-object v12, p0, Landroid/net/MobileDataStateTracker;->mCdmaCarrierId:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 853
    .local v6, id:I
    const/4 v3, 0x0

    .line 855
    .local v3, dnsList:[Ljava/lang/String;
    sparse-switch v6, :sswitch_data_0

    .line 866
    const-string/jumbo v10, "ro.ril.carrier not in ACG list"

    invoke-direct {p0, v10}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 869
    :goto_1
    if-eqz v3, :cond_5

    .line 871
    new-instance v8, Landroid/net/LinkProperties;

    invoke-direct {v8}, Landroid/net/LinkProperties;-><init>()V

    .line 873
    .local v8, newLp:Landroid/net/LinkProperties;
    iget-object v10, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 874
    .local v0, addr:Landroid/net/LinkAddress;
    invoke-virtual {v8, v0}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    goto :goto_2

    .line 845
    .end local v0           #addr:Landroid/net/LinkAddress;
    .end local v3           #dnsList:[Ljava/lang/String;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #id:I
    .end local v8           #newLp:Landroid/net/LinkProperties;
    :catch_0
    move-exception v4

    .line 846
    .local v4, e:Ljava/lang/Exception;
    const-string v11, "exception occurs when trying to get ro.ril.carrier"

    invoke-direct {p0, v11}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 847
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 856
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v3       #dnsList:[Ljava/lang/String;
    .restart local v6       #id:I
    :sswitch_0
    new-array v3, v13, [Ljava/lang/String;

    .end local v3           #dnsList:[Ljava/lang/String;
    const-string v12, "66.38.0.240"

    aput-object v12, v3, v10

    const-string v10, "66.38.1.240"

    aput-object v10, v3, v11

    .restart local v3       #dnsList:[Ljava/lang/String;
    goto :goto_1

    .line 857
    :sswitch_1
    new-array v3, v13, [Ljava/lang/String;

    .end local v3           #dnsList:[Ljava/lang/String;
    const-string v12, "66.175.131.21"

    aput-object v12, v3, v10

    const-string v10, "66.175.144.92"

    aput-object v10, v3, v11

    .restart local v3       #dnsList:[Ljava/lang/String;
    goto :goto_1

    .line 858
    :sswitch_2
    new-array v3, v13, [Ljava/lang/String;

    .end local v3           #dnsList:[Ljava/lang/String;
    const-string v12, "209.244.0.3"

    aput-object v12, v3, v10

    const-string v10, "209.244.0.4"

    aput-object v10, v3, v11

    .restart local v3       #dnsList:[Ljava/lang/String;
    goto :goto_1

    .line 859
    :sswitch_3
    new-array v3, v13, [Ljava/lang/String;

    .end local v3           #dnsList:[Ljava/lang/String;
    const-string v12, "206.40.99.2"

    aput-object v12, v3, v10

    const-string v10, "206.40.99.3"

    aput-object v10, v3, v11

    .restart local v3       #dnsList:[Ljava/lang/String;
    goto :goto_1

    .line 861
    :sswitch_4
    new-array v3, v13, [Ljava/lang/String;

    .end local v3           #dnsList:[Ljava/lang/String;
    const-string v12, "209.165.131.12"

    aput-object v12, v3, v10

    const-string v10, "209.165.131.13"

    aput-object v10, v3, v11

    .restart local v3       #dnsList:[Ljava/lang/String;
    goto :goto_1

    .line 863
    :sswitch_5
    new-array v3, v13, [Ljava/lang/String;

    .end local v3           #dnsList:[Ljava/lang/String;
    const-string v12, "216.129.224.1"

    aput-object v12, v3, v10

    const-string v10, "216.220.0.1"

    aput-object v10, v3, v11

    .restart local v3       #dnsList:[Ljava/lang/String;
    goto :goto_1

    .line 864
    :sswitch_6
    new-array v3, v13, [Ljava/lang/String;

    .end local v3           #dnsList:[Ljava/lang/String;
    const-string v12, "65.79.193.8"

    aput-object v12, v3, v10

    const-string v10, "65.79.197.97"

    aput-object v10, v3, v11

    .restart local v3       #dnsList:[Ljava/lang/String;
    goto :goto_1

    .line 877
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v8       #newLp:Landroid/net/LinkProperties;
    :cond_2
    iget-object v10, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/RouteInfo;

    .line 878
    .local v9, route:Landroid/net/RouteInfo;
    invoke-virtual {v8, v9}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_3

    .line 881
    .end local v9           #route:Landroid/net/RouteInfo;
    :cond_3
    iget-object v10, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 882
    iget-object v10, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getHttpProxyV6()Landroid/net/ProxyProperties;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/net/LinkProperties;->setHttpProxyV6(Landroid/net/ProxyProperties;)V

    .line 884
    iget-object v10, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 885
    iget-object v10, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getInterfaceNameV6()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/net/LinkProperties;->setInterfaceNameV6(Ljava/lang/String;)V

    .line 887
    move-object v1, v3

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_4
    if-ge v5, v7, :cond_4

    aget-object v2, v1, v5

    .line 889
    .local v2, dns:Ljava/lang/String;
    :try_start_1
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 887
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 890
    :catch_1
    move-exception v4

    .line 891
    .restart local v4       #e:Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exception occurs when convert "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " to INetAddress"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 892
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 897
    .end local v2           #dns:Ljava/lang/String;
    .end local v4           #e:Ljava/lang/Exception;
    :cond_4
    iput-object v8, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 899
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fillInFixedDns: new mLinkProperties = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v8           #newLp:Landroid/net/LinkProperties;
    :cond_5
    move v10, v11

    .line 902
    goto/16 :goto_0

    .line 855
    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_1
        0x1a -> :sswitch_0
        0x66 -> :sswitch_3
        0x6d -> :sswitch_2
        0x70 -> :sswitch_4
        0x79 -> :sswitch_6
        0x7a -> :sswitch_5
    .end sparse-switch
.end method

.method public getKDDITcpBufferSizesPropName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 463
    const-string/jumbo v0, "unknown"

    .line 464
    .local v0, networkTypeStr:Ljava/lang/String;
    new-instance v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 466
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown network type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 496
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "net.tcp.buffersize."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 474
    :pswitch_0
    const-string v0, "gsm"

    .line 475
    goto :goto_0

    .line 484
    :pswitch_1
    const-string/jumbo v2, "true"

    const-string v3, "gsm.operator.isroaming"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 486
    const-string v0, "cdma"

    goto :goto_0

    .line 490
    :cond_0
    const-string v0, "jcdma"

    .line 492
    goto :goto_0

    .line 466
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    .prologue
    .line 778
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 771
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 400
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xe0

    if-ne v2, v3, :cond_0

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KDDI Valente case , getKDDITcpBufferSizesPropName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/MobileDataStateTracker;->getKDDITcpBufferSizesPropName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Landroid/net/MobileDataStateTracker;->getKDDITcpBufferSizesPropName()Ljava/lang/String;

    move-result-object v2

    .line 458
    :goto_0
    return-object v2

    .line 406
    :cond_0
    const-string/jumbo v0, "unknown"

    .line 407
    .local v0, networkTypeStr:Ljava/lang/String;
    new-instance v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 409
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown network type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 458
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "net.tcp.buffersize."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 411
    :pswitch_0
    const-string v0, "gprs"

    .line 412
    goto :goto_1

    .line 414
    :pswitch_1
    const-string v0, "edge"

    .line 415
    goto :goto_1

    .line 417
    :pswitch_2
    const-string/jumbo v0, "umts"

    .line 418
    goto :goto_1

    .line 420
    :pswitch_3
    const-string v0, "hsdpa"

    .line 421
    goto :goto_1

    .line 423
    :pswitch_4
    const-string v0, "hsupa"

    .line 424
    goto :goto_1

    .line 426
    :pswitch_5
    const-string v0, "hspa"

    .line 427
    goto :goto_1

    .line 429
    :pswitch_6
    const-string v0, "cdma"

    .line 430
    goto :goto_1

    .line 432
    :pswitch_7
    const-string v0, "1xrtt"

    .line 433
    goto :goto_1

    .line 435
    :pswitch_8
    const-string v0, "evdo"

    .line 436
    goto :goto_1

    .line 438
    :pswitch_9
    const-string v0, "evdo"

    .line 439
    goto :goto_1

    .line 441
    :pswitch_a
    const-string v0, "evdo"

    .line 442
    goto :goto_1

    .line 444
    :pswitch_b
    const-string v0, "iden"

    .line 445
    goto :goto_1

    .line 447
    :pswitch_c
    const-string v0, "lte"

    .line 448
    goto :goto_1

    .line 450
    :pswitch_d
    const-string v0, "ehrpd"

    .line 451
    goto :goto_1

    .line 453
    :pswitch_e
    const-string v0, "hspap"

    .line 454
    goto :goto_1

    .line 409
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public htcSetDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "state"
    .parameter "reason"
    .parameter "extraInfo"

    .prologue
    .line 806
    const/4 v0, 0x0

    return v0
.end method

.method protected internalBroadcast_onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 227
    monitor-enter p0

    .line 228
    :try_start_0
    iget-object v9, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v10

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 233
    const-string v9, "apnType"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, apnType:Ljava/lang/String;
    const-string/jumbo v9, "networkUnvailable"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_1

    .line 236
    .local v3, available:Z
    :goto_0
    iget-object v8, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v8

    if-eq v8, v3, :cond_0

    .line 237
    iget-object v8, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8, v3}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 238
    invoke-virtual {p0}, Landroid/net/MobileDataStateTracker;->notifyAvailableStatusChange()V

    .line 241
    :cond_0
    iget-object v8, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 242
    monitor-exit p0

    .line 379
    .end local v2           #apnType:Ljava/lang/String;
    .end local v3           #available:Z
    :goto_1
    return-void

    .restart local v2       #apnType:Ljava/lang/String;
    :cond_1
    move v3, v8

    .line 235
    goto :goto_0

    .line 246
    .restart local v3       #available:Z
    :cond_2
    const-string v9, "Broadcast received: ACTION_ANY_DATA_CONNECTION_STATE_CHANGED mApnType=%s %s received apnType=%s"

    const/4 v8, 0x3

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v11, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    aput-object v11, v10, v8

    const/4 v11, 0x1

    iget-object v8, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "=="

    :goto_2
    aput-object v8, v10, v11

    const/4 v8, 0x2

    aput-object v2, v10, v8

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 251
    iget-object v8, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v9

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    .line 253
    const-class v8, Lcom/android/internal/telephony/Phone$DataState;

    const-string/jumbo v9, "state"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/Phone$DataState;

    .line 255
    .local v7, state:Lcom/android/internal/telephony/Phone$DataState;
    const-string/jumbo v8, "reason"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 256
    .local v5, reason:Ljava/lang/String;
    const-string v8, "apn"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, apnName:Ljava/lang/String;
    iget-object v8, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    const-string/jumbo v9, "networkRoaming"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 271
    const-string v8, "entitleError"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/net/MobileDataStateTracker;->mEntitleError:Ljava/lang/String;

    .line 274
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", old="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", reason="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v5, :cond_5

    const-string v8, "(unspecified)"

    :goto_3
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 277
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mMobileDataState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mTeardownRequested="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/net/MobileDataStateTracker;->isTeardownRequested()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " got [AnyDataCSC] :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " reason="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " apn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " roaming="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "networkRoaming"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " unavailable="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "networkUnvailable"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " NetworkType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " NetworkTypeName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " entitleError="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/MobileDataStateTracker;->mEntitleError:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 286
    iget-object v8, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    if-eq v8, v7, :cond_a

    .line 287
    iput-object v7, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    .line 288
    sget-object v8, Landroid/net/MobileDataStateTracker$1;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 378
    .end local v1           #apnName:Ljava/lang/String;
    .end local v2           #apnType:Ljava/lang/String;
    .end local v3           #available:Z
    .end local v5           #reason:Ljava/lang/String;
    .end local v7           #state:Lcom/android/internal/telephony/Phone$DataState;
    :cond_3
    :goto_4
    monitor-exit p0

    goto/16 :goto_1

    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 246
    .restart local v2       #apnType:Ljava/lang/String;
    .restart local v3       #available:Z
    :cond_4
    :try_start_1
    const-string v8, "!="

    goto/16 :goto_2

    .restart local v1       #apnName:Ljava/lang/String;
    .restart local v5       #reason:Ljava/lang/String;
    .restart local v7       #state:Lcom/android/internal/telephony/Phone$DataState;
    :cond_5
    move-object v8, v5

    .line 274
    goto/16 :goto_3

    .line 290
    :pswitch_0
    invoke-virtual {p0}, Landroid/net/MobileDataStateTracker;->isTeardownRequested()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 291
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 294
    :cond_6
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v8, v5, v1}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 303
    :pswitch_1
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v8, v5, v1}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 306
    :pswitch_2
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v8, v5, v1}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 309
    :pswitch_3
    const-string v8, "linkProperties"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/LinkProperties;

    iput-object v8, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 311
    iget-object v8, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v8, :cond_9

    .line 312
    const-string v8, "CONNECTED event did not supply link properties."

    invoke-direct {p0, v8}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 313
    new-instance v8, Landroid/net/LinkProperties;

    invoke-direct {v8}, Landroid/net/LinkProperties;-><init>()V

    iput-object v8, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 319
    :cond_7
    :goto_5
    const-string v8, "linkCapabilities"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/LinkCapabilities;

    iput-object v8, p0, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 321
    iget-object v8, p0, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    if-nez v8, :cond_8

    .line 322
    const-string v8, "CONNECTED event did not supply link capabilities."

    invoke-direct {p0, v8}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 323
    new-instance v8, Landroid/net/LinkCapabilities;

    invoke-direct {v8}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v8, p0, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 325
    :cond_8
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v8, v5, v1}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 315
    :cond_9
    iget-object v8, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v8, :cond_7

    invoke-direct {p0}, Landroid/net/MobileDataStateTracker;->isFixedDnsNeeded()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 316
    invoke-virtual {p0}, Landroid/net/MobileDataStateTracker;->fillInFixedDns()Z

    goto :goto_5

    .line 330
    :cond_a
    const-string v8, "linkPropertiesChanged"

    invoke-static {v5, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 331
    const-string v8, "linkProperties"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/LinkProperties;

    iput-object v8, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 332
    iget-object v8, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v8, :cond_b

    .line 333
    const-string v8, "No link property in LINK_PROPERTIES change event."

    invoke-direct {p0, v8}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 334
    new-instance v8, Landroid/net/LinkProperties;

    invoke-direct {v8}, Landroid/net/LinkProperties;-><init>()V

    iput-object v8, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 337
    :cond_b
    iget-object v8, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v9, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    iget-object v10, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v5, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v8, p0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v9, 0x3

    iget-object v10, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 341
    .local v4, msg:Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4

    .line 344
    .end local v1           #apnName:Ljava/lang/String;
    .end local v2           #apnType:Ljava/lang/String;
    .end local v3           #available:Z
    .end local v4           #msg:Landroid/os/Message;
    .end local v5           #reason:Ljava/lang/String;
    .end local v7           #state:Lcom/android/internal/telephony/Phone$DataState;
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 346
    const-string v8, "apnType"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 347
    .restart local v2       #apnType:Ljava/lang/String;
    iget-object v8, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 349
    const-string v8, "Broadcast received: ACTION_ANY_DATA_CONNECTION_FAILED ignore, mApnType=%s != received apnType=%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 353
    monitor-exit p0

    goto/16 :goto_1

    .line 355
    :cond_d
    const-string/jumbo v8, "reason"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 356
    .restart local v5       #reason:Ljava/lang/String;
    const-string v8, "apn"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    .restart local v1       #apnName:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " broadcast"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_e

    const-string v8, ""

    :goto_6
    invoke-direct {p0, v8}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 361
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v8, v5, v1}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 358
    :cond_e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    .line 362
    .end local v1           #apnName:Ljava/lang/String;
    .end local v2           #apnType:Ljava/lang/String;
    .end local v5           #reason:Ljava/lang/String;
    :cond_f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/DataConnectionTracker;->ACTION_DATA_CONNECTION_TRACKER_MESSENGER:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 364
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " got ACTION_DATA_CONNECTION_TRACKER_MESSENGER"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 365
    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker;->EXTRA_MESSENGER:Ljava/lang/String;

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/os/Messenger;

    iput-object v8, p0, Landroid/net/MobileDataStateTracker;->mMessenger:Landroid/os/Messenger;

    .line 366
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 367
    .local v0, ac:Lcom/android/internal/util/AsyncChannel;
    iget-object v8, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    iget-object v9, p0, Landroid/net/MobileDataStateTracker;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Landroid/net/MobileDataStateTracker;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v8, v9, v10}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto/16 :goto_4

    .line 369
    .end local v0           #ac:Lcom/android/internal/util/AsyncChannel;
    :cond_10
    const/4 v8, 0x4

    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtc_PROJECT_flag()S

    move-result v9

    if-ne v8, v9, :cond_11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 371
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v6

    .line 372
    .local v6, serviceState:Landroid/telephony/ServiceState;
    new-instance v8, Ljava/lang/Integer;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    iput-object v8, p0, Landroid/net/MobileDataStateTracker;->mCdmaSid:Ljava/lang/Integer;

    .line 373
    monitor-exit p0

    goto/16 :goto_1

    .line 376
    .end local v6           #serviceState:Landroid/telephony/ServiceState;
    :cond_11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Broadcast received: ignore "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    .line 288
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mDefaultRouteSet:Z

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mPrivateDnsRouteSet:Z

    return v0
.end method

.method public isTeardownRequested()Z
    .locals 1

    .prologue
    .line 577
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mTeardownRequested:Z

    return v0
.end method

.method public notifyAvailableStatusChange()V
    .locals 4

    .prologue
    .line 811
    const-string v1, "MobileDST sending EVENT_HTC_NETWORK_AVALIBILITY_CHANGE"

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 812
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    const/16 v2, 0x12e

    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 813
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 814
    return-void
.end method

.method public privateDnsRouteSet(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 197
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mPrivateDnsRouteSet:Z

    .line 198
    return-void
.end method

.method public reconnect()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 585
    const/4 v0, 0x0

    .line 586
    .local v0, retValue:Z
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 587
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/net/MobileDataStateTracker;->setEnableApn(Ljava/lang/String;Z)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 601
    const-string v1, "Error in reconnect - unexpected response."

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 604
    :goto_0
    :pswitch_0
    return v0

    .line 590
    :pswitch_1
    const/4 v0, 0x1

    .line 591
    goto :goto_0

    .line 594
    :pswitch_2
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const/4 v0, 0x1

    .line 596
    goto :goto_0

    .line 587
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public releaseWakeLock()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public requestRouteToHost(I)Z
    .locals 1
    .parameter "hostAddress"

    .prologue
    .line 795
    const/4 v0, 0x0

    return v0
.end method

.method public requestRouteToHost(Ljava/net/InetAddress;)Z
    .locals 1
    .parameter "hostAddress"

    .prologue
    .line 799
    const/4 v0, 0x0

    return v0
.end method

.method public setDependencyMet(Z)V
    .locals 5
    .parameter "met"

    .prologue
    .line 661
    const-string v3, "apnType"

    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 663
    .local v0, bundle:Landroid/os/Bundle;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDependencyMet: E met="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 664
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 665
    .local v2, msg:Landroid/os/Message;
    const v3, 0x4201f

    iput v3, v2, Landroid/os/Message;->what:I

    .line 666
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 667
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 668
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v3, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 669
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDependencyMet: X met="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    .end local v2           #msg:Landroid/os/Message;
    :goto_1
    return-void

    .line 666
    .restart local v2       #msg:Landroid/os/Message;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 670
    .end local v2           #msg:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 671
    .local v1, e:Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDependencyMet: X mAc was null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setPolicyDataEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPolicyDataEnable(enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    .line 650
    .local v0, channel:Lcom/android/internal/util/AsyncChannel;
    if-eqz v0, :cond_0

    .line 651
    const v2, 0x42020

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 652
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mPolicyDataEnabled:Z

    .line 654
    :cond_0
    return-void

    .line 651
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRadio(Z)Z
    .locals 5
    .parameter "turnOn"

    .prologue
    const/4 v3, 0x0

    .line 613
    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 618
    const/4 v1, 0x0

    .local v1, retry:I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 619
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_1

    .line 620
    const-string v2, "Ignoring mobile radio request because could not acquire PhoneService"

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 631
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not set radio power to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_3

    const-string/jumbo v2, "on"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    move v2, v3

    .line 632
    :goto_2
    return v2

    .line 625
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_2

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_2

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 618
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 631
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    const-string/jumbo v2, "off"

    goto :goto_1
.end method

.method public setTeardownRequested(Z)V
    .locals 2
    .parameter "isRequested"

    .prologue
    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTeardownRequested("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 573
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mTeardownRequested:Z

    .line 574
    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserDataEnable: E enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    .line 639
    .local v0, channel:Lcom/android/internal/util/AsyncChannel;
    if-eqz v0, :cond_0

    .line 640
    const v2, 0x4201d

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 641
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mUserDataEnabled:Z

    .line 643
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserDataEnable: X enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 644
    return-void

    .line 640
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUserDataEnableDualGsm(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 819
    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5
    .parameter "context"
    .parameter "target"

    .prologue
    .line 135
    iput-object p2, p0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    .line 136
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    .line 137
    const/4 v1, 0x0

    .line 138
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/net/MobileDataStateTracker$MdstHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/net/MobileDataStateTracker$MdstHandler;-><init>(Landroid/os/Looper;Landroid/net/MobileDataStateTracker;)V

    iput-object v2, p0, Landroid/net/MobileDataStateTracker;->mHandler:Landroid/os/Handler;

    .line 139
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mHtcBroadcastReceiver:Landroid/net/HtcMobileDataStateReceiver;

    if-eqz v2, :cond_0

    .line 141
    const-string/jumbo v2, "startMonitoring: use HtcMobileDataStateTracker"

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mHtcBroadcastReceiver:Landroid/net/HtcMobileDataStateReceiver;

    invoke-virtual {v2, p0}, Landroid/net/HtcMobileDataStateReceiver;->startMonitoring(Landroid/net/MobileDataStateTracker;)Landroid/content/Intent;

    move-result-object v1

    .line 154
    :goto_0
    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    iput-object v2, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    .line 155
    return-void

    .line 146
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 147
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v2, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker;->ACTION_DATA_CONNECTION_TRACKER_MESSENGER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;-><init>(Landroid/net/MobileDataStateTracker;Landroid/net/MobileDataStateTracker$1;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public teardown()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 506
    invoke-virtual {p0, v0}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 507
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Landroid/net/MobileDataStateTracker;->setEnableApn(Ljava/lang/String;Z)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 677
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 678
    .local v1, writer:Ljava/io/CharArrayWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 679
    .local v0, pw:Ljava/io/PrintWriter;
    const-string v2, "Mobile data state: "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 680
    const-string v2, "Data enabled: user="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/net/MobileDataStateTracker;->mUserDataEnabled:Z

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 681
    const-string v2, ", policy="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/net/MobileDataStateTracker;->mPolicyDataEnabled:Z

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 682
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
