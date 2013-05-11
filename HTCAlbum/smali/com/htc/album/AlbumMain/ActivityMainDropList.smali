.class public Lcom/htc/album/AlbumMain/ActivityMainDropList;
.super Lcom/htc/album/AlbumMain/MfMainActivityBase;
.source "ActivityMainDropList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/AlbumMain/ActivityMainDropList$1;,
        Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;,
        Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;,
        Lcom/htc/album/AlbumMain/ActivityMainDropList$DropDownListListener;,
        Lcom/htc/album/AlbumMain/ActivityMainDropList$DropDownButtonClickListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActivityMainDropList"

.field private static final mPanelManager:Lcom/htc/album/AlbumMain/ActivityPanelManager;


# instance fields
.field private final INVALID_VALUE:I

.field private final LAST_FOCUSED_TAB_RES:Ljava/lang/String;

.field private mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

.field private mAsyncSourceList:Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;

.field private mDropDownButtonClickListener:Lcom/htc/album/AlbumMain/ActivityMainDropList$DropDownButtonClickListener;

.field private mIntent:Landroid/content/Intent;

.field private mItemClickListener:Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;

.field protected mLastFocusedIndex:I

.field private mPluginConnectionMgr:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

.field private mRestoredFocusedTab:Ljava/lang/String;

.field private mTabLaunchResource:Ljava/lang/String;

.field private mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/htc/album/AlbumMain/ActivityPanelManager;

    invoke-direct {v0}, Lcom/htc/album/AlbumMain/ActivityPanelManager;-><init>()V

    sput-object v0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mPanelManager:Lcom/htc/album/AlbumMain/ActivityPanelManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;-><init>()V

    .line 39
    iput v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->INVALID_VALUE:I

    .line 40
    const-string v0, "last_focused_tab"

    iput-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->LAST_FOCUSED_TAB_RES:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    .line 43
    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    .line 44
    iput v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mRestoredFocusedTab:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mItemClickListener:Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;

    .line 47
    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAsyncSourceList:Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabLaunchResource:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mIntent:Landroid/content/Intent;

    .line 52
    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mPluginConnectionMgr:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

    .line 638
    return-void
.end method

.method public static PanelManager()Lcom/htc/album/AlbumMain/ActivityPanelManager;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mPanelManager:Lcom/htc/album/AlbumMain/ActivityPanelManager;

    return-object v0
.end method

.method static synthetic access$000(Lcom/htc/album/AlbumMain/ActivityMainDropList;)Lcom/htc/album/AlbumMain/AdapterDropList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/AlbumMain/ActivityMainDropList;Lcom/htc/opensense/plugin/TabPlugin;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->openDropListItem(Lcom/htc/opensense/plugin/TabPlugin;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/album/AlbumMain/ActivityMainDropList;)Lcom/htc/album/TabPluginCtrl/TabOrderManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/album/AlbumMain/ActivityMainDropList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->onCustomizePluginList()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/album/AlbumMain/ActivityMainDropList;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->onUpdateDropList(Z)V

    return-void
.end method

.method private getTabIndex(Ljava/lang/String;)I
    .locals 9
    .parameter "szTabRes"

    .prologue
    .line 588
    const/4 v3, -0x1

    .line 590
    .local v3, nTabIndex:I
    iget-object v6, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    if-nez v6, :cond_0

    .line 592
    const-string v6, "ActivityMainDropList"

    const-string v7, "[HTCAlbum][ActivityMainDropList][getTabIndex]: no adapter..."

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 633
    .end local v3           #nTabIndex:I
    .local v4, nTabIndex:I
    :goto_0
    return v4

    .line 596
    .end local v4           #nTabIndex:I
    .restart local v3       #nTabIndex:I
    :cond_0
    iget-object v6, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    invoke-virtual {v6}, Lcom/htc/album/AlbumMain/AdapterDropList;->getCount()I

    move-result v0

    .line 597
    .local v0, nCount:I
    const/4 v5, 0x0

    .line 599
    .local v5, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    const-string v1, ""

    .line 605
    .local v1, nFocusedTabRes:Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 606
    move-object v1, p1

    .line 614
    :goto_1
    const-string v6, "ActivityMainDropList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ActivityMainDropList][getTabIndex]: Find: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    if-nez v1, :cond_3

    move v4, v3

    .line 616
    .end local v3           #nTabIndex:I
    .restart local v4       #nTabIndex:I
    goto :goto_0

    .line 609
    .end local v4           #nTabIndex:I
    .restart local v3       #nTabIndex:I
    :cond_1
    iget-object v6, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mRestoredFocusedTab:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mRestoredFocusedTab:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 610
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mRestoredFocusedTab:Ljava/lang/String;

    goto :goto_1

    .line 612
    :cond_2
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabLaunchResource:Ljava/lang/String;

    goto :goto_1

    .line 618
    :cond_3
    const/4 v2, 0x0

    .local v2, nIndex:I
    :goto_2
    if-le v0, v2, :cond_6

    .line 620
    iget-object v6, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    invoke-virtual {v6, v2}, Lcom/htc/album/AlbumMain/AdapterDropList;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    check-cast v5, Lcom/htc/opensense/plugin/TabPlugin;

    .restart local v5       #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    if-nez v5, :cond_5

    .line 618
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 625
    :cond_5
    invoke-virtual {v5}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 627
    move v3, v2

    .line 628
    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mRestoredFocusedTab:Ljava/lang/String;

    .line 629
    const-string v6, "ActivityMainDropList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ActivityMainDropList][getTabIndex]: Bingo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mRestoredFocusedTab:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move v4, v3

    .line 633
    .end local v3           #nTabIndex:I
    .restart local v4       #nTabIndex:I
    goto :goto_0
