.class public Lcom/htc/album/SocialNetwork/ListViewFriends;
.super Lcom/htc/album/SocialNetwork/ListViewFriendsBase;
.source "ListViewFriends.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ListViewFriends"


# instance fields
.field private mAutoFocusIndex:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V
    .locals 1
    .parameter "activity"
    .parameter "adapterBase"
    .parameter "handler"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;-><init>(Landroid/app/Activity;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/htc/app/mf/MfFragment;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V
    .locals 1
    .parameter "fragment"
    .parameter "adapterBase"
    .parameter "handler"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;-><init>(Lcom/htc/app/mf/MfFragment;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    .line 68
    return-void
.end method


# virtual methods
.method public isItemChecked(I)Z
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->isItemChecked(I)Z

    move-result v0

    return v0
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfFragment;->finishSelf()V

    .line 315
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 104
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewFriendsBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 105
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    const/4 v0, 0x2

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_3

    .line 109
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    sget v2, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_RIGHT:I

    invoke-virtual {v0, v2}, Lcom/htc/app/mf/MfFragment;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v6

    .line 110
    .local v6, fragment:Lcom/htc/app/mf/IMfFragment;
    if-nez v6, :cond_0

    .line 111
    iput v3, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    .line 113
    :cond_0
    iget v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    if-ne v3, v0, :cond_2

    .line 114
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/SocialNetwork/ListViewFriends;->onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    .line 118
    :goto_0
    const-string v0, "ListViewFriends"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListViewFriends][onConfigurationChanged]: ORIENTATION_LANDSCAPE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .end local v6           #fragment:Lcom/htc/app/mf/IMfFragment;
    :cond_1
    :goto_1
    return-void

    .line 116
    .restart local v6       #fragment:Lcom/htc/app/mf/IMfFragment;
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    iget v1, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 122
    .end local v6           #fragment:Lcom/htc/app/mf/IMfFragment;
    :cond_3
    iget v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    if-eq v3, v0, :cond_4

    .line 123
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    iget v1, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 125
    :cond_4
    const-string v0, "ListViewFriends"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListViewFriends][onConfigurationChanged]: ORIENTATION_PORTRAIT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onConfirm()V
    .locals 4

    .prologue
    .line 294
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v2, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->updateFileCache()V

    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, activity:Landroid/app/Activity;
    iget-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v2, :cond_0

    .line 299
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v2}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 303
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 304
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "contact_update"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 305
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 306
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 307
    return-void

    .line 301
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    goto :goto_0
.end method

