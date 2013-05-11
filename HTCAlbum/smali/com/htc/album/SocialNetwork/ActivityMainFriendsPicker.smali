.class public Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;
.super Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;
.source "ActivityMainFriendsPicker.java"

# interfaces
.implements Lcom/htc/album/modules/ui/IControlBarHost;


# static fields
.field private static final FOOTER_BAR_LIVE_FRIEND_PICKER_VIEW:I = 0x14

.field private static final HEADER_BAR_LIVE_FRIEND_PICKER_VIEW:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "ActivityMainFriendsPicker"


# instance fields
.field private mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

.field private mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    .line 53
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;)Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;)Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    return-object v0
.end method


# virtual methods
.method public RelayoutPageView(I)V
    .locals 3
    .parameter "nLayoutType"

    .prologue
    .line 237
    const-string v0, "ActivityMainFriendsPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ActivityMainFriendsPicker][RelayoutPageView]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method protected createAdapter()V
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getUIHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->setDataRequest(Ljava/lang/Object;)V

    .line 220
    return-void
.end method

.method protected createListView()V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    if-eqz v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 228
    :cond_0
    const-string v0, "ActivityMainFriendsPicker"

    const-string v1, "[HTCAlbum][ActivityMainFriendsPicker][createListView]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewFriends;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getUIHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewFriends;-><init>(Landroid/app/Activity;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    .line 232
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->onCreate()V

    goto :goto_0
.end method

.method public enableRightFooter()Z
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x1

    return v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    return-object v0
.end method