.end method

.method private initializeSourceList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 527
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 528
    .local v0, actTop:Landroid/app/Activity;
    if-nez v0, :cond_0

    move-object v0, p0

    .line 530
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mIntent:Landroid/content/Intent;

    .line 532
    iget-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mItemClickListener:Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;

    if-nez v2, :cond_1

    .line 533
    new-instance v2, Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;

    invoke-direct {v2, p0, v4}, Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;-><init>(Lcom/htc/album/AlbumMain/ActivityMainDropList;Lcom/htc/album/AlbumMain/ActivityMainDropList$1;)V

    iput-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mItemClickListener:Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;

    .line 538
    :cond_1
    iget-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    if-nez v2, :cond_2

    .line 539
    new-instance v2, Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    invoke-direct {v2, p0}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    .line 544
    :cond_2
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableLandingPage()Z

    move-result v2

    if-nez v2, :cond_3

    .line 546
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->enableDropList()V

    .line 552
    :cond_3
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->onCustomizePluginList()V

    .line 553
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->onUpdateDropList(Z)V

    .line 556
    iget-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_4

    .line 558
    iget-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mIntent:Landroid/content/Intent;

    const-string v3, "tab_default"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 559
    .local v1, tabdefault:Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 560
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabLaunchResource:Ljava/lang/String;

    .line 564
    .end local v1           #tabdefault:Ljava/lang/String;
    :cond_4
    :goto_0
    return-void

    .line 562
    .restart local v1       #tabdefault:Ljava/lang/String;
    :cond_5
    iput-object v4, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabLaunchResource:Ljava/lang/String;

    goto :goto_0
.end method

