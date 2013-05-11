.class public Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;
.super Lcom/htc/album/TabPluginDevice/SceneLocalFolder;
.source "SmartFolderScene.java"

# interfaces
.implements Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$OnItemVibrateListener;,
        Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$networkStateReceiver;,
        Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;
    }
.end annotation


# static fields
.field public static DEFAULT_FIRST_LAUNCH_EVENTS:Z = false

.field public static KEY_FIRST_LAUNCH_EVENTS:Ljava/lang/String; = null

.field public static final LOG_TAG:Ljava/lang/String; = "SmartFolderScene"


# instance fields
.field private mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

.field private mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

.field private mOnItemVibrateListener:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$OnItemVibrateListener;

.field private mRefreshWhenNetworkConnection:Z

.field private mShowDialogFirstLaunchTipsOnResume:Z

.field private mShowDialogNoConnection:Z

.field private mTipsStatus:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-string v0, "first_launch_events"

    sput-object v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->KEY_FIRST_LAUNCH_EVENTS:Ljava/lang/String;

    .line 75
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->DEFAULT_FIRST_LAUNCH_EVENTS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;-><init>()V

    .line 77
    sget-object v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;->UNKNOW:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mTipsStatus:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    .line 78
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    .line 79
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mShowDialogNoConnection:Z

    .line 82
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mRefreshWhenNetworkConnection:Z

    .line 84
    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$OnItemVibrateListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$OnItemVibrateListener;-><init>(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$1;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mOnItemVibrateListener:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$OnItemVibrateListener;

    .line 86
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mShowDialogFirstLaunchTipsOnResume:Z

    .line 649
    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mShowDialogNoConnection:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mRefreshWhenNetworkConnection:Z

    return v0
.end method

.method static synthetic access$402(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mRefreshWhenNetworkConnection:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->onRefreshAddress(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->unregisterNetworkStateReceiver(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method public static getFirstLaunchEventsPref(Landroid/content/Context;)Z
    .locals 5
    .parameter "appContext"

    .prologue
    .line 565
    sget-boolean v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->DEFAULT_FIRST_LAUNCH_EVENTS:Z

    .line 566
    .local v0, bIsFirst:Z
    if-eqz p0, :cond_0

    .line 568
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 569
    .local v1, preference:Landroid/content/SharedPreferences;
    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->KEY_FIRST_LAUNCH_EVENTS:Ljava/lang/String;

    sget-boolean v3, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->DEFAULT_FIRST_LAUNCH_EVENTS:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 571
    .end local v1           #preference:Landroid/content/SharedPreferences;
    :cond_0
    const-string v2, "SmartFolderScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SmartFolderScene][getFirstLaunchEventsPref]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    return v0
.end method

.method private onRefreshAddress(Z)V
    .locals 1
    .parameter "bForceUpdate"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    instance-of v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;

    if-eqz v0, :cond_1

    .line 507
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 508
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    invoke-interface {v0}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->unlockNetworkAccessWarning()V

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->requestUpdateEventAddress(Z)V

    .line 512
    :cond_1
    return-void
.end method

.method private registerNetworkStateReceiver(Landroid/content/Context;)V
    .locals 3
    .parameter "appContext"

    .prologue
    .line 605
    if-nez p1, :cond_0

    .line 607
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mRefreshWhenNetworkConnection:Z

    .line 618
    :goto_0
    return-void

    .line 611
    :cond_0
    const-string v1, "SmartFolderScene"

    const-string v2, "[HTCAlbum][SmartFolderScene][registerNetworkStateReceiver]: start to monitor network state..."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    .line 614
    new-instance v1, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$networkStateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$networkStateReceiver;-><init>(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$1;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    .line 616
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 617
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private showDialogFirstLaunchTips(Landroid/content/Context;)V
    .locals 5
    .parameter "appContext"

    .prologue
    .line 543
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v3, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mTipsStatus:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    sget-object v4, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;->UNKNOW:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    if-ne v3, v4, :cond_0

    .line 549
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    if-eqz v3, :cond_2

    .line 551
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    .line 552
    .local v0, addressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;
    invoke-interface {v0}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->onNotifyServiceFirstTimer()V

    .line 555
    .end local v0           #addressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;
    :cond_2
    sget-object v3, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;->RUNNING:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mTipsStatus:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    .line 557
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 558
    .local v2, preference:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 559
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v3, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->KEY_FIRST_LAUNCH_EVENTS:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 560
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private unregisterNetworkStateReceiver(Landroid/content/Context;)V
    .locals 2
    .parameter "appContext"

    .prologue
    .line 621
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 624
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    .line 625
    const-string v0, "SmartFolderScene"

    const-string v1, "[HTCAlbum][SmartFolderScene][unregisterNetworkStateReceiver]: stop to monitor network state..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :cond_0
    return-void
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    const-string v0, "SmartFolderAdapter"

    return-object v0
.end method

.method protected doCreateAdapter(Landroid/app/Activity;)Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;
    .locals 6
    .parameter "activity"

    .prologue
    .line 165
    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->getAdapterMediaType()I

    move-result v4

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;-><init>(Lcom/htc/sunnyCore/SunnyContext;Landroid/app/Activity;Landroid/os/Handler;ILandroid/os/Bundle;)V

    return-object v0
.end method

.method public finishDialogFirstTimer(Z)V
    .locals 1
    .parameter "bIsChecked"

    .prologue
    .line 497
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 499
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->onRefreshAddress(Z)V

    .line 501
    :cond_0
    sget-object v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;->FINISHED:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mTipsStatus:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    .line 502
    return-void
.end method

.method protected getThumbnailSceneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    const-string v0, "SmartEventThumbnailScene"

    return-object v0
.end method

.method public isHostScene()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public onBindAdapter()V
    .locals 2

    .prologue
    .line 187
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onBindAdapter()V

    .line 188
    const-string v0, "SmartFolderScene"

    const-string v1, "[HTCAlbum][SmartFolderScene][onBindAdapter]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    instance-of v0, v0, Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/EventGridView;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->setPrototypeFactory(Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;)V

    .line 191
    :cond_0
    return-void
.end method

.method protected onConfigMainViewLayout(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 268
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onConfigMainViewLayout(Landroid/content/res/Configuration;)V

    .line 270
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->verticalSpacing(Landroid/content/res/Configuration;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setVerticalSpacing(I)V

    .line 271
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->horizontalSpacing(Landroid/content/res/Configuration;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setHorizontalSpacing(I)V

    .line 273
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 274
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mIsInAnimation:Z

    if-nez v1, :cond_0

    .line 276
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->setGlobalBackgroundOrOverlapRoundCorner(Z)V

    .line 278
    :cond_0
    return-void
.end method

.method protected onCreateGridView(Landroid/content/Context;Lcom/htc/sunny2/widget/gridview/GridItemFolder;)Lcom/htc/sunnyCore/widget/gridview/GridView;
    .locals 9
    .parameter "context"
    .parameter "item"

    .prologue
    .line 281
    const-string v2, "SmartFolderScene"

    const-string v3, "[HTCAlbum][SmartFolderScene][onCreateGridView]: Begin"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    new-instance v1, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    .line 287
    .local v1, gridview:Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->getWindowStatusBarHeight(Landroid/app/Activity;)I

    move-result v7

    .line 288
    .local v7, nStatusBarHeight:I
    sget v6, Lcom/htc/album/AlbumCommon/LayoutConstants;->ACTION_BAR_HEIGHT_DIMEN:I

    .line 291
    .local v6, nActionBarHeight:I
    add-int v8, v7, v6

    .line 295
    .local v8, nTopViewMargin:I
    new-instance v2, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    invoke-direct {v2}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;-><init>()V

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->attachScreenControl(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridViewScreenControl;)V

    .line 296
    invoke-virtual {v1, v8}, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->setViewTopMargin(I)V

    .line 298
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x208003f

    const v3, 0x7f020037

    const v4, 0x208003e

    const v5, 0x7f020036

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;IIII)V

    .line 303
    .local v0, res:Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;
    invoke-virtual {v1, v0}, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->setHtcFastScrollerRes(Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;)V

    .line 305
    const-string v2, "SmartFolderScene"

    const-string v3, "[HTCAlbum][SmartFolderScene][onCreateGridView]: End"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-object v1
.end method

.method protected onCreateParams4Preparator()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;
    .locals 4

    .prologue
    .line 311
    invoke-static {}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4Events;->spawn()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4Events;

    move-result-object v1

    .line 312
    .local v1, params:Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4Events;
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4Events;->setCacheSet(I)V

    .line 313
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4Events;->enableFileCache()V

    .line 314
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 315
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_ENABLE_QUALITY_OPTIONS"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 316
    invoke-virtual {v1, v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4Events;->setExtra(Landroid/os/Bundle;)V

    .line 317
    return-object v1
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunnyCore/view/SView;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 91
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    invoke-interface {v1, v2}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->setEnableNetworkAccessWarning(Z)V

    .line 97
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    invoke-interface {v1, v2}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->setResetNetworkAccessWarning(Z)V

    .line 98
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->bindAddressListener(Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;)V

    .line 101
    :cond_1
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v0

    .line 102
    .local v0, gv:Lcom/htc/sunnyCore/widget/gridview/GridView;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mOnItemVibrateListener:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$OnItemVibrateListener;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOnItemLongPressVibrateListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongPressVibrateListener;)V

    .line 104
    return-object v0
.end method

.method public onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    .locals 2

    .prologue
    .line 180
    new-instance v1, Lcom/htc/album/Animation/animationSetEventView;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-direct {v1, v0}, Lcom/htc/album/Animation/animationSetEventView;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;)V

    return-object v1
.end method

.method public onDestroyScene()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->unregisterNetworkStateReceiver(Landroid/content/Context;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->unbindAddressListener(Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    .line 120
    :cond_1
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onDestroyScene()V

    .line 121
    return-void
.end method

.method protected onDropListItemClick(I)V
    .locals 6
    .parameter "nIndex"

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 393
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-eqz v0, :cond_0

    .line 394
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->dismissDropList()V

    .line 396
    :cond_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    invoke-virtual {v3, p1}, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 397
    .local v2, nItem:I
    const/16 v3, 0x37

    if-ne v3, v2, :cond_1

    .line 399
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 400
    .local v1, bundle:Landroid/os/Bundle;
    const-string v3, "from_outside"

    iget-boolean v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mIsFromOutside:Z

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 401
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v4, "SceneLocalFolder"

    const/4 v5, 0x1

    invoke-interface {v3, v1, v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 402
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->FOLDERS:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    invoke-static {v3, v4}, Lcom/htc/album/Customizable/CustAlbumCollection;->setDefaultAlbumCollection(Landroid/content/Context;Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;)V

    .line 404
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method public onItemSelected(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    .line 322
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;
    if-nez v0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 326
    .local v1, collection:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->isSeparable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 329
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onItemSelected(I)V

    goto :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    .line 342
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_1

    .line 366
    :cond_0
    :goto_0
    return v3

    .line 344
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 345
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 347
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 364
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 350
    :pswitch_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    instance-of v1, v1, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->requestUpdateEventCache(I)V

    goto :goto_0

    .line 358
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Lcom/htc/AddressFinderService/interfaces/AddressData;

    check-cast v1, [Lcom/htc/AddressFinderService/interfaces/AddressData;

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->updateLocationInfo([Lcom/htc/AddressFinderService/interfaces/AddressData;)V

    goto :goto_0

    .line 347
    :pswitch_data_0
    .packed-switch 0x1459
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 408
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 409
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 410
    const/4 v2, 0x0

    .line 443
    :goto_0
    return v2

    .line 413
    :cond_0
    const/4 v2, 0x0

    .line 415
    .local v2, bResult:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 440
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0

    .line 419
    :sswitch_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 420
    .local v1, appContext:Landroid/content/Context;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 421
    .local v4, settingsIntent:Landroid/content/Intent;
    const-class v5, Lcom/htc/album/TabPluginDevice/smart/EventSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    invoke-virtual {v0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 423
    .end local v1           #appContext:Landroid/content/Context;
    .end local v4           #settingsIntent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 424
    .local v3, e1:Ljava/lang/Exception;
    const-string v5, "SmartFolderScene"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][SmartFolderScene][onOptionsItemSelected] SETTINGS:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 428
    .end local v3           #e1:Ljava/lang/Exception;
    :sswitch_1
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 429
    .restart local v1       #appContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isNetworkConnectionActive(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 431
    iput-boolean v6, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mShowDialogNoConnection:Z

    .line 432
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->showDialogNoConnection()V

    goto :goto_0

    .line 436
    :cond_1
    invoke-direct {p0, v6}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->onRefreshAddress(Z)V

    goto :goto_0

    .line 415
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09008e -> :sswitch_0
        0x7f090092 -> :sswitch_1
    .end sparse-switch
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 449
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onResume()V

    .line 451
    iput-boolean v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mRefreshWhenNetworkConnection:Z

    .line 453
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 457
    .local v0, appContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/DateTimeManager;->isSystemDateChanged(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 459
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->setIntermediateDataBundle(Landroid/os/Bundle;)V

    .line 488
    :cond_2
    :goto_1
    iput-boolean v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mShowDialogNoConnection:Z

    .line 490
    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mShowDialogFirstLaunchTipsOnResume:Z

    if-ne v2, v4, :cond_0

    .line 491
    iput-boolean v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mShowDialogFirstLaunchTipsOnResume:Z

    .line 492
    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->showDialogFirstLaunchTips(Landroid/content/Context;)V

    goto :goto_0

    .line 463
    :cond_3
    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isNetworkConnectionActive(Landroid/content/Context;)Z

    move-result v2

    if-ne v4, v2, :cond_5

    .line 465
    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mShowDialogNoConnection:Z

    if-ne v4, v2, :cond_4

    .line 467
    invoke-direct {p0, v4}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->onRefreshAddress(Z)V

    goto :goto_1

    .line 471
    :cond_4
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->getAutoRetrievePref(Landroid/content/Context;)Z

    move-result v1

    .line 472
    .local v1, bHasAutoUpdate:Z
    if-ne v4, v1, :cond_2

    .line 474
    invoke-direct {p0, v5}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->onRefreshAddress(Z)V

    goto :goto_1

    .line 480
    .end local v1           #bHasAutoUpdate:Z
    :cond_5
    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mShowDialogNoConnection:Z

    if-ne v4, v2, :cond_2

    .line 482
    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mRefreshWhenNetworkConnection:Z

    .line 483
    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->registerNetworkStateReceiver(Landroid/content/Context;)V

    goto :goto_1
.end method

.method protected onResumePreparatorInBackground()V
    .locals 0

    .prologue
    .line 339
    return-void
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 264
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onSendToBackground(Landroid/os/Bundle;)V

    .line 265
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 8
    .parameter "bundle"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 230
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onSendToForeground(Landroid/os/Bundle;)V

    .line 231
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 233
    const-string v2, "SmartFolderScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SmartFolderScene][onSendToForeground]: check first launch status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mTipsStatus:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mTipsStatus:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    sget-object v3, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;->UNKNOW:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    if-ne v2, v3, :cond_1

    .line 236
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 237
    .local v0, appContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->getFirstLaunchEventsPref(Landroid/content/Context;)Z

    move-result v1

    .line 238
    .local v1, bIsFirstLaunch:Z
    if-ne v6, v1, :cond_3

    .line 244
    iput-boolean v6, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mShowDialogFirstLaunchTipsOnResume:Z

    .line 247
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityLifeCycle()I

    move-result v2

    if-ne v7, v2, :cond_0

    .line 248
    iput-boolean v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mShowDialogFirstLaunchTipsOnResume:Z

    .line 249
    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->showDialogFirstLaunchTips(Landroid/content/Context;)V

    .line 256
    :cond_0
    :goto_0
    const-string v2, "SmartFolderScene"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "[HTCAlbum][SmartFolderScene][onSendToForeground]: check first launch preference: "

    aput-object v4, v3, v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, ", show tips: "

    aput-object v4, v3, v7

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mTipsStatus:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    .end local v0           #appContext:Landroid/content/Context;
    .end local v1           #bIsFirstLaunch:Z
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    if-eqz v2, :cond_2

    .line 259
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    invoke-interface {v2, v6}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->setEnableNetworkAccessWarning(Z)V

    .line 261
    :cond_2
    return-void

    .line 254
    .restart local v0       #appContext:Landroid/content/Context;
    .restart local v1       #bIsFirstLaunch:Z
    :cond_3
    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;->FINISHED:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mTipsStatus:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    goto :goto_0
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 132
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 133
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0184

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onUpdateAddressBegin()V
    .locals 0

    .prologue
    .line 581
    return-void
.end method

.method public onUpdateAddressEnd()V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    instance-of v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->requestUpdateEventCache(I)V

    .line 598
    :cond_0
    return-void
.end method

.method public onUpdateAddressResult([Lcom/htc/AddressFinderService/interfaces/AddressData;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 585
    if-eqz p1, :cond_0

    .line 587
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->updateLocationInfo([Lcom/htc/AddressFinderService/interfaces/AddressData;)V

    .line 591
    :goto_0
    return-void

    .line 590
    :cond_0
    const-string v0, "SmartFolderScene"

    const-string v1, "data is null"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onUpdateGridViewPadding(Landroid/app/Activity;Lcom/htc/sunnyCore/widget/gridview/GridView;)V
    .locals 5
    .parameter "activity"
    .parameter "gridview"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 146
    instance-of v2, p1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v2, :cond_0

    .line 148
    const/4 v1, 0x0

    .line 149
    .local v1, nTop:I
    const/4 v0, 0x0

    .line 150
    .local v0, nRight:I
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    invoke-static {p1, v3}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->getHeight(Landroid/content/Context;I)I

    move-result v1

    .line 153
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 159
    :goto_0
    invoke-virtual {p2, v4, v1, v0, v4}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setPadding(IIII)V

    .line 161
    .end local v0           #nRight:I
    .end local v1           #nTop:I
    :cond_0
    return-void

    .line 157
    .restart local v0       #nRight:I
    .restart local v1       #nTop:I
    :cond_1
    invoke-static {p1, v3}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->getHeight(Landroid/content/Context;I)I

    move-result v1

    goto :goto_0
.end method

.method protected onUpdateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, bResult:Z
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 202
    const v3, 0x7f090092

    const v4, 0x7f0a00b1

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 205
    const v3, 0x7f09008e

    const/4 v4, 0x1

    const v5, 0x7f0a0157

    invoke-interface {p1, v6, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 209
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isCHS()Z

    move-result v3

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->FLAG_IS_SUPPORT_MAPVIEW:Z

    if-eqz v3, :cond_0

    .line 211
    const/16 v3, 0x42

    const v4, 0x7f0a01a4

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 212
    .local v1, itemOutput:Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getDrawableBtnMapDarkRest(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 213
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 218
    .end local v1           #itemOutput:Landroid/view/MenuItem;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->enableHostCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    const/4 v3, 0x3

    const v4, 0x7f0a012d

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 221
    .local v2, menuItem:Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Camera_Dark_Rest(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 222
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 225
    .end local v2           #menuItem:Landroid/view/MenuItem;
    :cond_1
    const/4 v0, 0x1

    .line 226
    return v0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const-string v0, "SmartFolderScene"

    return-object v0
.end method

.method protected showDialogNoConnection()V
    .locals 3

    .prologue
    .line 516
    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$1;-><init>(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;)V

    invoke-static {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->instance(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)Landroid/app/DialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 539
    return-void
.end method

.method public updateLocationInfo([Lcom/htc/AddressFinderService/interfaces/AddressData;)V
    .locals 11
    .parameter "updateArray"

    .prologue
    const/4 v10, 0x2

    .line 369
    if-eqz p1, :cond_3

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v6, :cond_3

    .line 370
    array-length v5, p1

    .line 371
    .local v5, size:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    if-ge v2, v5, :cond_4

    .line 372
    aget-object v0, p1, v2

    .line 373
    .local v0, addressData:Lcom/htc/AddressFinderService/interfaces/AddressData;
    if-nez v0, :cond_1

    .line 374
    const-string v6, "SmartFolderScene"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addressData null + index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 377
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;

    invoke-virtual {v6, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->getIndexFromLatLong(Lcom/htc/AddressFinderService/interfaces/AddressData;)Ljava/util/ArrayList;

    move-result-object v3

    .line 378
    .local v3, indexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 379
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 381
    .local v4, item:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v6, :cond_2

    .line 382
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v6, v4, v10}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyPreparatorMediaDataChange(II)V

    goto :goto_1

    .line 388
    .end local v0           #addressData:Lcom/htc/AddressFinderService/interfaces/AddressData;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #index:I
    .end local v3           #indexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4           #item:I
    .end local v5           #size:I
    :cond_3
    const-string v6, "SmartFolderScene"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "updateArray = "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const-string v8, ", mAdapter = "

    aput-object v8, v7, v10

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    :cond_4
    return-void
.end method