.method public initPageComponents()V
    .locals 9

    .prologue
    const v8, 0x7f0a003c

    const v4, 0x7f03002d

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 152
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    const v3, 0x2090004

    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->setContentView(I)V

    .line 155
    invoke-static {p0, v4}, Lcom/htc/album/picker/PickerConstants;->addBodyToEWL(Landroid/app/Activity;I)Lcom/htc/widget/EditWindowLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    .line 162
    :goto_0
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->initPageComponents()V

    .line 168
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v3, v7}, Lcom/htc/widget/EditWindowLayout;->setupFooterButtons(I)V

    .line 171
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v4, 0x20401ee

    invoke-virtual {v3, v4}, Lcom/htc/widget/EditWindowLayout;->setLeftButtonLabel(I)V

    .line 172
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v4, 0x2020004

    new-instance v5, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker$1;

    invoke-direct {v5, p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker$1;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/EditWindowLayout;->setButtonListener(ILandroid/view/View$OnClickListener;)V

    .line 177
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v4, 0x7f0a0001

    invoke-virtual {v3, v4}, Lcom/htc/widget/EditWindowLayout;->setRightButtonLabel(I)V

    .line 178
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v4, 0x2020007

    new-instance v5, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker$2;

    invoke-direct {v5, p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker$2;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/EditWindowLayout;->setButtonListener(ILandroid/view/View$OnClickListener;)V

    .line 183
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v3}, Lcom/htc/widget/EditWindowLayout;->initEditTitleBarStyle()V

    .line 184
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v3, v8}, Lcom/htc/widget/EditWindowLayout;->setTitleLabel(I)V

    .line 207
    :goto_1
    return-void

    .line 159
    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->setContentView(I)V

    goto :goto_0

    .line 188
    :cond_1
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-nez v3, :cond_2

    .line 190
    new-instance v3, Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getUIHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v3, v4, v5, p0}, Lcom/htc/album/modules/ui/ControlBarManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/htc/album/modules/ui/IControlBarHost;)V

    iput-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    .line 191
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v3

    invoke-interface {v3, v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setPrimaryText(I)V

    .line 194
    :cond_2
    const v3, 0x7f09003a

    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 195
    .local v2, viewRoot:Landroid/view/ViewGroup;
    const v3, 0x7f09003d

    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 196
    .local v0, contentView:Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v3, v2, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->attach(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 197
    const v3, 0x7f09003b

    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 198
    .local v1, mainViewWrapper:Landroid/view/ViewGroup;
    invoke-static {p0}, Lcom/htc/sunny2/common/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 199
    invoke-static {p0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v6, v6, v3, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 204
    :goto_2
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v4, 0x1

    const/16 v5, 0xa

    invoke-virtual {v3, v4, v5}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    .line 205
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/16 v4, 0x14

    invoke-virtual {v3, v7, v4}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    goto :goto_1

    .line 201
    :cond_3
    invoke-static {p0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v6, v6, v6, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_2
.end method

.method public onBubbleDismissed()V
    .locals 0

    .prologue
    .line 351
    return-void
.end method

.method public onBubblePopped()V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 79
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->onHandleActionBarBarLayoutChange()V

    .line 80
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 81
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    const v1, 0x7f09003b

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 83
    .local v0, mainViewWrapper:Landroid/view/ViewGroup;
    invoke-static {p0}, Lcom/htc/sunny2/common/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-static {p0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 89
    .end local v0           #mainViewWrapper:Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    return-void

    .line 86
    .restart local v0       #mainViewWrapper:Landroid/view/ViewGroup;
    :cond_1
    invoke-static {p0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 332
    :goto_0
    return-void

    .line 326
    :pswitch_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    check-cast v0, Lcom/htc/album/SocialNetwork/ListViewFriends;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewFriends;->onConfirm()V

    goto :goto_0

    .line 329
    :pswitch_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    check-cast v0, Lcom/htc/album/SocialNetwork/ListViewFriends;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewFriends;->onCancel()V

    goto :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 65
    const-string v0, "ActivityMainFriendsPicker"

    const-string v1, "[HTCAlbum][ActivityMainFriendsPicker][onCreate]: Begin"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 71
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onCreate()V

    .line 72
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->onHandleActionBarBarLayoutChange()V

    .line 73
    sget-object v0, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->SHOW_HIDE_ITEM:Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    const-string v1, "social_friend"

    invoke-static {v0, v1}, Lcom/htc/album/helper/UserProfilingLog;->logUserAccessCount(Lcom/htc/album/helper/UserProfilingLog$PROFILE;Ljava/lang/Object;)V

    .line 74
    const-string v0, "ActivityMainFriendsPicker"

    const-string v1, "[HTCAlbum][ActivityMainFriendsPicker][onCreate]: End"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 309
    const-string v3, "ActivityMainFriendsPicker"

    const-string v4, "[HtcAlbum][ActivityMainFriendsPicker][onCreateFooterBar]  "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 313
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->enableRightFooter()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 314
    const/4 v3, 0x5

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x20401ee

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 315
    const/4 v3, 0x4

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Save_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a0001

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 317
    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "ActivityMainFriendsPicker"

    const-string v1, "[HTCAlbum][ActivityMainFriendsPicker][onDestroy]: Begin"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onDestroy()V

    .line 120
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDestroy()V

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->onDestroy()V

    .line 125
    :cond_2
    const-string v0, "ActivityMainFriendsPicker"

    const-string v1, "[HTCAlbum][ActivityMainFriendsPicker][onDestroy]: End"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->detach()V

    goto :goto_0
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x2738

    const/4 v3, 0x0

    .line 275
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 299
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onMessageHandler(Landroid/os/Message;)V

    .line 302
    :goto_0
    :sswitch_0
    return-void

    .line 286
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->invalidateOptionsMenu()V

    goto :goto_0

    .line 289
    :sswitch_2
    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 292
    :sswitch_3
    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 295
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mLoadingText:Ljava/lang/String;

    .line 296
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onMessageHandler(Landroid/os/Message;)V

    goto :goto_0

    .line 275
    nop

    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_4
        0x274f -> :sswitch_2
        0x2750 -> :sswitch_3
        0x2761 -> :sswitch_0
        0x4e84 -> :sswitch_0
        0x4e95 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 254
    const/4 v0, 0x0

    .line 256
    .local v0, bResult:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 271
    :goto_0
    return v0

    .line 259
    :sswitch_0
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    check-cast v1, Lcom/htc/album/SocialNetwork/ListViewFriends;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/ListViewFriends;->onConfirm()V

    goto :goto_0

    .line 262
    :sswitch_1
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    check-cast v1, Lcom/htc/album/SocialNetwork/ListViewFriends;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/ListViewFriends;->onCancel()V

    goto :goto_0

    .line 265
    :sswitch_2
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    check-cast v1, Lcom/htc/album/SocialNetwork/ListViewFriends;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/SocialNetwork/ListViewFriends;->setAllItemSelection(Z)V

    goto :goto_0

    .line 268
    :sswitch_3
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    check-cast v1, Lcom/htc/album/SocialNetwork/ListViewFriends;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/album/SocialNetwork/ListViewFriends;->setAllItemSelection(Z)V

    goto :goto_0

    .line 256
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x204014f -> :sswitch_2
        0x20401f4 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onPause()V

    .line 104
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onPause()V

    .line 105
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 244
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 246
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    if-nez v0, :cond_0

    .line 247
    const/4 v0, 0x1

    .line 249
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    check-cast v0, Lcom/htc/album/SocialNetwork/ListViewFriends;

    invoke-virtual {v0, p1}, Lcom/htc/album/SocialNetwork/ListViewFriends;->onPrepareSelectorOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 0
    .parameter "footer"

    .prologue
    .line 387
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onResume()V

    .line 93
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onResume()V

    .line 94
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->getMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->enableSourceContentPadding(Landroid/view/View;)V

    goto :goto_0
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x1

    return v0
.end method

.method public requestHeaderBar()Z
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x0

    return v0
.end method

.method public setActivityTitle()V
    .locals 0

    .prologue
    .line 397
    return-void
.end method

.method public syncExternalRequest()V
    .locals 4

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 133
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    if-nez v1, :cond_0

    .line 134
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    invoke-direct {v1, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;)V

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    const-string v2, "service_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 137
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    const-string v2, "user_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mUserID:Ljava/lang/String;

    .line 139
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 140
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a003e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    .line 144
    :cond_1
    :goto_0
    const-string v1, "ActivityMainFriendsPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityMainFriendsPicker][syncExternalRequest]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mUserID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v1, "ActivityMainFriendsPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityMainFriendsPicker][syncExternalRequest]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_2
    return-void

    .line 141
    :cond_3
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a003f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method