.method private launchPluginFragment(Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V
    .locals 7
    .parameter "plugin"
    .parameter "intent"

    .prologue
    .line 144
    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 146
    const-string v4, "ActivityMainDropList"

    const-string v5, "[HTCAlbum][ActivityMainDropList][launchPluginFragment]: no package name..."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_0
    return-void

    .line 151
    :cond_0
    const-string v4, "ActivityMainDropList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ActivityMainDropList][launchPluginFragment]: 1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 157
    .local v1, bundleArg:Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->isTabMediaServer(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 159
    const-string v4, "ActivityMainDropList"

    const-string v5, "[HTCAlbum][ActivityMainDropList][launchPluginFragment]: dlna service..."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mIntent:Landroid/content/Intent;

    const-string v5, "browse_info"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 162
    const-string v4, "browse_info"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 182
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 183
    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v4, v1, v5}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->startFragmentAndStackUp(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 184
    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/helper/UserProfilingLog;->logSourceSwitch(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_2
    const/4 v2, 0x0

    .line 167
    .local v2, bundleSocial:Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 168
    .local v3, intenteSocial:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "social_bundle"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 169
    if-eqz v2, :cond_1

    .line 171
    const-string v4, "ActivityMainDropList"

    const-string v5, "[HTCAlbum][ActivityMainDropList][launchPluginFragment]: social bundle..."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v4, "social_intent"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .end local v3           #intenteSocial:Landroid/content/Intent;
    check-cast v3, Landroid/content/Intent;

    .line 173
    .restart local v3       #intenteSocial:Landroid/content/Intent;
    if-eqz v3, :cond_1

    .line 175
    const-string v4, "ActivityMainDropList"

    const-string v5, "[HTCAlbum][ActivityMainDropList][launchPluginFragment]: social intent..."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v4, "social_intent"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 177
    iget-object v4, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mPluginConnectionMgr:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

    invoke-virtual {v4, p1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->connectTo(Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private onAutoLaunch()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 581
    invoke-direct {p0, v1}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getTabIndex(Ljava/lang/String;)I

    move-result v6

    .line 583
    .local v6, nTabIndex:I
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mItemClickListener:Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;

    const/4 v2, -0x1

    if-ne v2, v6, :cond_0

    const/4 v3, 0x0

    :goto_0
    const-wide/16 v4, 0x0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;->onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    .line 584
    const-string v0, "ActivityMainDropList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ActivityMainDropList][onAutoLaunch]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    return-void

    :cond_0
    move v3, v6

    .line 583
    goto :goto_0
.end method

.method private onCustomizePluginList()V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->reorderPlugins(Landroid/content/Context;)V

    .line 568
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->removeDisabledPlugins(Landroid/content/Context;)V

    .line 569
    return-void
.end method

.method private onUpdateDropList(Z)V
    .locals 4
    .parameter "bIsSynced"

    .prologue
    .line 572
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->getOrderedPluginList()Ljava/util/List;

    move-result-object v0

    .line 573
    .local v0, listPlugins:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/plugin/TabPlugin;>;"
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    if-eqz v1, :cond_0

    .line 575
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    invoke-virtual {v1, v0, p1}, Lcom/htc/album/AlbumMain/AdapterDropList;->setAdapterList(Ljava/util/List;Z)V

    .line 576
    const-string v1, "ActivityMainDropList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityMainDropList][onUpdateDropList]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :cond_0
    return-void
.end method

.method private openDropListItem(Lcom/htc/opensense/plugin/TabPlugin;)V
    .locals 3
    .parameter "plugin"

    .prologue
    .line 129
    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v1

    .line 131
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->isTabLocalAlbum(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 134
    .local v0, childIntent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 135
    invoke-direct {p0, p1, v0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->launchPluginFragment(Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V

    .line 141
    .end local v0           #childIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->launchPluginFragment(Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private prepareCameraMode()V
    .locals 3

    .prologue
    .line 368
    iget-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mIntent:Landroid/content/Intent;

    if-nez v2, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.htc.album.action.VIEW_CONTINUOUS_SHOT_FROM_CAMERA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    :cond_2
    sget v2, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v2}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v1

    .line 381
    .local v1, fragmentLeft:Lcom/htc/app/mf/IMfFragment;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;

    if-eqz v2, :cond_0

    .line 384
    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;

    .end local v1           #fragmentLeft:Lcom/htc/app/mf/IMfFragment;
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;->onPrepareFullscreenMode()V

    goto :goto_0
.end method


# virtual methods
.method protected checkCallerIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "caller"

    .prologue
    .line 270
    if-nez p1, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 276
    invoke-static {p1}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->isFromDMC(Landroid/content/Intent;)Z

    move-result v2

    .line 277
    .local v2, isFromDMC:Z
    if-eqz v2, :cond_2

    .line 279
    const-string v4, "dmc_launched"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 280
    .local v3, isLaunched:Z
    if-eqz v3, :cond_2

    .line 281
    const/4 v2, 0x0

    .line 284
    .end local v3           #isLaunched:Z
    :cond_2
    const-string v4, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "com.htc.album.action.VIEW_BURST_SHOTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "com.htc.album.action.VIEW_PANORAMA_SHOTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "com.htc.album.action.VIEW_SNAPBOOTH"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "com.htc.album.action.VIEW_FOLDER"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "com.htc.album.action.DLNA_VIEW_LOCAL_PHOTO"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    .line 291
    :cond_3
    const-string v4, "folder_type"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, folderType:Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string v4, "com.htc.HTCAlbum.SMART"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 294
    :cond_4
    invoke-static {}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->getInstance()Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    move-result-object v4

    const/16 v5, 0x1003

    invoke-virtual {v4, p0, p1, v5}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->startDecode(Landroid/app/Activity;Landroid/content/Intent;I)V

    goto :goto_0

    .line 297
    .end local v1           #folderType:Ljava/lang/String;
    :cond_5
    const-string v4, "com.htc.album.action.VIEW_CONTINUOUS_SHOT_FROM_CAMERA"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 298
    invoke-static {}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->getInstance()Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    move-result-object v4

    const/16 v5, 0x1002

    invoke-virtual {v4, p0, p1, v5}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->startDecode(Landroid/app/Activity;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public enableDropList()V
    .locals 8

    .prologue
    .line 488
    iget-object v4, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    if-nez v4, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    const-string v4, "ActivityMainDropList"

    const-string v5, "[HTCAlbum][ActivityMainDropList][enableDropList]: Begin..."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v4, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    const/4 v5, 0x1

    new-instance v6, Lcom/htc/album/AlbumMain/ActivityMainDropList$DropDownListListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/htc/album/AlbumMain/ActivityMainDropList$DropDownListListener;-><init>(Lcom/htc/album/AlbumMain/ActivityMainDropList;Lcom/htc/album/AlbumMain/ActivityMainDropList$1;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setDropdownListEnabled(ZLcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;)V

    .line 494
    iget-object v4, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    iget-object v5, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setDropdownListContent(Landroid/widget/BaseAdapter;)V

    .line 495
    iget-object v4, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    iget-object v5, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mItemClickListener:Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setDropdownListItemListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 497
    const/4 v4, -0x1

    iget v5, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    if-eq v4, v5, :cond_2

    .line 499
    const/4 v2, 0x0

    .line 502
    .local v2, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :try_start_0
    iget-object v4, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    iget v5, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    invoke-virtual {v4, v5}, Lcom/htc/album/AlbumMain/AdapterDropList;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/htc/opensense/plugin/TabPlugin;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :goto_1
    if-eqz v2, :cond_0

    .line 511
    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v3

    .line 512
    .local v3, szName:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    if-eqz v4, :cond_2

    .line 514
    iget-object v4, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-virtual {v4, v3}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setPrimaryText(Ljava/lang/String;)V

    .line 515
    iget-object v4, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setSecondaryText(Ljava/lang/String;)V

    .line 519
    .end local v2           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    .end local v3           #szName:Ljava/lang/String;
    :cond_2
    const-string v4, "ActivityMainDropList"

    const-string v5, "[HTCAlbum][ActivityMainDropList][enableDropList]: End..."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 504
    .restart local v2       #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :catch_0
    move-exception v1

    .line 506
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "ActivityMainDropList"

    const-string v5, "[HTCAlbum][ActivityMainDropList][enableDropList]: no plugin..."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected getTrimMemoryLevel()I
    .locals 1

    .prologue
    .line 480
    const/4 v0, -0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstance"

    .prologue
    .line 304
    const-string v0, "ActivityMainDropList"

    const-string v1, "[HTCAlbum][ActivityMainDropList][onCreate]: Begin"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-super {p0, p1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 307
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableLandingPage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->skipLandingPage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    const-string v0, "com.htc.album.AlbumMain.FragmentLandingPage"

    const/4 v1, 0x0

    sget v2, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->startFragmentAndStackUp(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 313
    :cond_0
    new-instance v0, Lcom/htc/album/AlbumMain/AdapterDropList;

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/album/AlbumMain/AdapterDropList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    .line 314
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    invoke-virtual {v0}, Lcom/htc/album/AlbumMain/AdapterDropList;->onCreate()V

    .line 315
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->initializeSourceList()V

    .line 316
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->checkCallerIntent(Landroid/content/Intent;)V

    .line 319
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    .line 320
    invoke-static {}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->instance()Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mPluginConnectionMgr:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

    .line 322
    const-string v0, "ActivityMainDropList"

    const-string v1, "[HTCAlbum][ActivityMainDropList][onCreate]: End"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public onDelayedSourceList()V
    .locals 2

    .prologue
    .line 427
    const-string v0, "ActivityMainDropList"

    const-string v1, "[HTCAlbum][ActivityMainDropList][onDelayedSourceList]: ..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->isSynced()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAsyncSourceList:Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;

    if-nez v0, :cond_0

    .line 433
    const-string v0, "ActivityMainDropList"

    const-string v1, "[HTCAlbum][ActivityMainDropList][onDelayedSourceList]: threadReqMediaList..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    new-instance v0, Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;-><init>(Lcom/htc/album/AlbumMain/ActivityMainDropList;Lcom/htc/album/AlbumMain/ActivityMainDropList$1;)V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAsyncSourceList:Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;

    .line 435
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAsyncSourceList:Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;

    invoke-virtual {v0}, Lcom/htc/album/AlbumMain/ActivityMainDropList$threadReqMediaList;->start()V

    .line 437
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 355
    const-string v0, "ActivityMainDropList"

    const-string v1, "[HTCAlbum][ActivityMainDropList][onDestroy]"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-static {}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->destroyInstance()V

    .line 358
    iput-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mPluginConnectionMgr:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

    .line 360
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    invoke-virtual {v0}, Lcom/htc/album/AlbumMain/AdapterDropList;->onDestroy()V

    .line 362
    :cond_0
    iput-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    .line 364
    invoke-super {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onDestroy()V

    .line 365
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 463
    const/4 v0, 0x0

    .line 465
    .local v0, bResult:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 471
    invoke-super {p0, p1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onMessage(Landroid/os/Message;)Z

    .line 473
    :goto_0
    return v0

    .line 468
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->onDelayedSourceList()V

    goto :goto_0

    .line 465
    :pswitch_data_0
    .packed-switch 0x1456
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 12
    .parameter "newIntent"

    .prologue
    const/4 v2, 0x0

    .line 188
    const-string v1, "ActivityMainDropList"

    const-string v3, "[HTCAlbum][ActivityMainDropList][onNewIntent]: Begin"

    invoke-static {v1, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-super {p0, p1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onNewIntent(Landroid/content/Intent;)V

    .line 190
    invoke-virtual {p0, p1}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->setIntent(Landroid/content/Intent;)V

    .line 192
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    if-nez v1, :cond_1

    .line 194
    const-string v1, "ActivityMainDropList"

    const-string v2, "[HTCAlbum][ActivityMainDropList][onNewIntent]: skip..."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    .line 200
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getParent()Landroid/app/Activity;

    move-result-object v7

    .line 201
    .local v7, actTop:Landroid/app/Activity;
    if-nez v7, :cond_2

    move-object v7, p0

    .line 202
    :cond_2
    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mIntent:Landroid/content/Intent;

    .line 207
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->prepareCameraMode()V

    .line 209
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 211
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mIntent:Landroid/content/Intent;

    const-string v3, "tab_default"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 212
    .local v11, tabdefault:Ljava/lang/String;
    if-eqz v11, :cond_6

    .line 213
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabLaunchResource:Ljava/lang/String;

    .line 218
    .end local v11           #tabdefault:Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mIntent:Landroid/content/Intent;

    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->isFromDMC(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 220
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a019d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabLaunchResource:Ljava/lang/String;

    .line 223
    :cond_4
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabLaunchResource:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabLaunchResource:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 225
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    invoke-virtual {v1}, Lcom/htc/album/AlbumMain/AdapterDropList;->getCount()I

    move-result v8

    .line 226
    .local v8, count:I
    const/4 v10, 0x0

    .line 227
    .local v10, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    const/4 v4, 0x0

    .local v4, nIndex:I
    :goto_2
    if-ge v4, v8, :cond_0

    .line 229
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    invoke-virtual {v1, v4}, Lcom/htc/album/AlbumMain/AdapterDropList;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    check-cast v10, Lcom/htc/opensense/plugin/TabPlugin;

    .restart local v10       #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    if-nez v10, :cond_7

    .line 227
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 215
    .end local v4           #nIndex:I
    .end local v8           #count:I
    .end local v10           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    .restart local v11       #tabdefault:Ljava/lang/String;
    :cond_6
    iput-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabLaunchResource:Ljava/lang/String;

    goto :goto_1

    .line 231
    .end local v11           #tabdefault:Ljava/lang/String;
    .restart local v4       #nIndex:I
    .restart local v8       #count:I
    .restart local v10       #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :cond_7
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabLaunchResource:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 233
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mItemClickListener:Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;

    const-wide/16 v5, 0x0

    move-object v3, v2

    invoke-virtual/range {v1 .. v6}, Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;->onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 240
    .end local v4           #nIndex:I
    .end local v8           #count:I
    .end local v10           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :cond_8
    const/4 v10, 0x0

    .line 241
    .restart local v10       #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    iget v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/album/AlbumMain/AdapterDropList;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/htc/opensense/plugin/TabPlugin;

    move-object v10, v0

    .line 245
    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_3
    if-eqz v10, :cond_0

    .line 257
    iget-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    if-eqz v1, :cond_9

    .line 259
    iget-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setPrimaryText(Ljava/lang/String;)V

    .line 262
    :cond_9
    const-string v1, "ActivityMainDropList"

    const-string v2, "[HTCAlbum][ActivityMainDropList][onItemClick]: back to default... "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-direct {p0, v10, p1}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->launchPluginFragment(Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 247
    :catch_0
    move-exception v9

    .line 249
    .local v9, e:Ljava/lang/Exception;
    const-string v1, "ActivityMainDropList"

    const-string v2, "[HTCAlbum][ActivityMainDropList][onNewIntent]: no plugin or plugin.getActivityIntent() fali"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 335
    const-string v1, "ActivityMainDropList"

    const-string v2, "[HTCAlbum][ActivityMainDropList][onPause]: "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-super {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onPause()V

    .line 340
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromMainActivity"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    const-string v1, "ActivityMainDropList"

    const-string v2, "[HTCAlbum][ActivityMainDropList][onPause]: Finish by called from main activity."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/htc/album/helper/SyncControlManager;->syncAllServices(Landroid/content/Context;Z)V

    .line 346
    iget v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    if-eqz v1, :cond_1

    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    iget v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/album/AlbumMain/AdapterDropList;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    check-cast v0, Lcom/htc/opensense/plugin/TabPlugin;

    .restart local v0       #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    if-nez v0, :cond_2

    .line 352
    .end local v0           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :cond_1
    :goto_0
    return-void

    .line 350
    .restart local v0       #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :cond_2
    invoke-virtual {v0}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mRestoredFocusedTab:Ljava/lang/String;

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 456
    const-string v0, "last_focused_tab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mRestoredFocusedTab:Ljava/lang/String;

    .line 458
    const-string v0, "ActivityMainDropList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ActivityMainDropList][onRestoreInstanceState]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mRestoredFocusedTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 326
    const-string v0, "ActivityMainDropList"

    const-string v1, "[HTCAlbum][ActivityMainDropList][onResume]: Begin..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-super {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onResume()V

    .line 329
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/album/helper/SyncControlManager;->syncAllServices(Landroid/content/Context;Z)V

    .line 331
    const-string v0, "ActivityMainDropList"

    const-string v1, "[HTCAlbum][ActivityMainDropList][onResume]: End..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public onResumeFragment()V
    .locals 3

    .prologue
    .line 404
    const-string v0, "ActivityMainDropList"

    const-string v1, "[HTCAlbum][ActivityMainDropList][onResumeFragment]: Begin..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mTabOrder:Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->isSynced()Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    const/16 v0, 0x1456

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->onPostMessage(ILjava/lang/Object;I)V

    .line 411
    :cond_0
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableLandingPage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->skipLandingPage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 422
    :goto_0
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->prepareCameraMode()V

    .line 423
    const-string v0, "ActivityMainDropList"

    const-string v1, "[HTCAlbum][ActivityMainDropList][onResumeFragment]: End..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    return-void

    .line 419
    :cond_1
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->onAutoLaunch()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 440
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    iget v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    if-ne v1, v2, :cond_2

    .line 442
    :cond_0
    const-string v1, "last_focused_tab"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :cond_1
    :goto_0
    return-void

    .line 446
    :cond_2
    const/4 v0, 0x0

    .line 447
    .local v0, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    iget-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;

    iget v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/album/AlbumMain/AdapterDropList;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    check-cast v0, Lcom/htc/opensense/plugin/TabPlugin;

    .restart local v0       #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    if-eqz v0, :cond_1

    .line 450
    invoke-virtual {v0}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mRestoredFocusedTab:Ljava/lang/String;

    .line 451
    const-string v1, "last_focused_tab"

    iget-object v2, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mRestoredFocusedTab:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v1, "ActivityMainDropList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityMainDropList][onSaveInstanceState]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mRestoredFocusedTab:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStartFragment()V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->prepareCameraMode()V

    .line 393
    return-void
.end method

.method public setDropDownButtonClickListener(Lcom/htc/album/AlbumMain/ActivityMainDropList$DropDownButtonClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mDropDownButtonClickListener:Lcom/htc/album/AlbumMain/ActivityMainDropList$DropDownButtonClickListener;

    .line 70
    return-void
.end method

.method protected skipLandingPage()Z
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method
