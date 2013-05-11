.class public abstract Lcom/htc/sunny2/scene/GalleryBaseScene;
.super Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;
.source "GalleryBaseScene.java"

# interfaces
.implements Lcom/htc/album/modules/ui/IControlBarHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneLoadingControl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VIEW:",
        "Lcom/htc/sunnyCore/view/SView;",
        "ADAPTER:",
        "Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;",
        ">",
        "Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene",
        "<TVIEW;TADAPTER;>;",
        "Lcom/htc/album/modules/ui/IControlBarHost;",
        "Lcom/htc/sunny2/frameworks/base/interfaces/ISceneLoadingControl;"
    }
.end annotation


# static fields
.field protected static final FOOTER_BAR:I = 0x2

.field protected static final HEADER_BAR:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "GalleryBaseScene"

.field public static final TIMER_AUTOHIDE:I = 0x1388


# instance fields
.field protected final TIMER_AUTOSHOW:I

.field protected mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

.field protected mEntryOrientation:I

.field protected mIsBound:Z

.field protected mItemSelected:I

.field protected mLayoutPageView:Landroid/widget/RelativeLayout;

.field protected mOldOrientation:I

.field protected mParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected mTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

.field protected mTVOutIndex:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 64
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;-><init>()V

    .line 72
    const/16 v0, 0x12c

    iput v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->TIMER_AUTOSHOW:I

    .line 75
    iput-boolean v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mIsBound:Z

    .line 77
    iput-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    .line 78
    iput-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    .line 79
    iput v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mItemSelected:I

    .line 81
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mOldOrientation:I

    .line 83
    iput v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mEntryOrientation:I

    .line 86
    iput-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    .line 87
    iput v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mTVOutIndex:I

    .line 939
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method private onHandleErrorReport()V
    .locals 4

    .prologue
    .line 841
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-boolean v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mIsBound:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_2

    .line 843
    :cond_0
    const-string v1, "GalleryBaseScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][GalleryBaseScene][onHandleErrorReport]: exit 1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : skipped..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    :cond_1
    :goto_0
    return-void

    .line 846
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->isSecureSendToBackground()Z

    move-result v2

    if-eq v1, v2, :cond_3

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityLifeCycle()I

    move-result v2

    if-gt v1, v2, :cond_4

    .line 848
    :cond_3
    const-string v1, "GalleryBaseScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][GalleryBaseScene][onHandleErrorReport]: exit 2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : skipped..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 851
    :cond_4
    const/4 v0, 0x0

    .line 852
    .local v0, nCount:I
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_5

    .line 853
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getCount()I

    move-result v0

    .line 855
    :cond_5
    const-string v1, "GalleryBaseScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][GalleryBaseScene][onHandleErrorReport]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_1

    .line 858
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyErrorResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onPrepareScreenControl()V
    .locals 2

    .prologue
    .line 545
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getAnimationState()I

    move-result v0

    .line 546
    .local v0, nAnimState:I
    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    if-nez v0, :cond_2

    .line 551
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPhaseInScreenControl(I)V

    .line 565
    :cond_1
    :goto_0
    return-void

    .line 553
    :cond_2
    const/4 v1, 0x3

    if-eq v1, v0, :cond_3

    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    .line 557
    :cond_3
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 562
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPhaseOutScreenControl(I)V

    goto :goto_0
.end method

.method private onSynchronizeScreenRotate()V
    .locals 3

    .prologue
    .line 482
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 485
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mEntryOrientation:I

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_0

    .line 488
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->configLayoutMainView(Landroid/content/res/Configuration;)Z

    .line 489
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onHandleActionBarBarLayoutChange()V

    .line 491
    :cond_0
    return-void
.end method

