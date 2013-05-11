.class public Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;
.super Lcom/htc/album/SocialNetwork/ListViewFriendsBase;
.source "ListViewFriendsSearch.java"


# static fields
.field private static final HEADER_BAR_TAGVIEW:I = 0x159

.field private static final LOG_TAG:Ljava/lang/String; = "ListViewSearch"


# instance fields
.field private mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

.field private mHtcTextSelectionColor:I

.field private mSearchInput:Landroid/widget/AutoCompleteTextView;

.field private mStrFilter:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V
    .locals 1
    .parameter "activity"
    .parameter "adapterBase"
    .parameter "handler"

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;-><init>(Landroid/app/Activity;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V

    .line 78
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->mStrFilter:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->mSearchInput:Landroid/widget/AutoCompleteTextView;

    .line 80
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->mHtcTextSelectionColor:I

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->mStrFilter:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/htc/app/mf/MfFragment;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V
    .locals 1
    .parameter "fragment"
    .parameter "adapterBase"
    .parameter "handler"

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;-><init>(Lcom/htc/app/mf/MfFragment;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V

    .line 78
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->mStrFilter:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->mSearchInput:Landroid/widget/AutoCompleteTextView;

    .line 80
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->mHtcTextSelectionColor:I

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->mStrFilter:Ljava/lang/String;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->mSearchInput:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;)Lcom/htc/widget/ActionBarSearch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method private getViewFriend(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21
    .parameter "pos"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 287
    const/16 v17, 0x0

    .line 288
    .local v17, viewText_1:Landroid/widget/TextView;
    const/4 v15, 0x0

    .line 289
    .local v15, viewListItem:Lcom/htc/widget/HtcListItem;
    const/4 v14, 0x0

    .line 290
    .local v14, viewImageBkg:Lcom/htc/widget/HtcListItemTileImage;
    const/4 v13, 0x0

    .line 291
    .local v13, viewImage:Lcom/htc/widget/HtcListItemTileImage;
    const/16 v16, 0x0

    .line 292
    .local v16, viewText:Lcom/htc/widget/HtcListItem2LineText;
    const/4 v12, 0x0

    .line 294
    .local v12, viewChkbox:Lcom/htc/widget/HtcCheckBox;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v9, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    .line 295
    .local v9, listAdapter:Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;
    move/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 297
    .local v4, aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    if-eqz v4, :cond_1

    .line 299
    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v8

    .line 301
    .local v8, currentTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    if-nez p2, :cond_5

    .line 306
    sget-object v18, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    move-object/from16 v0, v18

    if-ne v8, v0, :cond_2

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f030026

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 362
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 368
    sget-object v18, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 373
    sget-object v18, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    move-object/from16 v0, v18

    if-ne v8, v0, :cond_9

    move-object/from16 v18, p2

    .line 376
    check-cast v18, Lcom/htc/widget/HtcListItemSeparator;

    const/16 v19, 0x0

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getNameByResource()I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Lcom/htc/widget/HtcListItemSeparator;->setText(II)V

    .line 449
    .end local v8           #currentTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    :cond_1
    :goto_1
    return-object p2

    .line 310
    .restart local v8       #currentTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    :cond_2
    sget-object v18, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_PLACEHOLDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    move-object/from16 v0, v18

    if-ne v8, v0, :cond_3

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f030037

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 314
    :cond_3
    sget-object v18, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_SINGLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    move-object/from16 v0, v18

    if-eq v8, v0, :cond_4

    sget-object v18, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    move-object/from16 v0, v18

    if-eq v8, v0, :cond_4

    sget-object v18, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    move-object/from16 v0, v18

    if-eq v8, v0, :cond_4

    sget-object v18, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BOTTOM:Lcom/htc/opensense2/album/util/SeparatorTag;

    move-object/from16 v0, v18

    if-ne v8, v0, :cond_0

    .line 319
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f030023

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 320
    const v18, 0x7f09004c

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14           #viewImageBkg:Lcom/htc/widget/HtcListItemTileImage;
    check-cast v14, Lcom/htc/widget/HtcListItemTileImage;

    .line 321
    .restart local v14       #viewImageBkg:Lcom/htc/widget/HtcListItemTileImage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mImageDefault:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 327
    :cond_5
    const/4 v5, 0x0

    .line 328
    .local v5, aTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #aTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    check-cast v5, Lcom/htc/opensense2/album/util/SeparatorTag;

    .restart local v5       #aTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    if-eqz v5, :cond_0

    .line 330
    sget-object v18, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    move-object/from16 v0, v18

    if-ne v8, v0, :cond_6

    .line 332
    sget-object v18, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    move-object/from16 v0, v18

    if-eq v5, v0, :cond_0

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f030026

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 337
    :cond_6
    sget-object v18, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_SINGLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    move-object/from16 v0, v18

    if-eq v8, v0, :cond_7

    sget-object v18, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    move-object/from16 v0, v18

    if-eq v8, v0, :cond_7

    sget-object v18, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    move-object/from16 v0, v18

    if-eq v8, v0, :cond_7

    sget-object v18, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BOTTOM:Lcom/htc/opensense2/album/util/SeparatorTag;

    move-object/from16 v0, v18

    if-ne v8, v0, :cond_8

    .line 342
    :cond_7
    sget-object v18, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_SINGLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    move-object/from16 v0, v18

    if-eq v5, v0, :cond_0

    sget-object v18, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    move-object/from16 v0, v18

    if-eq v5, v0, :cond_0

    sget-object v18, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    move-object/from16 v0, v18

    if-eq v5, v0, :cond_0

    sget-object v18, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BOTTOM:Lcom/htc/opensense2/album/util/SeparatorTag;

    move-object/from16 v0, v18

    if-eq v5, v0, :cond_0

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f030023

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 348
    const v18, 0x7f09004c

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14           #viewImageBkg:Lcom/htc/widget/HtcListItemTileImage;
    check-cast v14, Lcom/htc/widget/HtcListItemTileImage;

    .line 349
    .restart local v14       #viewImageBkg:Lcom/htc/widget/HtcListItemTileImage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mImageDefault:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 352
    :cond_8
    sget-object v18, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_PLACEHOLDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    move-object/from16 v0, v18

    if-ne v8, v0, :cond_0

    .line 354
    sget-object v18, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_PLACEHOLDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    move-object/from16 v0, v18

    if-eq v5, v0, :cond_0

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f030037

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 378
    .end local v5           #aTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    :cond_9
    sget-object v18, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_PLACEHOLDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    move-object/from16 v0, v18

    if-ne v8, v0, :cond_c

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    move-object/from16 v18, v0

    check-cast v18, Lcom/htc/widget/HtcListView;

    invoke-virtual/range {v18 .. v18}, Lcom/htc/widget/HtcListView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 382
    .local v11, res:Landroid/content/res/Resources;
    const v18, 0x7f090012

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .end local v17           #viewText_1:Landroid/widget/TextView;
    check-cast v17, Landroid/widget/TextView;

    .line 383
    .restart local v17       #viewText_1:Landroid/widget/TextView;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 384
    .local v10, param:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v10, :cond_a

    .line 386
    const/16 v18, 0x1

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 387
    sget v18, Lcom/htc/album/AlbumCommon/LayoutConstants;->LIST_ITEM_NO_FRIENDS_VIEW_HEIGHT_PORT_DIMEN:I

    move/from16 v0, v18

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 392
    :cond_a
    :goto_2
    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getNameByResource()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 389
    :cond_b
    sget v18, Lcom/htc/album/AlbumCommon/LayoutConstants;->LIST_ITEM_NO_FRIENDS_VIEW_HEIGHT_LAND_DIMEN:I

    move/from16 v0, v18

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 394
    .end local v10           #param:Landroid/view/ViewGroup$LayoutParams;
    .end local v11           #res:Landroid/content/res/Resources;
    :cond_c
    sget-object v18, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_SINGLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    move-object/from16 v0, v18

    if-eq v8, v0, :cond_d

    sget-object v18, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    move-object/from16 v0, v18

    if-eq v8, v0, :cond_d

    sget-object v18, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    move-object/from16 v0, v18

    if-eq v8, v0, :cond_d

    sget-object v18, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BOTTOM:Lcom/htc/opensense2/album/util/SeparatorTag;

    move-object/from16 v0, v18

    if-ne v8, v0, :cond_1

    .line 399
    :cond_d
    const v18, 0x7f09004b

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .end local v15           #viewListItem:Lcom/htc/widget/HtcListItem;
    check-cast v15, Lcom/htc/widget/HtcListItem;

    .line 400
    .restart local v15       #viewListItem:Lcom/htc/widget/HtcListItem;
    const v18, 0x7f09004c

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14           #viewImageBkg:Lcom/htc/widget/HtcListItemTileImage;
    check-cast v14, Lcom/htc/widget/HtcListItemTileImage;

    .line 401
    .restart local v14       #viewImageBkg:Lcom/htc/widget/HtcListItemTileImage;
    const v18, 0x7f09004a

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13           #viewImage:Lcom/htc/widget/HtcListItemTileImage;
    check-cast v13, Lcom/htc/widget/HtcListItemTileImage;

    .line 402
    .restart local v13       #viewImage:Lcom/htc/widget/HtcListItemTileImage;
    const v18, 0x7f09004d

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .end local v16           #viewText:Lcom/htc/widget/HtcListItem2LineText;
    check-cast v16, Lcom/htc/widget/HtcListItem2LineText;

    .line 403
    .restart local v16       #viewText:Lcom/htc/widget/HtcListItem2LineText;
    const v18, 0x7f09004e

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #viewChkbox:Lcom/htc/widget/HtcCheckBox;
    check-cast v12, Lcom/htc/widget/HtcCheckBox;

    .line 405
    .restart local v12       #viewChkbox:Lcom/htc/widget/HtcCheckBox;
    if-eqz v15, :cond_e

    .line 408
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/htc/widget/HtcListItem;->setFocusable(Z)V

    .line 411
    :cond_e
    if-eqz v13, :cond_f

    .line 413
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->mLastScrollState:I

    move/from16 v18, v0

    if-nez v18, :cond_11

    const/4 v6, 0x1

    .line 414
    .local v6, bIsIdle:Z
    :goto_3
    const/4 v7, 0x0

    .line 415
    .local v7, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    move-object/from16 v18, v0

    check-cast v18, Lcom/htc/widget/HtcListView;

    invoke-virtual/range {v18 .. v18}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v9, v0, v1, v4, v6}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onRequestPhoto(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 420
    if-eqz v7, :cond_12

    .line 422
    invoke-virtual {v13, v7}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 423
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 424
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 433
    .end local v6           #bIsIdle:Z
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    :cond_f
    :goto_4
    if-eqz v16, :cond_10

    .line 435
    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->mStrFilter:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->getSpanableText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 436
    const/16 v18, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 437
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setFocusable(Z)V

    .line 440
    :cond_10
    if-eqz v12, :cond_1

    .line 442
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    goto/16 :goto_1

    .line 413
    :cond_11
    const/4 v6, 0x0

    goto :goto_3

    .line 428
    .restart local v6       #bIsIdle:Z
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :cond_12
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 429
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    goto :goto_4
.end method


# virtual methods
.method public getSpanableText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 7
    .parameter "text"
    .parameter "hightLight"

    .prologue
    const/16 v6, 0x21

    const/4 v5, -0x1

    .line 210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    const-string p1, ""

    .line 213
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 215
    .local v1, spannableString:Landroid/text/SpannableString;
    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 239
    :cond_1
    :goto_0
    return-object v1

    .line 218
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 220
    .local v2, startPos:I
    if-eq v2, v5, :cond_1

    .line 223
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 225
    .local v0, endPos:I
    iget v3, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->mHtcTextSelectionColor:I

    if-nez v3, :cond_3

    .line 227
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v3, Lcom/htc/widget/HtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getColor_TextSelectionColor(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->mHtcTextSelectionColor:I

    .line 229
    :cond_3
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    iget v4, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->mHtcTextSelectionColor:I

    invoke-direct {v3, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v3, v2, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 233
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v3, v2, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 237
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 239
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 106
    const/4 v1, 0x0

    .line 109
    .local v1, viewItem:Landroid/view/View;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->getViewFriend(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 115
    :goto_0
    return-object v1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ListViewSearch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ListViewSearch][getView]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initEditText()Z
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->mSearchInput:Landroid/widget/AutoCompleteTextView;

    if-nez v0, :cond_0

    .line 152
    const-string v0, "ListViewSearch"

    const-string v1, "[HTCAlbum][ListViewSearch][initEditText]: Search input is null..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const/4 v0, 0x0

    .line 205
    :goto_0
    return v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->mSearchInput:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 157
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->mSearchInput:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch$1;

    invoke-direct {v1, p0}, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch$1;-><init>(Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 166
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->mSearchInput:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch$2;

    invoke-direct {v1, p0}, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch$2;-><init>(Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 205
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initUI()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 119
    const-string v3, "ListViewSearch"

    const-string v4, "[HTCAlbum][ListViewSearch][initUI]: "

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-nez v3, :cond_1

    .line 122
    const-string v3, "ListViewSearch"

    const-string v4, "[HTCAlbum][ListViewSearch][initUI]: no action bar..."

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->enableSearchMode(Landroid/content/Context;Z)V

    .line 127
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->searchPane()Lcom/htc/widget/ActionBarSearch;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    .line 128
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/widget/ActionBarSearch;->setClearIconVisibility(I)V

    .line 130
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v3}, Lcom/htc/widget/ActionBarSearch;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->mSearchInput:Landroid/widget/AutoCompleteTextView;

    .line 131
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->initEditText()Z

    move-result v3

    if-ne v6, v3, :cond_2

    .line 133
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->mSearchInput:Landroid/widget/AutoCompleteTextView;

    check-cast v3, Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcAutoCompleteTextView;->setMode(I)V

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    .line 140
    .local v0, activity:Landroid/app/Activity;
    const v3, 0x7f09003c

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 141
    .local v1, layoutListView:Landroid/widget/RelativeLayout;
    if-eqz v1, :cond_0

    .line 143
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v3, Lcom/htc/widget/HtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->getHeight(Landroid/content/Context;I)I

    move-result v2

    .line 144
    .local v2, nTopMargin:I
    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 473
    return-void
.end method

.method public onConfirm()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->updateFileCache()V

    .line 470
    return-void
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
    .line 456
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    .line 457
    .local v0, nButtonID:I
    packed-switch v0, :pswitch_data_0

    .line 466
    :goto_0
    return-void

    .line 460
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->onConfirm()V

    goto :goto_0

    .line 463
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->onCancel()V

    goto :goto_0

    .line 457
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onEnter()V
    .locals 0

    .prologue
    .line 498
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->onEnter()V

    .line 500
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->initUI()V

    .line 501
    return-void
.end method

.method public onLeave()V
    .locals 0

    .prologue
    .line 504
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->onLeave()V

    .line 505
    return-void
.end method

.method public onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 245
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v4, v4, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    if-eqz v4, :cond_1

    .line 250
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v3, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    .line 251
    .local v3, listAdapter:Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;
    invoke-virtual {v3, p3}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 253
    .local v2, itemSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 255
    const-string v4, "ListViewSearch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ListViewSearch][onListItemClick]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->sd(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static {v2}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->addTop5FriendList(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;)V

    .line 262
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 263
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 264
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "tag_name"

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v4, "tag_id"

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 267
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 268
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 279
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #itemSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .end local v3           #listAdapter:Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v4, v4, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    if-eqz v4, :cond_0

    .line 274
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v3, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    .line 275
    .local v3, listAdapter:Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;
    invoke-virtual {v3, p3}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 276
    .restart local v2       #itemSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->toggleVisibility()V

    goto :goto_0
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 0
    .parameter "strFilter"

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/ListViewFriendsSearch;->mStrFilter:Ljava/lang/String;

    goto :goto_0
.end method

.method public showControlTitleBat(Z)V
    .locals 4
    .parameter "isShow"

    .prologue
    const/4 v3, 0x1

    .line 476
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-nez v0, :cond_0

    .line 488
    :goto_0
    return-void

    .line 479
    :cond_0
    const-string v0, "ListViewSearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListViewSearch][showControlTitleBat]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    if-eqz p1, :cond_1

    .line 482
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/16 v1, 0x159

    invoke-virtual {v0, v3, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    goto :goto_0

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->hideControlBar(I)V

    goto :goto_0
.end method
