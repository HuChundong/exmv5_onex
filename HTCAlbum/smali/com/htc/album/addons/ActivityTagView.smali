.class public Lcom/htc/album/addons/ActivityTagView;
.super Lcom/htc/album/AlbumMain/MainActivityBase;
.source "ActivityTagView.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/NotifyBaseUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/ActivityTagView$1;,
        Lcom/htc/album/addons/ActivityTagView$Ball;,
        Lcom/htc/album/addons/ActivityTagView$TemplateBroadcastReceiver;
    }
.end annotation


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mAdapter:Lcom/htc/album/addons/AdapterTagPhotos;

.field private mBall:Landroid/view/View;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCurMode:I

.field private mIntent:Landroid/content/Intent;

.field private mMainView:Lcom/htc/album/addons/LocalTagView;

.field private mServiceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;-><init>()V

    .line 47
    const-string v0, "ActivityTagView"

    iput-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->LOG_TAG:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mBall:Landroid/view/View;

    .line 50
    iput-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    iput-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mIntent:Landroid/content/Intent;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/addons/ActivityTagView;->mCurMode:I

    .line 53
    iput-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mMainView:Lcom/htc/album/addons/LocalTagView;

    .line 54
    iput-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mAdapter:Lcom/htc/album/addons/AdapterTagPhotos;

    .line 55
    iput-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mServiceName:Ljava/lang/String;

    .line 220
    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/addons/ActivityTagView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public RelayoutPageView(I)V
    .locals 0
    .parameter "nLayout"

    .prologue
    .line 166
    return-void
.end method

