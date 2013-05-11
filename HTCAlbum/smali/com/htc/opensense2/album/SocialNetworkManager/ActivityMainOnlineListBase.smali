.class public abstract Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;
.super Lcom/htc/album/AlbumMain/MainActivityBase;
.source "ActivityMainOnlineListBase.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/NotifyBaseUI;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;
    }
.end annotation


# static fields
.field protected static final LAYOUT_TYPE_LIST:I = 0x1

.field protected static final LAYOUT_TYPE_LOADING:I = 0x2

.field protected static final LAYOUT_TYPE_LOGIN:I = 0x0

.field protected static final LAYOUT_TYPE_UNKNOWN:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ActivityMainOnlineListBase"


# instance fields
.field protected mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

.field protected mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

.field private mHandlerUI:Landroid/os/Handler;

.field protected mItemRequest:Ljava/lang/Object;

.field protected mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

.field protected mLoadingText:Ljava/lang/String;

.field protected mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

.field protected mUIState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    .line 57
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mItemRequest:Ljava/lang/Object;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mUIState:I

    .line 59
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mLoadingText:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    .line 61
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    .line 62
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    .line 208
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$1;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$1;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mHandlerUI:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract RelayoutPageView(I)V
.end method

.method public actionBarMode()I
    .locals 1

    .prologue
    .line 335
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
    .line 317
    sparse-switch p1, :sswitch_data_0

    .line 324
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 321
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->hideProgressDialog()V

    goto :goto_0

    .line 317
    nop

    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_0
        0x2728 -> :sswitch_0
    .end sparse-switch
.end method

.method public enableActionBarOverlay()Z
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public enableActionBarUpdate()Z
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x1

    return v0
.end method

.method public getServiceInfo()Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    return-object v0
.end method

.method public getUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mHandlerUI:Landroid/os/Handler;

    return-object v0
.end method

.method protected hideProgressDialog()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    if-eqz v0, :cond_0

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->dismiss()V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public initPageComponents()V
    .locals 0

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->createAdapter()V

    .line 142
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->createListView()V

    .line 143
    return-void
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/htc/album/AlbumMain/MainActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->syncExternalRequest()V

    .line 85
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->initPageComponents()V

    .line 86
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->RelayoutPageView(I)V

    .line 87
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->onDestroy()V

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->setUIHandler(Landroid/os/Handler;)V

    .line 116
    return-void
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 354
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

    .line 159
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 162
    :sswitch_0
    invoke-virtual {p0, v3, v2, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 165
    :sswitch_1
    invoke-virtual {p0, v4, v2, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 169
    :sswitch_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->setFastScrollEnabled(Z)V

    .line 172
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->setFastScrollEnabled(Z)V

    goto :goto_0

    .line 179
    :sswitch_3
    const/16 v0, 0x2724

    invoke-virtual {p0, v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->showFragmentDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 183
    :sswitch_4
    const/16 v0, 0x2728

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->dismissFragmentDialog(I)Z

    goto :goto_0

    .line 188
    :sswitch_5
    const-string v0, "ActivityMainOnlineListBase"

    const-string v1, "[HTCAlbum][ActivityMainBaseHost][onMessageHandler]: SHOW_ALERTDLG_NO_ACTIVEUSER"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0, v3, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->showFragmentDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 194
    :sswitch_6
    const-string v0, "ActivityMainOnlineListBase"

    const-string v1, "[HTCAlbum][ActivityMainBaseHost][onMessageHandler]: SHOW_ALERTDLG_NO_CONNECTION"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0, v4, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->showFragmentDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 199
    :sswitch_7
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->finish()V

    goto :goto_0

    .line 159
    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_3
        0x2728 -> :sswitch_4
        0x272b -> :sswitch_5
        0x272c -> :sswitch_6
        0x272d -> :sswitch_2
        0x2738 -> :sswitch_7
        0x274c -> :sswitch_1
        0x2767 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, bResult:Z
    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 104
    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sendResumeCacheIntent(Landroid/content/Context;)V

    .line 105
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->hideProgressDialog()V

    .line 106
    invoke-super {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->onPause()V

    .line 107
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/htc/album/AlbumMain/MainActivityBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 94
    invoke-super {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->onResume()V

    .line 95
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isNetworkConnectionActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    const/16 v0, 0x274c

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 99
    :cond_0
    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sendPauseCacheIntent(Landroid/content/Context;)V

    .line 100
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->onStart()V

    .line 91
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->onStop()V

    .line 111
    return-void
.end method

.method public onUIUpdateNotify(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mHandlerUI:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mHandlerUI:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mHandlerUI:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 235
    :cond_0
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    const-string v0, ""

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    const-string v0, ""

    return-object v0
.end method

.method public abstract setActivityTitle()V
.end method

.method public setFullscreen(Z)V
    .locals 0
    .parameter "bFullscreen"

    .prologue
    .line 221
    return-void
.end method

.method public setUIHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "hHandler"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mHandlerUI:Landroid/os/Handler;

    .line 240
    return-void
.end method

.method protected showDialogErrorCommunication()V
    .locals 3

    .prologue
    .line 244
    invoke-static {}, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->instance()Landroid/app/DialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method protected showDialogNoConnection()V
    .locals 3

    .prologue
    .line 248
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$2;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$2;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;)V

    invoke-static {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->instance(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)Landroid/app/DialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public showFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 1
    .parameter "id"
    .parameter "extras"

    .prologue
    .line 301
    sparse-switch p1, :sswitch_data_0

    .line 313
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 304
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->showProgressDialog()V

    goto :goto_0

    .line 307
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->showDialogErrorCommunication()V

    goto :goto_0

    .line 310
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->showDialogNoConnection()V

    goto :goto_0

    .line 301
    nop

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
    .line 272
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    if-nez v0, :cond_0

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mLoadingText:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->instance(Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v0

    check-cast v0, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    .line 277
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public abstract syncExternalRequest()V
.end method