.method public onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 20
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
    .line 131
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v17

    if-nez v17, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    move/from16 v17, v0

    if-eqz v17, :cond_12

    .line 136
    const/16 v17, -0x1

    move/from16 v0, v17

    move/from16 v1, p3

    if-ne v0, v1, :cond_2

    .line 137
    const/16 p3, 0x1

    .line 139
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p3

    if-gt v0, v1, :cond_3

    .line 141
    const-string v17, "ListViewFriends"

    const-string v18, "[HTCAlbum][ListViewFriends][onListItemClick]: adapter not ready "

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_3
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 147
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p3

    if-eq v0, v1, :cond_0

    .line 156
    :cond_4
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/app/mf/MfFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 159
    .local v4, bundleArg:Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 160
    .local v6, intentArg:Landroid/content/Intent;
    if-eqz v4, :cond_5

    .line 162
    const-string v17, "social_bundle"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 163
    .local v3, bundle:Landroid/os/Bundle;
    if-eqz v3, :cond_5

    .line 164
    const-string v17, "social_intent"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    .end local v6           #intentArg:Landroid/content/Intent;
    check-cast v6, Landroid/content/Intent;

    .line 166
    .end local v3           #bundle:Landroid/os/Bundle;
    .restart local v6       #intentArg:Landroid/content/Intent;
    :cond_5
    if-nez v6, :cond_6

    .line 167
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intentArg:Landroid/content/Intent;
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 169
    .restart local v6       #intentArg:Landroid/content/Intent;
    :cond_6
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 170
    .local v5, bundleNew:Landroid/os/Bundle;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 173
    .local v7, intentNew:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v11, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    .line 174
    .local v11, listAdapter:Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;
    move/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 176
    .local v8, itemSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 178
    const-string v17, "my_live_album"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    :cond_7
    if-eqz v8, :cond_0

    .line 183
    const-string v17, "ListViewFriends"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[HTCAlbum][ListViewFriends][onListItemClick]: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->sd(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v16, userIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->getServiceInfo()Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v15, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 196
    .local v15, szServiceName:Ljava/lang/String;
    const-string v17, "service_display"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 197
    .local v13, serviceDisplay:Ljava/lang/String;
    const-string v17, "service_url"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 199
    .local v14, serviceUrl:Ljava/lang/String;
    const-string v17, "sort_list"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 200
    const-string v17, "user_buddyicon"

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getBuddyIconURL()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string v17, "user_id"

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v17, "live_album"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 203
    const-string v17, "service_name"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    sget-object v17, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 207
    sget-object v17, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 218
    :cond_8
    :goto_1
    if-eqz v13, :cond_9

    const-string v17, "service_display"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    :cond_9
    if-eqz v14, :cond_a

    const-string v17, "service_url"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    :cond_a
    const-string v17, "user_name"

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v17, "from_tabhost"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 227
    const-string v18, "listviewPos"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/widget/HtcListView;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v17

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    const-string v17, "fromMainActivity"

    const-string v18, "fromMainActivity"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 230
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 232
    const-string v17, "social_intent"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    move-object/from16 v17, v0

    const-class v18, Lcom/htc/album/SocialNetwork/MfFragmentMainOnlineFolder;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Lcom/htc/app/mf/MfFragment;->startFragmentInNextPane(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/htc/sunny2/common/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/widget/HtcListView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    move/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    goto/16 :goto_0

    .line 209
    :cond_b
    sget-object v17, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/16 v18, 0x1

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 211
    sget-object v17, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/16 v18, 0x1

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 213
    :cond_c
    if-eqz v14, :cond_8

    .line 215
    move-object/from16 v0, v16

    invoke-virtual {v7, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 237
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/widget/HtcListView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/SocialNetwork/ListViewFriends;->mAutoFocusIndex:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    goto/16 :goto_0

    .line 241
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 243
    .local v2, activity:Landroid/app/Activity;
    const-string v17, "goto_scene"

    const-string v18, "SceneOnlineFolder"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-class v17, Lcom/htc/album/SocialNetwork/ActivityMainOnline;

    move-object/from16 v0, v17

    invoke-virtual {v7, v2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 245
    const/high16 v17, 0x400

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 248
    const-string v17, "max_pick"

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 249
    .local v10, limit:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_f

    .line 250
    const-string v17, "max_pick"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    :cond_f
    invoke-static {}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->instance()Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;

    move-result-object v9

    .line 254
    .local v9, landingPagePickerMgr:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;
    invoke-virtual {v9}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->getPickerLandingPageParameter()Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    move-result-object v12

    .line 255
    .local v12, pickerParam:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;
    invoke-static {}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->destroyInstance()V

    .line 256
    invoke-interface {v12}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->isAlbumPicker()Z

    move-result v17

    if-nez v17, :cond_10

    invoke-interface {v12}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->isSingleItemPicker()Z

    move-result v17

    if-eqz v17, :cond_11

    .line 257
    :cond_10
    const/16 v17, 0x145b

    move/from16 v0, v17

    invoke-virtual {v2, v7, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 259
    :cond_11
    invoke-virtual {v2, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 263
    .end local v2           #activity:Landroid/app/Activity;
    .end local v4           #bundleArg:Landroid/os/Bundle;
    .end local v5           #bundleNew:Landroid/os/Bundle;
    .end local v6           #intentArg:Landroid/content/Intent;
    .end local v7           #intentNew:Landroid/content/Intent;
    .end local v8           #itemSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .end local v9           #landingPagePickerMgr:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;
    .end local v10           #limit:I
    .end local v11           #listAdapter:Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;
    .end local v12           #pickerParam:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;
    .end local v13           #serviceDisplay:Ljava/lang/String;
    .end local v14           #serviceUrl:Ljava/lang/String;
    .end local v15           #szServiceName:Ljava/lang/String;
    .end local v16           #userIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 265
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v11, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    .line 266
    .local v11, listAdapter:Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;
    move/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 267
    .restart local v8       #itemSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->toggleVisibility()V

    goto/16 :goto_0
.end method

.method public onNotifyListComplete()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public onPrepareSelectorOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const v5, 0x20401f4

    const v4, 0x204014f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 76
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v3

    .line 79
    :cond_1
    const/4 v0, 0x0

    .line 80
    .local v0, item:Landroid/view/MenuItem;
    invoke-interface {p1, v2, v4, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->isSelectAll()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 86
    :goto_1
    invoke-interface {p1, v2, v5, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->isDeselectAll()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 84
    :cond_2
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 90
    :cond_3
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onUpdateCheckBox(Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;)V
    .locals 2
    .parameter "tag"
    .parameter "aPerson"

    .prologue
    .line 282
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v1, v1, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    if-eqz v1, :cond_0

    .line 287
    iget-object v0, p1, Lcom/htc/album/SocialNetwork/ListViewFriendsBase$ViewContactTag;->mViewChkBox:Lcom/htc/widget/HtcCheckBox;

    .line 288
    .local v0, viewChkbox:Lcom/htc/widget/HtcCheckBox;
    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 289
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    .line 291
    .end local v0           #viewChkbox:Lcom/htc/widget/HtcCheckBox;
    :cond_0
    return-void
.end method

.method public setAllItemSelection(Z)V
    .locals 4
    .parameter "bSelectAll"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 272
    if-eqz p1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    const/16 v1, 0x4e2b

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 276
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;

    const/16 v1, 0x4e2c

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public setCurrPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 320
    :cond_0
    return-void
.end method
