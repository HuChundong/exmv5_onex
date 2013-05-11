.class public Lcom/htc/album/picker/PickerDeleteScene;
.super Lcom/htc/album/picker/PickerMultiItemBaseScene;
.source "PickerDeleteScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/picker/PickerDeleteScene$CheckBestThread;,
        Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static mMaxPickCount:I


# instance fields
.field private mDefaultDelete:I

.field private mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

.field private mIsShowBestIndicator:Z

.field private mStartDeleting:Z

.field private mTextConfirm:Ljava/lang/String;

.field private mTextTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/htc/album/picker/PickerDeleteScene;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/picker/PickerDeleteScene;->LOG_TAG:Ljava/lang/String;

    .line 46
    const/4 v0, -0x1

    sput v0, Lcom/htc/album/picker/PickerDeleteScene;->mMaxPickCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 49
    iput-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mTextTitle:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mTextConfirm:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mStartDeleting:Z

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDefaultDelete:I

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mIsShowBestIndicator:Z

    .line 527
    return-void
.end method

.method private ToggleSelectAll(Z)Z
    .locals 8
    .parameter "selectAll"

    .prologue
    const/4 v5, 0x1

    .line 476
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 477
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-nez v4, :cond_1

    .line 478
    :cond_0
    const/4 v4, 0x0

    .line 513
    :goto_0
    return v4

    .line 480
    :cond_1
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v3

    .line 482
    .local v3, totalItems:I
    iget-object v6, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 484
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 487
    const/4 v4, -0x1

    :try_start_0
    sget v7, Lcom/htc/album/picker/PickerDeleteScene;->mMaxPickCount:I

    if-eq v4, v7, :cond_3

    if-eqz p1, :cond_3

    .line 489
    iget-object v4, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sget v7, Lcom/htc/album/picker/PickerDeleteScene;->mMaxPickCount:I

    if-lt v4, v7, :cond_3

    .line 509
    :cond_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v4, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 512
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerDeleteScene;->invalidateControlBars()V

    move v4, v5

    .line 513
    goto :goto_0

    .line 493
    :cond_3
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 495
    .local v2, idx:Ljava/lang/Integer;
    if-eqz p1, :cond_5

    .line 498
    iget-object v4, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 499
    iget-object v4, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 504
    :cond_5
    iget-object v4, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-ne v5, v4, :cond_4

    .line 505
    iget-object v4, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 509
    .end local v2           #idx:Ljava/lang/Integer;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method static synthetic access$002(Lcom/htc/album/picker/PickerDeleteScene;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/htc/album/picker/PickerDeleteScene;->mStartDeleting:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/album/picker/PickerDeleteScene;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/picker/PickerDeleteScene;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mIsShowBestIndicator:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/album/picker/PickerDeleteScene;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/picker/PickerDeleteScene;)Lcom/htc/album/helper/DeleteManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    return-object v0
.end method


# virtual methods
.method protected getConfirmText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mTextConfirm:Ljava/lang/String;

    return-object v0
.end method

.method protected getGridViewItemStyle()I
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x2

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mTextTitle:Ljava/lang/String;

    return-object v0
.end method

