.class public Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;
.super Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;
.source "MfFragmentMainFriends.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MfFragmentMainFriends"


# instance fields
.field private mButtonLogin:Lcom/htc/widget/HtcRimButton;

.field private mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

.field private mIsInRefresh:Z

.field private mLayoutEmptyView:Landroid/widget/RelativeLayout;

.field private mLayoutLoginView:Landroid/view/View;

.field private mLayoutMainView:Landroid/widget/RelativeLayout;

.field private mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

.field private mTextViewLogin:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutLoginView:Landroid/view/View;

    .line 47
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    .line 48
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutMainView:Landroid/widget/RelativeLayout;

    .line 49
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mTextViewLogin:Landroid/widget/TextView;

    .line 50
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    .line 52
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mIsInRefresh:Z

    .line 54
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    return-void
.end method

.method private preparePickerParameters()Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->instance()Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;

    move-result-object v0

    .line 78
    .local v0, landingPagePickerMgr:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;
    invoke-virtual {v0}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->getPickerLandingPageParameter()Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    move-result-object v1

    .line 79
    .local v1, onlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;
    invoke-static {}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->destroyInstance()V

    .line 80
    return-object v1
.end method

.method private setButtonOnClickListener()V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    new-instance v1, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends$1;

    invoke-direct {v1, p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends$1;-><init>(Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    :cond_0
    return-void
.end method


# virtual methods
.method public RelayoutPageView(Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;)V
    .locals 11
    .parameter "nLayoutType"

    .prologue
    const/4 v1, 0x0

    const/16 v10, 0x8

    const/4 v3, 0x1

    const/4 v9, 0x0

    .line 196
    const-string v2, "MfFragmentMainFriends"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][MfFragmentMainFriends][RelayoutPageView]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutLoginView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutMainView:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mLayoutState:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    if-eq v2, p1, :cond_0

    .line 207
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutLoginView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 208
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutLoginView:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 210
    :cond_2
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutMainView:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_3

    .line 211
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutMainView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 213
    :cond_3
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    if-eqz v2, :cond_4

    .line 214
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v2, v10}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 216
    :cond_4
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mTextViewLogin:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 217
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mTextViewLogin:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    :cond_5
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_6

    .line 220
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 222
    :cond_6
    const/4 v6, 0x0

    .line 223
    .local v6, bIsPickerMode:Z
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    if-eqz v2, :cond_7

    .line 224
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    invoke-interface {v2}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->isPickerMode()Z

    move-result v6

    .line 226
    :cond_7
    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->LOGIN:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    if-ne v2, p1, :cond_d

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    if-eqz v2, :cond_d

    .line 228
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    .line 229
    .local v7, bundleArg:Landroid/os/Bundle;
    const/4 v8, 0x0

    .line 230
    .local v8, intentArg:Landroid/content/Intent;
    if-eqz v7, :cond_8

    .line 231
    const-string v1, "social_intent"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    .end local v8           #intentArg:Landroid/content/Intent;
    check-cast v8, Landroid/content/Intent;

    .line 233
    .restart local v8       #intentArg:Landroid/content/Intent;
    :cond_8
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 234
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0041

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimButton;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :cond_9
    :goto_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutLoginView:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v1, v9}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 244
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mTextViewLogin:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->setButtonOnClickListener()V

    .line 271
    .end local v7           #bundleArg:Landroid/os/Bundle;
    .end local v8           #intentArg:Landroid/content/Intent;
    :cond_a
    :goto_2
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mLayoutState:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    .line 273
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->enableSourceContentPadding(Z)V

    goto/16 :goto_0

    .line 235
    .restart local v7       #bundleArg:Landroid/os/Bundle;
    .restart local v8       #intentArg:Landroid/content/Intent;
    :cond_b
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 236
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0042

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 237
    :cond_c
    if-eqz v8, :cond_9

    const-string v1, "opensense_tab"

    invoke-virtual {v8, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 239
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    const-string v2, "login_btn_text"

    invoke-virtual {v8, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 249
    .end local v7           #bundleArg:Landroid/os/Bundle;
    .end local v8           #intentArg:Landroid/content/Intent;
    :cond_d
    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->LIST:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    if-ne v2, p1, :cond_f

    if-eqz v6, :cond_f

    .line 251
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    if-nez v2, :cond_e

    .line 253
    const-string v1, "MfFragmentMainFriends"

    const-string v2, "[HTCAlbum][MfFragmentMainFriends][RelayoutPageView] landing page picker mode, the list view is null."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->onActionBarBackPressed()V

    goto :goto_2

    .line 258
    :cond_e
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    check-cast v0, Lcom/htc/album/SocialNetwork/ListViewFriends;

    .line 259
    .local v0, listView:Lcom/htc/album/SocialNetwork/ListViewFriends;
    const-wide/16 v4, 0x0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/SocialNetwork/ListViewFriends;->onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    goto :goto_2

    .line 262
    .end local v0           #listView:Lcom/htc/album/SocialNetwork/ListViewFriends;
    :cond_f
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->LIST:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    if-ne v1, p1, :cond_10

    .line 264
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutMainView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 266
    :cond_10
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->LOADING:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    if-ne v1, p1, :cond_a

    .line 268
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    aput-object v4, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mLoadingText:Ljava/lang/String;

    .line 269
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->enablePageLoading(Z)V

    goto/16 :goto_2
.end method

.method protected createAdapter()V
    .locals 8

    .prologue
    .line 137
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    if-eqz v5, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 141
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 143
    .local v1, bundle:Landroid/os/Bundle;
    const-string v5, "MfFragmentMainFriends"

    const-string v6, "[HTCAlbum][MfFragmentMainFriends][createAdapter]: "

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v5, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getUIHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-direct {v5, v0, v6, v7}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    .line 149
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onCreate()V

    .line 154
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    move-result-object v3

    .line 155
    .local v3, snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    iget-object v5, v5, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 156
    .local v2, plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    if-nez v2, :cond_2

    .line 158
    const-string v5, "MfFragmentMainFriends"

    const-string v6, "[HTCAlbum][MfFragmentMainFriends][createAdapter]: failed: getOpenSenseTabPlugin..."

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateFriendListPlugin()Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, szPlugin:Ljava/lang/String;
    if-nez v4, :cond_3

    .line 164
    const-string v5, "MfFragmentMainFriends"

    const-string v6, "[HTCAlbum][MfFragmentMainFriends][createAdapter]: failed: onCreateFriendListPlugin..."

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_3
    const-string v5, "MfFragmentMainFriends"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][MfFragmentMainFriends][createAdapter]: OS Plugin: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPluginRemote;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v5, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getUIHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;-><init>(Landroid/os/Handler;)V

    invoke-static {v0, v4, v5}, Lcom/htc/album/SocialNetworkManager/DataPluginHelper;->createFriendListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;)Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    .line 171
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    if-nez v5, :cond_4

    .line 173
    const-string v5, "MfFragmentMainFriends"

    const-string v6, "[HTCAlbum][MfFragmentMainFriends][createAdapter]: failed: unable to create plugin..."

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    :cond_4
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    check-cast v5, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    invoke-virtual {v5, v6}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->setDataPlugin(Lcom/htc/opensense/album/plugin/FriendListPluginBase;)V

    .line 177
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    invoke-virtual {v5}, Lcom/htc/opensense/album/plugin/FriendListPluginBase;->onEnableSignInProcedure()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 179
    const-string v5, "MfFragmentMainFriends"

    const-string v6, "[HTCAlbum][MfFragmentMainFriends][createAdapter]: enable SignIn... "

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    invoke-virtual {v3, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V

    goto/16 :goto_0
.end method

.method protected createListView()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    if-eqz v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 188
    :cond_0
    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewFriends;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getUIHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewFriends;-><init>(Lcom/htc/app/mf/MfFragment;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    .line 189
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->onCreate()V

    .line 190
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->setActionBar(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;)V

    goto :goto_0
.end method

.method public enable2Pane()Z
    .locals 1

    .prologue
    .line 628
    const/4 v0, 0x1

    return v0
.end method

.method protected enablePageLoading(Z)V
    .locals 5
    .parameter "bIsLoading"

    .prologue
    const/4 v4, 0x0

    .line 574
    const/4 v1, 0x0

    .line 575
    .local v1, viewText_1:Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 577
    .local v0, progressBar:Landroid/widget/ProgressBar;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 579
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    const v3, 0x7f090012

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #viewText_1:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 580
    .restart local v1       #viewText_1:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    const v3, 0x7f090060

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #progressBar:Landroid/widget/ProgressBar;
    check-cast v0, Landroid/widget/ProgressBar;

    .line 582
    .restart local v0       #progressBar:Landroid/widget/ProgressBar;
    :cond_0
    const/4 v2, 0x1

    if-ne v2, p1, :cond_4

    .line 584
    if-eqz v0, :cond_1

    .line 585
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 587
    :cond_1
    if-eqz v1, :cond_2

    .line 588
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mLoadingText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    :cond_2
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 600
    :cond_3
    :goto_0
    return-void

    .line 594
    :cond_4
    if-eqz v0, :cond_5

    .line 595
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 597
    :cond_5
    if-eqz v1, :cond_3

    .line 598
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public enableSourceContentPadding(Z)V
    .locals 3
    .parameter "bEnable"

    .prologue
    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, bEnableContentPadding:Z
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 304
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->LIST:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mLayoutState:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    if-ne v1, v2, :cond_0

    .line 306
    const/4 v0, 0x1

    .line 310
    :cond_0
    invoke-super {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->enableSourceContentPadding(Z)V

    .line 311
    return-void
.end method

.method protected getContentView()I
    .locals 1

    .prologue
    .line 72
    const v0, 0x7f03002e

    return v0
.end method

.method public initPageComponents()V
    .locals 3

    .prologue
    .line 118
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->initPageComponents()V

    .line 120
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 124
    .local v0, activity:Landroid/app/Activity;
    const v2, 0x7f09003c

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutMainView:Landroid/widget/RelativeLayout;

    .line 125
    const v2, 0x7f090059

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutLoginView:Landroid/view/View;

    .line 126
    const v2, 0x7f090057

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    .line 127
    const v2, 0x7f090062

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcRimButton;

    iput-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    .line 128
    const v2, 0x7f090061

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mTextViewLogin:Landroid/widget/TextView;

    .line 130
    invoke-static {v0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getGlanceBackground(Landroid/content/Context;)I

    move-result v1

    .line 132
    .local v1, appBkgResId:I
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutLoginView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 133
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 134
    return-void
.end method

.method public onActionBarBackPressed()V
    .locals 1

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 640
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 334
    const-string v1, "MfFragmentMainFriends"

    const-string v2, "[HTCAlbum][MfFragmentMainFriends][onActivityResult]: Begin"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    invoke-interface {v1}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->isPickerMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->onActionBarBackPressed()V

    .line 358
    :goto_0
    return-void

    .line 342
    :cond_0
    const/16 v1, 0x4e2a

    if-ne v1, p1, :cond_2

    if-eqz p3, :cond_2

    .line 344
    const-string v1, "contact_update"

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 345
    .local v0, bIsUpdate:Z
    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 347
    const-string v1, "MfFragmentMainFriends"

    const-string v2, "[HTCAlbum][MfFragmentMainFriends][onActivityResult]: update contact list."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const/16 v2, 0x4e28

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 357
    .end local v0           #bIsUpdate:Z
    :cond_1
    :goto_1
    const-string v1, "MfFragmentMainFriends"

    const-string v2, "[HTCAlbum][MfFragmentMainFriends][onActivityResult]: End"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_2
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    if-eqz v1, :cond_1

    .line 353
    const-string v1, "MfFragmentMainFriends"

    const-string v2, "[HTCAlbum][MfFragmentMainFriends][onActivityResult]: pass to data plugin"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/opensense/album/plugin/FriendListPluginBase;->onUIActivityResult(IILandroid/content/Intent;)V

    goto :goto_1
.end method

.method public onButtonClickLogin()V
    .locals 4

    .prologue
    .line 492
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const/16 v1, 0x4e2d

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 493
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->preparePickerParameters()Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    .line 66
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 320
    const-string v0, "MfFragmentMainFriends"

    const-string v1, "[HTCAlbum][MfFragmentMainFriends][onDestroy]: Begin"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->onDestroy()V

    .line 322
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDestroy()V

    .line 325
    :cond_0
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    .line 327
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->onDestroy()V

    .line 329
    :cond_1
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    .line 330
    const-string v0, "MfFragmentMainFriends"

    const-string v1, "[HTCAlbum][MfFragmentMainFriends][onDestroy]: End"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public onEnableActionBarAppButton()Z
    .locals 2

    .prologue
    .line 621
    const/4 v0, 0x1

    .line 622
    .local v0, bResult:Z
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableLandingPage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    const/4 v0, 0x0

    .line 624
    :cond_0
    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 2

    .prologue
    .line 632
    const/4 v0, 0x0

    .line 633
    .local v0, bResult:Z
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableLandingPage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 634
    const/4 v0, 0x1

    .line 635
    :cond_0
    return v0
.end method

.method public onMenuContactPicker()V
    .locals 5

    .prologue
    .line 454
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    check-cast v1, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    .line 455
    .local v1, adapter:Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;
    if-nez v1, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getActiveUser()Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    move-result-object v0

    .line 459
    .local v0, aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    if-eqz v0, :cond_0

    .line 462
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 463
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "service_name"

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    const-string v3, "user_id"

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    const-string v3, "com.htc.album"

    const-string v4, "com.htc.album.SocialNetwork.ActivityMainFriendsPicker"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    const/16 v3, 0x4e2a

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onMenuRefresh(I)V
    .locals 6
    .parameter "type"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 472
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 473
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isNetworkConnectionActive(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 475
    const/16 v1, 0x274c

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 489
    :goto_0
    return-void

    .line 479
    :cond_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 481
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const/16 v2, 0x4e28

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 482
    iput-boolean v5, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mIsInRefresh:Z

    .line 488
    :goto_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->invalidateOptionsMenu()V

    goto :goto_0

    .line 486
    :cond_1
    const-string v1, "MfFragmentMainFriends"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][MfFragmentMainFriends][onMenuRefresh] Unknow message ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 514
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 515
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 549
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->onMessageHandler(Landroid/os/Message;)V

    goto :goto_0

    .line 521
    :sswitch_0
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->LOGIN:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->RelayoutPageView(Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;)V

    .line 522
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->invalidateOptionsMenu()V

    goto :goto_0

    .line 526
    :sswitch_1
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->LOADING:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->RelayoutPageView(Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;)V

    goto :goto_0

    .line 529
    :sswitch_2
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->enablePageLoading(Z)V

    .line 530
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->onMessageHandler(Landroid/os/Message;)V

    goto :goto_0

    .line 533
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->onSyncListComplete(Landroid/os/Message;)V

    .line 534
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->LIST:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->RelayoutPageView(Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;)V

    .line 535
    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mIsInRefresh:Z

    .line 536
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->invalidateOptionsMenu()V

    goto :goto_0

    .line 539
    :sswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->onMenuRefresh(I)V

    goto :goto_0

    .line 543
    :sswitch_5
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->enablePageLoading(Z)V

    .line 544
    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mIsInRefresh:Z

    .line 545
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->invalidateOptionsMenu()V

    .line 546
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->onMessageHandler(Landroid/os/Message;)V

    goto :goto_0

    .line 518
    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_1
        0x2728 -> :sswitch_2
        0x274c -> :sswitch_5
        0x274f -> :sswitch_0
        0x2767 -> :sswitch_5
        0x4e84 -> :sswitch_1
        0x4e88 -> :sswitch_3
        0x10200001 -> :sswitch_4
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, -0x1

    .line 424
    const-string v1, "MfFragmentMainFriends"

    const-string v2, "[HTCAlbum][MfFragmentMainFriends][onOptionsItemSelected]:... "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    if-eqz v1, :cond_0

    .line 427
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v3, v2}, Lcom/htc/opensense/album/plugin/FriendListPluginBase;->onOptionsItemSelected(Landroid/view/MenuItem;ILjava/lang/String;)Z

    move-result v0

    .line 449
    :goto_0
    return v0

    .line 431
    :cond_0
    const/4 v0, 0x0

    .line 433
    .local v0, bResult:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 448
    :goto_1
    :pswitch_0
    const-string v1, "MfFragmentMainFriends"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][MfFragmentMainFriends][onOptionsItemSelected]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->onMenuContactPicker()V

    .line 438
    const/4 v0, 0x1

    .line 440
    goto :goto_1

    .line 443
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->onMenuRefresh(I)V

    .line 444
    const/4 v0, 0x1

    goto :goto_1

    .line 433
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 314
    const-string v0, "MfFragmentMainFriends"

    const-string v1, "[HTCAlbum][MfFragmentMainFriends][onPause]:... "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->onPause()V

    .line 316
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onPause()V

    .line 317
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 362
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 363
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 364
    const-string v2, "MfFragmentMainFriends"

    const-string v3, "[HTCAlbum][MfFragmentMainFriends][onPrepareOptionsMenu]:"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    invoke-interface {v2}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->isPickerMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mIsInRefresh:Z

    if-eqz v2, :cond_2

    .line 371
    const-string v2, "MfFragmentMainFriends"

    const-string v3, "[HTCAlbum][MfFragmentMainFriends][onPrepareOptionsMenu]: updating... "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :cond_2
    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->UNKNOWN:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mLayoutState:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    if-eq v2, v3, :cond_3

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->LOGIN:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mLayoutState:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    if-ne v2, v3, :cond_4

    .line 377
    :cond_3
    const-string v2, "MfFragmentMainFriends"

    const-string v3, "[HTCAlbum][MfFragmentMainFriends][onPrepareOptionsMenu]: not ready... "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_4
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    if-eqz v2, :cond_5

    .line 383
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Lcom/htc/opensense/album/plugin/FriendListPluginBase;->onPrepareOptionsMenu(Landroid/view/Menu;ILjava/lang/String;)Z

    goto :goto_0

    .line 388
    :cond_5
    const/4 v2, 0x2

    const v3, 0x7f0a0037

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 389
    .local v0, itemContactPicker:Landroid/view/MenuItem;
    const/4 v2, 0x5

    const v3, 0x204021a

    invoke-interface {p1, v5, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 391
    .local v1, itemRefresh:Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v2

    if-nez v2, :cond_7

    .line 393
    if-eqz v0, :cond_6

    .line 394
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 396
    :cond_6
    if-eqz v1, :cond_0

    .line 397
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 401
    :cond_7
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->getCount()I

    move-result v2

    if-ltz v2, :cond_8

    .line 403
    if-eqz v0, :cond_8

    .line 405
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    check-cast v2, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getFriendsCount()I

    move-result v2

    if-lez v2, :cond_9

    .line 407
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 415
    :cond_8
    :goto_1
    if-eqz v1, :cond_0

    .line 417
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 411
    :cond_9
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 277
    const-string v2, "MfFragmentMainFriends"

    const-string v3, "[HTCAlbum][MfFragmentMainFriends][onResume]:... "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->onResume()V

    .line 280
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 282
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isNetworkConnectionActive(Landroid/content/Context;)Z

    move-result v2

    if-ne v4, v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onResume()V

    .line 287
    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->enableSourceContentPadding(Z)V

    .line 288
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    if-eqz v2, :cond_1

    .line 289
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->onResume()V

    .line 291
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 292
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-eqz v0, :cond_2

    .line 294
    const/16 v2, 0x8

    invoke-interface {v0, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setProgressVisibility(I)V

    .line 295
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 297
    :cond_2
    return-void
.end method

.method public onSyncListComplete(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 496
    const-string v3, "MfFragmentMainFriends"

    const-string v4, "[HTCAlbum][MfFragmentMainFriends][onSyncListComplete]:... "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 498
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 499
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "listviewPos"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 500
    .local v2, pos:I
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    instance-of v3, v3, Lcom/htc/album/SocialNetwork/ListViewFriends;

    if-eqz v3, :cond_1

    .line 502
    if-eq v2, v5, :cond_0

    .line 504
    const-string v3, "listviewPos"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 505
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    check-cast v3, Lcom/htc/album/SocialNetwork/ListViewFriends;

    invoke-virtual {v3, v2}, Lcom/htc/album/SocialNetwork/ListViewFriends;->setCurrPosition(I)V

    .line 507
    :cond_0
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->onNotifyListComplete()V

    .line 509
    :cond_1
    const/16 v3, 0x272d

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v6, v4}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 510
    const/16 v3, 0x2728

    const/16 v4, 0x3e8

    invoke-virtual {p0, v3, v6, v4}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 511
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 617
    const-string v0, ""

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 610
    const/4 v0, 0x0

    .line 611
    .local v0, szTitle:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 612
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    iget-object v0, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    .line 613
    :cond_0
    return-object v0
.end method

.method public setActivityTitle()V
    .locals 0

    .prologue
    .line 607
    return-void
.end method

.method public syncExternalRequest()V
    .locals 5

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 87
    .local v0, bundleArg:Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 88
    .local v1, intentArg:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 89
    const-string v2, "social_intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1           #intentArg:Landroid/content/Intent;
    check-cast v1, Landroid/content/Intent;

    .line 91
    .restart local v1       #intentArg:Landroid/content/Intent;
    :cond_0
    if-eqz v1, :cond_2

    .line 93
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    if-nez v2, :cond_1

    .line 94
    new-instance v2, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    invoke-direct {v2, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;)V

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    .line 96
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    const-string v3, "service_name"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 98
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 100
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a003e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    .line 111
    :goto_0
    const-string v2, "MfFragmentMainFriends"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][MfFragmentMainFriends][syncExternalRequest]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_2
    return-void

    .line 103
    :cond_3
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 105
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a003f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 109
    :cond_4
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    const-string v3, "service_display"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method
