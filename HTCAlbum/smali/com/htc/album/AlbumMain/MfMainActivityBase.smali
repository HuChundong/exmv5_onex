.class public abstract Lcom/htc/album/AlbumMain/MfMainActivityBase;
.super Lcom/htc/app/mf/MfMainActivity;
.source "MfMainActivityBase.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/AlbumMain/MfMainActivityBase$sceneBroadCastReceiver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MfMainActivityBase"


# instance fields
.field protected mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIsDelayedCreate:Z

.field protected mProgressBarState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lcom/htc/app/mf/MfMainActivity;-><init>()V

    .line 48
    iput-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mProgressBarState:I

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mIsDelayedCreate:Z

    .line 417
    new-instance v0, Lcom/htc/album/AlbumMain/MfMainActivityBase$1;

    invoke-direct {v0, p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase$1;-><init>(Lcom/htc/album/AlbumMain/MfMainActivityBase;)V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mHandler:Landroid/os/Handler;

    .line 471
    iput-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 472
    return-void
.end method

.method private onDelayedCreate()V
    .locals 3

    .prologue
    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mIsDelayedCreate:Z

    .line 212
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onStartFragment()V

    .line 213
    const/16 v0, 0x1452

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onPostMessage(ILjava/lang/Object;I)V

    .line 214
    return-void
.end method

.method private onDelayedResume()V
    .locals 0

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onResumeFragment()V

    .line 218
    return-void
.end method


# virtual methods
.method public bridge synthetic actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->actionBar()Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    move-result-object v0

    return-object v0
.end method

.method public actionBar()Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    return-object v0
.end method

.method public actionBarMode()I
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public enable2Pane(ZZ)V
    .locals 3
    .parameter "bEnable"
    .parameter "bPaneRight"

    .prologue
    const/4 v1, 0x0

    .line 279
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    const-string v0, "MfMainActivityBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][MfMainActivityBase][enable2Pane]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    if-eqz p1, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->resetFullScreen()V

    .line 286
    if-nez p2, :cond_0

    .line 288
    invoke-static {p0}, Lcom/htc/sunny2/common/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    const-class v0, Lcom/htc/album/AlbumMain/MfFragmentPaneDummy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget v2, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_RIGHT:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->startFragment(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    if-eqz p2, :cond_2

    .line 295
    sget v0, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_RIGHT:I

    invoke-virtual {p0, v0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setFullScreen(I)V

    goto :goto_0

    .line 297
    :cond_2
    sget v0, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setFullScreen(I)V

    goto :goto_0

    .line 302
    :cond_3
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setFullScreenPadding(IIII)V

    goto :goto_0
.end method

.method public enableActionBarOverlay()Z
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method public enableActionBarUpdate()Z
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x1

    return v0
.end method

.method public enableDataSourceUpdating(Z)V
    .locals 4
    .parameter "bEnable"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 242
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    if-nez v0, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mProgressBarState:I

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    .line 247
    :cond_2
    iget v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mProgressBarState:I

    if-ne v3, v0, :cond_3

    if-nez p1, :cond_0

    .line 251
    :cond_3
    if-eqz p1, :cond_4

    .line 252
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setProgressVisibility(I)V

    .line 255
    :goto_1
    if-eqz p1, :cond_5

    .line 256
    iput v3, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mProgressBarState:I

    goto :goto_0

    .line 254
    :cond_4
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setProgressVisibility(I)V

    goto :goto_1

    .line 258
    :cond_5
    iput v2, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mProgressBarState:I

    goto :goto_0
.end method

.method public enableDropList()V
    .locals 0

    .prologue
    .line 309
    return-void
.end method

.method public enableSourceContentPadding(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 267
    return-void
.end method

.method public enableSourceSwitch(ZZ)V
    .locals 2
    .parameter "bEnable"
    .parameter "bEnableAnimation"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    if-nez v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 233
    :cond_0
    if-eqz p1, :cond_1

    .line 234
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setVisibility(I)V

    goto :goto_0

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public fullscreenMode(Z)V
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 324
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-static {p0, p1}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->showFullscreen(Landroid/app/Activity;Z)V

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected getTrimMemoryLevel()I
    .locals 1

    .prologue
    .line 543
    const/16 v0, 0x3c

    return v0
.end method

.method public initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 2

    .prologue
    .line 362
    iget-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    .line 378
    :goto_0
    return-object v1

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 369
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 371
    new-instance v1, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-direct {v1, p0, v0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    .line 378
    :cond_1
    iget-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    goto :goto_0
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 399
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3}, Lcom/htc/app/mf/MfMainActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 55
    sget v2, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v0

    .line 56
    .local v0, fragmentLeft:Lcom/htc/app/mf/IMfFragment;
    sget v2, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_RIGHT:I

    invoke-virtual {p0, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v1

    .line 57
    .local v1, fragmentRight:Lcom/htc/app/mf/IMfFragment;
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/htc/app/mf/MfFragment;

    if-eqz v2, :cond_0

    .line 61
    check-cast v1, Lcom/htc/app/mf/MfFragment;

    .end local v1           #fragmentRight:Lcom/htc/app/mf/IMfFragment;
    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/app/mf/MfFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 63
    :cond_0
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/htc/app/mf/MfFragment;

    if-eqz v2, :cond_1

    .line 65
    check-cast v0, Lcom/htc/app/mf/MfFragment;

    .end local v0           #fragmentLeft:Lcom/htc/app/mf/IMfFragment;
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/mf/MfFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 75
    :cond_1
    :goto_0
    return-void

    .line 70
    .restart local v0       #fragmentLeft:Lcom/htc/app/mf/IMfFragment;
    .restart local v1       #fragmentRight:Lcom/htc/app/mf/IMfFragment;
    :cond_2
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/htc/app/mf/MfFragment;

    if-eqz v2, :cond_1

    .line 72
    check-cast v0, Lcom/htc/app/mf/MfFragment;

    .end local v0           #fragmentLeft:Lcom/htc/app/mf/IMfFragment;
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/mf/MfFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 12

    .prologue
    .line 78
    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "MfMainActivityBase"

    const-string v10, "[HTCAlbum][MfMainActivityBase][onBackPressed]: Begin ..+"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    sget v9, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v9}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v4

    .line 80
    .local v4, fragmentLeft:Lcom/htc/app/mf/IMfFragment;
    sget v9, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_RIGHT:I

    invoke-virtual {p0, v9}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v5

    .line 81
    .local v5, fragmentRight:Lcom/htc/app/mf/IMfFragment;
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/sunny2/common/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    .line 83
    .local v2, bIsLandscape:Z
    const/4 v1, 0x0

    .line 84
    .local v1, bIsHandleRight:Z
    const/4 v0, 0x0

    .line 87
    .local v0, bIsHandleLeft:Z
    const/4 v7, 0x0

    .line 88
    .local v7, isFromDMCLaunch:Z
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 89
    .local v6, intent:Landroid/content/Intent;
    if-eqz v6, :cond_1

    .line 91
    invoke-static {v6}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->isFromDMC(Landroid/content/Intent;)Z

    move-result v7

    .line 94
    :cond_1
    instance-of v9, v5, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;

    if-eqz v9, :cond_3

    .line 96
    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "MfMainActivityBase"

    const-string v10, "[HTCAlbum][MfMainActivityBase][onBackPressed]: Right Pane..."

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v8, v5

    .line 97
    check-cast v8, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;

    .line 98
    .local v8, paneControl:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;
    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;->onBackPressedOverride()Z

    move-result v1

    .line 101
    .end local v8           #paneControl:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;
    :cond_3
    instance-of v9, v4, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;

    if-eqz v9, :cond_6

    .line 103
    if-eqz v1, :cond_4

    if-eqz v7, :cond_6

    .line 105
    :cond_4
    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_5

    const-string v9, "MfMainActivityBase"

    const-string v10, "[HTCAlbum][MfMainActivityBase][onBackPressed]: Left Pane..."

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v8, v4

    .line 106
    check-cast v8, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;

    .line 107
    .restart local v8       #paneControl:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;
    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;->onBackPressedOverride()Z

    move-result v0

    .line 111
    .end local v8           #paneControl:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;
    :cond_6
    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_7

    const-string v9, "MfMainActivityBase"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][MfMainActivityBase][onBackPressed]: Handle Right: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_7
    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_8

    const-string v9, "MfMainActivityBase"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][MfMainActivityBase][onBackPressed]: Handle Left: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_8
    if-nez v1, :cond_9

    if-nez v0, :cond_9

    .line 115
    if-eqz v2, :cond_d

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 117
    const-string v9, "MfMainActivityBase"

    const-string v10, "[HTCAlbum][MfMainActivityBase][onBackPressed]: finish..."

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->finish()V

    .line 127
    :cond_9
    :goto_0
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableLandingPage()Z

    move-result v9

    if-eqz v9, :cond_b

    if-nez v0, :cond_b

    if-nez v1, :cond_b

    .line 129
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    .line 130
    .local v3, fragmentCount:I
    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_a

    const-string v9, "MfMainActivityBase"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][MfMainActivityBase][onBackPressed]: fragmentCount .."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_a
    if-nez v3, :cond_b

    .line 132
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->finish()V

    .line 136
    .end local v3           #fragmentCount:I
    :cond_b
    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_c

    const-string v9, "MfMainActivityBase"

    const-string v10, "[HTCAlbum][MfMainActivityBase][onBackPressed]: End ..-"

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_c
    return-void

    .line 122
    :cond_d
    const-string v9, "MfMainActivityBase"

    const-string v10, "[HTCAlbum][MfMainActivityBase][onBackPressed]: onBackPressed..."

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-super {p0}, Lcom/htc/app/mf/MfMainActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onBroadcastReceiveDispatcher(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 515
    const/4 v0, 0x0

    .line 517
    .local v0, bResult:Z
    sget v3, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v3}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v2

    .line 518
    .local v2, fragmentLeft:Lcom/htc/app/mf/IMfFragment;
    if-nez v2, :cond_0

    move v1, v0

    .line 526
    .end local v0           #bResult:Z
    .end local v2           #fragmentLeft:Lcom/htc/app/mf/IMfFragment;
    .local v1, bResult:I
    :goto_0
    return v1

    .line 521
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    .restart local v2       #fragmentLeft:Lcom/htc/app/mf/IMfFragment;
    :cond_0
    instance-of v3, v2, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiver;

    if-eqz v3, :cond_1

    .line 523
    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiver;

    .end local v2           #fragmentLeft:Lcom/htc/app/mf/IMfFragment;
    invoke-interface {v2, p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiver;->onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 524
    const-string v3, "MfMainActivityBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][MfMainActivityBase][onBroadcastReceiveDispatcher]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v1, v0

    .line 526
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstance"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 141
    const-string v1, "MfMainActivityBase"

    const-string v2, "[HTCAlbum][MfMainActivityBase][onCreate]: Begin"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->requestWindowFeature(I)Z

    .line 144
    const/4 v0, -0x1

    .line 148
    .local v0, nMfSpec:I
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    :goto_0
    invoke-super {p0, p1, v0}, Lcom/htc/app/mf/MfMainActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 160
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-static {p0, v3}, Lcom/htc/sunny2/common/HtcPaneManager;->getLandscapePane(Landroid/content/Context;Z)[Lcom/htc/app/mf/PaneRect;

    move-result-object v1

    invoke-static {p0, v3}, Lcom/htc/sunny2/common/HtcPaneManager;->getPortraitPane(Landroid/content/Context;Z)[Lcom/htc/app/mf/PaneRect;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setPaneRects([Lcom/htc/app/mf/PaneRect;[Lcom/htc/app/mf/PaneRect;)V

    .line 166
    :cond_0
    const-string v1, "MfMainActivityBase"

    const-string v2, "[HTCAlbum][MfMainActivityBase][onCreate]: startUpFragments..."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sget v1, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setEntryFragment(I)V

    .line 168
    sget v1, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setLand2PortShowedPane(I)V

    .line 169
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-ne v4, v1, :cond_2

    .line 170
    new-array v1, v4, [Ljava/lang/String;

    const-class v2, Lcom/htc/album/AlbumMain/MfFragmentPaneDummy;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    new-array v2, v4, [Landroid/os/Bundle;

    aput-object v5, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setInitialFragments([Ljava/lang/String;[Landroid/os/Bundle;)V

    .line 181
    :goto_1
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->startUpFragments()V

    .line 186
    const-string v1, "MfMainActivityBase"

    const-string v2, "[HTCAlbum][MfMainActivityBase][onCreate]: initActionBar..."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 189
    const-string v1, "MfMainActivityBase"

    const-string v2, "[HTCAlbum][MfMainActivityBase][onCreate]: End"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void

    .line 152
    :cond_1
    const/high16 v0, 0x1

    goto :goto_0

    .line 176
    :cond_2
    new-array v1, v4, [Ljava/lang/String;

    aput-object v5, v1, v3

    new-array v2, v4, [Landroid/os/Bundle;

    aput-object v5, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setInitialFragments([Ljava/lang/String;[Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 206
    invoke-static {}, Lcom/htc/album/helper/UserProfilingLog;->dumpUserAccessCount()V

    .line 207
    invoke-super {p0}, Lcom/htc/app/mf/MfMainActivity;->onDestroy()V

    .line 208
    return-void
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 435
    const/4 v0, 0x0

    .line 437
    .local v0, bResult:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 450
    .end local v0           #bResult:Z
    :goto_0
    :pswitch_0
    return v0

    .line 440
    .restart local v0       #bResult:Z
    :pswitch_1
    iget-boolean v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mIsDelayedCreate:Z

    if-eqz v1, :cond_0

    .line 441
    const/4 v0, 0x0

    goto :goto_0

    .line 442
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onDelayedCreate()V

    goto :goto_0

    .line 445
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onDelayedResume()V

    goto :goto_0

    .line 437
    nop

    :pswitch_data_0
    .packed-switch 0x1450
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 458
    :cond_0
    return-void
.end method

.method public onPrepareFullscreenMode()V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method public onRemoveMessage(I)V
    .locals 1
    .parameter "nMessageID"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 464
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 193
    invoke-super {p0}, Lcom/htc/app/mf/MfMainActivity;->onResume()V

    .line 195
    iget-boolean v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mIsDelayedCreate:Z

    if-eqz v0, :cond_0

    .line 197
    const/16 v0, 0x1452

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onPostMessage(ILjava/lang/Object;I)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    const/16 v0, 0x1450

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public abstract onResumeFragment()V
.end method

.method public abstract onStartFragment()V
.end method

.method public onTrimMemory(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getTrimMemoryLevel()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/htc/album/helper/MemoryHelper;->doTrimMemory(Landroid/app/Activity;II)V

    .line 538
    invoke-super {p0, p1}, Lcom/htc/app/mf/MfMainActivity;->onTrimMemory(I)V

    .line 539
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    const-string v0, ""

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    const-string v0, ""

    return-object v0
.end method

.method public registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 485
    iget-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 499
    :goto_0
    return-void

    .line 488
    :cond_0
    new-instance v1, Lcom/htc/album/AlbumMain/MfMainActivityBase$sceneBroadCastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase$sceneBroadCastReceiver;-><init>(Lcom/htc/album/AlbumMain/MfMainActivityBase;Lcom/htc/album/AlbumMain/MfMainActivityBase$1;)V

    iput-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 491
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 492
    .local v0, intentFilter:Landroid/content/IntentFilter;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->addToMonitorMediaConnect(Landroid/content/IntentFilter;)V

    .line 493
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->addToMonitorMediaDisconnect(Landroid/content/IntentFilter;)V

    .line 494
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->addToMonitorMediaScan(Landroid/content/IntentFilter;)V

    .line 496
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 497
    iget-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 498
    const-string v1, "MfMainActivityBase"

    const-string v2, "[HTCAlbum][MfMainActivityBase][registerBroadcastReceiver]: "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 427
    return-void
.end method

.method public unregisterBroadcastReceiver()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 510
    :goto_0
    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 508
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 509
    const-string v0, "MfMainActivityBase"

    const-string v1, "[HTCAlbum][MfMainActivityBase][unregisterBroadcastReceiver]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
