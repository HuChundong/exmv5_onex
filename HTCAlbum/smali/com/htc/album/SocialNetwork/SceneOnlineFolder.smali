.class public Lcom/htc/album/SocialNetwork/SceneOnlineFolder;
.super Lcom/htc/sunny2/scene/GalleryBaseScene;
.source "SceneOnlineFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/SocialNetwork/SceneOnlineFolder$GridViewScrollListener;,
        Lcom/htc/album/SocialNetwork/SceneOnlineFolder$OnItemVibrateListener;,
        Lcom/htc/album/SocialNetwork/SceneOnlineFolder$OnItemSelectedListener;,
        Lcom/htc/album/SocialNetwork/SceneOnlineFolder$GridImageDownloadedHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sunny2/scene/GalleryBaseScene",
        "<",
        "Lcom/htc/sunnyCore/widget/gridview/GridView;",
        "Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final HEADER_BAR_ONLINE_FOLDER_VIEW:I = 0x2711

.field protected static final LAYOUT_TYPE_LIST:I = 0x1

.field protected static final LAYOUT_TYPE_LOADING:I = 0x2

.field protected static final LAYOUT_TYPE_LOGIN:I = 0x0

.field protected static final LAYOUT_TYPE_UNKNOWN:I = -0x1

.field private static final LOGIN_BAR_ONLINE_FOLDER_VIEW:I = 0x2712

.field public static final LOG_TAG:Ljava/lang/String; = "SceneOnlineFolder"


# instance fields
.field protected mAnimationState:I

.field protected mEnableViewBackgroundDecode:Z

.field private mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

.field private mIsExternal:Z

.field private mIsInAnimation:Z

.field private mItemSelected:I

.field private mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

.field private mLoadingText:Ljava/lang/String;

.field private mLoginViewHost:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginLoginViewHost;

.field private mOnItemVibrateListener:Lcom/htc/album/SocialNetwork/SceneOnlineFolder$OnItemVibrateListener;

.field private mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

.field private mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

.field private mPluginHost:Lcom/htc/opensense/plugin/TabPluginRemote;

.field protected mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

.field protected mScrollState:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;-><init>()V

    .line 88
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    .line 90
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 91
    iput v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mScrollState:I

    .line 93
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mIsExternal:Z

    .line 95
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginHost:Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 96
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 97
    iput v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mItemSelected:I

    .line 98
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoadingText:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginViewHost:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginLoginViewHost;

    .line 101
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    .line 102
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$OnItemVibrateListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$OnItemVibrateListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mOnItemVibrateListener:Lcom/htc/album/SocialNetwork/SceneOnlineFolder$OnItemVibrateListener;

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mEnableViewBackgroundDecode:Z

    .line 106
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    .line 1079
    iput v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAnimationState:I

    .line 1080
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mIsInAnimation:Z

    return-void
.end method

