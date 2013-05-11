.class public abstract Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;
.super Lcom/htc/app/mf/MfFragment;
.source "MfFragmentMainFriendBase.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/NotifyBaseUI;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMFragmentEnvironmentAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;,
        Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MfFragmentMainFriendBase"

.field private static mDlgErrorConnection:Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;

.field private static mDlgErrorNoConnection:Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;


# instance fields
.field private mActionBarBackkeyListener:Landroid/view/View$OnClickListener;

.field protected mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

.field private mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

.field private mHandlerUI:Landroid/os/Handler;

.field protected mItemRequest:Ljava/lang/Object;

.field protected mLayoutState:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

.field private mLifeState:I

.field protected mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

.field protected mLoadingText:Ljava/lang/String;

.field protected mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 292
    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mDlgErrorConnection:Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;

    .line 293
    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mDlgErrorNoConnection:Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/htc/app/mf/MfFragment;-><init>()V

    .line 71
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    .line 72
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mItemRequest:Ljava/lang/Object;

    .line 73
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mLoadingText:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    .line 75
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    .line 76
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->UNKNOWN:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mLayoutState:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    .line 78
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mLifeState:I

    .line 254
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$1;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$1;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mHandlerUI:Landroid/os/Handler;

    .line 487
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$3;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$3;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mActionBarBackkeyListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->onGotoWirelessConnection()V

    return-void
.end method