.method public onBindAdapter()V
    .locals 5

    .prologue
    .line 256
    invoke-super {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onBindAdapter()V

    .line 258
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v0

    .line 259
    .local v0, fragment:Landroid/app/Fragment;
    new-instance v2, Lcom/htc/album/helper/DeleteManager;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    new-instance v3, Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;-><init>(Lcom/htc/album/picker/PickerDeleteScene;Lcom/htc/album/picker/PickerDeleteScene$1;)V

    invoke-direct {v2, v0, v1, v3}, Lcom/htc/album/helper/DeleteManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V

    iput-object v2, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 261
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDefaultDelete:I

    if-ltz v1, :cond_0

    iget v2, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDefaultDelete:I

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDefaultDelete:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v2, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDefaultDelete:I

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setSelection(I)V

    .line 266
    sget-boolean v1, Lcom/htc/album/picker/PickerDeleteScene;->mIsTablet:Z

    if-eqz v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerDeleteScene;->invalidateControlBars()V

    goto :goto_0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerDeleteScene;->onCancel()V

    .line 391
    const/4 v0, 0x1

    return v0
.end method

.method protected onCancel()V
    .locals 2

    .prologue
    .line 357
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v1}, Lcom/htc/album/helper/DeleteManager;->isDeleting()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 358
    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->cancelDeleteMedias()V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-boolean v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mStartDeleting:Z

    if-nez v0, :cond_0

    .line 368
    invoke-super {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onCancel()V

    goto :goto_0
.end method

.method protected onConfirm()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 322
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    if-nez v3, :cond_1

    .line 323
    :cond_0
    sget-object v3, Lcom/htc/album/picker/PickerDeleteScene;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[PickerDeleteScene][onConfirm]mSceneControl or mAdapter or mDeleteMgr is null!"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :goto_0
    return-void

    .line 326
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 327
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-ne v3, v4, :cond_3

    .line 328
    :cond_2
    sget-object v3, Lcom/htc/album/picker/PickerDeleteScene;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[PickerDeleteScene][onConfirm]activity is null or finishing!"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v3

    if-nez v3, :cond_4

    .line 332
    sget-object v3, Lcom/htc/album/picker/PickerDeleteScene;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[PickerDeleteScene][onConfirm]mAdapter.getCollectionInfo() is null!"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, folderType:Ljava/lang/String;
    iput-boolean v4, p0, Lcom/htc/album/picker/PickerDeleteScene;->mStartDeleting:Z

    .line 343
    const-string v3, "com.htc.HTCAlbum.BURST_SHOTS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 346
    new-instance v1, Lcom/htc/album/picker/PickerDeleteScene$CheckBestThread;

    iget-object v3, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    iget-object v4, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-direct {v1, v3, v4, p0}, Lcom/htc/album/picker/PickerDeleteScene$CheckBestThread;-><init>(Lcom/htc/album/helper/DeleteManager;Ljava/util/ArrayList;Lcom/htc/album/picker/PickerDeleteScene;)V

    .line 347
    .local v1, checkBest:Lcom/htc/album/picker/PickerDeleteScene$CheckBestThread;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Lcom/htc/album/picker/PickerDeleteScene$CheckBestThread;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 351
    .end local v1           #checkBest:Lcom/htc/album/picker/PickerDeleteScene$CheckBestThread;
    :cond_5
    iget-object v3, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    iget-object v4, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/htc/album/helper/DeleteManager;->deleteMedias(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 219
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 220
    .local v1, context:Landroid/content/Context;
    const/4 v0, 0x0

    .line 221
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerDeleteScene;->enableRightFooter()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 222
    const/4 v3, 0x5

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x20401ee

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 223
    const/4 v3, 0x4

    const v4, 0x20800a6

    const v5, 0x2040265

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 225
    return-object v0
.end method

.method public onCreateFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 2
    .parameter "id"
    .parameter "extras"

    .prologue
    .line 105
    iget-object v1, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v1, p1, p2}, Lcom/htc/album/helper/DeleteManager;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 106
    .local v0, dlg:Z
    if-eqz v0, :cond_0

    .line 107
    const/4 v1, 0x1

    .line 108
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_0
.end method

.method public onDismissFragmentDialog(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 114
    iget-object v1, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v1, p1}, Lcom/htc/album/helper/DeleteManager;->onDismissFragmentDialog(I)Z

    move-result v0

    .line 115
    .local v0, dlg:Z
    if-eqz v0, :cond_0

    .line 116
    const/4 v1, 0x1

    .line 117
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onDismissFragmentDialog(I)Z

    move-result v1

    goto :goto_0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 3
    .parameter "extras"

    .prologue
    .line 207
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 208
    .local v0, activity:Landroid/app/Activity;
    const-string v1, "selected_item_for_delete"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDefaultDelete:I

    .line 209
    const-string v1, "is_show_best_indicator"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/album/picker/PickerDeleteScene;->mIsShowBestIndicator:Z

    .line 211
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/picker/PickerDeleteScene;->mTextTitle:Ljava/lang/String;

    .line 212
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2040214

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/picker/PickerDeleteScene;->mTextConfirm:Ljava/lang/String;

    .line 213
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 214
    return-void
.end method

.method protected onItemSelected(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mStartDeleting:Z

    if-eqz v0, :cond_0

    .line 525
    :goto_0
    return-void

    .line 524
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onItemSelected(I)V

    goto :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "message"

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x1

    .line 156
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v4, :cond_0

    .line 157
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onMessage(Landroid/os/Message;)Z

    move-result v4

    .line 187
    :goto_0
    return v4

    .line 160
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v2

    .line 161
    .local v2, fragment:Landroid/app/Fragment;
    if-nez v2, :cond_1

    .line 162
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onMessage(Landroid/os/Message;)Z

    move-result v4

    goto :goto_0

    .line 164
    :cond_1
    invoke-virtual {v2}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 165
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_2

    .line 166
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onMessage(Landroid/os/Message;)Z

    move-result v4

    goto :goto_0

    .line 168
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 169
    .local v3, intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 171
    .local v1, extras:Landroid/os/Bundle;
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 187
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onMessage(Landroid/os/Message;)Z

    move-result v4

    goto :goto_0

    .line 174
    :sswitch_0
    const-string v4, "return_can_not_delete"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 175
    const-string v6, "return_delete_result"

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v4

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 176
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 177
    invoke-virtual {v0, v7, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 178
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    move v4, v5

    .line 179
    goto :goto_0

    .line 181
    :sswitch_1
    const-string v4, "return_can_not_delete"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 182
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 183
    invoke-virtual {v0, v7, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 184
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    move v4, v5

    .line 185
    goto :goto_0

    .line 171
    nop

    :sswitch_data_0
    .sparse-switch
        0x13a0 -> :sswitch_0
        0x13a9 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onNewThumbnailItem(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
    .locals 2
    .parameter "context"
    .parameter "sContext"

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onNewThumbnailItem(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;

    move-result-object v0

    .line 125
    .local v0, gridItemThumbnail:Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
    new-instance v1, Lcom/htc/album/picker/PickerDeleteScene$1;

    invoke-direct {v1, p0}, Lcom/htc/album/picker/PickerDeleteScene$1;-><init>(Lcom/htc/album/picker/PickerDeleteScene;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setBindMediaDataListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;)V

    .line 151
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 430
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 431
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v0, :cond_0

    .line 471
    :goto_0
    return v6

    .line 434
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    .line 435
    .local v3, menuId:I
    sparse-switch v3, :sswitch_data_0

    :goto_1
    move v6, v7

    .line 471
    goto :goto_0

    .line 439
    :sswitch_0
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v1

    .line 440
    .local v1, firstViewPos:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getChildrenCount()I

    move-result v6

    add-int/lit8 v4, v6, 0x4

    .line 441
    .local v4, totalChildren:I
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v5

    .line 443
    .local v5, totalItems:I
    sget-object v6, Lcom/htc/album/picker/PickerDeleteScene;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "firstViewPos="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", totalChildren="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", totalItems="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    move v2, v1

    .local v2, i:I
    :goto_2
    add-int v6, v1, v4

    if-ge v2, v6, :cond_1

    .line 447
    if-lt v2, v5, :cond_2

    .line 455
    :cond_1
    iget-object v6, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v6}, Lcom/htc/album/helper/DeleteManager;->deleteAllMedias()V

    .line 456
    iput-boolean v7, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mIsSelectAll:Z

    .line 457
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerDeleteScene;->invalidateControlBars()V

    goto :goto_1

    .line 450
    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/album/picker/PickerDeleteScene;->isItemPicked(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 452
    invoke-virtual {p0, v2}, Lcom/htc/album/picker/PickerDeleteScene;->pickItem(I)V

    .line 445
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 462
    .end local v1           #firstViewPos:I
    .end local v2           #i:I
    .end local v4           #totalChildren:I
    .end local v5           #totalItems:I
    :sswitch_1
    invoke-direct {p0, v7}, Lcom/htc/album/picker/PickerDeleteScene;->ToggleSelectAll(Z)Z

    goto :goto_1

    .line 467
    :sswitch_2
    invoke-direct {p0, v6}, Lcom/htc/album/picker/PickerDeleteScene;->ToggleSelectAll(Z)Z

    goto :goto_1

    .line 435
    :sswitch_data_0
    .sparse-switch
        0x204014f -> :sswitch_1
        0x20401ec -> :sswitch_0
        0x20401f4 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 401
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 402
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerDeleteScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 403
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerDeleteScene;->getHeaderTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setPrimaryText(Ljava/lang/String;)V

    .line 405
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 407
    invoke-virtual {p0, p1}, Lcom/htc/album/picker/PickerDeleteScene;->showSelectAllInOptionsMenu(Landroid/view/Menu;)V

    .line 408
    const/4 v1, 0x1

    return v1
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 235
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 237
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 239
    const-string v2, "keyguard"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/HtcIfKeyguardManager;

    .line 240
    .local v1, keyguardManager:Landroid/app/HtcIfKeyguardManager;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/app/HtcIfKeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 242
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 246
    .end local v1           #keyguardManager:Landroid/app/HtcIfKeyguardManager;
    :cond_1
    invoke-super {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onStop()V

    .line 247
    return-void
.end method

.method public onUnbindAdapter()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->cancelDeleteMedias()V

    .line 289
    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->release()V

    .line 292
    :cond_0
    invoke-super {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onUnbindAdapter()V

    .line 293
    return-void
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    sget-object v0, Lcom/htc/album/picker/PickerDeleteScene;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method showSelectAllInOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .parameter "menu"

    .prologue
    .line 413
    const/4 v1, 0x0

    .line 415
    .local v1, item:Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v0

    .line 416
    .local v0, PickUpperBound:I
    const/4 v3, -0x1

    sget v4, Lcom/htc/album/picker/PickerDeleteScene;->mMaxPickCount:I

    if-eq v3, v4, :cond_0

    sget v3, Lcom/htc/album/picker/PickerDeleteScene;->mMaxPickCount:I

    if-le v3, v0, :cond_1

    .line 417
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 419
    .local v2, pickCount:I
    invoke-static {p1, v0, v2}, Lcom/htc/album/picker/PickerItemBaseScene;->prepareSelectMenuItem(Landroid/view/Menu;II)Z

    .line 421
    return-void

    .line 416
    .end local v2           #pickCount:I
    :cond_1
    sget v0, Lcom/htc/album/picker/PickerDeleteScene;->mMaxPickCount:I

    goto :goto_0
.end method
