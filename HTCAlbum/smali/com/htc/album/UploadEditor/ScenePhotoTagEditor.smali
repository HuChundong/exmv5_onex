.class public Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;
.super Lcom/htc/sunny2/scene/GalleryBaseScene;
.source "ScenePhotoTagEditor.java"

# interfaces
.implements Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$1;,
        Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$FilmstripItemSelectedListner;,
        Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$ViewScrollStateChangedListener;,
        Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$onTagButtonClickListener;,
        Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$UploadEditorConstants;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sunny2/scene/GalleryBaseScene",
        "<",
        "Lcom/htc/sunny2/fullfilmview/FullFilmView;",
        "Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;",
        ">;",
        "Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;"
    }
.end annotation


# static fields
.field private static final FOOTER_BAR_UPLOADEDITOR:I = 0x2

.field private static final HEADER_BAR_UPLOADEDITOR:I = 0x1

.field public static final LOG_TAG:Ljava/lang/String; = "ScenePhotoTagEditor"


# instance fields
.field protected mCurrentIndex:I

.field protected mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

.field private mIsUploading:Z

.field protected mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

.field private mService:Ljava/lang/String;

.field protected mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;-><init>()V

    .line 43
    iput v1, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mCurrentIndex:I

    .line 44
    iput-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    .line 45
    iput-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    .line 46
    iput-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    .line 48
    iput-boolean v1, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mIsUploading:Z

    .line 49
    iput-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mService:Ljava/lang/String;

    .line 417
    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method private adjustMainViewOffset(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "newConfig"

    .prologue
    .line 349
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v4, :cond_0

    .line 372
    :goto_0
    return-void

    .line 352
    :cond_0
    move-object v1, p1

    .line 353
    .local v1, currentConfig:Landroid/content/res/Configuration;
    if-nez v1, :cond_1

    .line 355
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 356
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 359
    .end local v0           #activity:Landroid/app/Activity;
    :cond_1
    const/4 v3, 0x0

    .line 360
    .local v3, paddingTop:I
    const/4 v2, 0x0

    .line 361
    .local v2, paddingLeft:I
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 363
    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_MAINVIEW_TOP_PORT_DIMEN:I

    .line 364
    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_MAINVIEW_LEFT_PORT_DIMEN:I

    .line 371
    :goto_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    int-to-float v5, v2

    int-to-float v6, v3

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPosition(FFF)V

    goto :goto_0

    .line 368
    :cond_2
    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_MAINVIEW_TOP_LAND_DIMEN:I

    .line 369
    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_MAINVIEW_LEFT_LAND_DIMEN:I

    goto :goto_1
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    invoke-interface {v0}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->adapterIdentity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public enableFullScreen()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public enableProgressLoading()Z
    .locals 1

    .prologue
    .line 529
    const/4 v0, 0x1

    return v0
.end method

.method public getAnimationDuration()I
    .locals 1

    .prologue
    .line 615
    const/16 v0, 0x12c

    return v0
.end method

.method public getEnvironmentRenderOrder()I
    .locals 1

    .prologue
    .line 564
    const/4 v0, 0x4

    return v0
.end method

.method public getFocusIndex()I
    .locals 1

    .prologue
    .line 651
    iget v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mCurrentIndex:I

    return v0
.end method

.method public getPluginAdapter()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method public getProgressLoadingText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 533
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 535
    .local v0, activity:Landroid/app/Activity;
    const-string v1, ""

    .line 537
    .local v1, szLoading:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mIsUploading:Z

    if-eqz v2, :cond_0

    .line 539
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a014e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 553
    :goto_0
    return-object v1

    .line 549
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0153

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSceneBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mService:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadEditorViewManager()Lcom/htc/album/addons/UploadEditorViewManager;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    return-object v0
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onCancel()V

    .line 684
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 560
    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->onActivityResult(IILandroid/content/Intent;)V

    .line 561
    return-void
.end method

.method public onAnimationEnd(I)V
    .locals 0
    .parameter "nAnimState"

    .prologue
    .line 621
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onAnimationEnd(I)V

    .line 622
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    .line 288
    const/4 v0, 0x1

    return v0
.end method

.method public onBindAdapter()V
    .locals 3

    .prologue
    .line 250
    const-string v0, "ScenePhotoTagEditor"

    const-string v1, "[HTCAlbum][ScenePhotoTagEditor][onBindAdapter]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onBindAdapter()V

    .line 252
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunnyCore/IMediaList;)V

    .line 253
    const/16 v0, 0x4f4f

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onPostMessage(ILjava/lang/Object;I)V

    .line 254
    return-void
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    .line 514
    return-void