.method private onGotoWirelessConnection()V
    .locals 1

    .prologue
    .line 304
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mDlgErrorNoConnection:Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;

    invoke-virtual {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoWirelessConnection(Landroid/app/Activity;)V

    .line 305
    return-void
.end method


# virtual methods
.method public abstract RelayoutPageView(Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;)V
.end method

.method public actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 1

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->actionBar(Landroid/app/Activity;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    return-object v0
.end method

.method public actionBarMode()I
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract createAdapter()V
.end method

.method protected abstract createListView()V
.end method

.method public dismissFragmentDialog(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 379
    sparse-switch p1, :sswitch_data_0

    .line 386
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 383
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->hideProgressDialog()V

    goto :goto_0

    .line 379
    nop

    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_0
        0x2728 -> :sswitch_0
    .end sparse-switch
.end method

.method public enable2Pane()Z
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x0

    return v0
.end method

.method public enableActionBarOverlay()Z
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x0

    return v0
.end method

.method public enableActionBarUpdate()Z
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x1

    return v0
.end method

.method public enableDataSourceUpdating(Z)V
    .locals 2
    .parameter "bEnable"

    .prologue
    .line 407
    const/4 v0, 0x0

    .line 408
    .local v0, activity:Lcom/htc/app/mf/MfMainActivity;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 410
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Lcom/htc/app/mf/MfMainActivity;
    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    .line 412
    :cond_0
    return-void
.end method

.method public enableDropList()V
    .locals 0

    .prologue
    .line 499
    return-void
.end method

.method public enableSourceContentPadding(Z)V
    .locals 5
    .parameter "bEnable"

    .prologue
    const/4 v4, 0x1

    .line 415
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09003b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 416
    .local v0, layout:Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 418
    .local v1, param:Landroid/widget/RelativeLayout$LayoutParams;
    if-ne v4, p1, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->getHeight(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 422
    :goto_0
    return-void

    .line 421
    :cond_0
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method public enableSourceSwitch(ZZ)V
    .locals 0
    .parameter "bEnable"
    .parameter "bEnableAnimation"

    .prologue
    .line 404
    return-void
.end method

.method protected abstract getContentView()I
.end method

.method public getServiceInfo()Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    return-object v0
.end method

.method public getUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mHandlerUI:Landroid/os/Handler;

    return-object v0
.end method

.method protected hideProgressDialog()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    if-eqz v0, :cond_0

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->dismiss()V

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 351
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public initPageComponents()V
    .locals 0

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->createAdapter()V

    .line 130
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->createListView()V

    .line 131
    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 513
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 515
    :cond_0
    return-void
.end method

.method public invalidateOptionsMenuUponDataBind()V
    .locals 0

    .prologue
    .line 523
    return-void
.end method

.method public isInvalidateOptionsMenu()Z
    .locals 1

    .prologue
    .line 518
    const/4 v0, 0x0

    return v0
.end method

.method public isInvalidateOptionsMenuUponDataBind()Z
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x0

    return v0
.end method

.method public mfragmentReference()Lcom/htc/app/mf/MfFragment;
    .locals 1

    .prologue
    .line 508
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 476
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/htc/app/mf/MfFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->initPageComponents()V

    .line 117
    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->UNKNOWN:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    invoke-virtual {p0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->RelayoutPageView(Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;)V

    .line 119
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 120
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 122
    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;

    .line 123
    .local v1, paneControl:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->enable2Pane()Z

    move-result v2

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->paneRight()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;->enable2Pane(ZZ)V

    .line 125
    .end local v1           #paneControl:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;
    :cond_0
    return-void
.end method

.method public onBackPressedOverride()Z
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/htc/app/mf/MfFragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->syncExternalRequest()V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mLifeState:I

    .line 103
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 106
    invoke-super {p0, p1, p2, p3}, Lcom/htc/app/mf/MfFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 107
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->getContentView()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 108
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mLifeState:I

    .line 166
    invoke-super {p0}, Lcom/htc/app/mf/MfFragment;->onDestroy()V

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->setUIHandler(Landroid/os/Handler;)V

    .line 169
    return-void
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/16 v4, 0x272c

    const/16 v3, 0x272b

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 207
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 210
    :sswitch_0
    invoke-virtual {p0, v3, v2, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 213
    :sswitch_1
    invoke-virtual {p0, v4, v2, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 218
    :sswitch_2
    const/16 v0, 0x2724

    invoke-virtual {p0, v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->showFragmentDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 223
    :sswitch_3
    const/16 v0, 0x2728

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->dismissFragmentDialog(I)Z

    goto :goto_0

    .line 229
    :sswitch_4
    invoke-virtual {p0, v3, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->showFragmentDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 234
    :sswitch_5
    const-string v0, "MfFragmentMainFriendBase"

    const-string v1, "[HTCAlbum][ActivityMainBaseHost][onMessageHandler]: SHOW_ALERTDLG_NO_CONNECTION"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0, v4, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->showFragmentDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 240
    :sswitch_6
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->setFastScrollEnabled(Z)V

    goto :goto_0

    .line 245
    :sswitch_7
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 207
    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_2
        0x2728 -> :sswitch_3
        0x272b -> :sswitch_4
        0x272c -> :sswitch_5
        0x272d -> :sswitch_6
        0x2738 -> :sswitch_7
        0x274c -> :sswitch_1
        0x2767 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 151
    const/4 v1, 0x3

    iput v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mLifeState:I

    .line 152
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 154
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sendResumeCacheIntent(Landroid/content/Context;)V

    .line 156
    invoke-super {p0}, Lcom/htc/app/mf/MfFragment;->onPause()V

    .line 157
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 9
    .parameter "menu"

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mActionBarBackkeyListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->enableActionBarUpdate()Z

    move-result v3

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->onEnableActionBarBackButton()Z

    move-result v4

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->onEnableActionBarAppButton()Z

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->onUpdateActionBarTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->onUpdateActionBarSecondaryTitle()Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    invoke-static/range {v0 .. v8}, Lcom/htc/sunny2/common/HtcPaneManager;->onPrepareHtcActionBar(Landroid/app/Activity;Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;Landroid/view/View$OnClickListener;ZZZZLjava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 140
    invoke-super {p0}, Lcom/htc/app/mf/MfFragment;->onResume()V

    .line 141
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 142
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isNetworkConnectionActive(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    const/16 v1, 0x274c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 146
    :cond_0
    invoke-static {v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sendPauseCacheIntent(Landroid/content/Context;)V

    .line 147
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mLifeState:I

    .line 148
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/htc/app/mf/MfFragment;->onStart()V

    .line 136
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mLifeState:I

    .line 137
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mLifeState:I

    .line 161
    invoke-super {p0}, Lcom/htc/app/mf/MfFragment;->onStop()V

    .line 162
    return-void
.end method

.method public onUIUpdateNotify(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mHandlerUI:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mHandlerUI:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mHandlerUI:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 281
    :cond_0
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    const/4 v0, 0x0

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x0

    return-object v0
.end method

.method public paneRight()Z
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x0

    return v0
.end method

.method public abstract setActivityTitle()V
.end method

.method public setFullscreen(Z)V
    .locals 0
    .parameter "bFullscreen"

    .prologue
    .line 267
    return-void
.end method

.method public setUIHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "hHandler"

    .prologue
    .line 286
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mHandlerUI:Landroid/os/Handler;

    .line 287
    return-void
.end method

.method protected showDialogErrorCommunication()V
    .locals 3

    .prologue
    .line 296
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mDlgErrorConnection:Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;

    if-nez v0, :cond_0

    .line 297
    invoke-static {}, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->instance()Landroid/app/DialogFragment;

    move-result-object v0

    check-cast v0, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mDlgErrorConnection:Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;

    .line 299
    :cond_0
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mDlgErrorConnection:Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mDlgErrorConnection:Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;

    invoke-virtual {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 300
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mDlgErrorConnection:Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 301
    :cond_1
    return-void
.end method

.method protected showDialogNoConnection()V
    .locals 3

    .prologue
    .line 308
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mDlgErrorNoConnection:Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$2;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$2;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;)V

    invoke-static {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->instance(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)Landroid/app/DialogFragment;

    move-result-object v0

    check-cast v0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mDlgErrorNoConnection:Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;

    .line 331
    :cond_0
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mDlgErrorNoConnection:Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mDlgErrorNoConnection:Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;

    invoke-virtual {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 332
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mDlgErrorNoConnection:Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 333
    :cond_1
    return-void
.end method

.method public showFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 2
    .parameter "id"
    .parameter "extras"

    .prologue
    .line 360
    const/4 v0, 0x3

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mLifeState:I

    if-gt v0, v1, :cond_0

    .line 361
    const/4 v0, 0x0

    .line 375
    :goto_0
    return v0

    .line 363
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 375
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 366
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->showProgressDialog()V

    goto :goto_1

    .line 369
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->showDialogErrorCommunication()V

    goto :goto_1

    .line 372
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->showDialogNoConnection()V

    goto :goto_1

    .line 363
    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_0
        0x272b -> :sswitch_1
        0x272c -> :sswitch_2
    .end sparse-switch
.end method

.method protected showProgressDialog()V
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mLoadingText:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->instance(Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v0

    check-cast v0, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    .line 339
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 341
    :cond_0
    return-void
.end method

.method public abstract syncExternalRequest()V
.end method
