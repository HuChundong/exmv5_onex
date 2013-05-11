.class public Lcom/htc/util/contacts/TMOClient;
.super Ljava/lang/Object;
.source "TMOClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/contacts/TMOClient$ClientProfileServiceConnection;
    }
.end annotation


# static fields
.field public static final ACCOUNT_NAME_MYPHONEBOOK:Ljava/lang/String; = "MyPhonebook"

.field public static final ACCOUNT_TYPE_MYPHONEBOOK:Ljava/lang/String; = "com.htc.android.myphonebook"

.field private static final ACTION_AUTO_SYNC_SETTING_CHANGE:Ljava/lang/String; = "com.htc.syncml.MYRIAD_AUTOSYNC_CHANGED"

.field private static final ACTION_LAST_SYNC_STATE_CHANGE:Ljava/lang/String; = "com.htc.syncml.MYRIAD_SYNC_FINISHED"

.field private static final DISABLE:I = 0x0

.field private static final ENABLE:I = 0x1

.field private static final FAIL:I = 0x0

.field public static final GROUP_TYPE_CTG:Ljava/lang/String; = "CTG"

.field public static final GROUP_TYPE_OTG:Ljava/lang/String; = "OTG"

.field public static final GROUP_TYPE_SNC:Ljava/lang/String; = "SNC"

.field private static final LAST_ACTION_REMOVE:I = 0x1

.field private static final LAST_ACTION_UPDATE:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "TMOClient"

.field public static final MIMETYPE_STATUS_UPDATE:Ljava/lang/String; = "com.htc.android.myphonebook.item/status_update"

.field public static final MIMETYPE_X_TMO_CHANGE:Ljava/lang/String; = "com.htc.android.myphonebook.item/tmo_ext_change"

.field public static final MIMETYPE_X_TMO_NUMBER:Ljava/lang/String; = "com.htc.android.myphonebook.item/tmo_ext_number"

.field public static final MIMETYPE_X_TMO_SNC:Ljava/lang/String; = "com.htc.android.myphonebook.item/tmo_ext_snc"

.field public static final MIMETYPE_X_TMO_STATUS:Ljava/lang/String; = "com.htc.android.myphonebook.item/tmo_ext_status"

.field public static final MIMETYPE_X_TMO_TAG:Ljava/lang/String; = "com.htc.android.myphonebook.item/tmo_ext_tag"

.field public static final MIMETYPE_X_TMO_TAG_TS:Ljava/lang/String; = "com.htc.android.myphonebook.item/tmo_ext_tag_ts"

.field public static final MIMETYPE_X_TMO_UIPOS:Ljava/lang/String; = "com.htc.android.myphonebook.item/tmo_ext_uipos"

.field private static final NETWORK_AVAILABLE:I = 0x1

.field private static final NETWORK_ROAMING:I = 0x2

.field private static final NETWORK_UNAVAILABLE:I = 0x0

.field public static final NUMBER_GROUP_ID:Ljava/lang/String; = "data14"

.field private static final SUCCESS:I = 0x1

.field private static final UNKNOWN:I = -0x1

.field public static final X_GROUP_ID:Ljava/lang/String; = "data2"

.field public static final X_MY_FAVE_ID:Ljava/lang/String; = "data3"

.field public static final X_VALUE:Ljava/lang/String; = "data1"

.field private static mAutoSyncSetting:I

.field private static mIsGroupRetrieved:Z

.field private static mIsSNCRetrieved:Z

.field private static mLastActionForCTG:I

.field private static mLastSyncState:I

.field private static mMyPhonebook:Lcom/htc/clientprofileservice/MyPhonebook;

.field private static mMyProfile:Lcom/htc/clientprofileservice/Profile;

.field private static mNetworkState:I

.field private static mTMOClient:Lcom/htc/util/contacts/TMOClient;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/htc/clientprofileservice/IClientProfileCallback;

.field private mConnection:Lcom/htc/util/contacts/TMOClient$ClientProfileServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Lcom/htc/clientprofileservice/IClientProfileService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 129
    sput-object v2, Lcom/htc/util/contacts/TMOClient;->mTMOClient:Lcom/htc/util/contacts/TMOClient;

    .line 133
    sput-object v2, Lcom/htc/util/contacts/TMOClient;->mMyPhonebook:Lcom/htc/clientprofileservice/MyPhonebook;

    .line 134
    sput-object v2, Lcom/htc/util/contacts/TMOClient;->mMyProfile:Lcom/htc/clientprofileservice/Profile;

    .line 136
    sput v0, Lcom/htc/util/contacts/TMOClient;->mNetworkState:I

    .line 137
    sput v0, Lcom/htc/util/contacts/TMOClient;->mAutoSyncSetting:I

    .line 138
    sput v0, Lcom/htc/util/contacts/TMOClient;->mLastSyncState:I

    .line 139
    sput v1, Lcom/htc/util/contacts/TMOClient;->mLastActionForCTG:I

    .line 140
    sput-boolean v1, Lcom/htc/util/contacts/TMOClient;->mIsGroupRetrieved:Z

    .line 141
    sput-boolean v1, Lcom/htc/util/contacts/TMOClient;->mIsSNCRetrieved:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "initService"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 333
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object v1, p0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    .line 131
    iput-object v1, p0, Lcom/htc/util/contacts/TMOClient;->mService:Lcom/htc/clientprofileservice/IClientProfileService;

    .line 132
    iput-object v1, p0, Lcom/htc/util/contacts/TMOClient;->mConnection:Lcom/htc/util/contacts/TMOClient$ClientProfileServiceConnection;

    .line 135
    iput-object v1, p0, Lcom/htc/util/contacts/TMOClient;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 206
    new-instance v1, Lcom/htc/util/contacts/TMOClient$1;

    invoke-direct {v1, p0}, Lcom/htc/util/contacts/TMOClient$1;-><init>(Lcom/htc/util/contacts/TMOClient;)V

    iput-object v1, p0, Lcom/htc/util/contacts/TMOClient;->mCallback:Lcom/htc/clientprofileservice/IClientProfileCallback;

    .line 334
    iput-object p1, p0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    .line 335
    if-eqz p2, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/htc/util/contacts/TMOClient;->initService()Z

    move-result v0

    .line 337
    .local v0, result:Z
    const-string v1, "TMOClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TMOClient is created and binding service result of ClientProfileServiceConnection is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-direct {p0}, Lcom/htc/util/contacts/TMOClient;->initBroadcastReceiver()V

    .line 343
    .end local v0           #result:Z
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/util/contacts/TMOClient;->setGroupRetrivedStatus(Z)V

    .line 341
    invoke-virtual {p0, v2}, Lcom/htc/util/contacts/TMOClient;->setSNCRetrivedStatus(Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/util/contacts/TMOClient;)Lcom/htc/clientprofileservice/IClientProfileService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/util/contacts/TMOClient;->mService:Lcom/htc/clientprofileservice/IClientProfileService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/util/contacts/TMOClient;Lcom/htc/clientprofileservice/IClientProfileService;)Lcom/htc/clientprofileservice/IClientProfileService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/util/contacts/TMOClient;->mService:Lcom/htc/clientprofileservice/IClientProfileService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/util/contacts/TMOClient;)Lcom/htc/clientprofileservice/IClientProfileCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/util/contacts/TMOClient;->mCallback:Lcom/htc/clientprofileservice/IClientProfileCallback;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/clientprofileservice/MyPhonebook;)Lcom/htc/clientprofileservice/MyPhonebook;
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    sput-object p0, Lcom/htc/util/contacts/TMOClient;->mMyPhonebook:Lcom/htc/clientprofileservice/MyPhonebook;

    return-object p0
.end method

.method static synthetic access$302(Lcom/htc/clientprofileservice/Profile;)Lcom/htc/clientprofileservice/Profile;
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    sput-object p0, Lcom/htc/util/contacts/TMOClient;->mMyProfile:Lcom/htc/clientprofileservice/Profile;

    return-object p0
.end method

.method static synthetic access$400()Lcom/htc/util/contacts/TMOClient;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/htc/util/contacts/TMOClient;->mTMOClient:Lcom/htc/util/contacts/TMOClient;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/htc/util/contacts/TMOClient;->mNetworkState:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    sput p0, Lcom/htc/util/contacts/TMOClient;->mNetworkState:I

    return p0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/htc/util/contacts/TMOClient;->mAutoSyncSetting:I

    return v0
.end method