.end method

.method public onClickTagButton()V
    .locals 2

    .prologue
    .line 338
    const-string v0, "ScenePhotoTagEditor"

    const-string v1, "[HTCAlbum][ScenePhotoTagEditor][onClickTagButton]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    invoke-interface {v0}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->onClickTagButton()V

    .line 340
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 343
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 344
    invoke-direct {p0, p1}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->adjustMainViewOffset(Landroid/content/res/Configuration;)V

    .line 345
    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    invoke-virtual {v0, p1}, Lcom/htc/album/addons/UploadEditorViewManager;->relayout(Landroid/content/res/Configuration;)V

    .line 346
    return-void
.end method

.method public onConfirm()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 484
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v3, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    iget-object v3, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    invoke-interface {v3}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->isDataReady()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    if-eqz v3, :cond_0

    .line 490
    iget v3, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mCurrentIndex:I

    if-ltz v3, :cond_2

    .line 491
    iget-object v3, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    iget v4, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mCurrentIndex:I

    invoke-virtual {v3, v4}, Lcom/htc/album/addons/UploadEditorViewManager;->savePreviousEditorView(I)V

    .line 494
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 495
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isNetworkConnectionActive(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 497
    const/4 v2, 0x0

    .line 498
    .local v2, fragment:Lcom/htc/app/mf/MfFragment;
    const/4 v0, 0x0

    .line 499
    .local v0, activity:Landroid/app/Activity;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 500
    invoke-static {}, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->instance()Landroid/app/DialogFragment;

    move-result-object v3

    invoke-virtual {v2}, Lcom/htc/app/mf/MfFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 503
    :cond_3
    :goto_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mIsUploading:Z

    goto :goto_0

    .line 501
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 502
    invoke-static {}, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->instance()Landroid/app/DialogFragment;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 507
    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #fragment:Lcom/htc/app/mf/MfFragment;
    :cond_5
    iget-object v3, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    invoke-interface {v3}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->onConfirm()Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mIsUploading:Z

    if-ne v5, v3, :cond_0

    .line 508
    invoke-virtual {p0, v5}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onEnableProgressLoading(Z)V

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
    .line 517
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 526
    :goto_0
    return-void

    .line 520
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onConfirm()V

    goto :goto_0

    .line 523
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onCancel()V

    goto :goto_0

    .line 517
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 2
    .parameter "nAnimState"

    .prologue
    .line 603
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 604
    .local v0, animationBundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    .line 605
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    .line 607
    :cond_0
    return-object v0
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 469
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 470
    .local v1, context:Landroid/content/Context;
    const/4 v0, 0x0

    .line 471
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->enableRightFooter()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 472
    const/4 v3, 0x5

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x2040256

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 473
    const/4 v3, 0x4

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Save_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x204025b

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 475
    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 124
    const-string v6, "ScenePhotoTagEditor"

    const-string v7, "[HTCAlbum][ScenePhotoTagEditor][onCreateScene]: "

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 126
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 128
    const-string v6, "ScenePhotoTagEditor"

    const-string v7, "[HTCAlbum][ScenePhotoTagEditor][onCreateScene]: skip..."

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v2, 0x0

    .line 159
    :goto_0
    return-object v2

    .line 131
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 133
    .local v1, context:Landroid/content/Context;
    new-instance v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v6

    invoke-direct {v2, v1, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    .line 134
    .local v2, fullfilmview:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    new-instance v6, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-direct {v6, v1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    .line 135
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v3, inValue:Landroid/os/Bundle;
    const-string v6, "TEXTURE_MAX_COUNT"

    const/16 v7, 0x14

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    const-string v6, "FULL_FILM_FLAG"

    invoke-virtual {v3, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    iget-object v6, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v6, v1, v3}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 139
    iget-object v6, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v6, v2}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunnyCore/Preparator$UpdateListener;)V

    .line 140
    iget-object v6, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v2, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPreparation(Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;)V

    .line 141
    new-instance v6, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$ViewScrollStateChangedListener;

    invoke-direct {v6, p0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$ViewScrollStateChangedListener;-><init>(Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;)V

    invoke-virtual {v2, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnScrollListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;)V

    .line 142
    new-instance v6, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$FilmstripItemSelectedListner;

    invoke-direct {v6, p0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$FilmstripItemSelectedListner;-><init>(Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;)V

    invoke-virtual {v2, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemSelectedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;)V

    .line 143
    invoke-virtual {v2, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setIsOnlineTagEditor(Z)V

    .line 145
    const/4 v5, 0x0

    .line 146
    .local v5, paddingTop:I
    const/4 v4, 0x0

    .line 147
    .local v4, paddingLeft:I
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v8, :cond_1

    .line 149
    sget v5, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_MAINVIEW_TOP_PORT_DIMEN:I

    .line 150
    sget v4, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_MAINVIEW_LEFT_PORT_DIMEN:I

    .line 157
    :goto_1
    int-to-float v6, v4

    int-to-float v7, v5

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPosition(FFF)V

    goto :goto_0

    .line 154
    :cond_1
    sget v5, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_MAINVIEW_TOP_LAND_DIMEN:I

    .line 155
    sget v4, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_MAINVIEW_LEFT_LAND_DIMEN:I

    goto :goto_1
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunnyCore/view/SView;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v0

    return-object v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 679
    const/4 v0, 0x1

    return v0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    const/4 v4, 0x0

    .line 163
    const-string v2, "ScenePhotoTagEditor"

    const-string v3, "[HTCAlbum][ScenePhotoTagEditor][onEnterScene]:  "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 169
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v1

    .line 170
    .local v1, fragment:Lcom/htc/app/mf/MfFragment;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/htc/album/UploadEditor/ISceneSourcePluginFactory;

    if-eqz v2, :cond_0

    .line 171
    check-cast v1, Lcom/htc/album/UploadEditor/ISceneSourcePluginFactory;

    .end local v1           #fragment:Lcom/htc/app/mf/MfFragment;
    invoke-interface {v1, v4}, Lcom/htc/album/UploadEditor/ISceneSourcePluginFactory;->sceneSourceFactory(Ljava/lang/String;)Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    if-nez v2, :cond_1

    .line 177
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 178
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/htc/album/UploadEditor/ISceneSourcePluginFactory;

    if-eqz v2, :cond_1

    .line 179
    check-cast v0, Lcom/htc/album/UploadEditor/ISceneSourcePluginFactory;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0, v4}, Lcom/htc/album/UploadEditor/ISceneSourcePluginFactory;->sceneSourceFactory(Ljava/lang/String;)Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    .line 185
    :cond_1
    iget-object v2, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    if-eqz v2, :cond_2

    .line 187
    iget-object v2, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2, p0, v3}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->onCreate(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    .line 189
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 196
    :cond_2
    :goto_0
    return-void

    .line 193
    :cond_3
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    invoke-interface {v3}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->isDefaultDisplayScreenControl()Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->createFooterBar(IZ)V

    goto :goto_0
.end method

.method public onFilmstripItemSelected(I)V
    .locals 4
    .parameter "nIndex"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x10

    .line 391
    iget v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mCurrentIndex:I

    if-ne v0, p1, :cond_0

    .line 400
    :goto_0
    return-void

    .line 393
    :cond_0
    iput p1, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mCurrentIndex:I

    .line 395
    invoke-virtual {p0, v2}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onRemoveMessage(I)V

    .line 396
    const/16 v0, 0x20

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v3, v1}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onPostMessage(ILjava/lang/Object;I)V

    .line 397
    const/16 v0, 0x1f4

    invoke-virtual {p0, v2, v3, v0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onPostMessage(ILjava/lang/Object;I)V

    .line 399
    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->invalidateControlBars()V

    goto :goto_0
.end method

.method public onHideUploadEditorViewManager()V
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->onDisplayEditorViewer(Z)V

    .line 640
    return-void
.end method

.method public onLeaveScene()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    invoke-interface {v0}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->onDestroy()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    .line 201
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onLeaveScene()V

    .line 202
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "message"

    .prologue
    .line 308
    const/4 v1, 0x0

    .line 310
    .local v1, bResult:Z
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_0

    .line 311
    const/4 v2, 0x0

    .line 334
    :goto_0
    return v2

    .line 313
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 315
    .local v0, activity:Landroid/app/Activity;
    iget-object v2, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    if-eqz v2, :cond_1

    .line 316
    iget-object v2, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    invoke-interface {v2, p1}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->onMessage(Landroid/os/Message;)Z

    move-result v1

    .line 318
    :cond_1
    const/4 v2, 0x1

    if-ne v2, v1, :cond_2

    move v2, v1

    .line 319
    goto :goto_0

    .line 321
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :goto_1
    move v2, v1

    .line 334
    goto :goto_0

    .line 324
    :sswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onScrollStateChange(I)V

    goto :goto_1

    .line 327
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onHideUploadEditorViewManager()V

    goto :goto_1

    .line 330
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onShowUploadEditorViewManager()V

    goto :goto_1

    .line 321
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x20 -> :sswitch_1
        0x4f4f -> :sswitch_0
    .end sparse-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 211
    const-string v0, "ScenePhotoTagEditor"

    const-string v1, "[HTCAlbum][ScenePhotoTagEditor][onNewAdapter]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onNewAdapter(Landroid/os/Bundle;)V

    .line 216
    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    invoke-interface {v0, p1}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->onNewAdapter(Landroid/os/Bundle;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 218
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onEnableProgressLoading(Z)V

    .line 219
    return-void
.end method

.method public onNotifyUpdateComplete()V
    .locals 2

    .prologue
    .line 94
    const-string v0, "ScenePhotoTagEditor"

    const-string v1, "[HTCAlbum][ScenePhotoTagEditor][onNotifyUpdateComplete]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-interface {v0, p0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->setNewAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;)V

    .line 96
    return-void
.end method

.method public onNotifyUpdating(Z)V
    .locals 3
    .parameter "bIsLoading"

    .prologue
    .line 99
    const-string v0, "ScenePhotoTagEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ScenePhotoTagEditor][onNotifyUpdating]:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    if-eqz p1, :cond_1

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onEnableProgressLoading(Z)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    invoke-interface {v0}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onEnableProgressLoading(Z)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 707
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 716
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 710
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onConfirm()V

    goto :goto_0

    .line 713
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onCancel()V

    goto :goto_0

    .line 707
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 266
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPause()V

    .line 268
    const-string v0, "ScenePhotoTagEditor"

    const-string v1, "[HTCAlbum][ScenePhotoTagEditor][onPause]:"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    invoke-interface {v0}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    const-string v0, "ScenePhotoTagEditor"

    const-string v1, "[HTCAlbum][ScenePhotoTagEditor][onPause]: gotoPreviousScene."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    .line 280
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    invoke-interface {v0}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->onPause()V

    .line 278
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onEnableProgressLoading(Z)V

    goto :goto_0
.end method

.method protected onPhaseInScreenControl(I)V
    .locals 2
    .parameter "nAnimState"

    .prologue
    .line 571
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPhaseInScreenControl(I)V

    .line 572
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->setEnableControlBarAnimation(Z)V

    .line 581
    :goto_0
    return-void

    .line 578
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 579
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->setEnableControlBarAnimation(Z)V

    goto :goto_0
.end method

.method protected onPhaseOutScreenControl(I)V
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 584
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->setEnableControlBarAnimation(Z)V

    .line 592
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPhaseOutScreenControl(I)V

    .line 593
    return-void

    .line 590
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->setEnableControlBarAnimation(Z)V

    goto :goto_0
.end method

.method public onPrepareAnimation(I)Z
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 597
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPrepareAnimation(I)Z

    move-result v0

    .line 598
    .local v0, bResult:Z
    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    .line 687
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 689
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v4

    if-nez v4, :cond_0

    .line 703
    :goto_0
    return v3

    .line 692
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 693
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 695
    .local v0, context:Landroid/content/Context;
    const/4 v4, 0x5

    const v5, 0x20401ee

    invoke-interface {p1, v3, v4, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 696
    .local v1, itemCancel:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 697
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 699
    const/4 v4, 0x4

    const v5, 0x204025b

    invoke-interface {p1, v3, v4, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 700
    .local v2, itemConfirm:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Save_Dark_Rest(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 701
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 703
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onScrollStateChange(I)V
    .locals 1
    .parameter "scrollState"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v0, :cond_0

    .line 388
    :cond_0
    return-void
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    const/4 v2, 0x0

    .line 238
    const-string v0, "ScenePhotoTagEditor"

    const-string v1, "[HTCAlbum][ScenePhotoTagEditor][onSendToBackground]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    invoke-virtual {v0}, Lcom/htc/album/addons/UploadEditorViewManager;->detach()V

    .line 241
    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    invoke-virtual {v0}, Lcom/htc/album/addons/UploadEditorViewManager;->onDestroy()V

    .line 242
    iput-boolean v2, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mIsUploading:Z

    .line 244
    invoke-virtual {p0, v2}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onEnableProgressLoading(Z)V

    .line 245
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onSendToBackground(Landroid/os/Bundle;)V

    .line 246
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    const/4 v3, 0x0

    .line 222
    const-string v0, "ScenePhotoTagEditor"

    const-string v1, "[HTCAlbum][ScenePhotoTagEditor][onSendToForeground]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onSendToForeground(Landroid/os/Bundle;)V

    .line 225
    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->onSendToForeground(Landroid/os/Bundle;)V

    .line 227
    new-instance v0, Lcom/htc/album/addons/UploadEditorViewManager;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/album/addons/UploadEditorViewManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    .line 228
    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    iget-object v1, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    invoke-interface {v1}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/UploadEditorViewManager;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V

    .line 229
    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    invoke-interface {v2}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->getServiceSource()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/addons/UploadEditorViewManager;->initialize(Landroid/app/Activity;I)V

    .line 230
    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityRoot()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/UploadEditorViewManager;->attachTo(Landroid/view/ViewGroup;)V

    .line 231
    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    new-instance v1, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$onTagButtonClickListener;

    invoke-direct {v1, p0, v3}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$onTagButtonClickListener;-><init>(Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$1;)V

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/UploadEditorViewManager;->setTagButtonListener(Landroid/view/View$OnClickListener;)V

    .line 232
    invoke-direct {p0, v3}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->adjustMainViewOffset(Landroid/content/res/Configuration;)V

    .line 234
    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->invalidateControlBars()V

    .line 235
    return-void
.end method

.method public onShowUploadEditorViewManager()V
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->onDisplayEditorViewer(Z)V

    .line 634
    return-void
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    .line 257
    const-string v0, "ScenePhotoTagEditor"

    const-string v1, "[HTCAlbum][ScenePhotoTagEditor][onUnbindAdapter]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onUnbindAdapter()V

    .line 259
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunnyCore/IMediaList;)V

    .line 260
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 675
    const/4 v0, 0x0

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 665
    const/4 v1, 0x0

    .line 666
    .local v1, szText:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v3, :cond_0

    move-object v2, v1

    .line 671
    .end local v1           #szText:Ljava/lang/String;
    .local v2, szText:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 668
    .end local v2           #szText:Ljava/lang/String;
    .restart local v1       #szText:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 670
    .local v0, activity:Landroid/app/Activity;
    const v3, 0x7f0a006f

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 671
    .end local v1           #szText:Ljava/lang/String;
    .restart local v2       #szText:Ljava/lang/String;
    goto :goto_0
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x1

    return v0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string v0, "ScenePhotoTagEditor"

    return-object v0
.end method
