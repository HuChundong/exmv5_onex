.class public Lcom/htc/album/addons/carmode/PickerGeoErrorScene;
.super Lcom/htc/album/TabPluginDevice/SceneLocalError;
.source "PickerGeoErrorScene.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "PickerGeoErrorScene"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;-><init>()V

    return-void
.end method


# virtual methods
.method protected createErrorView()Landroid/widget/RelativeLayout;
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, errorView:Lcom/htc/album/helper/ErrorViewManager;
    new-instance v0, Lcom/htc/album/helper/ErrorViewManager;

    .end local v0           #errorView:Lcom/htc/album/helper/ErrorViewManager;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/album/helper/ErrorViewManager;-><init>(Landroid/content/Context;)V

    .line 26
    .restart local v0       #errorView:Lcom/htc/album/helper/ErrorViewManager;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/ErrorViewManager;->initialize(Landroid/app/Activity;Z)V

    .line 27
    return-object v0
.end method

.method public enableFullScreen()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public onActionBarBackPressed()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 85
    return-void
.end method

.method protected onActionBarClicked(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoErrorScene;->onActionBarBackPressed()V

    .line 75
    return-void
.end method

.method public onActionBarFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "startEvent"
    .parameter "endEvent"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoErrorScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->isCarModeActionBarFling(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    .line 68
    .local v0, isFling:Z
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoErrorScene;->onActionBarBackPressed()V

    .line 70
    :cond_0
    return v0
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public onEnableActionBarTouchEvent()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->onSendToForeground(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoErrorScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityRoot()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->detach(Landroid/view/ViewGroup;)V

    .line 44
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoErrorScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityRoot()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->attach(Landroid/view/ViewGroup;)V

    .line 45
    return-void
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onUpdateErrorView()V
    .locals 4

    .prologue
    .line 56
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getErrorState(Landroid/content/Context;IZ)Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;

    move-result-object v0

    .line 58
    .local v0, errMsg:Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalError;->mErrorViewManager:Lcom/htc/album/helper/ErrorViewManager;

    invoke-virtual {v0}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;->getMsg()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/album/helper/ErrorViewManager;->setErrorText(I)V

    .line 59
    return-void
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "PickerGeoErrorScene"

    return-object v0
.end method