.method private RelayoutPageView(I)V
    .locals 0
    .parameter "layout"

    .prologue
    .line 793
    packed-switch p1, :pswitch_data_0

    .line 802
    :goto_0
    return-void

    .line 796
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onRelayoutPageLogin()V

    goto :goto_0

    .line 799
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onRelayoutPageList()V

    goto :goto_0

    .line 793
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$100(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;Lcom/htc/sunnyCore/widget/gridview/GridView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onSceneScrollStateChangedIRT(Lcom/htc/sunnyCore/widget/gridview/GridView;I)V

    return-void
.end method

.method private enableProgressLoading(ZI)V
    .locals 1
    .parameter "bShow"
    .parameter "iResID"

    .prologue
    .line 1452
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 1453
    invoke-direct {p0, p2}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->prepareLoadingText(I)V

    .line 1454
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onEnableProgressLoading(Z)V

    .line 1455
    return-void
.end method

.method private getSocialIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1565
    const/4 v1, 0x0

    .line 1566
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/mf/MfFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 1567
    .local v0, bundleArg:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1568
    const-string v2, "social_intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1           #intent:Landroid/content/Intent;
    check-cast v1, Landroid/content/Intent;

    .line 1570
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_0
    return-object v1
.end method

.method private onCreateItemPrototype(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)Lcom/htc/sunnyCore/widget/gridview/GridViewItem;
    .locals 4
    .parameter "param"

    .prologue
    .line 482
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 483
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 486
    .local v1, context:Landroid/content/Context;
    new-instance v2, Lcom/htc/sunny2/widget/gridview/GridItemFolder;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v3

    check-cast p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    .end local p1
    invoke-direct {v2, v1, v3, p1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V

    .line 490
    .local v2, item:Lcom/htc/sunny2/widget/gridview/GridItemFolder;
    new-instance v3, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$2;

    invoke-direct {v3, p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$2;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;)V

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setBindMediaDataListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;)V

    .line 506
    return-object v2
.end method

.method private onLoadingOrDecodingThumbnails(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/16 v3, 0x8

    .line 161
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 162
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 164
    :cond_0
    const/4 v1, 0x3

    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAnimationState:I

    if-eq v1, v2, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAnimationState:I

    if-ne v1, v2, :cond_2

    .line 167
    :cond_1
    invoke-interface {v0, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setProgressVisibility(I)V

    goto :goto_0

    .line 170
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 175
    invoke-interface {v0, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setProgressVisibility(I)V

    goto :goto_0

    .line 172
    :pswitch_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setProgressVisibility(I)V

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onRelayoutPageList()V
    .locals 3

    .prologue
    .line 746
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginViewHost:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginLoginViewHost;

    if-eqz v1, :cond_0

    .line 748
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginViewHost:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginLoginViewHost;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginLoginViewHost;->setVisibility(I)V

    .line 750
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 751
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 753
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 755
    :cond_1
    return-void
.end method

.method private onRelayoutPageLogin()V
    .locals 6

    .prologue
    .line 759
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginViewHost:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginLoginViewHost;

    if-nez v4, :cond_0

    .line 761
    const-string v4, "SceneOnlineFolder"

    const-string v5, "[HTCAlbum][SceneOnlineFolder][onRelayoutPageLogin]: mLoginViewHost is null..."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :goto_0
    return-void

    .line 765
    :cond_0
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginViewHost:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginLoginViewHost;

    invoke-interface {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginLoginViewHost;->isLoginViewInitialized()Z

    move-result v4

    if-nez v4, :cond_1

    .line 767
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginViewHost:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginLoginViewHost;

    invoke-interface {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginLoginViewHost;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    .line 768
    .local v2, param:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, 0x3

    const/16 v5, 0x2711

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 769
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginViewHost:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginLoginViewHost;

    invoke-interface {v4, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginLoginViewHost;->initializeLoginView(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 770
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginViewHost:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginLoginViewHost;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginLoginViewHost;->setVisibility(I)V

    .line 773
    .end local v2           #param:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getSocialIntent()Landroid/content/Intent;

    move-result-object v3

    .line 774
    .local v3, sceneIntent:Landroid/content/Intent;
    const-string v4, "login_btn_text"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 775
    .local v0, btnText:Ljava/lang/String;
    const-string v4, "login_btn_description"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 777
    .local v1, description:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginViewHost:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginLoginViewHost;

    invoke-interface {v4, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginLoginViewHost;->setLoginButtonText(Ljava/lang/String;)V

    .line 778
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginViewHost:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginLoginViewHost;

    new-instance v5, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$3;

    invoke-direct {v5, p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$3;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;)V

    invoke-interface {v4, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginLoginViewHost;->setButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 787
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginViewHost:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginLoginViewHost;

    invoke-interface {v4, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginLoginViewHost;->setLoginDescription(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onSceneScrollStateChangedIRT(Lcom/htc/sunnyCore/widget/gridview/GridView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 959
    const/16 v0, 0x4f4f

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onPostMessage(ILjava/lang/Object;I)V

    .line 960
    return-void
.end method

.method private onScrollStateChanged(Landroid/os/Message;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 429
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 431
    .local v1, scrollState:I
    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mScrollState:I

    if-ne v2, v1, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    iput v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mScrollState:I

    .line 437
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    instance-of v2, v2, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    if-eqz v2, :cond_0

    .line 439
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_2
    const/16 v0, 0x4f4e

    .line 443
    .local v0, adapterScrollState:I
    :goto_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v4

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {v2, v0, v4, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->setScrollState(III)V

    goto :goto_0

    .line 439
    .end local v0           #adapterScrollState:I
    :cond_3
    const/16 v0, 0x4f4d

    goto :goto_1
.end method

.method private onUICmdRefresh(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 452
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 465
    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onRefresh(Z)V

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 455
    :pswitch_0
    invoke-direct {p0, v2, v1}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->enableProgressLoading(ZI)V

    goto :goto_0

    .line 458
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onRefresh(Z)V

    goto :goto_0

    .line 461
    :pswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyMediaDataChange()V

    goto :goto_0

    .line 452
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private prepareLoadingText(I)V
    .locals 4
    .parameter "iResID"

    .prologue
    .line 1458
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1459
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    .line 1461
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoadingText:Ljava/lang/String;

    .line 1462
    const-string v1, "SceneOnlineFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneOnlineFolder][prepareLoadingText] NG: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    :goto_0
    return-void

    .line 1464
    :cond_1
    if-nez p1, :cond_2

    .line 1466
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0153

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoadingText:Ljava/lang/String;

    goto :goto_0

    .line 1470
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoadingText:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 823
    const-string v0, "AdapterOnlineFolder"

    return-object v0
.end method

.method public enableActionBarUpdate()Z
    .locals 3

    .prologue
    .line 1357
    const/4 v1, 0x0

    .line 1358
    .local v1, bResult:Z
    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mIsExternal:Z

    if-eqz v2, :cond_1

    .line 1359
    const/4 v1, 0x1

    .line 1377
    :cond_0
    :goto_0
    return v1

    .line 1360
    :cond_1
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    invoke-interface {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->isNoFriends()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1362
    const/4 v1, 0x1

    goto :goto_0

    .line 1366
    :cond_2
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1368
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1369
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/sunny2/common/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1370
    const/4 v1, 0x1

    goto :goto_0

    .line 1374
    .end local v0           #activity:Landroid/app/Activity;
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public enableHostPadding()Z
    .locals 4

    .prologue
    .line 737
    const/4 v0, 0x0

    .line 738
    .local v0, bIsPadding:Z
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    invoke-interface {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->isNoFriends()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    const/4 v0, 0x1

    .line 741
    :cond_0
    const-string v1, "SceneOnlineFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneOnlineFolder][enableHostPadding] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    return v0
.end method

.method public enablePageLoading()Z
    .locals 1

    .prologue
    .line 1539
    const/4 v0, 0x1

    return v0
.end method

.method public enableProgressLoading()Z
    .locals 1

    .prologue
    .line 1448
    const/4 v0, 0x1

    return v0
.end method

.method protected getAdapterMediaType()I
    .locals 1

    .prologue
    .line 1136
    const/16 v0, 0xff

    return v0
.end method

.method public getEnvironmentRenderOrder()I
    .locals 1

    .prologue
    .line 1070
    const/4 v0, 0x1

    return v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1178
    const-string v2, ""

    .line 1182
    .local v2, nServiceName:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getSocialIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1183
    .local v3, sceneIntent:Landroid/content/Intent;
    if-nez v3, :cond_0

    move-object v5, v2

    .line 1222
    :goto_0
    return-object v5

    .line 1186
    :cond_0
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1187
    .local v0, activity:Landroid/app/Activity;
    const-string v5, "service_name"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1192
    const/4 v1, 0x0

    .line 1193
    .local v1, dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual {v5}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v1

    .end local v1           #dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    check-cast v1, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    .restart local v1       #dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    if-eqz v1, :cond_1

    .line 1195
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginHost:Lcom/htc/opensense/plugin/TabPluginRemote;

    if-eqz v5, :cond_2

    .line 1196
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginHost:Lcom/htc/opensense/plugin/TabPluginRemote;

    invoke-virtual {v5}, Lcom/htc/opensense/plugin/TabPluginRemote;->getTabName()Ljava/lang/String;

    move-result-object v2

    .line 1207
    :cond_1
    :goto_1
    if-eqz v1, :cond_4

    move-object v5, v2

    .line 1209
    goto :goto_0

    .line 1199
    :cond_2
    new-instance v4, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;-><init>(Landroid/content/Context;)V

    .line 1200
    .local v4, snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    if-eqz v4, :cond_3

    .line 1201
    invoke-virtual {v4, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/plugin/TabPluginRemote;

    iput-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginHost:Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 1202
    :cond_3
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginHost:Lcom/htc/opensense/plugin/TabPluginRemote;

    if-eqz v5, :cond_1

    .line 1203
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginHost:Lcom/htc/opensense/plugin/TabPluginRemote;

    invoke-virtual {v5}, Lcom/htc/opensense/plugin/TabPluginRemote;->getTabName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1211
    .end local v4           #snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    :cond_4
    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1213
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a003e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1215
    :cond_5
    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1217
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a003f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1221
    :cond_6
    const-string v5, "SceneOnlineFolder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][SceneOnlineFolder][getHeaderSubtitle]: Not support services "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v2

    .line 1222
    goto/16 :goto_0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1156
    const-string v0, ""

    .line 1158
    .local v0, nUserName:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getSocialIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1159
    .local v1, sceneIntent:Landroid/content/Intent;
    if-nez v1, :cond_0

    move-object v2, v0

    .line 1168
    :goto_0
    return-object v2

    .line 1161
    :cond_0
    const-string v2, "user_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1162
    const-string v2, ""

    if-eq v0, v2, :cond_1

    move-object v2, v0

    .line 1164
    goto :goto_0

    .line 1168
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public getPageLoadingText()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1550
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1552
    .local v0, activity:Landroid/app/Activity;
    const-string v3, ""

    .line 1553
    .local v3, szServiceName:Ljava/lang/String;
    const-string v2, ""

    .line 1554
    .local v2, szLoading:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getItemRequest()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1555
    .local v1, bundle:Landroid/os/Bundle;
    const-string v4, "service_name"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1556
    const-string v4, "service_name"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1559
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1561
    return-object v2
.end method

.method public getProgressLoadingText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoadingText:Ljava/lang/String;

    return-object v0
.end method

.method public isHostScene()Z
    .locals 4

    .prologue
    .line 728
    const/4 v0, 0x0

    .line 729
    .local v0, bIsHost:Z
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    invoke-interface {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->isNoFriends()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 730
    :cond_0
    const/4 v0, 0x1

    .line 732
    :cond_1
    const-string v1, "SceneOnlineFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneOnlineFolder][isHostScene] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    return v0
.end method

.method public onActionBarBackPressed()V
    .locals 2

    .prologue
    .line 1331
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->isSecureLeaveScene()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1332
    const-string v0, "SceneOnlineFolder"

    const-string v1, "[HTCAlbum][SceneOnlineFolder][onActionBarBackPressed] : Scene is left."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    :goto_0
    return-void

    .line 1335
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1336
    :cond_1
    const-string v0, "SceneOnlineFolder"

    const-string v1, "[HTCAlbum][SceneOnlineFolder][onActionBarBackPressed] : can\'t get context"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1339
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, plugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    const-string v1, "SceneOnlineFolder"

    const-string v2, "OnActivityResult: pass to data plugin"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->onUIActivityResult(IILandroid/content/Intent;)V

    .line 188
    :cond_0
    return-void
.end method

.method public onAnimationEnd(I)V
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 1128
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onAnimationEnd(I)V

    .line 1129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mIsInAnimation:Z

    .line 1130
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 1054
    const/4 v0, 0x0

    return v0
.end method

.method public onBindAdapter()V
    .locals 3

    .prologue
    .line 951
    const-string v0, "SceneOnlineFolder"

    const-string v1, "[HTCAlbum][SceneOnlineFolder][onBindAdapter]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onBindAdapter()V

    .line 953
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setMediaList(Lcom/htc/sunnyCore/IMediaList;)V

    .line 954
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    new-instance v1, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$GridViewScrollListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$GridViewScrollListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOnScrollListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;)V

    .line 955
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->invalidateControlBars()V

    .line 956
    return-void
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1141
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1146
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1151
    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigMainViewLayout(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 709
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onConfigMainViewLayout(Landroid/content/res/Configuration;)V

    .line 711
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->verticalSpacing(Landroid/content/res/Configuration;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setVerticalSpacing(I)V

    .line 712
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->horizontalSpacing(Landroid/content/res/Configuration;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setHorizontalSpacing(I)V

    .line 714
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 715
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mIsInAnimation:Z

    if-nez v1, :cond_0

    .line 717
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-static {v0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getGlanceBackground(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    .line 719
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 722
    const-string v0, "SceneOnlineFolder"

    const-string v1, "[HTCAlbum][SceneOnlineFolder][onConfigurationChanged] "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 724
    return-void
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1229
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1231
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1239
    :goto_0
    return-void

    .line 1235
    :pswitch_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1231
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 4
    .parameter "nAnimState"

    .prologue
    .line 1103
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1105
    .local v0, animationBundle:Landroid/os/Bundle;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1106
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 1107
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 1108
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getGlanceBackground(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    .line 1112
    .end local v1           #context:Landroid/content/Context;
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    .line 1114
    return-object v0
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunnyCore/view/SView;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;
    .locals 13

    .prologue
    .line 510
    const-string v2, "SceneOnlineFolder"

    const-string v3, "[HTCAlbum][SceneOnlineFolder][onCreateScene]: ..."

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    .line 512
    .local v6, activity:Landroid/app/Activity;
    if-nez v6, :cond_0

    .line 514
    const-string v2, "SceneOnlineFolder"

    const-string v3, "[HTCAlbum][SceneOnlineFolder][onCreateScene]: null..."

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const/4 v1, 0x0

    .line 574
    :goto_0
    return-object v1

    .line 517
    :cond_0
    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 518
    .local v7, appContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->updateSystemFontScale(Landroid/content/Context;)Z

    .line 520
    const/4 v2, 0x0

    invoke-static {v7, v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->spawn(Landroid/content/Context;Z)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    move-result-object v11

    .line 521
    .local v11, param:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;
    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mEnableViewBackgroundDecode:Z

    invoke-virtual {v11, v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->enableViewBackgroundDecode(Z)V

    .line 522
    invoke-direct {p0, v11}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onCreateItemPrototype(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    move-result-object v8

    check-cast v8, Lcom/htc/sunny2/widget/gridview/GridItemFolder;

    .line 524
    .local v8, item:Lcom/htc/sunny2/widget/gridview/GridItemFolder;
    new-instance v1, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v2

    invoke-direct {v1, v7, v2, v8}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunnyCore/widget/gridview/GridViewItem;)V

    .line 527
    .local v1, gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x208003f

    const v3, 0x7f020037

    const v4, 0x208003e

    const v5, 0x7f020036

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;IIII)V

    .line 532
    .local v0, res:Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;
    invoke-virtual {v1, v0}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setHtcFastScrollerRes(Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;)V

    .line 534
    invoke-static {}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;->spawn()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;

    move-result-object v12

    .line 535
    .local v12, params:Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;
    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mEnableViewBackgroundDecode:Z

    invoke-virtual {v12, v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;->enableViewBackgroundDecode(Z)V

    .line 536
    new-instance v2, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-direct {v2, v7}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 537
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v12}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Lcom/htc/sunnyCore/IParamsPreparator;)V

    .line 538
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunnyCore/Preparator$UpdateListener;)V

    .line 539
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 541
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v8, v2}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setContentGetter(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;)V

    .line 542
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setPreparation(Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;)V

    .line 547
    const/4 v10, 0x0

    .line 548
    .local v10, nTop:I
    const/4 v9, 0x0

    .line 549
    .local v9, nBottom:I
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 551
    const/4 v2, 0x1

    invoke-static {v6, v2}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->getHeight(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v10, v2

    .line 565
    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v10, v3, v9}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setPadding(IIII)V

    .line 567
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v2

    instance-of v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginLoginViewHost;

    if-eqz v2, :cond_1

    .line 569
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginLoginViewHost;

    iput-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginViewHost:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginLoginViewHost;

    .line 572
    :cond_1
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mOnItemVibrateListener:Lcom/htc/album/SocialNetwork/SceneOnlineFolder$OnItemVibrateListener;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setOnItemLongPressVibrateListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongPressVibrateListener;)V

    goto/16 :goto_0

    .line 558
    :cond_2
    const/4 v2, 0x1

    invoke-static {v6, v2}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->getHeight(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v10, v2

    .line 561
    sget v2, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->TEXT_HEIGHT_SECOND:I

    mul-int/lit8 v9, v2, 0x2

    goto :goto_1
.end method

.method public onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    .locals 2

    .prologue
    .line 1085
    new-instance v1, Lcom/htc/album/Animation/animationSetFolderGridview;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-direct {v1, v0}, Lcom/htc/album/Animation/animationSetFolderGridview;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;)V

    return-object v1
.end method

.method public onDestroyScene()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 580
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;)V

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 587
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onDestroyScene()V

    .line 588
    return-void
.end method

.method public onEnableActionBarAppButton()Z
    .locals 2

    .prologue
    .line 1343
    const/4 v0, 0x0

    .line 1345
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    invoke-interface {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->isNoFriends()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1347
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableLandingPage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1348
    const/4 v0, 0x0

    .line 1352
    :cond_0
    :goto_0
    return v0

    .line 1350
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 4

    .prologue
    .line 1296
    const/4 v2, 0x0

    .line 1297
    .local v2, bResult:Z
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1298
    .local v0, activity:Landroid/app/Activity;
    iget-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mIsExternal:Z

    if-eqz v3, :cond_1

    .line 1299
    const/4 v2, 0x1

    .line 1327
    :cond_0
    :goto_0
    return v2

    .line 1302
    :cond_1
    const/4 v1, 0x0

    .line 1303
    .local v1, bIsNoFriends:Z
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    if-eqz v3, :cond_2

    .line 1305
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    invoke-interface {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->isNoFriends()Z

    move-result v1

    .line 1308
    :cond_2
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1313
    invoke-static {v0}, Lcom/htc/sunny2/common/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    .line 1314
    const/4 v2, 0x1

    goto :goto_0

    .line 1318
    :cond_3
    const/4 v3, 0x1

    if-ne v3, v1, :cond_4

    .line 1320
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableLandingPage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1321
    const/4 v2, 0x1

    goto :goto_0

    .line 1324
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 14
    .parameter "bundle"

    .prologue
    .line 592
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 594
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getSocialIntent()Landroid/content/Intent;

    move-result-object v8

    .line 596
    .local v8, sceneIntent:Landroid/content/Intent;
    const-string v11, "from_outside"

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mIsExternal:Z

    .line 597
    const-string v11, "service_name"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 599
    .local v9, serviceName:Ljava/lang/String;
    invoke-static {}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->instance()Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

    move-result-object v4

    .line 604
    .local v4, connectionMgr:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;
    iget-boolean v11, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mIsExternal:Z

    if-eqz v11, :cond_0

    .line 605
    const/4 v11, 0x0

    invoke-virtual {v4, v11, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->connectTo(Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V

    .line 607
    :cond_0
    invoke-static {}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->getActiveConnection()Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    .line 608
    invoke-static {}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->destroyInstance()V

    .line 610
    const/4 v3, 0x0

    .line 611
    .local v3, bIsNoFriends:Z
    iget-object v11, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    if-eqz v11, :cond_1

    .line 613
    iget-object v11, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    invoke-interface {v11}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->isNoFriends()Z

    move-result v3

    .line 616
    :cond_1
    const-string v11, "SceneOnlineFolder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][SceneOnlineFolder][onEnterScene]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mIsExternal:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 623
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->setEnableControlBarAnimation(Z)V

    .line 625
    :cond_2
    if-nez v3, :cond_3

    .line 627
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 635
    :cond_3
    :goto_0
    const/4 v11, 0x1

    if-ne v11, v3, :cond_a

    .line 637
    iget-object v11, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v11}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 638
    .local v1, activity:Landroid/app/Activity;
    new-instance v11, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 641
    iget-object v11, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getHandler()Landroid/os/Handler;

    move-result-object v12

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getHandler()Landroid/os/Handler;

    move-result-object v13

    invoke-virtual {v11, v9, v12, v13}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->scanAvailableService(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 643
    const-string v11, "SceneOnlineFolder"

    const-string v12, "[HTCAlbum][SceneOnlineFolder][onEnterScene]: exit 1..."

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 704
    .end local v1           #activity:Landroid/app/Activity;
    :goto_1
    return-void

    .line 631
    :cond_4
    const/4 v11, 0x1

    const/16 v12, 0x2711

    invoke-virtual {p0, v11, v12}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->createControlBar(II)V

    goto :goto_0

    .line 648
    .restart local v1       #activity:Landroid/app/Activity;
    :cond_5
    iget-object v11, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v11}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    .line 649
    .local v5, context:Landroid/content/Context;
    iget-object v11, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v11, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v11

    check-cast v11, Lcom/htc/opensense/plugin/TabPluginRemote;

    iput-object v11, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginHost:Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 650
    iget-object v11, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginHost:Lcom/htc/opensense/plugin/TabPluginRemote;

    invoke-virtual {v11}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateAlbumListPlugin()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getHandler()Landroid/os/Handler;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;-><init>(Landroid/os/Handler;)V

    invoke-static {v5, v11, v12}, Lcom/htc/album/SocialNetworkManager/DataPluginHelper;->createAlbumListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;)Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    move-result-object v6

    .line 651
    .local v6, dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    if-nez v6, :cond_6

    .line 653
    const-string v11, "SceneOnlineFolder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][SceneOnlineFolder][onEnterScene]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 657
    :cond_6
    invoke-virtual {v6}, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;->onEnableSignInProcedure()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 659
    const-string v11, "SceneOnlineFolder"

    const-string v12, "[HTCAlbum][SceneOnlineFolder][onEnterScene]: mDataPlugin init"

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object v11, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v11, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V

    .line 665
    :cond_7
    iget-object v11, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v11}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v2

    .line 666
    .local v2, bIsAccountActive:Z
    iget-object v11, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v11}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v11

    instance-of v11, v11, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v11, :cond_8

    .line 668
    iget-object v11, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v11}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v10

    check-cast v10, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .line 669
    .local v10, switchHost:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->isHostScene()Z

    move-result v11

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableSourceSwitch(ZZ)V

    .line 671
    if-nez v2, :cond_c

    .line 672
    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableSourceContentPadding(Z)V

    .line 676
    .end local v10           #switchHost:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;
    :cond_8
    :goto_2
    if-nez v2, :cond_9

    .line 678
    iget-object v11, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    if-eqz v11, :cond_d

    iget-object v11, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    invoke-interface {v11}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->isSignInRequired()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 681
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->RelayoutPageView(I)V

    .line 689
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 690
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setPrimaryText(Ljava/lang/String;)V

    .line 691
    const/4 v11, 0x0

    invoke-interface {v0, v11}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setSecondaryText(Ljava/lang/String;)V

    .line 694
    .end local v0           #actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .end local v1           #activity:Landroid/app/Activity;
    .end local v2           #bIsAccountActive:Z
    .end local v5           #context:Landroid/content/Context;
    .end local v6           #dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    :cond_a
    iget-object v11, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v11, Lcom/htc/sunnyCore/widget/gridview/GridView;

    new-instance v12, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$OnItemSelectedListener;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$OnItemSelectedListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;)V

    invoke-virtual {v11, v12}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;)V

    .line 696
    iget-object v11, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v11}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    .line 697
    .restart local v5       #context:Landroid/content/Context;
    if-eqz v5, :cond_b

    .line 698
    iget-object v11, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v11, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-static {v5}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getGlanceBackground(Landroid/content/Context;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    .line 701
    :cond_b
    invoke-static {}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->instance()Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;

    move-result-object v7

    .line 702
    .local v7, pickerMgr:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;
    invoke-virtual {v7}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->getPickerLandingPageParameter()Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    .line 703
    invoke-static {}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->destroyInstance()V

    goto/16 :goto_1

    .line 674
    .end local v7           #pickerMgr:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;
    .restart local v1       #activity:Landroid/app/Activity;
    .restart local v2       #bIsAccountActive:Z
    .restart local v6       #dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    .restart local v10       #switchHost:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;
    :cond_c
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableSourceContentPadding(Z)V

    goto :goto_2

    .line 686
    .end local v10           #switchHost:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;
    :cond_d
    const-string v11, "SceneOnlineFolder"

    const-string v12, "[HTCAlbum][SceneOnlineFolder][onEnterScene] VMM : no login-in view"

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onErrorList()V
    .locals 7

    .prologue
    .line 1502
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1522
    :cond_0
    :goto_0
    return-void

    .line 1505
    :cond_1
    const-string v5, "SceneOnlineFolder"

    const-string v6, "[HTCAlbum][SceneOnlineFolder][onErrorList]: ..."

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v5, Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v5, v6}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setMediaList(Lcom/htc/sunnyCore/IMediaList;)V

    .line 1507
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-interface {v5, p0, v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->setNewAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;)V

    .line 1509
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1510
    .local v0, activity:Landroid/app/Activity;
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityRoot()Landroid/view/ViewGroup;

    move-result-object v4

    .line 1512
    .local v4, viewRoot:Landroid/view/ViewGroup;
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onEnablePageLoading(Z)V

    .line 1514
    iget-object v5, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    const v6, 0x7f090012

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1515
    .local v3, textView:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    const v6, 0x7f090060

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 1517
    .local v1, progressBar:Landroid/widget/ProgressBar;
    const v5, 0x7f0a0053

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1518
    .local v2, szMessage:Ljava/lang/String;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1519
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1521
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onEnableProgressLoading(Z)V

    goto :goto_0
.end method

.method public onItemSelected(I)V
    .locals 28
    .parameter "index"

    .prologue
    .line 192
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v10, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    .line 193
    .local v10, adapter:Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;
    if-nez v10, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    const-string v8, "SceneOnlineFolder"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "[HTCAlbum][SceneOnlineFolder][onItemSelected]: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v8, v0}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    move/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v11

    check-cast v11, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .line 200
    .local v11, anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    if-eqz v11, :cond_0

    .line 203
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    check-cast v12, Lcom/htc/album/Animation/animationSetFolderGridview;

    .line 204
    .local v12, animationSet:Lcom/htc/album/Animation/animationSetFolderGridview;
    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/htc/album/Animation/animationSetFolderGridview;->setFocused(I)V

    .line 206
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 208
    .local v14, bundle:Landroid/os/Bundle;
    move/from16 v22, p1

    .line 209
    .local v22, pos:I
    iget-object v0, v10, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    move-object/from16 v20, v0

    .line 211
    .local v20, mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;
    const-string v8, "SceneOnlineFolder"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "[HTCAlbum][SceneOnlineFolder][onItemClick]1: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v8, v0}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    sget-object v8, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v11}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v25

    move-object/from16 v0, v25

    if-eq v8, v0, :cond_2

    sget-object v8, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v11}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v25

    move-object/from16 v0, v25

    if-ne v8, v0, :cond_3

    .line 215
    :cond_2
    const-string v8, "SceneOnlineFolder"

    const-string v25, "[HTCAlbum][SceneOnlineFolder][onItemClick]2: skip 1"

    move-object/from16 v0, v25

    invoke-static {v8, v0}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_3
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 220
    .local v4, serviceName:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v7

    .line 221
    .local v7, albumID:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getName()Ljava/lang/String;

    move-result-object v5

    .line 222
    .local v5, albumName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 223
    .local v6, userID:Ljava/lang/String;
    const-string v8, "service_name"

    invoke-virtual {v14, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual {v8}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v16

    check-cast v16, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    .line 226
    .local v16, dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    if-eqz v16, :cond_a

    .line 228
    invoke-virtual {v11}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getPID()Ljava/lang/String;

    move-result-object v6

    .line 229
    const-string v8, "user_id"

    invoke-virtual {v14, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :goto_1
    const-string v8, "album_id"

    invoke-virtual {v14, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v8, "album_name"

    invoke-virtual {v14, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v8, "album_photo"

    invoke-virtual {v11}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v14, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v8, ".ruplist"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, ".ruvlist"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, ".pomlist"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 244
    :cond_4
    const-string v8, "flag_genuine"

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v14, v8, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 246
    :cond_5
    const-string v25, "opensense_pugin"

    if-eqz v16, :cond_b

    const/4 v8, 0x1

    :goto_2
    move-object/from16 v0, v25

    invoke-virtual {v14, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 248
    const-string v8, "refresh_by_delete"

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v14, v8, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 249
    const-string v8, "refresh_by_delete_all"

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v14, v8, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    const-string v8, "refresh_by_list_changed"

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v14, v8, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 254
    invoke-virtual {v10}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getItemRequest()Ljava/lang/Object;

    move-result-object v21

    .line 255
    .local v21, obj:Ljava/lang/Object;
    move-object/from16 v0, v21

    instance-of v8, v0, Landroid/os/Bundle;

    if-eqz v8, :cond_9

    .line 259
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/app/mf/MfFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v15

    .line 260
    .local v15, bundleArg:Landroid/os/Bundle;
    const-string v8, "social_intent"

    invoke-virtual {v15, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/content/Intent;

    .line 261
    .local v18, intent:Landroid/content/Intent;
    if-eqz v18, :cond_6

    .line 264
    const-string v8, "service_display"

    const-string v25, "service_display"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v14, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const/16 v24, 0x0

    .line 267
    .local v24, szUserID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v23, 0x0

    .line 269
    .local v23, szServiceUrl:Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v25, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/16 v26, 0x0

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 270
    sget-object v8, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/16 v25, 0x0

    aget-object v23, v8, v25

    .line 276
    :goto_3
    const-string v8, "service_url"

    move-object/from16 v0, v23

    invoke-virtual {v14, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v24

    .line 280
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 289
    .end local v23           #szServiceUrl:Ljava/lang/String;
    .end local v24           #szUserID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    const-string v25, "from_tabhost"

    move-object/from16 v8, v21

    check-cast v8, Landroid/os/Bundle;

    const-string v26, "from_tabhost"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    move-object/from16 v0, v25

    invoke-virtual {v14, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 290
    const-string v25, "from_albumhost"

    move-object/from16 v8, v21

    check-cast v8, Landroid/os/Bundle;

    const-string v26, "from_albumhost"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    move-object/from16 v0, v25

    invoke-virtual {v14, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 291
    const-string v25, "from_tmoFaves"

    move-object/from16 v8, v21

    check-cast v8, Landroid/os/Bundle;

    const-string v26, "from_tmoFaves"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    move-object/from16 v0, v25

    invoke-virtual {v14, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 293
    const-string v25, "user_name"

    move-object/from16 v8, v21

    check-cast v8, Landroid/os/Bundle;

    const-string v26, "user_name"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v25

    invoke-virtual {v14, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v25, "user_buddyicon"

    move-object/from16 v8, v21

    check-cast v8, Landroid/os/Bundle;

    const-string v26, "user_buddyicon"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v25

    invoke-virtual {v14, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v25, "from_outside"

    move-object/from16 v8, v21

    check-cast v8, Landroid/os/Bundle;

    const-string v26, "from_outside"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    move-object/from16 v0, v25

    invoke-virtual {v14, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 297
    const-string v25, "my_live_album"

    move-object/from16 v8, v21

    check-cast v8, Landroid/os/Bundle;

    const-string v26, "my_live_album"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    move-object/from16 v0, v25

    invoke-virtual {v14, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 301
    const/16 v25, 0x1

    move-object/from16 v8, v21

    check-cast v8, Landroid/os/Bundle;

    const-string v26, "from_tmoFaves"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    move/from16 v0, v25

    if-ne v0, v8, :cond_9

    .line 303
    const/16 v19, 0x0

    .local v19, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v8, v21

    .line 304
    check-cast v8, Landroid/os/Bundle;

    sget-object v25, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/16 v26, 0x0

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    if-eqz v19, :cond_7

    .line 305
    const-string v8, "SceneOnlineFolder"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "[HTCAlbum][SceneOnlineFolder][onItemClick]: facebook: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v8, v0}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_7
    sget-object v8, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/16 v25, 0x0

    aget-object v8, v8, v25

    move-object/from16 v0, v19

    invoke-virtual {v14, v8, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object/from16 v8, v21

    .line 308
    check-cast v8, Landroid/os/Bundle;

    sget-object v25, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/16 v26, 0x1

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    if-eqz v19, :cond_8

    .line 309
    const-string v8, "SceneOnlineFolder"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "[HTCAlbum][SceneOnlineFolder][onItemClick]: flickr: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v8, v0}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_8
    sget-object v8, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/16 v25, 0x1

    aget-object v8, v8, v25

    move-object/from16 v0, v19

    invoke-virtual {v14, v8, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 312
    const-string v8, "SceneOnlineFolder"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "[HTCAlbum][SceneOnlineFolder][onItemClick]2: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v8, v0}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v25, "user_name"

    move-object/from16 v8, v21

    check-cast v8, Landroid/os/Bundle;

    const-string v26, "user_name"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v25

    invoke-virtual {v14, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v25, "photo_id"

    move-object/from16 v8, v21

    check-cast v8, Landroid/os/Bundle;

    const-string v26, "photo_id"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v26

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-virtual {v14, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 318
    .end local v15           #bundleArg:Landroid/os/Bundle;
    .end local v18           #intent:Landroid/content/Intent;
    .end local v19           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    check-cast v21, Landroid/os/Bundle;

    .end local v21           #obj:Ljava/lang/Object;
    const-string v8, "from_outside"

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 320
    .local v13, bIsFromOutside:Z
    const-string v8, "SceneOnlineFolder"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "[HTCAlbum][SceneOnlineFolder][onItemClick]4: isOutside: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v8, v0}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mItemSelected:I

    .line 324
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    invoke-interface {v8}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->isAlbumPicker()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 326
    invoke-static {}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->instance()Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;

    move-result-object v3

    .line 327
    .local v3, pickerMgr:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;
    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->setPickerResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->destroyInstance()V

    .line 330
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 331
    .local v17, extras:Landroid/os/Bundle;
    const-string v8, "online_pickermode"

    const/16 v25, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 332
    const-string v8, "servicetype"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v8, "albumName"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v8, "albumId"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v8, "itemId"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 337
    .restart local v18       #intent:Landroid/content/Intent;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 339
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v9

    .line 340
    .local v9, activity:Landroid/app/Activity;
    const/4 v8, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v9, v8, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 341
    invoke-virtual {v9}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 233
    .end local v3           #pickerMgr:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;
    .end local v9           #activity:Landroid/app/Activity;
    .end local v13           #bIsFromOutside:Z
    .end local v17           #extras:Landroid/os/Bundle;
    .end local v18           #intent:Landroid/content/Intent;
    :cond_a
    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #userID:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 234
    .restart local v6       #userID:Ljava/lang/String;
    const-string v8, "user_id"

    invoke-virtual {v14, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 246
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 271
    .restart local v15       #bundleArg:Landroid/os/Bundle;
    .restart local v18       #intent:Landroid/content/Intent;
    .restart local v21       #obj:Ljava/lang/Object;
    .restart local v23       #szServiceUrl:Ljava/lang/String;
    .restart local v24       #szUserID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c
    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v25, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/16 v26, 0x1

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 272
    sget-object v8, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/16 v25, 0x1

    aget-object v23, v8, v25

    goto/16 :goto_3

    .line 274
    :cond_d
    const-string v8, "service_url"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_3

    .line 343
    .end local v15           #bundleArg:Landroid/os/Bundle;
    .end local v18           #intent:Landroid/content/Intent;
    .end local v21           #obj:Ljava/lang/Object;
    .end local v23           #szServiceUrl:Ljava/lang/String;
    .end local v24           #szUserID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13       #bIsFromOutside:Z
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mIsExternal:Z

    if-eqz v8, :cond_f

    .line 345
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v25, "SceneOnlinePhotoThumbnail"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-interface {v8, v14, v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 349
    :cond_f
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 351
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v9

    .line 353
    .restart local v9       #activity:Landroid/app/Activity;
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 355
    .restart local v18       #intent:Landroid/content/Intent;
    const-string v8, "goto_scene"

    const-string v25, "SceneOnlinePhotoThumbnail"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const-string v8, "social_bundle"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 358
    const-class v8, Lcom/htc/album/SocialNetwork/ActivityMainOnline;

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 359
    const/high16 v8, 0x400

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 360
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 364
    .end local v9           #activity:Landroid/app/Activity;
    .end local v18           #intent:Landroid/content/Intent;
    :cond_10
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v25, "SceneOnlinePhotoThumbnail"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-interface {v8, v14, v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public onLeaveScene()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 808
    const-string v0, "SceneOnlineFolder"

    const-string v1, "[HTCAlbum][SceneOnlineFolder][onLeaveScene]: ..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;)V

    .line 810
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    .line 812
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onLeaveScene()V

    .line 815
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    .line 818
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 378
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v1, :cond_1

    :cond_0
    move v1, v3

    .line 425
    :goto_0
    return v1

    .line 380
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 381
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v1, v3

    .line 382
    goto :goto_0

    .line 384
    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 422
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onMessage(Landroid/os/Message;)Z

    :cond_4
    :goto_1
    move v1, v3

    .line 425
    goto :goto_0

    .line 387
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onItemSelected(I)V

    move v1, v2

    .line 388
    goto :goto_0

    .line 390
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onSyncList()V

    goto :goto_1

    .line 393
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onErrorList()V

    goto :goto_1

    .line 396
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->invalidateControlBars()V

    move v1, v2

    .line 397
    goto :goto_0

    .line 399
    :sswitch_4
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitAccountLogin(Landroid/app/Activity;)V

    move v1, v2

    .line 400
    goto :goto_0

    .line 402
    :sswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onLoadingOrDecodingThumbnails(I)V

    goto :goto_1

    .line 405
    :sswitch_6
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onScrollStateChanged(Landroid/os/Message;)V

    goto :goto_1

    .line 408
    :sswitch_7
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_4

    .line 410
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->setLastVisibleIndex(I)V

    .line 411
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onVerifyImageStatus(I)V

    goto :goto_1

    .line 415
    :sswitch_8
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onUICmdRefresh(Landroid/os/Message;)V

    move v1, v2

    .line 416
    goto :goto_0

    .line 418
    :sswitch_9
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    goto :goto_1

    .line 384
    :sswitch_data_0
    .sparse-switch
        0x139c -> :sswitch_0
        0x2763 -> :sswitch_2
        0x4e2d -> :sswitch_4
        0x4e47 -> :sswitch_7
        0x4e88 -> :sswitch_1
        0x4e89 -> :sswitch_3
        0x4f4f -> :sswitch_6
        0x5079 -> :sswitch_5
        0x10200001 -> :sswitch_8
        0x10200009 -> :sswitch_9
    .end sparse-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 14
    .parameter "bundle"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 829
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onNewAdapter(Landroid/os/Bundle;)V

    .line 831
    const-string v8, "SceneOnlineFolder"

    const-string v9, "[HTCAlbum][SceneOnlineFolder][onNewAdapter]: begin..."

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    new-instance v8, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getHandler()Landroid/os/Handler;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 833
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual {v8, p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 834
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-virtual {v8, v9}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->setSceneDisplayControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    .line 836
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    if-eqz v8, :cond_1

    .line 838
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    invoke-interface {v8}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->isFilterPhotoOfMe()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 839
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual {v8, v11}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->filterPhotoOfMeAlbum(Z)V

    .line 840
    :cond_0
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    invoke-interface {v8}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->isImageOnly()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 841
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual {v8, v11}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->filterVideoAlbum(Z)V

    .line 844
    :cond_1
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getSocialIntent()Landroid/content/Intent;

    move-result-object v4

    .line 845
    .local v4, intentArg:Landroid/content/Intent;
    if-nez v4, :cond_2

    .line 847
    const-string v8, "SceneOnlineFolder"

    const-string v9, "[HTCAlbum][SceneOnlineFolder][onNewAdapter]: no social intent..."

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    :goto_0
    return-void

    .line 851
    :cond_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 852
    .local v3, bundleNew:Landroid/os/Bundle;
    const-string v8, "mediaType"

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getAdapterMediaType()I

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 853
    const-string v8, "user_name"

    const-string v9, "user_name"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const-string v8, "user_buddyicon"

    const-string v9, "user_buddyicon"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const-string v8, "service_display"

    const-string v9, "service_display"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const-string v8, "from_tabhost"

    const-string v9, "from_tabhost"

    invoke-virtual {v4, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 857
    const-string v8, "live_album"

    const-string v9, "live_album"

    invoke-virtual {v4, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 858
    const-string v8, "sort_list"

    const-string v9, "sort_list"

    invoke-virtual {v4, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 859
    const-string v8, "my_live_album"

    const-string v9, "my_live_album"

    invoke-virtual {v4, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 860
    const-string v8, "recent_list"

    invoke-virtual {v3, v8, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 862
    const/4 v7, 0x0

    .line 863
    .local v7, szUserID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 864
    .local v6, szServiceUrl:Ljava/lang/String;
    const-string v8, "service_name"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 865
    .local v5, szService:Ljava/lang/String;
    const-string v8, "service_name"

    invoke-virtual {v3, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    sget-object v8, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v8, v8, v12

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 868
    sget-object v8, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    aget-object v6, v8, v12

    .line 878
    :goto_1
    const/4 v0, 0x0

    .line 879
    .local v0, bIsNoFriends:Z
    const/4 v2, 0x0

    .line 880
    .local v2, bIsSignedIn:Z
    const/4 v1, 0x0

    .line 881
    .local v1, bIsSignInRequired:Z
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    if-eqz v8, :cond_3

    .line 883
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    invoke-interface {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->isNoFriends()Z

    move-result v0

    .line 884
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    invoke-interface {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->isSignedIn()Z

    move-result v2

    .line 885
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    invoke-interface {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->isSignInRequired()Z

    move-result v1

    .line 888
    :cond_3
    const-string v8, "service_url"

    invoke-virtual {v3, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const-string v8, "first_activity"

    invoke-virtual {v3, v8, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 890
    const-string v8, "user_id"

    const-string v9, "user_id"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 892
    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 894
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual {v8, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->setDataBundle(Landroid/os/Bundle;)V

    .line 895
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    const-string v9, "from_albumhost"

    invoke-virtual {v4, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->setInternal(Z)V

    .line 897
    if-ne v11, v0, :cond_6

    if-nez v2, :cond_6

    if-ne v11, v1, :cond_6

    .line 899
    const-string v8, "SceneOnlineFolder"

    const-string v9, "[HTCAlbum][SceneOnlineFolder][onNewAdapter]:1... "

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-interface {v8, p0, v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->setNewAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;)V

    .line 901
    invoke-direct {p0, v12}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->RelayoutPageView(I)V

    .line 911
    :goto_2
    const/16 v8, 0x4e89

    invoke-virtual {p0, v8, v13, v12}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onPostMessage(ILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 870
    .end local v0           #bIsNoFriends:Z
    .end local v1           #bIsSignInRequired:Z
    .end local v2           #bIsSignedIn:Z
    :cond_4
    sget-object v8, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 872
    sget-object v8, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    aget-object v6, v8, v11

    goto :goto_1

    .line 876
    :cond_5
    const-string v8, "service_url"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 905
    .restart local v0       #bIsNoFriends:Z
    .restart local v1       #bIsSignInRequired:Z
    .restart local v2       #bIsSignedIn:Z
    :cond_6
    const-string v8, "SceneOnlineFolder"

    const-string v9, "[HTCAlbum][SceneOnlineFolder][onNewAdapter]:2... "

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    invoke-direct {p0, v11}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->RelayoutPageView(I)V

    .line 907
    invoke-virtual {p0, v11}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onEnablePageLoading(Z)V

    .line 908
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    new-instance v9, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$GridImageDownloadedHandler;

    invoke-direct {v9, p0, v13}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$GridImageDownloadedHandler;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;)V

    invoke-virtual {v8, v9}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onLoadData(Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    goto :goto_2
.end method

.method public onNotifyUpdateComplete()V
    .locals 2

    .prologue
    .line 1525
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onNotifyUpdateComplete()V

    .line 1526
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onEnablePageLoading(Z)V

    .line 1527
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    invoke-interface {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->isNoFriends()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1529
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mIsInAnimation:Z

    if-nez v0, :cond_0

    .line 1531
    const-string v0, "SceneOnlineFolder"

    const-string v1, "[HTCAlbum][SceneOnlineFolder][onNotifyUpdateComplete]: notifyMediaDataChange"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setVisibility(Z)V

    .line 1533
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 1536
    :cond_0
    return-void
.end method

.method public onNotifyUpdating(Z)V
    .locals 2
    .parameter "bIsLoading"

    .prologue
    .line 1061
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1062
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 1064
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    .line 1066
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 1430
    const/4 v0, 0x0

    .line 1431
    .local v0, dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v0

    .end local v0           #dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    check-cast v0, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    .restart local v0       #dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    if-eqz v0, :cond_0

    .line 1433
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;->onOptionsItemSelected(Landroid/view/MenuItem;ILjava/lang/String;)Z

    move-result v1

    .line 1443
    :goto_0
    return v1

    .line 1437
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1443
    const/4 v1, 0x0

    goto :goto_0

    .line 1440
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onRefresh(Z)V

    move v1, v2

    .line 1441
    goto :goto_0

    .line 1437
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 1045
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPause()V

    .line 1046
    return-void
.end method

.method public onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V
    .locals 2
    .parameter "animIn"
    .parameter "animOut"
    .parameter "listener"

    .prologue
    .line 1119
    invoke-super {p0, p1, p2, p3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 1120
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getAnimationState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    .line 1123
    :cond_0
    return-void
.end method

.method public onPrepareAnimation(I)Z
    .locals 3
    .parameter "nAnimState"

    .prologue
    .line 1089
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mIsInAnimation:Z

    .line 1090
    iput p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAnimationState:I

    .line 1091
    const/4 v1, 0x0

    .line 1092
    .local v1, bResult:Z
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPrepareAnimation(I)Z

    move-result v1

    .line 1093
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 1094
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-eqz v0, :cond_0

    .line 1095
    const/16 v2, 0x8

    invoke-interface {v0, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setProgressVisibility(I)V

    .line 1099
    :cond_0
    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    .line 1382
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1383
    const/4 v1, 0x0

    .line 1385
    .local v1, bResult:Z
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1386
    .local v0, activity:Landroid/app/Activity;
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    invoke-interface {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->isSignedIn()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-nez v0, :cond_2

    .line 1388
    :cond_1
    const-string v4, "SceneOnlineFolder"

    const-string v5, "[HTCAlbum][SceneOnlineFolder][onPrepareOptionsMenu]: exits 1... "

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v1

    .line 1425
    :goto_0
    return v4

    .line 1391
    :cond_2
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0}, Lcom/htc/sunny2/common/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1397
    iget-boolean v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mIsExternal:Z

    if-eqz v4, :cond_4

    .line 1405
    :cond_3
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1407
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    invoke-interface {v4}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->isPickerMode()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    .line 1408
    goto :goto_0

    .line 1401
    :cond_4
    const-string v4, "SceneOnlineFolder"

    const-string v5, "[HTCAlbum][SceneOnlineFolder][onPrepareOptionsMenu]: exits 2... "

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v1

    .line 1402
    goto :goto_0

    .line 1410
    :cond_5
    const/4 v2, 0x0

    .line 1411
    .local v2, dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v2

    .end local v2           #dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    check-cast v2, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    .restart local v2       #dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    if-eqz v2, :cond_6

    .line 1413
    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v2, p1, v4, v5}, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;->onPrepareOptionsMenu(Landroid/view/Menu;ILjava/lang/String;)Z

    .line 1414
    const-string v4, "SceneOnlineFolder"

    const-string v5, "[HTCAlbum][SceneOnlineFolder][onPrepareOptionsMenu]: Plugin..."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    :goto_1
    const/4 v1, 0x1

    move v4, v1

    .line 1425
    goto :goto_0

    .line 1418
    :cond_6
    const/4 v3, 0x0

    .line 1419
    .local v3, itemRefresh:Landroid/view/MenuItem;
    const/4 v4, 0x6

    const v6, 0x204021a

    invoke-interface {p1, v5, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 1421
    const-string v4, "SceneOnlineFolder"

    const-string v5, "[HTCAlbum][SceneOnlineFolder][onPrepareOptionsMenu]: Normal"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onRefresh(Z)V
    .locals 4
    .parameter "bEnableLoading"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 1475
    if-ne v0, p1, :cond_0

    .line 1477
    invoke-direct {p0, v0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->enableProgressLoading(ZI)V

    .line 1480
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    const/16 v1, 0x4e24

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 1481
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 989
    const-string v2, "SceneOnlineFolder"

    const-string v3, "[HTCAlbum][SceneOnlineFolder][onResume]: "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onResume()V

    .line 994
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    invoke-interface {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->isNoFriends()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 996
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v2, :cond_0

    .line 998
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    invoke-interface {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->isSignInRequired()Z

    move-result v1

    .line 999
    .local v1, bIsSignInRequired:Z
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v0

    .line 1000
    .local v0, bIsAccountActive:Z
    if-ne v5, v1, :cond_1

    if-nez v0, :cond_1

    .line 1002
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->RelayoutPageView(I)V

    .line 1042
    .end local v0           #bIsAccountActive:Z
    .end local v1           #bIsSignInRequired:Z
    :cond_0
    :goto_0
    return-void

    .line 1006
    .restart local v0       #bIsAccountActive:Z
    .restart local v1       #bIsSignInRequired:Z
    :cond_1
    const-string v2, "SceneOnlineFolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneOnlineFolder][onResume]: isPermissionRequired: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    invoke-interface {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->getPermission()Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    invoke-interface {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->isPermissionRequired()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1013
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    invoke-interface {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->isRetryEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    invoke-interface {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->isRetry()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1015
    const-string v2, "SceneOnlineFolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneOnlineFolder][onResume]: retry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    invoke-interface {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->getRetryCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    invoke-direct {p0, v5}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->RelayoutPageView(I)V

    .line 1017
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual {v2}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onUnloadData()V

    .line 1018
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    new-instance v3, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$GridImageDownloadedHandler;

    invoke-direct {v3, p0, v6}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$GridImageDownloadedHandler;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;)V

    invoke-virtual {v2, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onLoadData(Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    .line 1019
    invoke-virtual {p0, v5}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onEnablePageLoading(Z)V

    goto :goto_0

    .line 1024
    :cond_2
    invoke-direct {p0, v5}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->RelayoutPageView(I)V

    .line 1025
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual {v2}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onUnloadData()V

    .line 1026
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    new-instance v3, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$GridImageDownloadedHandler;

    invoke-direct {v3, p0, v6}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$GridImageDownloadedHandler;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;)V

    invoke-virtual {v2, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onLoadData(Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    .line 1027
    invoke-virtual {p0, v5}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onEnablePageLoading(Z)V

    goto/16 :goto_0

    .line 1035
    .end local v0           #bIsAccountActive:Z
    .end local v1           #bIsSignInRequired:Z
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual {v2}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->checkAccountIsAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1037
    const-string v2, "SceneOnlineFolder"

    const-string v3, "[HTCAlbum][SceneOnlineFolder][onResume] account is not available..."

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onBackPressed()Z

    goto/16 :goto_0
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 940
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onSendToBackground(Landroid/os/Bundle;)V

    .line 944
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    .line 945
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 916
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onSendToForeground(Landroid/os/Bundle;)V

    .line 917
    const-string v2, "SceneOnlineFolder"

    const-string v3, "[HTCAlbum][SceneOnlineFolder][onSendToForeground]:... "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 919
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 921
    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

    .line 922
    .local v1, msgHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isNetworkConnectionActive(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 923
    const/16 v2, 0x272c

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;->onPostMessage(ILjava/lang/Object;I)V

    .line 925
    .end local v1           #msgHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    .line 927
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v3, "refresh_by_delete_all"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eq v5, v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v3, "refresh_by_list_changed"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-ne v5, v2, :cond_2

    .line 929
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v3, "refresh_by_delete_all"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 930
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v3, "refresh_by_list_changed"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 931
    invoke-virtual {p0, v4}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onRefresh(Z)V

    .line 934
    :cond_2
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mItemSelected:I

    .line 935
    return-void
.end method

.method public onSyncList()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 370
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->notifyDataSetChanged()V

    .line 371
    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onEnablePageLoading(Z)V

    .line 372
    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onEnableProgressLoading(Z)V

    .line 373
    return-void
.end method

.method protected onSyncPhoto()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1484
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 1492
    :goto_0
    return-object v0

    .line 1487
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1488
    .local v1, context:Landroid/content/Context;
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getSocialIntent()Landroid/content/Intent;

    move-result-object v7

    .line 1489
    .local v7, sceneIntent:Landroid/content/Intent;
    if-eqz v7, :cond_2

    if-nez v1, :cond_3

    :cond_2
    move-object v0, v2

    goto :goto_0

    .line 1490
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v0, :cond_5

    :cond_4
    move-object v0, v2

    goto :goto_0

    .line 1492
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/4 v2, -0x1

    const-string v3, "user_buddyicon"

    invoke-virtual {v7, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getHandler()Landroid/os/Handler;

    move-result-object v5

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public onUnbindAdapter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 980
    const-string v0, "SceneOnlineFolder"

    const-string v1, "[HTCAlbum][SceneOnlineFolder][onUnbindAdapter]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setMediaList(Lcom/htc/sunnyCore/IMediaList;)V

    .line 982
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onUnbindAdapter()V

    .line 983
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOnScrollListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;)V

    .line 984
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1273
    const/4 v1, 0x0

    .line 1275
    .local v1, szText:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1277
    .local v0, activity:Landroid/app/Activity;
    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mIsExternal:Z

    if-eqz v2, :cond_1

    .line 1278
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v1

    .line 1292
    :cond_0
    :goto_0
    return-object v1

    .line 1281
    :cond_1
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1283
    invoke-static {v0}, Lcom/htc/sunny2/common/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1284
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1288
    :cond_2
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    invoke-interface {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->isNoFriends()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1289
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1242
    const/4 v1, 0x0

    .line 1244
    .local v1, szText:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1245
    .local v0, activity:Landroid/app/Activity;
    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mIsExternal:Z

    if-eqz v2, :cond_1

    .line 1247
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getHeaderTitle()Ljava/lang/String;

    move-result-object v1

    .line 1269
    :cond_0
    :goto_0
    return-object v1

    .line 1251
    :cond_1
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1253
    invoke-static {v0}, Lcom/htc/sunny2/common/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1254
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getHeaderTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1258
    :cond_2
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    invoke-interface {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->isNoFriends()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1260
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v1

    .line 1261
    const-string v2, "SceneOnlineFolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneOnlineFolder][onUpdateActionBarTitle]: 2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1265
    :cond_3
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getHeaderTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    const-string v0, "SceneOnlineFolder"

    return-object v0
.end method