.method protected createAdapter()V
    .locals 4

    .prologue
    .line 134
    const/4 v1, 0x0

    .line 135
    .local v1, szService:Ljava/lang/String;
    const/4 v0, 0x0

    .line 136
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/addons/ActivityTagView;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/htc/album/addons/ActivityTagView;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    const-string v2, "service"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    :cond_0
    invoke-static {v1}, Lcom/htc/album/Customizable/CustAlbumCollection;->isCustomerSmartFolder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    :goto_0
    return-void

    .line 150
    :cond_1
    new-instance v2, Lcom/htc/album/addons/AdapterTagPhotos;

    invoke-direct {v2, p0}, Lcom/htc/album/addons/AdapterTagPhotos;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/htc/album/addons/ActivityTagView;->mAdapter:Lcom/htc/album/addons/AdapterTagPhotos;

    .line 151
    iget-object v2, p0, Lcom/htc/album/addons/ActivityTagView;->mAdapter:Lcom/htc/album/addons/AdapterTagPhotos;

    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/AdapterTagPhotos;->setForwardIntent(Landroid/content/Intent;)V

    .line 152
    iget-object v2, p0, Lcom/htc/album/addons/ActivityTagView;->mAdapter:Lcom/htc/album/addons/AdapterTagPhotos;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/AdapterTagPhotos;->setUIHandler(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method protected createMainView()V
    .locals 3

    .prologue
    .line 158
    new-instance v0, Lcom/htc/album/addons/LocalTagView;

    iget-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mAdapter:Lcom/htc/album/addons/AdapterTagPhotos;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/album/addons/LocalTagView;-><init>(Landroid/app/Activity;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mMainView:Lcom/htc/album/addons/LocalTagView;

    .line 159
    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mMainView:Lcom/htc/album/addons/LocalTagView;

    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/LocalTagView;->setActionBar(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;)V

    .line 160
    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mMainView:Lcom/htc/album/addons/LocalTagView;

    invoke-virtual {v0}, Lcom/htc/album/addons/LocalTagView;->onCreate()V

    .line 161
    return-void
.end method

.method public enableActionBarUpdate()Z
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public enableBroadcastReceiver()V
    .locals 3

    .prologue
    .line 169
    iget-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 171
    new-instance v1, Lcom/htc/album/addons/ActivityTagView$TemplateBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/addons/ActivityTagView$TemplateBroadcastReceiver;-><init>(Lcom/htc/album/addons/ActivityTagView;Lcom/htc/album/addons/ActivityTagView$1;)V

    iput-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 175
    .local v0, intentFilter:Landroid/content/IntentFilter;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->addToMonitorMediaConnect(Landroid/content/IntentFilter;)V

    .line 176
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->addToMonitorMediaDisconnect(Landroid/content/IntentFilter;)V

    .line 177
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->addToMonitorMediaScan(Landroid/content/IntentFilter;)V

    .line 179
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/addons/ActivityTagView;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 181
    const-string v1, "skyer"

    const-string v2, "skyer register broadcast"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public getUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return-object v0
.end method

.method public initPageComponents()V
    .locals 0

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->createAdapter()V

    .line 128
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->createMainView()V

    .line 130
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->enableBroadcastReceiver()V

    .line 131
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 207
    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/AlbumMain/MainActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 208
    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mMainView:Lcom/htc/album/addons/LocalTagView;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mMainView:Lcom/htc/album/addons/LocalTagView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/album/addons/LocalTagView;->onActivityResult(IILandroid/content/Intent;)V

    .line 210
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 213
    invoke-super {p0, p1}, Lcom/htc/album/AlbumMain/MainActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 214
    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mMainView:Lcom/htc/album/addons/LocalTagView;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mMainView:Lcom/htc/album/addons/LocalTagView;

    invoke-virtual {v0, p1}, Lcom/htc/album/addons/LocalTagView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->onHandleActionBarBarLayoutChange()V

    .line 217
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->showFullscreen(Landroid/app/Activity;Z)V

    .line 60
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/ActivityTagView;->requestWindowFeature(I)Z

    .line 61
    invoke-super {p0, p1}, Lcom/htc/album/AlbumMain/MainActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/ActivityTagView;->setContentView(I)V

    .line 64
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->syncExternalRequest()V

    .line 68
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->initPageComponents()V

    .line 69
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->onHandleActionBarBarLayoutChange()V

    .line 71
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 72
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mMainView:Lcom/htc/album/addons/LocalTagView;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mMainView:Lcom/htc/album/addons/LocalTagView;

    invoke-virtual {v0}, Lcom/htc/album/addons/LocalTagView;->onDestroy()V

    .line 77
    :cond_0
    invoke-super {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->onDestroy()V

    .line 78
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 303
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 312
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 306
    :pswitch_0
    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mMainView:Lcom/htc/album/addons/LocalTagView;

    invoke-virtual {v0}, Lcom/htc/album/addons/LocalTagView;->onConfirm()V

    goto :goto_0

    .line 309
    :pswitch_1
    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mMainView:Lcom/htc/album/addons/LocalTagView;

    invoke-virtual {v0}, Lcom/htc/album/addons/LocalTagView;->onCancel()V

    goto :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 283
    invoke-super {p0, p1}, Lcom/htc/album/AlbumMain/MainActivityBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 284
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 285
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-eqz v0, :cond_0

    .line 287
    sget-object v4, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;->MODE_FULLSCREEN:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    invoke-interface {v0, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setMode(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;)V

    .line 289
    :cond_0
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 291
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 292
    .local v1, context:Landroid/content/Context;
    const/4 v4, 0x5

    const v5, 0x20401ee

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 293
    .local v2, itemCancel:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 294
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 295
    const/4 v4, 0x4

    const v5, 0x7f0a0001

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 296
    .local v3, itemConfirm:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Save_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 297
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 299
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #itemCancel:Landroid/view/MenuItem;
    .end local v3           #itemConfirm:Landroid/view/MenuItem;
    :cond_1
    const/4 v4, 0x1

    return v4
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->onResume()V

    .line 108
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->enableBroadcastReceiver()V

    .line 82
    invoke-super {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->onStart()V

    .line 83
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/ActivityTagView;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    :cond_0
    invoke-super {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->onStop()V

    .line 92
    return-void
.end method

.method public onUIUpdateNotify(ILjava/lang/Object;I)V
    .locals 0
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 264
    return-void
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 271
    .local v0, resource:Landroid/content/res/Resources;
    const v1, 0x7f0a0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setUIHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "hHandler"

    .prologue
    .line 254
    return-void
.end method

.method public syncExternalRequest()V
    .locals 4

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mIntent:Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mIntent:Landroid/content/Intent;

    const-string v2, "upload_mode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/album/addons/ActivityTagView;->mCurMode:I

    .line 113
    iget-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 114
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "service"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mServiceName:Ljava/lang/String;

    .line 124
    return-void
.end method