.method static synthetic access$602(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    sput p0, Lcom/htc/util/contacts/TMOClient;->mAutoSyncSetting:I

    return p0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/htc/util/contacts/TMOClient;->mLastSyncState:I

    return v0
.end method

.method static synthetic access$702(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    sput p0, Lcom/htc/util/contacts/TMOClient;->mLastSyncState:I

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/htc/util/contacts/TMOClient;
    .locals 2
    .parameter "context"

    .prologue
    .line 346
    sget-object v0, Lcom/htc/util/contacts/TMOClient;->mTMOClient:Lcom/htc/util/contacts/TMOClient;

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Lcom/htc/util/contacts/TMOClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/util/contacts/TMOClient;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/htc/util/contacts/TMOClient;->mTMOClient:Lcom/htc/util/contacts/TMOClient;

    .line 349
    :cond_0
    sget-object v0, Lcom/htc/util/contacts/TMOClient;->mTMOClient:Lcom/htc/util/contacts/TMOClient;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Z)Lcom/htc/util/contacts/TMOClient;
    .locals 1
    .parameter "context"
    .parameter "initService"

    .prologue
    .line 353
    sget-object v0, Lcom/htc/util/contacts/TMOClient;->mTMOClient:Lcom/htc/util/contacts/TMOClient;

    if-nez v0, :cond_1

    .line 354
    new-instance v0, Lcom/htc/util/contacts/TMOClient;

    invoke-direct {v0, p0, p1}, Lcom/htc/util/contacts/TMOClient;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/htc/util/contacts/TMOClient;->mTMOClient:Lcom/htc/util/contacts/TMOClient;

    .line 358
    :cond_0
    :goto_0
    sget-object v0, Lcom/htc/util/contacts/TMOClient;->mTMOClient:Lcom/htc/util/contacts/TMOClient;

    return-object v0

    .line 355
    :cond_1
    if-eqz p1, :cond_0

    .line 356
    sget-object v0, Lcom/htc/util/contacts/TMOClient;->mTMOClient:Lcom/htc/util/contacts/TMOClient;

    invoke-virtual {v0}, Lcom/htc/util/contacts/TMOClient;->initService()Z

    goto :goto_0
.end method

.method private initBroadcastReceiver()V
    .locals 3

    .prologue
    .line 1084
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1085
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.syncml.MYRIAD_AUTOSYNC_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1086
    const-string v1, "com.htc.syncml.MYRIAD_SYNC_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1087
    new-instance v1, Lcom/htc/util/contacts/TMOClient$2;

    invoke-direct {v1, p0}, Lcom/htc/util/contacts/TMOClient$2;-><init>(Lcom/htc/util/contacts/TMOClient;)V

    iput-object v1, p0, Lcom/htc/util/contacts/TMOClient;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1156
    iget-object v1, p0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1157
    iget-object v1, p0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/util/contacts/TMOClient;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1159
    :cond_0
    return-void
.end method

.method private insertSNCData(Lcom/htc/clientprofileservice/SncdataEntry;)V
    .locals 7
    .parameter "sncdata"

    .prologue
    const/4 v6, 0x0

    .line 591
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 592
    .local v1, values1:Landroid/content/ContentValues;
    const-string v3, "title"

    invoke-virtual {p1}, Lcom/htc/clientprofileservice/SncdataEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v3, "display_title"

    invoke-virtual {p1}, Lcom/htc/clientprofileservice/SncdataEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v3, "account_name"

    const-string v4, "MyPhonebook"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v3, "account_type"

    const-string v4, "com.htc.android.myphonebook"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string v3, "sourceid"

    invoke-virtual {p1}, Lcom/htc/clientprofileservice/SncdataEntry;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 597
    const-string v3, "system_id"

    const-string v4, "SNC"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v3, "notes"

    invoke-virtual {p1}, Lcom/htc/clientprofileservice/SncdataEntry;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v3, "photo"

    invoke-virtual {p1}, Lcom/htc/clientprofileservice/SncdataEntry;->getIcon()[B

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 600
    const-string v3, "sortorder"

    const-string v4, "-1"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-object v3, p0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 602
    .local v0, result:Landroid/net/Uri;
    const-string v3, "TMOClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertSNCData, insert SNC data, sourceid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/htc/clientprofileservice/SncdataEntry;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/htc/clientprofileservice/SncdataEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    if-eqz v0, :cond_0

    .line 605
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 606
    .local v2, values2:Landroid/content/ContentValues;
    const-string v3, "sortorder"

    const-string v4, "-1"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v3, "should_sync"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-object v3, p0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 612
    .end local v2           #values2:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public static isMyCommunityEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x1

    .line 374
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isMyCommunityeEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 386
    :cond_0
    :goto_0
    return v0

    .line 378
    :cond_1
    sget v2, Lcom/htc/util/contacts/TMOClient;->mNetworkState:I

    if-ne v2, v1, :cond_2

    sget v2, Lcom/htc/util/contacts/TMOClient;->mAutoSyncSetting:I

    if-ne v2, v1, :cond_2

    sget v2, Lcom/htc/util/contacts/TMOClient;->mLastSyncState:I

    if-ne v2, v1, :cond_2

    move v0, v1

    .line 379
    goto :goto_0

    .line 382
    :cond_2
    sget v2, Lcom/htc/util/contacts/TMOClient;->mNetworkState:I

    if-ne v2, v3, :cond_0

    sget v2, Lcom/htc/util/contacts/TMOClient;->mAutoSyncSetting:I

    if-ne v2, v3, :cond_0

    sget v2, Lcom/htc/util/contacts/TMOClient;->mLastSyncState:I

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 383
    goto :goto_0
.end method

.method public static isMyCommunityEnabled(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v10, -0x1

    .line 390
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isMyCommunityeEnabled()Z

    move-result v8

    if-nez v8, :cond_1

    .line 417
    :cond_0
    :goto_0
    return v6

    .line 394
    :cond_1
    const/4 v3, -0x1

    .line 395
    .local v3, networkState:I
    const/4 v0, -0x1

    .line 396
    .local v0, autoSyncSetting:I
    const/4 v2, -0x1

    .line 399
    .local v2, lastSyncState:I
    :try_start_0
    const-string v8, "com.android.htccontacts"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 400
    .local v4, peopleAppsContext:Landroid/content/Context;
    const-string v8, "MyCommunityPreferences"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 401
    .local v5, sp:Landroid/content/SharedPreferences;
    const-string v8, "MyCommunityNetworkState"

    const/4 v9, -0x1

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 402
    const-string v8, "MyCommunityAutoSyncSetting"

    const/4 v9, -0x1

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 403
    const-string v8, "MyCommunityLastSyncState"

    const/4 v9, -0x1

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 409
    .end local v4           #peopleAppsContext:Landroid/content/Context;
    .end local v5           #sp:Landroid/content/SharedPreferences;
    :goto_1
    if-ne v3, v7, :cond_2

    if-ne v0, v7, :cond_2

    if-ne v2, v7, :cond_2

    move v6, v7

    .line 410
    goto :goto_0

    .line 405
    :catch_0
    move-exception v1

    .line 406
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "TMOClient"

    const-string v9, "NameNotFoundException: "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 413
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    if-ne v3, v10, :cond_0

    if-ne v0, v10, :cond_0

    if-ne v2, v10, :cond_0

    move v6, v7

    .line 414
    goto :goto_0
.end method

.method public static isMyCommunityServiceEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 437
    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->isMyCommunityEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 444
    :cond_0
    :goto_0
    return v0

    .line 441
    :cond_1
    sget-object v1, Lcom/htc/util/contacts/TMOClient;->mMyProfile:Lcom/htc/clientprofileservice/Profile;

    if-eqz v1, :cond_0

    .line 444
    sget-object v0, Lcom/htc/util/contacts/TMOClient;->mMyProfile:Lcom/htc/clientprofileservice/Profile;

    invoke-virtual {v0}, Lcom/htc/clientprofileservice/Profile;->isCmtUiSubscribed()Z

    move-result v0

    goto :goto_0
.end method

.method public static isMyPhoneBookProfileEnabled()Z
    .locals 1

    .prologue
    .line 370
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isMyPhoneBookProfileEnabled()Z

    move-result v0

    return v0
.end method

.method public static isMyPhonebookEnabled()Z
    .locals 1

    .prologue
    .line 362
    invoke-static {}, Landroid/app/SyncConfig;->isMyPhoneBookEnabled()Z

    move-result v0

    return v0
.end method

.method public static isMyPhonebookServiceEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 425
    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->isMyPhoneBookProfileEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 432
    :cond_0
    :goto_0
    return v0

    .line 429
    :cond_1
    sget-object v1, Lcom/htc/util/contacts/TMOClient;->mMyPhonebook:Lcom/htc/clientprofileservice/MyPhonebook;

    if-eqz v1, :cond_0

    .line 432
    sget-object v0, Lcom/htc/util/contacts/TMOClient;->mMyPhonebook:Lcom/htc/clientprofileservice/MyPhonebook;

    invoke-virtual {v0}, Lcom/htc/clientprofileservice/MyPhonebook;->isNabProvisioningStatus()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getGroupRetrivedStatus()Z
    .locals 1

    .prologue
    .line 156
    sget-boolean v0, Lcom/htc/util/contacts/TMOClient;->mIsGroupRetrieved:Z

    return v0
.end method

.method public getSNCRetrivedStatus()Z
    .locals 1

    .prologue
    .line 172
    sget-boolean v0, Lcom/htc/util/contacts/TMOClient;->mIsSNCRetrieved:Z

    return v0
.end method

.method handleGroupsAfterMyCommunityStateChange()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1162
    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->isMyCommunityEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1163
    sget v0, Lcom/htc/util/contacts/TMOClient;->mLastActionForCTG:I

    if-nez v0, :cond_1

    .line 1203
    :cond_0
    :goto_0
    return-void

    .line 1167
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/util/contacts/TMOClient$3;

    invoke-direct {v1, p0}, Lcom/htc/util/contacts/TMOClient$3;-><init>(Lcom/htc/util/contacts/TMOClient;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1181
    const/4 v0, 0x0

    sput v0, Lcom/htc/util/contacts/TMOClient;->mLastActionForCTG:I

    goto :goto_0

    .line 1183
    :cond_2
    sget v0, Lcom/htc/util/contacts/TMOClient;->mLastActionForCTG:I

    if-eq v0, v2, :cond_0

    .line 1187
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/util/contacts/TMOClient$4;

    invoke-direct {v1, p0}, Lcom/htc/util/contacts/TMOClient$4;-><init>(Lcom/htc/util/contacts/TMOClient;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1201
    sput v2, Lcom/htc/util/contacts/TMOClient;->mLastActionForCTG:I

    goto :goto_0
.end method

.method public initService()Z
    .locals 5

    .prologue
    .line 312
    invoke-static {}, Landroid/app/SyncConfig;->isMyCommunityeEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 313
    const-string v1, "TMOClient"

    const-string v2, "MyCommunity is not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v0, 0x0

    .line 321
    :cond_0
    :goto_0
    return v0

    .line 316
    :cond_1
    const/4 v0, 0x1

    .line 317
    .local v0, rtn:Z
    iget-object v1, p0, Lcom/htc/util/contacts/TMOClient;->mConnection:Lcom/htc/util/contacts/TMOClient$ClientProfileServiceConnection;

    if-nez v1, :cond_0

    .line 318
    new-instance v1, Lcom/htc/util/contacts/TMOClient$ClientProfileServiceConnection;

    invoke-direct {v1, p0}, Lcom/htc/util/contacts/TMOClient$ClientProfileServiceConnection;-><init>(Lcom/htc/util/contacts/TMOClient;)V

    iput-object v1, p0, Lcom/htc/util/contacts/TMOClient;->mConnection:Lcom/htc/util/contacts/TMOClient$ClientProfileServiceConnection;

    .line 319
    iget-object v1, p0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/htc/clientprofileservice/IClientProfileService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/util/contacts/TMOClient;->mConnection:Lcom/htc/util/contacts/TMOClient$ClientProfileServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    goto :goto_0
.end method

.method public releaseService()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/util/contacts/TMOClient;->mConnection:Lcom/htc/util/contacts/TMOClient$ClientProfileServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/contacts/TMOClient;->mConnection:Lcom/htc/util/contacts/TMOClient$ClientProfileServiceConnection;

    .line 331
    return-void
.end method

.method removeCTGMemberships()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 1237
    const-string v0, "TMOClient"

    const-string v1, "removeCTGMemberships"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    const-string v3, "account_type=\'com.htc.android.myphonebook\' AND deleted = \'0\' AND system_id IN (\'CTG\')"

    .line 1239
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "groups_raw"

    invoke-static {v1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1240
    .local v7, c:Landroid/database/Cursor;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 1241
    .local v6, AllGroupIDs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1242
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1246
    :cond_0
    if-eqz v7, :cond_2

    .line 1247
    const-string v0, "TMOClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of MyCommunity groups: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1253
    :goto_1
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1254
    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1255
    .local v9, deleteUri:Landroid/net/Uri;
    const-string v3, "mimetype=\'vnd.android.cursor.item/group_membership\' AND data1 in ("

    .line 1257
    const/4 v8, 0x0

    .line 1258
    .local v8, cnt:I
    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1259
    .local v11, id:Ljava/lang/String;
    if-lez v8, :cond_1

    .line 1260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1262
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1263
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1250
    .end local v8           #cnt:I
    .end local v9           #deleteUri:Landroid/net/Uri;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #id:Ljava/lang/String;
    :cond_2
    const-string v0, "TMOClient"

    const-string v1, "No MyCommunity group in db"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1265
    .restart local v8       #cnt:I
    .restart local v9       #deleteUri:Landroid/net/Uri;
    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1266
    iget-object v0, p0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v9, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 1267
    .local v12, result:I
    const-string v0, "TMOClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " group memberships are deleted in table \'data\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    .end local v8           #cnt:I
    .end local v9           #deleteUri:Landroid/net/Uri;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #result:I
    :cond_4
    return-void
.end method

.method public setGroupRetrivedStatus(Z)V
    .locals 0
    .parameter "isGroupdRetrieved"

    .prologue
    .line 148
    sput-boolean p1, Lcom/htc/util/contacts/TMOClient;->mIsGroupRetrieved:Z

    .line 149
    return-void
.end method

.method public setSNCRetrivedStatus(Z)V
    .locals 0
    .parameter "isSNCRetrieved"

    .prologue
    .line 164
    sput-boolean p1, Lcom/htc/util/contacts/TMOClient;->mIsSNCRetrieved:Z

    .line 165
    return-void
.end method

.method showOrHideCTG(Z)V
    .locals 10
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    .line 1206
    const-string v0, "TMOClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showOrHideCTG: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    const-string v3, "account_type=\'com.htc.android.myphonebook\' AND deleted = \'0\' AND sourceid IS NOT NULL AND system_id IN (\'CTG\')"

    .line 1209
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "groups_raw"

    invoke-static {v1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1210
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1211
    const-string v0, "TMOClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of MyCommunity CTG groups: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1213
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1214
    .local v6, _id:Ljava/lang/String;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1215
    .local v9, values:Landroid/content/ContentValues;
    if-eqz p1, :cond_1

    .line 1217
    const-string v0, "sortorder"

    const-string v1, "0"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    :goto_1
    iget-object v0, p0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v9, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1224
    .local v8, num:I
    if-lez v8, :cond_0

    .line 1225
    const-string v1, "TMOClient"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showOrHideCTG, updated group, group id: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'s sortorder to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1220
    .end local v8           #num:I
    :cond_1
    const-string v0, "sortorder"

    const-string v1, "-1"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1225
    .restart local v8       #num:I
    :cond_2
    const/4 v0, -0x1

    goto :goto_2

    .line 1230
    .end local v6           #_id:Ljava/lang/String;
    .end local v8           #num:I
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_3
    if-eqz v7, :cond_4

    .line 1231
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1233
    :cond_4
    return-void
.end method

.method public updateMyCommunityGroupMembers(Ljava/lang/String;)V
    .locals 78
    .parameter "rawcontactID"

    .prologue
    .line 615
    const-string v4, "TMOClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMyCommunityGroupMembers - start, rawcontactID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v66

    .line 617
    .local v66, starttime:J
    const-string v7, "account_type=\'com.htc.android.myphonebook\' AND deleted = \'0\' AND system_id IN (\'CTG\',\'OTG\')"

    .line 618
    .local v7, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v6, "groups_raw"

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 619
    .local v26, c:Landroid/database/Cursor;
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 620
    .local v11, AllGroupIDs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    .line 621
    .local v13, AllGroupSourceIDs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 622
    .local v10, AllGroupAccountTypes:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/Vector;

    invoke-direct {v15}, Ljava/util/Vector;-><init>()V

    .line 623
    .local v15, AllGroupTypes:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    .line 624
    .local v14, AllGroupTypeIcons:Ljava/util/Vector;,"Ljava/util/Vector<[B>;"
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 625
    .local v12, AllGroupPriorities:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    if-eqz v26, :cond_0

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 626
    :goto_0
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 627
    const-string v4, "sourceid"

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 628
    const-string v4, "_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 629
    const-string v4, "account_type"

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 630
    const-string v4, "system_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 631
    const-string v4, "notes"

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 632
    const-string v4, "sync4"

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 636
    :cond_0
    if-eqz v26, :cond_5

    .line 637
    const-string v4, "TMOClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Number of MyCommunity groups: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 642
    :goto_1
    const/16 v33, 0x0

    .line 643
    .local v33, entityIterator:Landroid/content/EntityIterator;
    const/16 v64, 0x0

    .line 644
    .local v64, rawContactId:Ljava/lang/String;
    const-string v7, "account_type=\'com.htc.android.myphonebook\' AND deleted = \'0\'"

    .line 645
    if-eqz p1, :cond_1

    .line 646
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND _id = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 649
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v33

    .line 651
    const/16 v61, 0x0

    .line 652
    .local v61, numberOfContacts:I
    :cond_2
    invoke-interface/range {v33 .. v33}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 653
    add-int/lit8 v61, v61, 0x1

    .line 654
    invoke-interface/range {v33 .. v33}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/Entity;

    .line 655
    .local v32, entity:Landroid/content/Entity;
    invoke-virtual/range {v32 .. v32}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v31

    .line 656
    .local v31, entValues:Landroid/content/ContentValues;
    const-string v4, "account_type"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 657
    .local v23, accountType:Ljava/lang/String;
    const-string v4, "_id"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    .line 658
    const-string v4, "com.htc.android.myphonebook"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 663
    new-instance v22, Ljava/util/Vector;

    invoke-direct/range {v22 .. v22}, Ljava/util/Vector;-><init>()V

    .line 664
    .local v22, Numbers:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/Vector;

    invoke-direct/range {v21 .. v21}, Ljava/util/Vector;-><init>()V

    .line 665
    .local v21, NumberIDs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/Vector;

    invoke-direct/range {v19 .. v19}, Ljava/util/Vector;-><init>()V

    .line 666
    .local v19, GroupIDs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/Vector;

    invoke-direct/range {v18 .. v18}, Ljava/util/Vector;-><init>()V

    .line 667
    .local v18, ExtNumbers:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/Vector;

    invoke-direct/range {v17 .. v17}, Ljava/util/Vector;-><init>()V

    .line 668
    .local v17, ExtGroupIDs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/16 v69, 0x0

    .line 669
    .local v69, status_msg:Ljava/lang/String;
    const/16 v70, 0x0

    .line 670
    .local v70, status_timestamp:Ljava/lang/String;
    const-wide/16 v71, 0x0

    .line 671
    .local v71, status_timestampInLong:J
    const-wide/16 v73, 0x0

    .line 672
    .local v73, status_update_time:J
    const/16 v48, 0x0

    .line 673
    .local v48, isStatusUpdateExists:Z
    const/16 v68, 0x0

    .line 674
    .local v68, status_data_id:Ljava/lang/String;
    invoke-virtual/range {v32 .. v32}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v44

    .local v44, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/content/Entity$NamedContentValues;

    .line 675
    .local v51, namedContentValues:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v27, v0

    .line 676
    .local v27, contentValues:Landroid/content/ContentValues;
    const-string v4, "mimetype"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 678
    .local v49, key:Ljava/lang/String;
    if-eqz v49, :cond_3

    .line 679
    const-string v4, "com.htc.android.myphonebook.item/status_update"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 680
    const-string v4, "data3"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 681
    const-string v4, "data3"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v73

    .line 683
    :cond_4
    const-string v4, "_id"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v68

    goto :goto_2

    .line 640
    .end local v17           #ExtGroupIDs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v18           #ExtNumbers:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v19           #GroupIDs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v21           #NumberIDs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v22           #Numbers:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v23           #accountType:Ljava/lang/String;
    .end local v27           #contentValues:Landroid/content/ContentValues;
    .end local v31           #entValues:Landroid/content/ContentValues;
    .end local v32           #entity:Landroid/content/Entity;
    .end local v33           #entityIterator:Landroid/content/EntityIterator;
    .end local v44           #i$:Ljava/util/Iterator;
    .end local v48           #isStatusUpdateExists:Z
    .end local v49           #key:Ljava/lang/String;
    .end local v51           #namedContentValues:Landroid/content/Entity$NamedContentValues;
    .end local v61           #numberOfContacts:I
    .end local v64           #rawContactId:Ljava/lang/String;
    .end local v68           #status_data_id:Ljava/lang/String;
    .end local v69           #status_msg:Ljava/lang/String;
    .end local v70           #status_timestamp:Ljava/lang/String;
    .end local v71           #status_timestampInLong:J
    .end local v73           #status_update_time:J
    :cond_5
    const-string v4, "TMOClient"

    const-string v5, "No MyCommunity group in db"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 685
    .restart local v17       #ExtGroupIDs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v18       #ExtNumbers:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v19       #GroupIDs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v21       #NumberIDs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v22       #Numbers:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v23       #accountType:Ljava/lang/String;
    .restart local v27       #contentValues:Landroid/content/ContentValues;
    .restart local v31       #entValues:Landroid/content/ContentValues;
    .restart local v32       #entity:Landroid/content/Entity;
    .restart local v33       #entityIterator:Landroid/content/EntityIterator;
    .restart local v44       #i$:Ljava/util/Iterator;
    .restart local v48       #isStatusUpdateExists:Z
    .restart local v49       #key:Ljava/lang/String;
    .restart local v51       #namedContentValues:Landroid/content/Entity$NamedContentValues;
    .restart local v61       #numberOfContacts:I
    .restart local v64       #rawContactId:Ljava/lang/String;
    .restart local v68       #status_data_id:Ljava/lang/String;
    .restart local v69       #status_msg:Ljava/lang/String;
    .restart local v70       #status_timestamp:Ljava/lang/String;
    .restart local v71       #status_timestampInLong:J
    .restart local v73       #status_update_time:J
    :cond_6
    :try_start_1
    const-string v4, "com.htc.android.myphonebook.item/tmo_ext_tag"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 686
    const-string v4, "data1"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    goto :goto_2

    .line 687
    :cond_7
    const-string v4, "com.htc.android.myphonebook.item/tmo_ext_tag_ts"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 688
    const-string v4, "data1"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v70

    .line 690
    :try_start_2
    new-instance v36, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd\'T\'hhmmss\'Z\'"

    move-object/from16 v0, v36

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 691
    .local v36, formatter:Ljava/text/DateFormat;
    move-object/from16 v0, v36

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v28

    .line 692
    .local v28, date:Ljava/util/Date;
    invoke-virtual/range {v28 .. v28}, Ljava/util/Date;->getTime()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v71

    goto/16 :goto_2

    .line 694
    .end local v28           #date:Ljava/util/Date;
    .end local v36           #formatter:Ljava/text/DateFormat;
    :catch_0
    move-exception v30

    .line 695
    .local v30, e:Ljava/text/ParseException;
    :try_start_3
    const-string v4, "TMOClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ParseException for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v70

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", we use current time as time stamp..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v71

    .line 697
    goto/16 :goto_2

    .line 698
    .end local v30           #e:Ljava/text/ParseException;
    :cond_8
    const-string v4, "com.htc.android.myphonebook.item/tmo_ext_number"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 699
    const-string v4, "data1"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 700
    const-string v4, "data2"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 900
    .end local v17           #ExtGroupIDs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v18           #ExtNumbers:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v19           #GroupIDs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v21           #NumberIDs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v22           #Numbers:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v23           #accountType:Ljava/lang/String;
    .end local v27           #contentValues:Landroid/content/ContentValues;
    .end local v31           #entValues:Landroid/content/ContentValues;
    .end local v32           #entity:Landroid/content/Entity;
    .end local v44           #i$:Ljava/util/Iterator;
    .end local v48           #isStatusUpdateExists:Z
    .end local v49           #key:Ljava/lang/String;
    .end local v51           #namedContentValues:Landroid/content/Entity$NamedContentValues;
    .end local v61           #numberOfContacts:I
    .end local v68           #status_data_id:Ljava/lang/String;
    .end local v69           #status_msg:Ljava/lang/String;
    .end local v70           #status_timestamp:Ljava/lang/String;
    .end local v71           #status_timestampInLong:J
    .end local v73           #status_update_time:J
    :catchall_0
    move-exception v4

    if-eqz v33, :cond_9

    .line 901
    invoke-interface/range {v33 .. v33}, Landroid/content/EntityIterator;->close()V

    :cond_9
    throw v4

    .line 701
    .restart local v17       #ExtGroupIDs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v18       #ExtNumbers:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v19       #GroupIDs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v21       #NumberIDs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v22       #Numbers:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v23       #accountType:Ljava/lang/String;
    .restart local v27       #contentValues:Landroid/content/ContentValues;
    .restart local v31       #entValues:Landroid/content/ContentValues;
    .restart local v32       #entity:Landroid/content/Entity;
    .restart local v44       #i$:Ljava/util/Iterator;
    .restart local v48       #isStatusUpdateExists:Z
    .restart local v49       #key:Ljava/lang/String;
    .restart local v51       #namedContentValues:Landroid/content/Entity$NamedContentValues;
    .restart local v61       #numberOfContacts:I
    .restart local v68       #status_data_id:Ljava/lang/String;
    .restart local v69       #status_msg:Ljava/lang/String;
    .restart local v70       #status_timestamp:Ljava/lang/String;
    .restart local v71       #status_timestampInLong:J
    .restart local v73       #status_update_time:J
    :cond_a
    :try_start_4
    const-string v4, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 702
    const-string v4, "data1"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 703
    const-string v4, "_id"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 704
    :cond_b
    const-string v4, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 705
    const-string v4, "group_sourceid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 706
    .local v42, group_source_id:Ljava/lang/String;
    if-eqz v42, :cond_3

    const-string v4, "HTC_01"

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 707
    const-string v4, "data1"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 713
    .end local v27           #contentValues:Landroid/content/ContentValues;
    .end local v42           #group_source_id:Ljava/lang/String;
    .end local v49           #key:Ljava/lang/String;
    .end local v51           #namedContentValues:Landroid/content/Entity$NamedContentValues;
    :cond_c
    const-string v4, "TMOClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ContactID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v64

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Numbers: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ExtNumbers: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", GroupsIDs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ExtGroupIDs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", status msg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v69

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", status timestamp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v70

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", data_id_of_structure_name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    cmp-long v4, v73, v71

    if-ltz v4, :cond_d

    .line 718
    const/16 v48, 0x1

    .line 721
    :cond_d
    if-eqz v69, :cond_f

    .line 722
    if-nez v48, :cond_12

    .line 723
    if-eqz v68, :cond_e

    .line 724
    sget-object v29, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 725
    .local v29, deleteUri:Landroid/net/Uri;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v68

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 726
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v4, v0, v7, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v65

    .line 727
    .local v65, result:I
    if-lez v65, :cond_e

    .line 728
    const-string v4, "TMOClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete status _id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v68

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from data table."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    .end local v29           #deleteUri:Landroid/net/Uri;
    .end local v65           #result:I
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v64

    move-object/from16 v2, v69

    move-object/from16 v3, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/util/contacts/TMOClient;->updateStatusMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :cond_f
    :goto_3
    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 739
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Ljava/lang/String;

    .local v25, arr$:[Ljava/lang/String;
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v50, v0

    .local v50, len$:I
    const/16 v44, 0x0

    .local v44, i$:I
    :goto_4
    move/from16 v0, v44

    move/from16 v1, v50

    if-ge v0, v1, :cond_1d

    aget-object v39, v25, v44

    .line 740
    .local v39, groupId:Ljava/lang/String;
    const/16 v52, 0x0

    .line 741
    .local v52, needToDelete:Z
    move-object/from16 v0, v39

    invoke-virtual {v11, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v16

    .line 742
    .local v16, AllGroups_idx:I
    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_13

    .line 743
    const/16 v52, 0x1

    .line 771
    :cond_10
    :goto_5
    if-eqz v52, :cond_1a

    .line 772
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data1=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 773
    sget-object v4, Lcom/htc/provider/HtcContactsContract$Groups;->MEMBER_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v64

    invoke-static {v4, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .line 774
    .restart local v29       #deleteUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v4, v0, v7, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v56

    .line 775
    .local v56, num:I
    if-lez v56, :cond_18

    .line 776
    const-string v4, "TMOClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete raw contact ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v64

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from group ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :goto_6
    new-instance v77, Landroid/content/ContentValues;

    invoke-direct/range {v77 .. v77}, Landroid/content/ContentValues;-><init>()V

    .line 784
    .local v77, values1:Landroid/content/ContentValues;
    const-string v4, "data14"

    move-object/from16 v0, v77

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 785
    sget-object v75, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 786
    .local v75, updateUri:Landroid/net/Uri;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw_contact_id=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v64

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 787
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v75

    move-object/from16 v1, v77

    invoke-virtual {v4, v0, v1, v7, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v65

    .line 788
    .restart local v65       #result:I
    if-lez v65, :cond_19

    .line 789
    const-string v4, "TMOClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update raw contact: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v64

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'s "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "data14"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with blank"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    .end local v29           #deleteUri:Landroid/net/Uri;
    .end local v56           #num:I
    .end local v65           #result:I
    .end local v75           #updateUri:Landroid/net/Uri;
    .end local v77           #values1:Landroid/content/ContentValues;
    :cond_11
    :goto_7
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_4

    .line 733
    .end local v16           #AllGroups_idx:I
    .end local v25           #arr$:[Ljava/lang/String;
    .end local v39           #groupId:Ljava/lang/String;
    .end local v50           #len$:I
    .end local v52           #needToDelete:Z
    .local v44, i$:Ljava/util/Iterator;
    :cond_12
    const-string v4, "TMOClient"

    const-string v5, "The status message is existed, we don\'t call updateStatusMessage()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 745
    .restart local v16       #AllGroups_idx:I
    .restart local v25       #arr$:[Ljava/lang/String;
    .restart local v39       #groupId:Ljava/lang/String;
    .local v44, i$:I
    .restart local v50       #len$:I
    .restart local v52       #needToDelete:Z
    :cond_13
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    .line 746
    .local v40, groupSourceID:Ljava/lang/String;
    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 747
    .local v37, groupAccountType:Ljava/lang/String;
    const-string v4, "com.htc.android.myphonebook"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 748
    move-object/from16 v0, v17

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v45

    .line 749
    .local v45, idx:I
    const/4 v4, -0x1

    move/from16 v0, v45

    if-ne v0, v4, :cond_15

    .line 752
    if-nez v40, :cond_14

    .line 753
    const/16 v52, 0x0

    goto/16 :goto_5

    .line 755
    :cond_14
    const/16 v52, 0x1

    goto/16 :goto_5

    .line 758
    :cond_15
    const/16 v47, 0x0

    .line 759
    .local v47, isNumberExists:Z
    :goto_8
    const/4 v4, -0x1

    move/from16 v0, v45

    if-eq v0, v4, :cond_17

    .line 760
    move-object/from16 v0, v18

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 761
    const/16 v47, 0x1

    .line 763
    :cond_16
    add-int/lit8 v4, v45, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v4}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    move-result v45

    goto :goto_8

    .line 765
    :cond_17
    if-nez v47, :cond_10

    .line 766
    const/16 v52, 0x1

    goto/16 :goto_5

    .line 778
    .end local v37           #groupAccountType:Ljava/lang/String;
    .end local v40           #groupSourceID:Ljava/lang/String;
    .end local v45           #idx:I
    .end local v47           #isNumberExists:Z
    .restart local v29       #deleteUri:Landroid/net/Uri;
    .restart local v56       #num:I
    :cond_18
    const-string v4, "TMOClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete raw contact ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v64

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from group ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but returns 0, something wrong?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 791
    .restart local v65       #result:I
    .restart local v75       #updateUri:Landroid/net/Uri;
    .restart local v77       #values1:Landroid/content/ContentValues;
    :cond_19
    const-string v4, "TMOClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update raw contact: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v64

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'s "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "data14"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with blank but returns 0, something wrong..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 794
    .end local v29           #deleteUri:Landroid/net/Uri;
    .end local v56           #num:I
    .end local v65           #result:I
    .end local v75           #updateUri:Landroid/net/Uri;
    .end local v77           #values1:Landroid/content/ContentValues;
    :cond_1a
    const/16 v43, 0x0

    .local v43, i:I
    :goto_9
    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v4

    move/from16 v0, v43

    if-ge v0, v4, :cond_11

    .line 795
    move-object/from16 v0, v22

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 796
    move-object/from16 v0, v21

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 798
    .local v20, NumberID:Ljava/lang/String;
    new-instance v77, Landroid/content/ContentValues;

    invoke-direct/range {v77 .. v77}, Landroid/content/ContentValues;-><init>()V

    .line 799
    .restart local v77       #values1:Landroid/content/ContentValues;
    const-string v4, "data14"

    move-object/from16 v0, v77

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 800
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v75

    .line 801
    .restart local v75       #updateUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v75

    move-object/from16 v1, v77

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v65

    .line 802
    .restart local v65       #result:I
    if-lez v65, :cond_1c

    .line 803
    const-string v5, "TMOClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update number: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'s "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "data14"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " with blank"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    .end local v20           #NumberID:Ljava/lang/String;
    .end local v65           #result:I
    .end local v75           #updateUri:Landroid/net/Uri;
    .end local v77           #values1:Landroid/content/ContentValues;
    :cond_1b
    :goto_a
    add-int/lit8 v43, v43, 0x1

    goto :goto_9

    .line 805
    .restart local v20       #NumberID:Ljava/lang/String;
    .restart local v65       #result:I
    .restart local v75       #updateUri:Landroid/net/Uri;
    .restart local v77       #values1:Landroid/content/ContentValues;
    :cond_1c
    const-string v5, "TMOClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update number: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'s "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "data14"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " with blank but returns 0, something wrong..."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 814
    .end local v16           #AllGroups_idx:I
    .end local v20           #NumberID:Ljava/lang/String;
    .end local v25           #arr$:[Ljava/lang/String;
    .end local v39           #groupId:Ljava/lang/String;
    .end local v43           #i:I
    .end local v44           #i$:I
    .end local v50           #len$:I
    .end local v52           #needToDelete:Z
    .end local v65           #result:I
    .end local v75           #updateUri:Landroid/net/Uri;
    .end local v77           #values1:Landroid/content/ContentValues;
    :cond_1d
    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 815
    const/16 v59, 0x0

    .line 816
    .local v59, numberID_idx:I
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Ljava/lang/String;

    .restart local v25       #arr$:[Ljava/lang/String;
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v50, v0

    .restart local v50       #len$:I
    const/16 v44, 0x0

    .restart local v44       #i$:I
    move/from16 v60, v59

    .end local v59           #numberID_idx:I
    .local v60, numberID_idx:I
    :goto_b
    move/from16 v0, v44

    move/from16 v1, v50

    if-ge v0, v1, :cond_2

    aget-object v57, v25, v44

    .line 817
    .local v57, number:Ljava/lang/String;
    add-int/lit8 v59, v60, 0x1

    .end local v60           #numberID_idx:I
    .restart local v59       #numberID_idx:I
    move-object/from16 v0, v21

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Ljava/lang/String;

    .line 818
    .local v58, numberID:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v35

    .line 819
    .local v35, ext_groups_idx:I
    const/4 v4, -0x1

    move/from16 v0, v35

    if-eq v0, v4, :cond_26

    .line 821
    add-int/lit8 v4, v35, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_22

    .line 822
    add-int/lit8 v4, v35, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v4}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    move-result v55

    .line 823
    .local v55, next_ext_groups_idx:I
    :goto_c
    if-ltz v55, :cond_22

    .line 824
    const v63, 0x7fffffff

    .line 825
    .local v63, oldGroupPriority:I
    const v54, 0x7fffffff

    .line 827
    .local v54, newGroupPriority:I
    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/String;

    .line 828
    .local v62, oldGroupId:Ljava/lang/String;
    move-object/from16 v0, v62

    invoke-virtual {v13, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v24

    .line 829
    .local v24, all_groups_idx:I
    const/4 v4, -0x1

    move/from16 v0, v24

    if-eq v0, v4, :cond_1e

    .line 830
    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v63

    .line 833
    :cond_1e
    move-object/from16 v0, v17

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/String;

    .line 834
    .local v53, newGroupId:Ljava/lang/String;
    move-object/from16 v0, v53

    invoke-virtual {v13, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v24

    .line 835
    const/4 v4, -0x1

    move/from16 v0, v24

    if-eq v0, v4, :cond_1f

    .line 836
    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v54

    .line 839
    :cond_1f
    move/from16 v0, v54

    move/from16 v1, v63

    if-ge v0, v1, :cond_20

    .line 840
    move/from16 v35, v55

    .line 843
    :cond_20
    add-int/lit8 v4, v55, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_21

    .line 844
    add-int/lit8 v4, v55, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v4}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    move-result v55

    goto :goto_c

    .line 846
    :cond_21
    const/16 v55, -0x1

    goto :goto_c

    .line 853
    .end local v24           #all_groups_idx:I
    .end local v53           #newGroupId:Ljava/lang/String;
    .end local v54           #newGroupPriority:I
    .end local v55           #next_ext_groups_idx:I
    .end local v62           #oldGroupId:Ljava/lang/String;
    .end local v63           #oldGroupPriority:I
    :cond_22
    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    .line 854
    .local v34, extGroupID:Ljava/lang/String;
    move-object/from16 v0, v34

    invoke-virtual {v13, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v24

    .line 855
    .restart local v24       #all_groups_idx:I
    const/4 v4, -0x1

    move/from16 v0, v24

    if-eq v0, v4, :cond_24

    .line 856
    move/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    .line 857
    .local v38, groupID:Ljava/lang/String;
    move/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    .line 859
    .local v41, groupType:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "OTG"

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 860
    new-instance v76, Landroid/content/ContentValues;

    invoke-direct/range {v76 .. v76}, Landroid/content/ContentValues;-><init>()V

    .line 861
    .local v76, values:Landroid/content/ContentValues;
    const-string v4, "data1"

    move-object/from16 v0, v76

    move-object/from16 v1, v38

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v76

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const-string v4, "raw_contact_id"

    move-object/from16 v0, v76

    move-object/from16 v1, v64

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v64

    invoke-static {v4, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v46

    .line 865
    .local v46, insertUri:Landroid/net/Uri;
    const-string v4, "data"

    move-object/from16 v0, v46

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v46

    .line 866
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v46

    move-object/from16 v1, v76

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 867
    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 868
    const-string v4, "TMOClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert raw contact ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v64

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to group ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    .end local v46           #insertUri:Landroid/net/Uri;
    .end local v76           #values:Landroid/content/ContentValues;
    :cond_23
    new-instance v77, Landroid/content/ContentValues;

    invoke-direct/range {v77 .. v77}, Landroid/content/ContentValues;-><init>()V

    .line 873
    .restart local v77       #values1:Landroid/content/ContentValues;
    const-string v4, "data14"

    move-object/from16 v0, v77

    move-object/from16 v1, v38

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v58

    invoke-static {v4, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v75

    .line 875
    .restart local v75       #updateUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v75

    move-object/from16 v1, v77

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v65

    .line 876
    .restart local v65       #result:I
    if-lez v65, :cond_25

    .line 877
    const-string v4, "TMOClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'s "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "data14"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with group ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    .end local v24           #all_groups_idx:I
    .end local v34           #extGroupID:Ljava/lang/String;
    .end local v38           #groupID:Ljava/lang/String;
    .end local v41           #groupType:Ljava/lang/String;
    .end local v65           #result:I
    .end local v75           #updateUri:Landroid/net/Uri;
    .end local v77           #values1:Landroid/content/ContentValues;
    :cond_24
    :goto_d
    add-int/lit8 v44, v44, 0x1

    move/from16 v60, v59

    .end local v59           #numberID_idx:I
    .restart local v60       #numberID_idx:I
    goto/16 :goto_b

    .line 879
    .end local v60           #numberID_idx:I
    .restart local v24       #all_groups_idx:I
    .restart local v34       #extGroupID:Ljava/lang/String;
    .restart local v38       #groupID:Ljava/lang/String;
    .restart local v41       #groupType:Ljava/lang/String;
    .restart local v59       #numberID_idx:I
    .restart local v65       #result:I
    .restart local v75       #updateUri:Landroid/net/Uri;
    .restart local v77       #values1:Landroid/content/ContentValues;
    :cond_25
    const-string v4, "TMOClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'s "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "data14"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with group ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but returns 0, something wrong..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 884
    .end local v24           #all_groups_idx:I
    .end local v34           #extGroupID:Ljava/lang/String;
    .end local v38           #groupID:Ljava/lang/String;
    .end local v41           #groupType:Ljava/lang/String;
    .end local v65           #result:I
    .end local v75           #updateUri:Landroid/net/Uri;
    .end local v77           #values1:Landroid/content/ContentValues;
    :cond_26
    new-instance v77, Landroid/content/ContentValues;

    invoke-direct/range {v77 .. v77}, Landroid/content/ContentValues;-><init>()V

    .line 885
    .restart local v77       #values1:Landroid/content/ContentValues;
    const-string v4, "data14"

    move-object/from16 v0, v77

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 886
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v58

    invoke-static {v4, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v75

    .line 887
    .restart local v75       #updateUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v75

    move-object/from16 v1, v77

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v65

    .line 888
    .restart local v65       #result:I
    if-lez v65, :cond_27

    .line 889
    const-string v4, "TMOClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'s "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "data14"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with blank"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 891
    :cond_27
    const-string v4, "TMOClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'s "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "data14"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with blank but returns 0, something wrong..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 897
    .end local v17           #ExtGroupIDs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v18           #ExtNumbers:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v19           #GroupIDs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v21           #NumberIDs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v22           #Numbers:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v23           #accountType:Ljava/lang/String;
    .end local v25           #arr$:[Ljava/lang/String;
    .end local v31           #entValues:Landroid/content/ContentValues;
    .end local v32           #entity:Landroid/content/Entity;
    .end local v35           #ext_groups_idx:I
    .end local v44           #i$:I
    .end local v48           #isStatusUpdateExists:Z
    .end local v50           #len$:I
    .end local v57           #number:Ljava/lang/String;
    .end local v58           #numberID:Ljava/lang/String;
    .end local v59           #numberID_idx:I
    .end local v65           #result:I
    .end local v68           #status_data_id:Ljava/lang/String;
    .end local v69           #status_msg:Ljava/lang/String;
    .end local v70           #status_timestamp:Ljava/lang/String;
    .end local v71           #status_timestampInLong:J
    .end local v73           #status_update_time:J
    .end local v75           #updateUri:Landroid/net/Uri;
    .end local v77           #values1:Landroid/content/ContentValues;
    :cond_28
    const-string v4, "TMOClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Number of scanned RawContacts: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v61

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 900
    if-eqz v33, :cond_29

    .line 901
    invoke-interface/range {v33 .. v33}, Landroid/content/EntityIterator;->close()V

    .line 905
    :cond_29
    const-string v4, "TMOClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMyCommunityGroupMembers - end, time spent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v66

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " milliseconds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    return-void
.end method

.method public updateMyCommunityGroups([Lcom/htc/clientprofileservice/Group;)V
    .locals 26
    .parameter "groups"

    .prologue
    .line 915
    const-string v2, "TMOClient"

    const-string v3, "updateMyCommunityGroups - start."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    if-nez p1, :cond_1

    .line 917
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/TMOClient;->mService:Lcom/htc/clientprofileservice/IClientProfileService;

    if-eqz v2, :cond_0

    .line 919
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/TMOClient;->mService:Lcom/htc/clientprofileservice/IClientProfileService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/htc/clientprofileservice/IClientProfileService;->retrieveMyGroups(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1081
    :goto_0
    return-void

    .line 920
    :catch_0
    move-exception v11

    .line 921
    .local v11, e:Landroid/os/RemoteException;
    const-string v2, "TMOClient"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 925
    .end local v11           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "TMOClient"

    const-string v3, "updateMyCommunityGroups, input groups is null..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 929
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 930
    .local v20, starttime:J
    const-string v5, "account_type=\'com.htc.android.myphonebook\' AND deleted = \'0\' AND sourceid IS NOT NULL AND system_id IN (\'CTG\',\'OTG\')"

    .line 931
    .local v5, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "groups_raw"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 932
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_12

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_12

    .line 933
    const-string v2, "TMOClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of MyCommunity groups: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    if-eqz p1, :cond_a

    .line 936
    move-object/from16 v9, p1

    .local v9, arr$:[Lcom/htc/clientprofileservice/Group;
    array-length v15, v9

    .local v15, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_1
    if-ge v13, v15, :cond_a

    aget-object v12, v9, v13

    .line 937
    .local v12, group:Lcom/htc/clientprofileservice/Group;
    const/4 v14, 0x0

    .line 938
    .local v14, isUpdated:Z
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 939
    const-string v2, "sourceid"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 940
    .local v19, sourceid:Ljava/lang/String;
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 941
    .local v8, _id:Ljava/lang/String;
    if-eqz v19, :cond_2

    if-eqz v12, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 942
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 943
    .local v23, values:Landroid/content/ContentValues;
    const-string v2, "title"

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    const-string v2, "display_title"

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    const-string v2, "system_id"

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    const-string v2, "notes"

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getTiIcon()[B

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 947
    const-string v2, "photo"

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getGrpIcon()[B

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 948
    const-string v2, "should_sync"

    const-string v3, "0"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    const-string v2, "sync4"

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getPriority()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 951
    const-string v2, "is_attribute_set"

    const-string v3, "1"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    const-string v2, "OTG"

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 954
    const-string v2, "sortorder"

    const-string v3, "-1"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 958
    .local v17, num:I
    if-lez v17, :cond_4

    .line 959
    const-string v2, "TMOClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMyCommunityGroups, updated group, group id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sourceid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :cond_4
    const/4 v14, 0x1

    .line 966
    .end local v8           #_id:Ljava/lang/String;
    .end local v17           #num:I
    .end local v19           #sourceid:Ljava/lang/String;
    .end local v23           #values:Landroid/content/ContentValues;
    :cond_5
    if-eqz v14, :cond_7

    .line 936
    :cond_6
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 970
    :cond_7
    if-eqz v12, :cond_9

    .line 971
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 972
    .local v24, values1:Landroid/content/ContentValues;
    const-string v2, "title"

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    const-string v2, "display_title"

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    const-string v2, "account_name"

    const-string v3, "MyPhonebook"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    const-string v2, "account_type"

    const-string v3, "com.htc.android.myphonebook"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const-string v2, "sourceid"

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 977
    const-string v2, "system_id"

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    const-string v2, "notes"

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getTiIcon()[B

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 979
    const-string v2, "photo"

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getGrpIcon()[B

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 980
    const-string v2, "should_sync"

    const-string v3, "0"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    const-string v2, "sync4"

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getPriority()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 983
    const-string v2, "is_attribute_set"

    const-string v3, "1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    const-string v2, "OTG"

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 986
    const-string v2, "sortorder"

    const-string v3, "-1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v24

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v18

    .line 992
    .local v18, result:Landroid/net/Uri;
    const-string v2, "TMOClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMyCommunityGroups, insert group, sourceid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    if-eqz v18, :cond_6

    const-string v2, "OTG"

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 996
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 997
    .local v25, values2:Landroid/content/ContentValues;
    const-string v2, "sortorder"

    const-string v3, "-1"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    const-string v2, "should_sync"

    const-string v3, "0"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .line 988
    .end local v18           #result:Landroid/net/Uri;
    .end local v25           #values2:Landroid/content/ContentValues;
    :cond_8
    const-string v2, "display_order"

    const-string v3, "1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1002
    .end local v24           #values1:Landroid/content/ContentValues;
    :cond_9
    const-string v2, "TMOClient"

    const-string v3, "group is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1007
    .end local v9           #arr$:[Lcom/htc/clientprofileservice/Group;
    .end local v12           #group:Lcom/htc/clientprofileservice/Group;
    .end local v13           #i$:I
    .end local v14           #isUpdated:Z
    .end local v15           #len$:I
    :cond_a
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1009
    :cond_b
    const-string v2, "sourceid"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1010
    .restart local v19       #sourceid:Ljava/lang/String;
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1011
    .restart local v8       #_id:Ljava/lang/String;
    const-string v2, "title"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1012
    .local v22, title:Ljava/lang/String;
    const/16 v16, 0x1

    .line 1013
    .local v16, needToDelete:Z
    if-eqz p1, :cond_c

    .line 1014
    move-object/from16 v9, p1

    .restart local v9       #arr$:[Lcom/htc/clientprofileservice/Group;
    array-length v15, v9

    .restart local v15       #len$:I
    const/4 v13, 0x0

    .restart local v13       #i$:I
    :goto_4
    if-ge v13, v15, :cond_c

    aget-object v12, v9, v13

    .line 1015
    .restart local v12       #group:Lcom/htc/clientprofileservice/Group;
    if-eqz v19, :cond_10

    if-eqz v12, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1016
    const/16 v16, 0x0

    .line 1021
    .end local v9           #arr$:[Lcom/htc/clientprofileservice/Group;
    .end local v12           #group:Lcom/htc/clientprofileservice/Group;
    .end local v13           #i$:I
    .end local v15           #len$:I
    :cond_c
    if-eqz v16, :cond_d

    .line 1022
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 1024
    .restart local v17       #num:I
    if-lez v17, :cond_11

    .line 1025
    const-string v2, "TMOClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMyCommunityGroups, delete group, _id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "title"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    .end local v17           #num:I
    :cond_d
    :goto_5
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_b

    .line 1076
    .end local v8           #_id:Ljava/lang/String;
    .end local v16           #needToDelete:Z
    .end local v19           #sourceid:Ljava/lang/String;
    .end local v22           #title:Ljava/lang/String;
    :cond_e
    if-eqz v10, :cond_f

    .line 1077
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1079
    :cond_f
    const-string v2, "TMOClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMyCommunityGroups - end, time spent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v20

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " milliseconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1014
    .restart local v8       #_id:Ljava/lang/String;
    .restart local v9       #arr$:[Lcom/htc/clientprofileservice/Group;
    .restart local v12       #group:Lcom/htc/clientprofileservice/Group;
    .restart local v13       #i$:I
    .restart local v15       #len$:I
    .restart local v16       #needToDelete:Z
    .restart local v19       #sourceid:Ljava/lang/String;
    .restart local v22       #title:Ljava/lang/String;
    :cond_10
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 1028
    .end local v9           #arr$:[Lcom/htc/clientprofileservice/Group;
    .end local v12           #group:Lcom/htc/clientprofileservice/Group;
    .end local v13           #i$:I
    .end local v15           #len$:I
    .restart local v17       #num:I
    :cond_11
    const-string v2, "TMOClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMyCommunityGroups, delete group, _id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "title"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but return number is 0, something wrong?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1035
    .end local v8           #_id:Ljava/lang/String;
    .end local v16           #needToDelete:Z
    .end local v17           #num:I
    .end local v19           #sourceid:Ljava/lang/String;
    .end local v22           #title:Ljava/lang/String;
    :cond_12
    const-string v2, "TMOClient"

    const-string v3, "updateMyCommunityGroups, no MyCommunity groups in db"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    if-eqz p1, :cond_e

    .line 1038
    move-object/from16 v9, p1

    .restart local v9       #arr$:[Lcom/htc/clientprofileservice/Group;
    array-length v15, v9

    .restart local v15       #len$:I
    const/4 v13, 0x0

    .restart local v13       #i$:I
    :goto_6
    if-ge v13, v15, :cond_e

    aget-object v12, v9, v13

    .line 1039
    .restart local v12       #group:Lcom/htc/clientprofileservice/Group;
    if-nez v12, :cond_14

    .line 1038
    :cond_13
    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 1043
    :cond_14
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 1044
    .restart local v24       #values1:Landroid/content/ContentValues;
    const-string v2, "title"

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    const-string v2, "display_title"

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    const-string v2, "account_name"

    const-string v3, "MyPhonebook"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    const-string v2, "account_type"

    const-string v3, "com.htc.android.myphonebook"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    const-string v2, "sourceid"

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1049
    const-string v2, "system_id"

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    const-string v2, "notes"

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getTiIcon()[B

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1051
    const-string v2, "photo"

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getGrpIcon()[B

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1052
    const-string v2, "should_sync"

    const-string v3, "0"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    const-string v2, "sync4"

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getPriority()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1055
    const-string v2, "is_attribute_set"

    const-string v3, "1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    const-string v2, "OTG"

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1058
    const-string v2, "sortorder"

    const-string v3, "-1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v24

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v18

    .line 1063
    .restart local v18       #result:Landroid/net/Uri;
    const-string v2, "TMOClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMyCommunityGroups, insert group, sourceid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    if-eqz v18, :cond_13

    const-string v2, "OTG"

    invoke-virtual {v12}, Lcom/htc/clientprofileservice/Group;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1067
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 1068
    .restart local v25       #values2:Landroid/content/ContentValues;
    const-string v2, "sortorder"

    const-string v3, "-1"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    const-string v2, "should_sync"

    const-string v3, "0"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1060
    .end local v18           #result:Landroid/net/Uri;
    .end local v25           #values2:Landroid/content/ContentValues;
    :cond_15
    const-string v2, "display_order"

    const-string v3, "1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public updateMyCommunitySNCDatas(Ljava/util/List;)V
    .locals 23
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/clientprofileservice/SncdataEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 494
    .local p1, sncDatas:Ljava/util/List;,"Ljava/util/List<Lcom/htc/clientprofileservice/SncdataEntry;>;"
    const-string v2, "TMOClient"

    const-string v3, "updateMyCommunitySNCDatas - start."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    if-nez p1, :cond_1

    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/TMOClient;->mService:Lcom/htc/clientprofileservice/IClientProfileService;

    if-eqz v2, :cond_0

    .line 498
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/TMOClient;->mService:Lcom/htc/clientprofileservice/IClientProfileService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/htc/clientprofileservice/IClientProfileService;->retrieveSncData(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :goto_0
    return-void

    .line 499
    :catch_0
    move-exception v11

    .line 500
    .local v11, e:Landroid/os/RemoteException;
    const-string v2, "TMOClient"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 504
    .end local v11           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "TMOClient"

    const-string v3, "updateMyCommunitySNCDatas, input sncDatas is null..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 508
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 509
    .local v19, starttime:J
    const-string v5, "account_type=\'com.htc.android.myphonebook\' AND deleted = \'0\' AND sourceid IS NOT NULL AND system_id = \'SNC\'"

    .line 510
    .local v5, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "groups_raw"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 511
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_e

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_e

    .line 512
    const-string v2, "TMOClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of MyCommunity SNC data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    if-eqz p1, :cond_6

    .line 515
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/htc/clientprofileservice/SncdataEntry;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/htc/clientprofileservice/SncdataEntry;

    .local v9, arr$:[Lcom/htc/clientprofileservice/SncdataEntry;
    array-length v14, v9

    .local v14, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_1
    if-ge v12, v14, :cond_6

    aget-object v17, v9, v12

    .line 516
    .local v17, sncdata:Lcom/htc/clientprofileservice/SncdataEntry;
    const/4 v13, 0x0

    .line 517
    .local v13, isUpdated:Z
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 518
    const-string v2, "sourceid"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 519
    .local v18, sourceid:Ljava/lang/String;
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 520
    .local v8, _id:Ljava/lang/String;
    if-eqz v18, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lcom/htc/clientprofileservice/SncdataEntry;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 521
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 522
    .local v22, values:Landroid/content/ContentValues;
    const-string v2, "title"

    invoke-virtual/range {v17 .. v17}, Lcom/htc/clientprofileservice/SncdataEntry;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v2, "display_title"

    invoke-virtual/range {v17 .. v17}, Lcom/htc/clientprofileservice/SncdataEntry;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v2, "system_id"

    const-string v3, "SNC"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v2, "notes"

    invoke-virtual/range {v17 .. v17}, Lcom/htc/clientprofileservice/SncdataEntry;->getUrl()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string v2, "photo"

    invoke-virtual/range {v17 .. v17}, Lcom/htc/clientprofileservice/SncdataEntry;->getIcon()[B

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 529
    .local v16, num:I
    if-lez v16, :cond_3

    .line 530
    const-string v2, "TMOClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMyCommunitySNCDatas, updated SNC data, group id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sourceid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lcom/htc/clientprofileservice/SncdataEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_3
    const/4 v13, 0x1

    .line 537
    .end local v8           #_id:Ljava/lang/String;
    .end local v16           #num:I
    .end local v18           #sourceid:Ljava/lang/String;
    .end local v22           #values:Landroid/content/ContentValues;
    :cond_4
    if-eqz v13, :cond_5

    .line 515
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 541
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/util/contacts/TMOClient;->insertSNCData(Lcom/htc/clientprofileservice/SncdataEntry;)V

    goto :goto_2

    .line 545
    .end local v9           #arr$:[Lcom/htc/clientprofileservice/SncdataEntry;
    .end local v12           #i$:I
    .end local v13           #isUpdated:Z
    .end local v14           #len$:I
    .end local v17           #sncdata:Lcom/htc/clientprofileservice/SncdataEntry;
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 547
    :cond_7
    const-string v2, "sourceid"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 548
    .restart local v18       #sourceid:Ljava/lang/String;
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 549
    .restart local v8       #_id:Ljava/lang/String;
    const-string v2, "title"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 550
    .local v21, title:Ljava/lang/String;
    const/4 v15, 0x1

    .line 551
    .local v15, needToDelete:Z
    if-eqz p1, :cond_8

    .line 552
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/htc/clientprofileservice/SncdataEntry;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/htc/clientprofileservice/SncdataEntry;

    .restart local v9       #arr$:[Lcom/htc/clientprofileservice/SncdataEntry;
    array-length v14, v9

    .restart local v14       #len$:I
    const/4 v12, 0x0

    .restart local v12       #i$:I
    :goto_3
    if-ge v12, v14, :cond_8

    aget-object v17, v9, v12

    .line 553
    .restart local v17       #sncdata:Lcom/htc/clientprofileservice/SncdataEntry;
    if-eqz v18, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lcom/htc/clientprofileservice/SncdataEntry;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual/range {v17 .. v17}, Lcom/htc/clientprofileservice/SncdataEntry;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 554
    const/4 v15, 0x0

    .line 559
    .end local v9           #arr$:[Lcom/htc/clientprofileservice/SncdataEntry;
    .end local v12           #i$:I
    .end local v14           #len$:I
    .end local v17           #sncdata:Lcom/htc/clientprofileservice/SncdataEntry;
    :cond_8
    if-eqz v15, :cond_9

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 562
    .restart local v16       #num:I
    if-lez v16, :cond_d

    .line 563
    const-string v2, "TMOClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMyCommunitySNCDatas, delete SNC Data, _id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "title"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    .end local v16           #num:I
    :cond_9
    :goto_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_7

    .line 581
    .end local v8           #_id:Ljava/lang/String;
    .end local v15           #needToDelete:Z
    .end local v18           #sourceid:Ljava/lang/String;
    .end local v21           #title:Ljava/lang/String;
    :cond_a
    if-eqz v10, :cond_b

    .line 582
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 584
    :cond_b
    const-string v2, "TMOClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMyCommunitySNCDatas - end, time spent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v19

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " milliseconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 552
    .restart local v8       #_id:Ljava/lang/String;
    .restart local v9       #arr$:[Lcom/htc/clientprofileservice/SncdataEntry;
    .restart local v12       #i$:I
    .restart local v14       #len$:I
    .restart local v15       #needToDelete:Z
    .restart local v17       #sncdata:Lcom/htc/clientprofileservice/SncdataEntry;
    .restart local v18       #sourceid:Ljava/lang/String;
    .restart local v21       #title:Ljava/lang/String;
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 566
    .end local v9           #arr$:[Lcom/htc/clientprofileservice/SncdataEntry;
    .end local v12           #i$:I
    .end local v14           #len$:I
    .end local v17           #sncdata:Lcom/htc/clientprofileservice/SncdataEntry;
    .restart local v16       #num:I
    :cond_d
    const-string v2, "TMOClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMyCommunitySNCDatas, delete SNC Data, _id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "title"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but return number is 0, something wrong?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 573
    .end local v8           #_id:Ljava/lang/String;
    .end local v15           #needToDelete:Z
    .end local v16           #num:I
    .end local v18           #sourceid:Ljava/lang/String;
    .end local v21           #title:Ljava/lang/String;
    :cond_e
    const-string v2, "TMOClient"

    const-string v3, "updateMyCommunitySNCDatas, no MyCommunity SNC Data in db"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    if-eqz p1, :cond_a

    .line 576
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/htc/clientprofileservice/SncdataEntry;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/htc/clientprofileservice/SncdataEntry;

    .restart local v9       #arr$:[Lcom/htc/clientprofileservice/SncdataEntry;
    array-length v14, v9

    .restart local v14       #len$:I
    const/4 v12, 0x0

    .restart local v12       #i$:I
    :goto_5
    if-ge v12, v14, :cond_a

    aget-object v17, v9, v12

    .line 577
    .restart local v17       #sncdata:Lcom/htc/clientprofileservice/SncdataEntry;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/util/contacts/TMOClient;->insertSNCData(Lcom/htc/clientprofileservice/SncdataEntry;)V

    .line 576
    add-int/lit8 v12, v12, 0x1

    goto :goto_5
.end method

.method public updateStatusMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .parameter "rawContactId"
    .parameter "status_msg"
    .parameter "status_timestamp"

    .prologue
    .line 455
    :try_start_0
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v12, "yyyyMMdd\'T\'hhmmss\'Z\'"

    invoke-direct {v6, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 456
    .local v6, formatter:Ljava/text/DateFormat;
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 457
    .local v2, date:Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 464
    .end local v2           #date:Ljava/util/Date;
    .end local v6           #formatter:Ljava/text/DateFormat;
    .local v3, dateInLong:J
    :goto_0
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 465
    .local v11, values0:Landroid/content/ContentValues;
    const-string v12, "mimetype"

    const-string v13, "com.htc.android.myphonebook.item/status_update"

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v12, "raw_contact_id"

    move-object/from16 v0, p1

    invoke-virtual {v11, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v12, "data3"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 468
    sget-object v12, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 469
    .local v7, insertUri:Landroid/net/Uri;
    const-string v12, "data"

    invoke-static {v7, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 470
    iget-object v12, p0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-virtual {v12, v7, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 472
    .local v9, rtnUri:Landroid/net/Uri;
    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, data_id:Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 475
    .local v10, values:Landroid/content/ContentValues;
    const-string v12, "presence_data_id"

    invoke-virtual {v10, v12, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v12, "status"

    move-object/from16 v0, p2

    invoke-virtual {v10, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v12, "status_ts"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 479
    const-string v12, "status_res_package"

    const-string v13, "com.htc.android.myphonebook"

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v12, p0, Lcom/htc/util/contacts/TMOClient;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Landroid/provider/ContactsContract$StatusUpdates;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12, v13, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 482
    .local v8, rtn:Landroid/net/Uri;
    const-string v12, "TMOClient"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Insert status message to table \'status_updates\'... returned Uri: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    if-nez v8, :cond_0

    .line 484
    const-string v12, "TMOClient"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "values: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_0
    return-void

    .line 459
    .end local v1           #data_id:Ljava/lang/String;
    .end local v3           #dateInLong:J
    .end local v7           #insertUri:Landroid/net/Uri;
    .end local v8           #rtn:Landroid/net/Uri;
    .end local v9           #rtnUri:Landroid/net/Uri;
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v11           #values0:Landroid/content/ContentValues;
    :catch_0
    move-exception v5

    .line 460
    .local v5, e:Ljava/text/ParseException;
    const-string v12, "TMOClient"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ParseException for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", we use current time as time stamp..."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .restart local v3       #dateInLong:J
    goto/16 :goto_0
.end method
