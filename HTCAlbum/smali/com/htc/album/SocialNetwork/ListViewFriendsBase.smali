.class public Lcom/htc/album/SocialNetwork/ListViewFriendsBase;
.super Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;
.source "ListViewFriendsBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;,
        Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewTag;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView",
        "<",
        "Lcom/htc/widget/HtcListView;",
        "Landroid/widget/RelativeLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ListViewFriendsBase"


# instance fields
.field private mHandlerData:Landroid/os/Handler;

.field private mHandlerUI:Landroid/os/Handler;

.field protected mImageDefault:Landroid/graphics/Bitmap;

.field protected mInflater:Landroid/view/LayoutInflater;

.field mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field protected mLastScrollState:I

.field mListViewScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V
    .locals 2
    .parameter "activity"
    .parameter "adapterBase"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;-><init>(Landroid/app/Activity;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mLastScrollState:I

    .line 45
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mInflater:Landroid/view/LayoutInflater;

    .line 46
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mHandlerUI:Landroid/os/Handler;

    .line 47
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mHandlerData:Landroid/os/Handler;

    .line 49
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mImageDefault:Landroid/graphics/Bitmap;

    .line 169
    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$1;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$1;-><init>(Lcom/htc/album/SocialNetwork/ListViewFriendsBase;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 240
    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$2;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$2;-><init>(Lcom/htc/album/SocialNetwork/ListViewFriendsBase;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mListViewScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mInflater:Landroid/view/LayoutInflater;

    .line 65
    iput-object p3, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mHandlerUI:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/htc/app/mf/MfFragment;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V
    .locals 2
    .parameter "fragment"
    .parameter "adapterBase"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;-><init>(Lcom/htc/app/mf/MfFragment;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mLastScrollState:I

    .line 45
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mInflater:Landroid/view/LayoutInflater;

    .line 46
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mHandlerUI:Landroid/os/Handler;

    .line 47
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mHandlerData:Landroid/os/Handler;

    .line 49
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mImageDefault:Landroid/graphics/Bitmap;

    .line 169
    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$1;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$1;-><init>(Lcom/htc/album/SocialNetwork/ListViewFriendsBase;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 240
    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$2;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$2;-><init>(Lcom/htc/album/SocialNetwork/ListViewFriendsBase;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mListViewScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 55
    invoke-virtual {p1}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mInflater:Landroid/view/LayoutInflater;

    .line 56
    iput-object p3, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mHandlerUI:Landroid/os/Handler;

    .line 57
    return-void
.end method


# virtual methods
.method public bindAdapter()V
    .locals 5

    .prologue
    .line 110
    const-string v2, "ListViewFriendsBase"

    const-string v3, "[HTCAlbum][ListViewFriendsBase][bindAdapter]: Begin"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 113
    const/4 v1, 0x0

    .line 115
    .local v1, context:Landroid/content/Context;
    iget-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v2, :cond_1

    .line 116
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v2}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 120
    :goto_0
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v2, Lcom/htc/widget/HtcListView;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/htc/album/Customizable/CustHtcListViewStyle;->setStyle(Landroid/content/Context;Lcom/htc/widget/HtcListView;ZZ)V

    .line 122
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v2, Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v2, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->attachMainView(Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;)V

    .line 124
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mHandlerUI:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->setUIHandler(Landroid/os/Handler;)V

    .line 126
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->getDataHandler()Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mHandlerData:Landroid/os/Handler;

    .line 129
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v2, Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 130
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v2, Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mListViewScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 132
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Default_Avatar(Landroid/content/Context;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 133
    .local v0, bitmapTemp:Landroid/graphics/Bitmap;
    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->SQR_THUMBNAIL_SIZE:I

    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->SQR_THUMBNAIL_SIZE:I

    invoke-static {v0, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->bitmapResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mImageDefault:Landroid/graphics/Bitmap;

    .line 138
    .end local v0           #bitmapTemp:Landroid/graphics/Bitmap;
    .end local v1           #context:Landroid/content/Context;
    :cond_0
    const-string v2, "ListViewFriendsBase"

    const-string v3, "[HTCAlbum][ListViewFriendsBase][bindAdapter]: End"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void

    .line 118
    .restart local v1       #context:Landroid/content/Context;
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic createMainView()Landroid/view/View;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->createMainView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    return-object v0
.end method

.method public createMainView()Lcom/htc/widget/HtcListView;
    .locals 4

    .prologue
    .line 85
    const-string v2, "ListViewFriendsBase"

    const-string v3, "[HTCAlbum][ListViewFriendsBase][createMainView]:..."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/4 v1, 0x0

    .line 87
    .local v1, view:Lcom/htc/widget/HtcListView;
    const/4 v0, 0x0

    .line 88
    .local v0, context:Landroid/content/Context;
    iget-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v2}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 93
    :goto_0
    new-instance v1, Lcom/htc/widget/HtcListView;

    .end local v1           #view:Lcom/htc/widget/HtcListView;
    invoke-direct {v1, v0}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;)V

    .line 95
    .restart local v1       #view:Lcom/htc/widget/HtcListView;
    return-object v1

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic createMainViewWrapper()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->createMainViewWrapper()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public createMainViewWrapper()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMainViewContainerId()I
    .locals 1

    .prologue
    .line 73
    const v0, 0x7f09003c

    return v0
.end method

.method public getMainViewWrapperContainerId()I
    .locals 1

    .prologue
    .line 79
    const v0, 0x7f09003b

    return v0
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mLastScrollState:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "pos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 258
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v5, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;

    .line 259
    .local v5, listAdapter:Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;
    iget-object v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v12, p1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 261
    .local v1, aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v12

    if-nez v12, :cond_1

    .line 262
    :cond_0
    const/4 v12, 0x0

    .line 376
    :goto_0
    return-object v12

    .line 264
    :cond_1
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v12

    invoke-virtual {v12}, Lcom/htc/opensense2/album/util/SeparatorTag;->getType()Ljava/lang/String;

    move-result-object v9

    .line 266
    .local v9, typeInfo:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 268
    if-nez p2, :cond_4

    .line 269
    move-object/from16 v0, p3

    invoke-virtual {p0, v9, p1, v1, v0}, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->inflateListViewItem(Ljava/lang/String;ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 280
    :cond_2
    :goto_1
    const-string v12, "SEPARABLE_DIVIDER"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 282
    if-nez p1, :cond_5

    .line 283
    const v12, 0x20401ef

    move-object/from16 v0, p2

    invoke-virtual {p0, v0, p1, v12}, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->onUpdateSeparatorText(Landroid/view/View;II)V

    :cond_3
    :goto_2
    move-object/from16 v12, p2

    .line 376
    goto :goto_0

    .line 272
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;

    iget-object v10, v12, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewTag;->mTag:Ljava/lang/String;

    .line 273
    .local v10, typeInfoCache:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 274
    move-object/from16 v0, p3

    invoke-virtual {p0, v9, p1, v1, v0}, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->inflateListViewItem(Ljava/lang/String;ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 285
    .end local v10           #typeInfoCache:Ljava/lang/String;
    :cond_5
    const v12, 0x20401f0

    move-object/from16 v0, p2

    invoke-virtual {p0, v0, p1, v12}, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->onUpdateSeparatorText(Landroid/view/View;II)V

    goto :goto_2

    .line 287
    :cond_6
    const-string v12, "SEPARABLE_PLACEHOLDER"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 290
    iget-object v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v12, Lcom/htc/widget/HtcListView;

    invoke-virtual {v12}, Lcom/htc/widget/HtcListView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 291
    .local v7, res:Landroid/content/res/Resources;
    const v12, 0x7f090012

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 292
    .local v11, viewText:Landroid/widget/TextView;
    if-eqz v11, :cond_3

    .line 294
    invoke-virtual {v11}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 295
    .local v6, param:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v6, :cond_7

    .line 297
    const/4 v12, 0x1

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->orientation:I

    if-ne v12, v13, :cond_8

    .line 298
    sget v12, Lcom/htc/album/AlbumCommon/LayoutConstants;->LIST_ITEM_NO_FRIENDS_VIEW_HEIGHT_PORT_DIMEN:I

    iput v12, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 302
    :cond_7
    :goto_3
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getNameByResource()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 300
    :cond_8
    sget v12, Lcom/htc/album/AlbumCommon/LayoutConstants;->LIST_ITEM_NO_FRIENDS_VIEW_HEIGHT_LAND_DIMEN:I

    iput v12, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3

    .line 307
    .end local v6           #param:Landroid/view/ViewGroup$LayoutParams;
    .end local v7           #res:Landroid/content/res/Resources;
    .end local v11           #viewText:Landroid/widget/TextView;
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;

    .line 308
    .local v4, contactTag:Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;
    iget v12, v4, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewTag;->mIndex:I

    if-eq v12, p1, :cond_b

    .line 310
    iput p1, v4, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewTag;->mIndex:I

    .line 311
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v4, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;->mText:Ljava/lang/String;

    .line 316
    const/4 v12, 0x1

    invoke-virtual {p0, v4, v12}, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->onUpdateText(Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;Z)V

    .line 322
    iget v12, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mLastScrollState:I

    if-nez v12, :cond_a

    const/4 v2, 0x1

    .line 323
    .local v2, bIsIdle:Z
    :goto_4
    const/4 v3, 0x0

    .line 325
    .local v3, bitmap:Landroid/graphics/Bitmap;
    iget-object v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v12, Lcom/htc/widget/HtcListView;

    invoke-virtual {v12}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v5, v12, p1, v1, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->onRequestPhoto(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 331
    const/4 v12, 0x1

    invoke-virtual {p0, v4, v3, v12}, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->onUpdateImage(Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;Landroid/graphics/Bitmap;Z)V

    .line 337
    invoke-virtual {p0, v4, v1}, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->onUpdateCheckBox(Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;)V

    goto/16 :goto_2

    .line 322
    .end local v2           #bIsIdle:Z
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    :cond_a
    const/4 v2, 0x0

    goto :goto_4

    .line 345
    :cond_b
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v8

    .line 346
    .local v8, szPersonName:Ljava/lang/String;
    if-eqz v8, :cond_c

    iget-object v12, v4, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;->mText:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 348
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v4, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;->mText:Ljava/lang/String;

    .line 349
    const/4 v12, 0x1

    invoke-virtual {p0, v4, v12}, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->onUpdateText(Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;Z)V

    .line 358
    :cond_c
    iget v12, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mLastScrollState:I

    if-nez v12, :cond_d

    const/4 v2, 0x1

    .line 359
    .restart local v2       #bIsIdle:Z
    :goto_5
    const/4 v3, 0x0

    .line 361
    .restart local v3       #bitmap:Landroid/graphics/Bitmap;
    iget-object v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v12, Lcom/htc/widget/HtcListView;

    invoke-virtual {v12}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v5, v12, p1, v1, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsBase;->onRequestPhoto(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 366
    const/4 v12, 0x0

    invoke-virtual {p0, v4, v3, v12}, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->onUpdateImage(Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;Landroid/graphics/Bitmap;Z)V

    .line 372
    invoke-virtual {p0, v4, v1}, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->onUpdateCheckBox(Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;)V

    goto/16 :goto_2

    .line 358
    .end local v2           #bIsIdle:Z
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    :cond_d
    const/4 v2, 0x0

    goto :goto_5
.end method

.method protected inflateListViewItem(Ljava/lang/String;ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "szType"
    .parameter "position"
    .parameter "aPerson"
    .parameter "parent"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 416
    const/4 v1, 0x0

    .line 417
    .local v1, view:Landroid/view/View;
    if-nez p3, :cond_0

    move-object v2, v1

    .line 456
    .end local v1           #view:Landroid/view/View;
    .local v2, view:Landroid/view/View;
    :goto_0
    return-object v2

    .line 420
    .end local v2           #view:Landroid/view/View;
    .restart local v1       #view:Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    .line 422
    .local v0, tag:Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewTag;
    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;

    .end local v0           #tag:Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewTag;
    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;-><init>(Lcom/htc/album/SocialNetwork/ListViewFriendsBase;)V

    .line 424
    .restart local v0       #tag:Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewTag;
    const-string v3, "SEPARABLE_DIVIDER"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 426
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030026

    invoke-virtual {v3, v4, p4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 427
    iput-object p1, v0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewTag;->mTag:Ljava/lang/String;

    .line 455
    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 456
    .end local v1           #view:Landroid/view/View;
    .restart local v2       #view:Landroid/view/View;
    goto :goto_0

    .line 429
    .end local v2           #view:Landroid/view/View;
    .restart local v1       #view:Landroid/view/View;
    :cond_1
    const-string v3, "SEPARABLE_PLACEHOLDER"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 431
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030037

    invoke-virtual {v3, v4, p4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 432
    iput-object p1, v0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewTag;->mTag:Ljava/lang/String;

    goto :goto_1

    .line 436
    :cond_2
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030023

    invoke-virtual {v3, v4, p4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 437
    iput-object p1, v0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewTag;->mTag:Ljava/lang/String;

    move-object v3, v0

    .line 439
    check-cast v3, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;

    const v4, 0x7f09004d

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v4, v3, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;->mViewText:Lcom/htc/widget/HtcListItem2LineText;

    move-object v3, v0

    .line 440
    check-cast v3, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;

    iget-object v3, v3, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;->mViewText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    move-object v3, v0

    .line 442
    check-cast v3, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;

    const v4, 0x7f09004c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v4, v3, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;->mViewBackground:Lcom/htc/widget/HtcListItemTileImage;

    move-object v3, v0

    .line 443
    check-cast v3, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;

    iget-object v3, v3, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;->mViewBackground:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mImageDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    move-object v3, v0

    .line 444
    check-cast v3, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;

    iget-object v3, v3, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;->mViewBackground:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    move-object v3, v0

    .line 446
    check-cast v3, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;

    const v4, 0x7f09004a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v4, v3, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;->mViewImage:Lcom/htc/widget/HtcListItemTileImage;

    move-object v3, v0

    .line 447
    check-cast v3, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;

    iget-object v3, v3, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;->mViewImage:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    move-object v3, v0

    .line 449
    check-cast v3, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;

    const v4, 0x7f09004e

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcCheckBox;

    iput-object v4, v3, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;->mViewChkBox:Lcom/htc/widget/HtcCheckBox;

    move-object v3, v0

    .line 450
    check-cast v3, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;

    iget-object v3, v3, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;->mViewChkBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcCheckBox;->setClickable(Z)V

    move-object v3, v0

    .line 451
    check-cast v3, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;

    iget-object v3, v3, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;->mViewChkBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcCheckBox;->setFocusable(Z)V

    move-object v3, v0

    .line 452
    check-cast v3, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;

    iget-object v3, v3, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;->mViewChkBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    return-void
.end method

.method protected onListScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "nFirstIndex"
    .parameter "nVisibleItems"
    .parameter "nTotalItems"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    sget v1, Lcom/htc/opensense2/album/cache/CacheManager;->PREV_LISTVIEW_VISIBLE_RANGE:I

    sub-int v1, p2, v1

    sget v2, Lcom/htc/opensense2/album/cache/CacheManager;->NEXT_LISTVIEW_VISIBLE_RANGE:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->setVisibleRange(II)V

    .line 189
    :cond_0
    return-void
.end method

.method protected onListScrollFling()V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->setScrollState(II)V

    .line 195
    :cond_0
    return-void
.end method

.method protected onListScrollIdle()V
    .locals 5

    .prologue
    .line 199
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    if-eqz v3, :cond_0

    .line 201
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 202
    .local v0, nCount:I
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v3, Lcom/htc/widget/HtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v1

    .line 203
    .local v1, nFirst:I
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v3, Lcom/htc/widget/HtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getLastVisiblePosition()I

    move-result v2

    .line 204
    .local v2, nLast:I
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v3, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->setScrollState(IIII)V

    .line 206
    .end local v0           #nCount:I
    .end local v1           #nFirst:I
    .end local v2           #nLast:I
    :cond_0
    return-void
.end method

.method protected onListScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "nScrollState"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mLastScrollState:I

    if-ne v0, p2, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iput p2, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mLastScrollState:I

    .line 223
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 229
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->onListScrollIdle()V

    goto :goto_0

    .line 226
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->onListScrollFling()V

    goto :goto_0

    .line 232
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->onListScrollTouch()V

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onListScrollTouch()V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->setScrollState(II)V

    .line 212
    :cond_0
    return-void
.end method

.method protected onUpdateCheckBox(Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;)V
    .locals 0
    .parameter "tag"
    .parameter "aPerson"

    .prologue
    .line 413
    return-void
.end method

.method protected onUpdateImage(Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;Landroid/graphics/Bitmap;Z)V
    .locals 5
    .parameter "tag"
    .parameter "bitmap"
    .parameter "bForce"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 392
    iget-object v0, p1, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;->mViewBackground:Lcom/htc/widget/HtcListItemTileImage;

    .line 393
    .local v0, imgBackground:Lcom/htc/widget/HtcListItemTileImage;
    iget-object v1, p1, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;->mViewImage:Lcom/htc/widget/HtcListItemTileImage;

    .line 395
    .local v1, imgView:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz p2, :cond_2

    .line 397
    if-nez p3, :cond_0

    iget v2, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mLastScrollState:I

    if-nez v2, :cond_1

    .line 399
    :cond_0
    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 400
    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 401
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 409
    :cond_1
    :goto_0
    return-void

    .line 406
    :cond_2
    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 407
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onUpdateSeparatorText(Landroid/view/View;II)V
    .locals 1
    .parameter "convertView"
    .parameter "nIndex"
    .parameter "nResource"

    .prologue
    .line 380
    check-cast p1, Lcom/htc/widget/HtcListItemSeparator;

    .end local p1
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p3}, Lcom/htc/widget/HtcListItemSeparator;->setText(II)V

    .line 381
    return-void
.end method

.method protected onUpdateText(Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;Z)V
    .locals 2
    .parameter "tag"
    .parameter "bForce"

    .prologue
    .line 384
    if-nez p2, :cond_0

    .line 389
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p1, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;->mViewText:Lcom/htc/widget/HtcListItem2LineText;

    .line 388
    .local v0, viewText:Lcom/htc/widget/HtcListItem2LineText;
    iget-object v1, p1, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 161
    :cond_0
    return-void
.end method

.method public unbindAdapter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 143
    const-string v0, "ListViewFriendsBase"

    const-string v1, "[HTCAlbum][ListViewFriendsBase][unbindAdapter] Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->setUIHandler(Landroid/os/Handler;)V

    .line 148
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mImageDefault:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mImageDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 153
    :cond_1
    const-string v0, "ListViewFriendsBase"

    const-string v1, "[HTCAlbum][ListViewFriendsBase][unbindAdapter] End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method