.method private trunOnOffTV(Z)V
    .locals 5
    .parameter "turnOn"

    .prologue
    .line 1292
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_1

    .line 1315
    :cond_0
    :goto_0
    return-void

    .line 1295
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1296
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1299
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1301
    .local v1, context:Landroid/content/Context;
    const-string v2, "GalleryBaseScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GalleryBaseScene][turnOnOffTVBtn]: turnOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    if-eqz p1, :cond_2

    .line 1307
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getDLNAOutputIndex()I

    move-result v2

    iput v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mTVOutIndex:I

    .line 1308
    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->turnOnTV(Landroid/content/Context;)Z

    goto :goto_0

    .line 1313
    :cond_2
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->turnOffTV(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method protected configLayoutMainView(Landroid/content/res/Configuration;)Z
    .locals 9
    .parameter "newConfig"

    .prologue
    .line 767
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    .line 769
    .local v0, bResult:Z
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 770
    .local v2, d:Landroid/view/Display;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 771
    .local v3, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 772
    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v6, v7, :cond_0

    const/4 v5, 0x2

    .line 774
    .local v5, winOrientation:I
    :goto_0
    iget v6, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mOldOrientation:I

    iget v7, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v7, :cond_1

    .line 775
    const-string v6, "GalleryBaseScene"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][GalleryBaseScene][configLayoutMainView]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", no ori changed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 788
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_1
    return v1

    .line 772
    .end local v1           #bResult:I
    .end local v5           #winOrientation:I
    .restart local v0       #bResult:Z
    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    .line 779
    .restart local v5       #winOrientation:I
    :cond_1
    const-string v6, "GalleryBaseScene"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][GalleryBaseScene][configLayoutMainView]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", new ori="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onConfigMainViewLayout(Landroid/content/res/Configuration;)V

    .line 782
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v4

    .line 783
    .local v4, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    if-eqz v4, :cond_2

    .line 784
    invoke-virtual {v4, p1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->onConfigurationChange(Landroid/content/res/Configuration;)V

    .line 786
    :cond_2
    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mOldOrientation:I

    .line 787
    const/4 v0, 0x1

    move v1, v0

    .line 788
    .restart local v1       #bResult:I
    goto :goto_1
.end method

.method protected final createControlBar(II)V
    .locals 1
    .parameter "style"
    .parameter "id"

    .prologue
    .line 634
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    .line 635
    return-void
.end method

.method protected final createControlBars(II)V
    .locals 1
    .parameter "headerId"
    .parameter "footerId"

    .prologue
    .line 639
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBars(II)V

    .line 640
    return-void
.end method

.method protected final createFooterBar(IZ)V
    .locals 1
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 629
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->createFooterBar(IZ)V

    .line 630
    return-void
.end method

.method protected final createFooterBarWithoutThreadCheck(IZ)V
    .locals 1
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 624
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->createFooterBarWithoutThreadCheck(IZ)V

    .line 625
    return-void
.end method

.method protected final createHeaderBar(IZ)V
    .locals 0
    .parameter "id"
    .parameter "visible"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 620
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method protected defaultControlBarOn()Z
    .locals 1

    .prologue
    .line 702
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public enablePageLoading()Z
    .locals 1

    .prologue
    .line 1014
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public enableProgressLoading()Z
    .locals 1

    .prologue
    .line 943
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public enableRightFooter()Z
    .locals 1

    .prologue
    .line 608
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected getDLNAOutputIndex()I
    .locals 1

    .prologue
    .line 1277
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 1

    .prologue
    .line 659
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    goto :goto_0
.end method

.method protected final getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    .locals 1

    .prologue
    .line 664
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 589
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 584
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    .locals 2

    .prologue
    .line 571
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    .line 573
    .local v0, hostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v1, :cond_0

    .line 574
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    move-result-object v0

    .line 576
    :cond_0
    return-object v0
.end method

.method protected getPageLoadingLayout()I
    .locals 1

    .prologue
    .line 1205
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const v0, 0x7f030034

    return v0
.end method

.method public getPageLoadingPadding()I
    .locals 2

    .prologue
    .line 1107
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    .line 1108
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1109
    :cond_0
    const/4 v1, 0x0

    .line 1111
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->getHeight(Landroid/content/Context;I)I

    move-result v1

    goto :goto_0
.end method

.method public getPageLoadingText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1103
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProgressLoadingText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1009
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final hideControlBars()V
    .locals 2

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v1, 0x0

    .line 679
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, v1, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->hideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 680
    :cond_0
    return-void
.end method

.method protected final hideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "headerAnimation"
    .parameter "footerAnimation"

    .prologue
    .line 683
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->hideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 684
    :cond_0
    return-void
.end method

.method protected final hideFooterControlBar()V
    .locals 2

    .prologue
    .line 687
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const-string v0, "GalleryBaseScene"

    const-string v1, "[HTCAlbum][GalleryBaseScene][hideFooterControlBar]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->hideFooterControlBar(Landroid/view/animation/Animation;)V

    .line 689
    :cond_0
    return-void
.end method

.method protected inflaterPageLayout(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v4, 0x0

    .line 1085
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_0

    .line 1087
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1088
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getPageLoadingLayout()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    .line 1090
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1

    .line 1092
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    const v3, 0x7f09005f

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 1093
    .local v1, page_bk:Landroid/widget/RelativeLayout;
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1094
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1100
    .end local v1           #page_bk:Landroid/widget/RelativeLayout;
    :goto_0
    return-void

    .line 1098
    :cond_1
    const-string v2, "GalleryBaseScene"

    const-string v3, "[GalleryBaseScene][inflaterPageLayout] inflate layout fail!!!"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final invalidateControlBars()V
    .locals 1

    .prologue
    .line 674
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 675
    :cond_0
    return-void
.end method

.method protected final invalidateControlBarsWithoutThreadCheck()V
    .locals 1

    .prologue
    .line 669
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBarsWithoutThreadCheck()V

    .line 670
    :cond_0
    return-void
.end method

.method protected final isControlBarShowing()Z
    .locals 1

    .prologue
    .line 697
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->isControlBarShowing()Z

    move-result v0

    goto :goto_0
.end method

.method protected isDisableTransitionAnimation()Z
    .locals 6

    .prologue
    .line 1124
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    .line 1125
    .local v0, bResult:Z
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v3, :cond_0

    move v1, v0

    .line 1132
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 1128
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1129
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "disable_animation"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1131
    const-string v3, "GalleryBaseScene"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][GalleryBaseScene][isDisableTransitionAnimation]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 1132
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public notifyDataChangedAt(I)V
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 816
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    instance-of v0, v0, Lcom/htc/sunnyCore/view/ISViewDataChangeHandler;

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/view/ISViewDataChangeHandler;

    invoke-interface {v0, p1}, Lcom/htc/sunnyCore/view/ISViewDataChangeHandler;->notifyMediaDataChange(I)V

    .line 818
    :cond_0
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    .line 800
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    instance-of v0, v0, Lcom/htc/sunnyCore/view/ISViewDataChangeHandler;

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/view/ISViewDataChangeHandler;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/ISViewDataChangeHandler;->notifyMediaDataChange()V

    .line 803
    const-string v0, "GalleryBaseScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][GalleryBaseScene][notifyDataSetChanged]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onTriggerErrorReport()V

    .line 807
    return-void
.end method

.method public onAnimationEnd(I)V
    .locals 3
    .parameter "nAnimState"

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v2, 0x0

    .line 461
    invoke-super {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onAnimationEnd(I)V

    .line 463
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->enableFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setTopMargin(Landroid/app/Activity;I)V

    .line 468
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 479
    :cond_1
    :goto_0
    return-void

    .line 472
    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/view/SView;->isVisible()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 474
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    goto :goto_0

    .line 468
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onBindAdapter()V
    .locals 5

    .prologue
    .line 235
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-super {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onBindAdapter()V

    .line 240
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v2, p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 245
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 246
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->configLayoutMainView(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v0           #config:Landroid/content/res/Configuration;
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mIsBound:Z

    .line 253
    return-void

    .line 248
    :catch_0
    move-exception v1

    .line 250
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "GalleryBaseScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][GalleryBaseScene][onBindAdapter]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBubbleDismissed()V
    .locals 0

    .prologue
    .line 732
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onBubblePopped()V
    .locals 0

    .prologue
    .line 722
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method protected onConfigMainViewLayout(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 791
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 758
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-super {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 759
    const-string v0, "GalleryBaseScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][GalleryBaseScene][onConfigurationChanged]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->configLayoutMainView(Landroid/content/res/Configuration;)Z

    .line 762
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onHandleActionBarBarLayoutChange()V

    .line 763
    return-void
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 712
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    return-void
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 4
    .parameter "nAnimState"

    .prologue
    .line 409
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const-string v1, "GalleryBaseScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][GalleryBaseScene][onCreateAnimation]1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-super {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 413
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v1, 0x1

    if-eq v1, p1, :cond_0

    if-nez p1, :cond_1

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onLastViewItemSync()V

    .line 418
    :cond_1
    return-object v0
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 1
    .parameter "id"

    .prologue
    .line 599
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    .locals 1

    .prologue
    .line 91
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final onDMRChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "DMR"

    .prologue
    .line 1267
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getDLNAOutputIndex()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onDMRChanged(Ljava/lang/String;I)V

    .line 1268
    return-void
.end method

.method protected onDMRChanged(Ljava/lang/String;I)V
    .locals 2
    .parameter "DMR"
    .parameter "index"

    .prologue
    .line 1272
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->setDLNAPlayingState(Landroid/content/Context;Z)V

    .line 1273
    return-void
.end method

.method public onDestroyAdapter()V
    .locals 4

    .prologue
    .line 169
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-super {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onDestroyAdapter()V

    .line 170
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    .line 171
    .local v1, leaveView:Lcom/htc/sunnyCore/view/SView;
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 172
    .local v0, leaveAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->notifyDestroyingAdapter()V

    .line 173
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/sunny2/scene/GalleryBaseScene$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/htc/sunny2/scene/GalleryBaseScene$1;-><init>(Lcom/htc/sunny2/scene/GalleryBaseScene;Lcom/htc/sunnyCore/view/SView;Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 191
    return-void
.end method

.method public onDestroyScene()V
    .locals 0

    .prologue
    .line 312
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method protected onDisableTransitionAnimation(Z)V
    .locals 4
    .parameter "bDisable"

    .prologue
    .line 1115
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_1

    .line 1121
    :cond_0
    :goto_0
    return-void

    .line 1118
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1119
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "disable_animation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1120
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GalleryBaseScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][GalleryBaseScene][onDisableTransitionAnimation]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEnablePageLoading(Z)V
    .locals 12
    .parameter "bEnable"

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const v11, 0x7f090060

    const v10, 0x7f090012

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1018
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->enablePageLoading()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1082
    :cond_0
    :goto_0
    return-void

    .line 1021
    :cond_1
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v5, :cond_0

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityLifeCycle()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 1024
    const/16 v5, 0x4e46

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onRemoveMessage(I)V

    .line 1026
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1027
    .local v0, activity:Landroid/app/Activity;
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityRoot()Landroid/view/ViewGroup;

    move-result-object v4

    .line 1032
    .local v4, viewRoot:Landroid/view/ViewGroup;
    if-ne v8, p1, :cond_2

    .line 1033
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v5, v7}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    .line 1035
    :cond_2
    if-ne v8, p1, :cond_7

    .line 1037
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->inflaterPageLayout(Landroid/app/Activity;)V

    .line 1039
    iget-object v5, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1040
    .local v3, textView:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 1041
    .local v1, progressBar:Landroid/widget/ProgressBar;
    const/4 v2, 0x0

    .line 1043
    .local v2, szMessage:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getPageLoadingText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 1044
    :cond_3
    const v5, 0x7f0a0051

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1046
    :cond_4
    if-eqz v3, :cond_5

    .line 1047
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1048
    :cond_5
    if-eqz v1, :cond_6

    .line 1049
    invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1051
    :cond_6
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1052
    iget-object v5, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1056
    .end local v1           #progressBar:Landroid/widget/ProgressBar;
    .end local v2           #szMessage:Ljava/lang/String;
    .end local v3           #textView:Landroid/widget/TextView;
    :cond_7
    iget-object v5, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_0

    .line 1058
    iget-object v5, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1059
    .restart local v3       #textView:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 1061
    .restart local v1       #progressBar:Landroid/widget/ProgressBar;
    if-eqz v3, :cond_8

    .line 1063
    const-string v5, ""

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-eq v5, v6, :cond_8

    .line 1065
    const-string v5, ""

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1068
    :cond_8
    if-eqz v1, :cond_9

    .line 1070
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v5

    if-eq v9, v5, :cond_9

    .line 1072
    invoke-virtual {v1, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1076
    :cond_9
    if-eqz v4, :cond_0

    .line 1078
    iget-object v5, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public onEnableProgressLoading(Z)V
    .locals 9
    .parameter "bEnable"

    .prologue
    .line 947
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->enableProgressLoading()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 950
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v6, :cond_0

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityLifeCycle()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 953
    const/16 v6, 0x4e46

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onRemoveMessage(I)V

    .line 958
    const/4 v0, 0x0

    .line 959
    .local v0, activity:Landroid/app/Activity;
    const/4 v4, 0x0

    .line 960
    .local v4, fragment:Lcom/htc/app/mf/MfFragment;
    const/4 v2, 0x0

    .line 962
    .local v2, dialog:Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 964
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 967
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 969
    instance-of v6, v4, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v6, :cond_2

    move-object v2, v4

    .line 970
    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    .line 981
    :cond_2
    :goto_1
    const/4 v6, 0x1

    if-ne v6, p1, :cond_6

    .line 983
    const/4 v5, 0x0

    .line 984
    .local v5, szMessage:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getProgressLoadingText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 985
    :cond_3
    const v6, 0x7f0a0051

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 987
    :cond_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 988
    .local v1, bundle:Landroid/os/Bundle;
    const-string v6, "loading_text"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    if-eqz v2, :cond_0

    .line 992
    const/16 v6, 0x2724

    invoke-interface {v2, v6}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z

    .line 993
    const/16 v6, 0x2724

    invoke-interface {v2, v6, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->showFragmentDialog(ILandroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1002
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v5           #szMessage:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1004
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "GalleryBaseScene"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][GalleryBaseScene][onEnableProgressLoading]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 974
    .end local v3           #e:Ljava/lang/Exception;
    :cond_5
    instance-of v6, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v6, :cond_2

    move-object v2, v0

    .line 975
    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    goto :goto_1

    .line 998
    :cond_6
    if-eqz v2, :cond_0

    .line 999
    const/16 v6, 0x2724

    :try_start_1
    invoke-interface {v2, v6}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onEnterFullscreenMode()V
    .locals 0

    .prologue
    .line 934
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 9
    .parameter "bundle"

    .prologue
    .line 115
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    .line 116
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-nez v6, :cond_0

    .line 118
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 124
    .local v2, control:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sceneAdapter(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 125
    .local v1, adapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    if-nez v1, :cond_1

    .line 126
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPreNewAdapter(Landroid/os/Bundle;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v1           #adapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 140
    new-instance v3, Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->enableRightFooter()Z

    move-result v8

    invoke-direct {v3, v6, v7, p0, v8}, Lcom/htc/album/modules/ui/ControlBarManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/htc/album/modules/ui/IControlBarHost;Z)V

    .line 145
    .local v3, controlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;
    iput-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    .line 146
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/htc/album/modules/ui/ControlBarManager;->setIdentifier(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->requestHeaderBar()Z

    move-result v6

    if-nez v6, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/htc/album/modules/ui/ControlBarManager;->attachActionBar(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;)V

    .line 154
    :cond_2
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v5

    .line 155
    .local v5, root:Landroid/view/ViewGroup;
    invoke-virtual {v3, v5}, Lcom/htc/album/modules/ui/ControlBarManager;->attach(Landroid/view/ViewGroup;)V

    .line 159
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 160
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->isHostScene()Z

    move-result v6

    if-eqz v6, :cond_3

    instance-of v6, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v6, :cond_3

    .line 162
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-virtual {v3, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->attachHostBar(Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;)V

    .line 164
    :cond_3
    return-void

    .line 129
    .end local v3           #controlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;
    .end local v5           #root:Landroid/view/ViewGroup;
    :catch_0
    move-exception v4

    .line 130
    .local v4, e:Ljava/lang/Exception;
    sget-boolean v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "GalleryBaseScene"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error occurs, skip onPreNewAdapter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onHandleActionBarBarLayoutChange()V
    .locals 3

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v2, 0x0

    .line 1212
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1214
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 1216
    .local v0, nOrientation:I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 1218
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->enableRightFooter()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1220
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->requestFooterBar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1222
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1223
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->enableHTCLandscape(Z)V

    .line 1238
    .end local v0           #nOrientation:I
    :cond_0
    :goto_0
    return-void

    .line 1227
    .restart local v0       #nOrientation:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1228
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->enableHTCLandscape(Z)V

    goto :goto_0

    .line 1233
    :cond_2
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1234
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->enableHTCLandscape(Z)V

    goto :goto_0
.end method

.method protected onLastViewItemReset()V
    .locals 3

    .prologue
    .line 1136
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_0

    .line 1142
    :goto_0
    return-void

    .line 1139
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1140
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "last_viewed_photo_index"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onLastViewItemSync()V
    .locals 7

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v6, -0x1

    .line 1161
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v5, :cond_1

    .line 1182
    :cond_0
    :goto_0
    return-void

    .line 1164
    :cond_1
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1165
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "last_viewed_photo_index"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1166
    .local v2, nPosition:I
    if-eq v6, v2, :cond_0

    .line 1169
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    instance-of v5, v5, Lcom/htc/sunnyCore/widget/gridview/GridView;

    if-eqz v5, :cond_3

    .line 1171
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    .line 1172
    .local v0, gridView:Lcom/htc/sunnyCore/widget/gridview/GridView;
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v3

    .line 1173
    .local v3, nVisibleBegin:I
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getLastVisiblePosition()I

    move-result v4

    .line 1174
    .local v4, nVisibleEnd:I
    if-gt v3, v2, :cond_2

    if-ge v4, v2, :cond_0

    .line 1175
    :cond_2
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v5, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v5, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setSelection(I)V

    goto :goto_0

    .line 1177
    .end local v0           #gridView:Lcom/htc/sunnyCore/widget/gridview/GridView;
    .end local v3           #nVisibleBegin:I
    .end local v4           #nVisibleEnd:I
    :cond_3
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    instance-of v5, v5, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    if-eqz v5, :cond_0

    .line 1179
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v5, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v5, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setSelection(I)V

    goto :goto_0
.end method

.method protected onLastViewItemUpdate()V
    .locals 3

    .prologue
    .line 1145
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_0

    .line 1158
    :goto_0
    return-void

    .line 1148
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1149
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x1

    .line 1150
    .local v1, nPosition:I
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    instance-of v2, v2, Lcom/htc/sunnyCore/widget/gridview/GridView;

    if-eqz v2, :cond_2

    .line 1151
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getSelectedItemPosition()I

    move-result v1

    .line 1155
    :cond_1
    :goto_1
    const-string v2, "last_viewed_photo_index"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1152
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    instance-of v2, v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    if-eqz v2, :cond_1

    .line 1153
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    goto :goto_1
.end method

.method public onLeaveScene()V
    .locals 1

    .prologue
    .line 303
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->detach()V

    .line 304
    invoke-super {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onLeaveScene()V

    .line 305
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "message"

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 864
    const/4 v0, 0x0

    .line 866
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityLifeCycle()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 892
    :cond_0
    :goto_0
    return v3

    .line 869
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 890
    invoke-super {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 872
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onHandleErrorReport()V

    goto :goto_0

    .line 875
    :sswitch_1
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onEnableProgressLoading(Z)V

    goto :goto_0

    .line 878
    :sswitch_2
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onEnableProgressLoading(Z)V

    goto :goto_0

    .line 881
    :sswitch_3
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onEnablePageLoading(Z)V

    goto :goto_0

    .line 884
    :sswitch_4
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onEnablePageLoading(Z)V

    goto :goto_0

    .line 887
    :sswitch_5
    invoke-direct {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onSynchronizeScreenRotate()V

    goto :goto_0

    .line 869
    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_1
        0x2728 -> :sswitch_2
        0x2730 -> :sswitch_3
        0x2731 -> :sswitch_4
        0x4e44 -> :sswitch_0
        0x4ea6 -> :sswitch_5
    .end sparse-switch
.end method

.method public onNoTVToPlay()V
    .locals 2

    .prologue
    .line 1253
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mTVOutIndex:I

    .line 1254
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    .line 1255
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->launchSelectPlayer(Landroid/app/Activity;Z)V

    .line 1256
    :cond_0
    return-void
.end method

.method public onNotifyUpdateComplete()V
    .locals 2

    .prologue
    .line 837
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-interface {v0, p0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->setNewAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;)V

    .line 838
    :cond_0
    return-void
.end method

.method public onNotifyUpdating(Z)V
    .locals 0
    .parameter "bIsLoading"

    .prologue
    .line 827
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    if-nez p1, :cond_0

    .line 828
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onTriggerErrorReport()V

    .line 829
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 753
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-super {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onPause()V

    .line 754
    return-void
.end method

.method protected onPhaseInScreenControl(I)V
    .locals 5
    .parameter "nAnimState"

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v4, 0x1

    .line 498
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onHandleActionBarBarLayoutChange()V

    .line 500
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 501
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->isHostScene()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 503
    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .line 505
    .local v2, switchHost:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;
    invoke-interface {v2, v4, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableSourceSwitch(ZZ)V

    .line 522
    .end local v2           #switchHost:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;
    :goto_0
    return-void

    .line 509
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->defaultControlBarOn()Z

    move-result v1

    .line 510
    .local v1, isShowDefault:Z
    if-ne v4, v1, :cond_1

    .line 513
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->showControlBars()V

    goto :goto_0

    .line 519
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->hideControlBars()V

    goto :goto_0
.end method

.method protected onPhaseOutScreenControl(I)V
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 528
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->isHostScene()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    :goto_0
    return-void

    .line 540
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->hideFooterControlBar()V

    goto :goto_0
.end method

.method public onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V
    .locals 3
    .parameter "animIn"
    .parameter "animOut"
    .parameter "listener"

    .prologue
    .line 423
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 425
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimationCust:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimationSupport:Z

    if-eqz v0, :cond_0

    .line 427
    const-string v0, "GalleryBaseScene"

    const-string v1, "[HTCAlbum][GalleryBaseScene][onPlayAnimation]: skip..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :goto_0
    return-void

    .line 430
    :cond_0
    const-string v0, "GalleryBaseScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][GalleryBaseScene][onPlayAnimation]: onPrepareScreenControl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-direct {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPrepareScreenControl()V

    goto :goto_0
.end method

.method protected onPreNewAdapter(Landroid/os/Bundle;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TADAPTER;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPrepareAnimation(I)Z
    .locals 9
    .parameter "nAnimState"

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 317
    invoke-super {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onPrepareAnimation(I)Z

    move-result v0

    .line 318
    .local v0, bResult:Z
    const-string v3, "GalleryBaseScene"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][GalleryBaseScene][onPrepareAnimation]: begin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mEntryOrientation:I

    .line 322
    packed-switch p1, :pswitch_data_0

    .line 378
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 379
    .local v1, config:Landroid/content/res/Configuration;
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->configLayoutMainView(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_1
    if-eq v8, p1, :cond_1

    if-nez p1, :cond_2

    .line 395
    :cond_1
    iget-boolean v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimationSupport:Z

    if-eqz v3, :cond_4

    .line 397
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->enableFullScreen()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 398
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onHandleActionBarBarLayoutChange()V

    .line 403
    :cond_2
    :goto_2
    const-string v3, "GalleryBaseScene"

    const-string v4, "[HTCAlbum][GalleryBaseScene][onPrepareAnimation]: end... "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return v0

    .line 326
    :pswitch_0
    if-ne v0, v8, :cond_3

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v3, :cond_3

    .line 327
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v3, v6}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    .line 329
    :cond_3
    iget v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mItemSelected:I

    if-eq v7, v3, :cond_0

    .line 331
    iget v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mItemSelected:I

    invoke-virtual {p0, v3, v6}, Lcom/htc/sunny2/scene/GalleryBaseScene;->updateSelectedState(IZ)V

    .line 332
    iput v7, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mItemSelected:I

    goto :goto_0

    .line 338
    :pswitch_1
    iget v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mItemSelected:I

    if-eq v7, v3, :cond_0

    .line 340
    iget v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mItemSelected:I

    invoke-virtual {p0, v3, v6}, Lcom/htc/sunny2/scene/GalleryBaseScene;->updateSelectedState(IZ)V

    .line 341
    iput v7, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mItemSelected:I

    goto :goto_0

    .line 350
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->isDisableTransitionAnimation()Z

    move-result v3

    if-ne v8, v3, :cond_0

    .line 352
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v3, :cond_0

    .line 353
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v3, v6}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    goto :goto_0

    .line 360
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->isDisableTransitionAnimation()Z

    move-result v3

    if-ne v8, v3, :cond_0

    .line 362
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v3, :cond_0

    .line 363
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v3, v6}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    goto :goto_0

    .line 381
    :catch_0
    move-exception v2

    .line 383
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "GalleryBaseScene"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][GalleryBaseScene][onPrepareAnimation]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 400
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->requestFooterBar()Z

    move-result v3

    if-nez v3, :cond_2

    .line 401
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onHandleActionBarBarLayoutChange()V

    goto :goto_2

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final onPrepareEnterFullscreenMode()V
    .locals 4

    .prologue
    .line 908
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    if-nez v1, :cond_1

    .line 919
    :cond_0
    :goto_0
    return-void

    .line 911
    :cond_1
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 914
    const-string v1, "GalleryBaseScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][GalleryBaseScene][onPrepareEnterFullscreenMode]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->getWindowStatusBarHeight(Landroid/app/Activity;)I

    move-result v0

    .line 917
    .local v0, nStatusBarHeight:I
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setTopMargin(Landroid/app/Activity;I)V

    .line 918
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->hideControlBars()V

    goto :goto_0
.end method

.method public final onPrepareLeaveFullscreenMode()V
    .locals 3

    .prologue
    .line 922
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    if-nez v0, :cond_1

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 928
    const-string v0, "GalleryBaseScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][GalleryBaseScene][onPrepareLeaveFullscreenMode]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setTopMargin(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 0
    .parameter "footer"

    .prologue
    .line 605
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 738
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-super {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onResume()V

    .line 749
    return-void
.end method

.method protected onSelectPlayer()V
    .locals 2

    .prologue
    .line 1260
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mTVOutIndex:I

    .line 1261
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->launchSelectPlayer(Landroid/app/Activity;Z)V

    .line 1263
    :cond_0
    return-void
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v2, 0x0

    .line 268
    invoke-super {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onSendToBackground(Landroid/os/Bundle;)V

    .line 270
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->enableBroadcastNotify()Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v1, p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->removeSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 273
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onEnablePageLoading(Z)V

    .line 275
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onLastViewItemReset()V

    .line 276
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onDisableTransitionAnimation(Z)V

    .line 283
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getAnimationState()I

    move-result v0

    .line 284
    .local v0, nAnimState:I
    const-string v1, "GalleryBaseScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][GalleryBaseScene][onSendToBackground]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const/4 v1, 0x3

    if-eq v1, v0, :cond_1

    const/4 v1, 0x2

    if-ne v1, v0, :cond_2

    .line 288
    :cond_1
    iget-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimationSupport:Z

    if-nez v1, :cond_2

    .line 290
    const-string v1, "GalleryBaseScene"

    const-string v2, "[HTCAlbum][GalleryBaseScene][onSendToBackground]: onPrepareScreenControl... "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-direct {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPrepareScreenControl()V

    .line 294
    :cond_2
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 7
    .parameter "bundle"

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v6, 0x1

    .line 200
    invoke-super {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onSendToForeground(Landroid/os/Bundle;)V

    .line 202
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v3, :cond_0

    .line 203
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v3, p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 205
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityRoot()Landroid/view/ViewGroup;

    move-result-object v2

    .line 206
    .local v2, viewRoot:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getPageLoadingLayout()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 207
    .local v1, viewPageLoad:Landroid/view/ViewGroup;
    if-nez v1, :cond_3

    .line 208
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v3, v6}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    .line 216
    :goto_0
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getAnimationState()I

    move-result v0

    .line 217
    .local v0, nAnimState:I
    const-string v3, "GalleryBaseScene"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][GalleryBaseScene][onSendToForeground]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    if-eq v6, v0, :cond_1

    if-nez v0, :cond_2

    .line 222
    :cond_1
    iget-boolean v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimationSupport:Z

    if-nez v3, :cond_4

    .line 224
    const-string v3, "GalleryBaseScene"

    const-string v4, "[HTCAlbum][GalleryBaseScene][onSendToForeground]: onPrepareScreenControl... "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-direct {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPrepareScreenControl()V

    .line 230
    :cond_2
    :goto_1
    const/16 v3, 0x12c

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onTriggerSynchronizeScreenRotate(I)V

    .line 231
    return-void

    .line 210
    .end local v0           #nAnimState:I
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    goto :goto_0

    .line 228
    .restart local v0       #nAnimState:I
    :cond_4
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onHandleActionBarBarLayoutChange()V

    goto :goto_1
.end method

.method public onStartAnimation(I)V
    .locals 4
    .parameter "nAnimState"

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v3, 0x1

    .line 435
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/SView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    .line 441
    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimationCust:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimationSupport:Z

    if-nez v0, :cond_2

    .line 443
    const-string v0, "GalleryBaseScene"

    const-string v1, "[HTCAlbum][GalleryBaseScene][onStartAnimation]: skip..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_1
    :goto_0
    return-void

    .line 446
    :cond_2
    const-string v0, "GalleryBaseScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][GalleryBaseScene][onStartAnimation]: onPrepareScreenControl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-direct {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPrepareScreenControl()V

    .line 448
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->enableFullScreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 450
    if-eq v3, p1, :cond_3

    if-nez p1, :cond_1

    .line 454
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenuUponDataBind()V

    goto :goto_0
.end method

.method public onTVReadyToPlay()V
    .locals 1

    .prologue
    .line 1247
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onDMRChanged(Ljava/lang/String;)V

    .line 1248
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mTVOutIndex:I

    .line 1249
    return-void
.end method

.method public onTriggerErrorReport()V
    .locals 3

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/16 v2, 0x4e44

    .line 903
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onRemoveMessage(I)V

    .line 904
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 905
    return-void
.end method

.method public onTriggerSynchronizeScreenRotate(I)V
    .locals 2
    .parameter "nDelayMillis"

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/16 v1, 0x4ea6

    .line 896
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onRemoveMessage(I)V

    .line 897
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 898
    return-void
.end method

.method public onUnbindAdapter()V
    .locals 1

    .prologue
    .line 256
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-super {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onUnbindAdapter()V

    .line 257
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->removeSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 259
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mIsBound:Z

    .line 260
    return-void
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 594
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public requestHeaderBar()Z
    .locals 1

    .prologue
    .line 580
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public requestTVDisplay()Z
    .locals 1

    .prologue
    .line 1242
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected final setEnableControlBarAnimation(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 615
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/ControlBarManager;->setEnableAnimation(Z)V

    .line 616
    return-void
.end method

.method protected final setEnableInvalidateWhenShow(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 654
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/ControlBarManager;->setEnableInvalidateWhenShow(Z)V

    .line 655
    :cond_0
    return-void
.end method

.method protected final showControlBars()V
    .locals 1

    .prologue
    .line 644
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->showControlBars()V

    .line 645
    :cond_0
    return-void
.end method

.method protected final showControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "headerAnimation"
    .parameter "footerAnimation"

    .prologue
    .line 649
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->showControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 650
    :cond_0
    return-void
.end method

.method protected final toggleControlBarsVisibility()V
    .locals 1

    .prologue
    .line 692
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->toggleControlBarsVisibility()V

    .line 693
    :cond_0
    return-void
.end method

.method protected turnOffTV()V
    .locals 1

    .prologue
    .line 1287
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->trunOnOffTV(Z)V

    .line 1288
    return-void
.end method

.method protected turnOnTV()V
    .locals 1

    .prologue
    .line 1282
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->trunOnOffTV(Z)V

    .line 1283
    return-void
.end method

.method protected updateSelectedState(IZ)V
    .locals 6
    .parameter "nIndex"
    .parameter "bSelected"

    .prologue
    .line 1185
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 1186
    .local v1, adapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    if-nez v1, :cond_1

    .line 1202
    :cond_0
    :goto_0
    return-void

    .line 1189
    :cond_1
    const-string v3, "GalleryBaseScene"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][GalleryBaseScene][updateSelectedState]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    const/4 v2, 0x0

    .line 1194
    .local v2, mediaData:Lcom/htc/sunnyCore/IMediaData;
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1199
    :goto_1
    if-eqz v2, :cond_0

    .line 1200
    invoke-interface {v2, p2}, Lcom/htc/sunnyCore/IMediaData;->setSelected(Z)V

    goto :goto_0

    .line 1196
    :catch_0
    move-exception v3

    goto :goto_1
.end method
