.class public Lcom/htc/album/TabPluginDevice/SceneLocalFolder;
.super Lcom/htc/album/TabPluginDevice/SceneLocalBase;
.source "SceneLocalFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/SceneLocalFolder$5;,
        Lcom/htc/album/TabPluginDevice/SceneLocalFolder$EventsDropListClickListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalFolder$GridViewScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/TabPluginDevice/SceneLocalBase",
        "<",
        "Lcom/htc/sunnyCore/widget/gridview/GridView;",
        "Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "SceneLocalFolder"


# instance fields
.field protected mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

.field protected mAnimationState:I

.field protected mEnableViewBackgroundDecode:Z

.field protected mFileOPDialog:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

.field protected mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

.field protected mFileOperationDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

.field protected mFileOperationIndex:I

.field protected mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

.field protected mIsFromOutside:Z

.field protected mIsInAnimation:Z

.field private mItemClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;

.field protected mItemSelected:I

.field private mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

.field protected mMenuMgr:Lcom/htc/album/helper/MenuManager;

.field protected mScrollState:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;-><init>()V

    .line 82
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 83
    iput v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mScrollState:I

    .line 85
    iput v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mItemSelected:I

    .line 87
    new-instance v0, Lcom/htc/album/helper/MenuManager;

    invoke-direct {v0}, Lcom/htc/album/helper/MenuManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    .line 88
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    .line 89
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPDialog:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    .line 90
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOperationDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    .line 91
    iput v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOperationIndex:I

    .line 93
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mIsFromOutside:Z

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mEnableViewBackgroundDecode:Z

    .line 97
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    .line 431
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mItemClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;

    .line 992
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    .line 1348
    iput v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAnimationState:I

    .line 1349
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mIsInAnimation:Z

    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;Lcom/htc/album/modules/collection/Collection;Ljava/lang/String;Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->doFileOperations(Lcom/htc/album/modules/collection/Collection;Ljava/lang/String;Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method private doFileOperations(Lcom/htc/album/modules/collection/Collection;Ljava/lang/String;Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)V
    .locals 2
    .parameter "sourceAlbum"
    .parameter "newPath"
    .parameter "type"

    .prologue
    .line 409
    if-eqz p1, :cond_0

    if-nez p3, :cond_2

    .line 411
    :cond_0
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 412
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][doFileOperations]: illegal input parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_1
    :goto_0
    return-void

    .line 416
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v0, p1}, Lcom/htc/album/helper/FileOperationManager;->setAlbumCollection(Lcom/htc/album/modules/collection/Collection;)V

    .line 417
    sget-object v0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$5;->$SwitchMap$com$htc$album$helper$FileOperationManager$PROCESS_TYPE:[I

    invoke-virtual {p3}, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 427
    :goto_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v0, p3}, Lcom/htc/album/helper/FileOperationManager;->setOperationType(Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)V

    .line 428
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/FileOperationManager;->fileOperationStart()V

    goto :goto_0

    .line 420
    :pswitch_0
    if-eqz p2, :cond_1

    .line 422
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v0, p2}, Lcom/htc/album/helper/FileOperationManager;->setTargetFolderPath(Ljava/lang/String;)V

    goto :goto_1

    .line 417
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private initFileOperationManager()V
    .locals 4

    .prologue
    .line 215
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_1

    .line 217
    const-string v1, "SceneLocalFolder"

    const-string v2, "[HTCAlbum][SceneLocalFolder][initFileOperationManager] scene control is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v0

    .line 221
    .local v0, fragment:Landroid/app/Fragment;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 223
    new-instance v1, Lcom/htc/album/helper/FileOperationDialogManager;

    invoke-direct {v1}, Lcom/htc/album/helper/FileOperationDialogManager;-><init>()V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOperationDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    .line 224
    new-instance v1, Lcom/htc/album/helper/FileOperationManager;

    new-instance v2, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$FileOperationListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;Lcom/htc/album/TabPluginDevice/SceneLocalFolder$1;)V

    invoke-direct {v1, v0, v2}, Lcom/htc/album/helper/FileOperationManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    goto :goto_0
.end method

.method private onHandleUpdatingState(ZZ)V
    .locals 6
    .parameter "bForceUpdate"
    .parameter "bIsUpdating"

    .prologue
    .line 533
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->isSecureSendToForeground()Z

    move-result v3

    if-nez v3, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    const/4 v2, 0x0

    .line 537
    .local v2, host:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 538
    .local v0, activity:Landroid/app/Activity;
    instance-of v3, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v3, :cond_2

    move-object v2, v0

    .line 539
    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .line 541
    :cond_2
    if-eqz v2, :cond_3

    const/4 v3, 0x1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-ne v3, v4, :cond_4

    .line 543
    :cond_3
    const-string v3, "SceneLocalFolder"

    const-string v4, "[HTCAlbum][SceneLocalFolder][onHandleUpdatingState]: skip..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 547
    :cond_4
    move v1, p2

    .line 548
    .local v1, bUpdate:Z
    if-nez p1, :cond_5

    .line 550
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->isSecureOnPrepareOptionsMenu()Z

    move-result v3

    if-nez v3, :cond_6

    .line 551
    const/4 v1, 0x0

    .line 558
    :cond_5
    :goto_1
    invoke-interface {v2, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    .line 559
    const-string v3, "SceneLocalFolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneLocalFolder][onHandleUpdatingState]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 554
    :cond_6
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isMediaScannerScanning(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 555
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private onLoadingOrDecodingThumbnails(I)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 516
    packed-switch p1, :pswitch_data_0

    .line 527
    invoke-direct {p0, v1, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onHandleUpdatingState(ZZ)V

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 520
    :pswitch_0
    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mScrollState:I

    if-eqz v0, :cond_0

    .line 521
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onHandleUpdatingState(ZZ)V

    goto :goto_0

    .line 516
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onScrollStateChanged(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 594
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 595
    .local v0, scrollState:I
    iget v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mScrollState:I

    if-ne v1, v0, :cond_0

    .line 599
    :goto_0
    return-void

    .line 598
    :cond_0
    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mScrollState:I

    goto :goto_0
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1053
    const-string v0, "AdapterLocalFolder"

    return-object v0
.end method

.method protected doCreateAdapter(Landroid/app/Activity;)Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;
    .locals 4
    .parameter "activity"

    .prologue
    .line 1078
    new-instance v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolderPlus;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->getAdapterMediaType()I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolderPlus;-><init>(Landroid/app/Activity;Landroid/os/Handler;ILandroid/os/Bundle;)V

    return-object v0
.end method

.method public enableContextMenu()Z
    .locals 3

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, enable:Z
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, foregroundSceneIdentity:Ljava/lang/String;
    sget-boolean v0, Lcom/htc/album/helper/FileOperationManager;->ENABLE_FILEOPERATION:Z

    .line 144
    if-eqz v0, :cond_1

    .line 145
    const-string v2, "SceneLocalFolder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SmartFolderScene"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 148
    :cond_1
    :goto_0
    return v0

    .line 145
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableDropList()V
    .locals 2

    .prologue
    .line 996
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 997
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 1012
    :cond_0
    :goto_0
    return-void

    .line 1002
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    invoke-virtual {v1}, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->isPrepared()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1005
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setDropdownListContent(Landroid/widget/BaseAdapter;)V

    goto :goto_0

    .line 1008
    :cond_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    invoke-virtual {v1}, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->onPrepareDropList()V

    .line 1009
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setDropdownListContent(Landroid/widget/BaseAdapter;)V

    .line 1010
    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$EventsDropListClickListener;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$EventsDropListClickListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)V

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setDropdownListItemListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public enableHostCamera()Z
    .locals 1

    .prologue
    .line 978
    const/4 v0, 0x1

    return v0
.end method

.method public enablePageLoading()Z
    .locals 1

    .prologue
    .line 1452
    const/4 v0, 0x1

    return v0
.end method

.method protected getAdapterMediaType()I
    .locals 1

    .prologue
    .line 1443
    const/16 v0, 0xff

    return v0
.end method

.method public getEnvironmentRenderOrder()I
    .locals 1

    .prologue
    .line 1447
    const/4 v0, 0x1

    return v0
.end method

.method public getPageLoadingText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1456
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1459
    .local v0, activity:Landroid/app/Activity;
    const-string v1, ""

    .line 1460
    .local v1, szLoading:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1462
    return-object v1
.end method

.method protected getParamsGridItem(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;
    .locals 2
    .parameter "context"

    .prologue
    .line 680
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->spawn(Landroid/content/Context;Z)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    move-result-object v0

    .line 681
    .local v0, param:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;
    return-object v0
.end method

.method protected getThumbnailSceneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 503
    const-string v0, "SceneLocalPhotoThumbnail"

    return-object v0
.end method

.method public isHostScene()Z
    .locals 2

    .prologue
    .line 606
    const/4 v0, 0x1

    .line 607
    .local v0, bIsHostScene:Z
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableEvents()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    const/4 v0, 0x0

    .line 609
    :cond_0
    return v0
.end method

.method public notifyDataChangedAt(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 1331
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->notifyDataChangedAt(I)V

    .line 1332
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 1318
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->notifyDataSetChanged()V

    .line 1319
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onResumePreparatorInBackground()V

    .line 1320
    return-void
.end method

.method public onActionBarBackPressed()V
    .locals 4

    .prologue
    .line 1187
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1189
    .local v0, activity:Landroid/app/Activity;
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mIsFromOutside:Z

    if-eqz v1, :cond_0

    .line 1191
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/mf/MfFragment;->finishSelf()V

    .line 1192
    check-cast v0, Lcom/htc/album/AlbumMain/MfMainActivityBase;

    .end local v0           #activity:Landroid/app/Activity;
    const-string v1, "com.htc.album.AlbumMain.FragmentLandingPage"

    const/4 v2, 0x0

    sget v3, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->startFragmentAndStackUp(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 1198
    :goto_0
    return-void

    .line 1196
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 962
    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 964
    packed-switch p1, :pswitch_data_0

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 968
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->setIntermediateDataBundle(Landroid/os/Bundle;)V

    goto :goto_0

    .line 964
    nop

    :pswitch_data_0
    .packed-switch 0x13a1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationEnd(I)V
    .locals 6
    .parameter "nAnimState"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1400
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onAnimationEnd(I)V

    .line 1405
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->getLastLoadState()I

    move-result v0

    .line 1407
    .local v0, nLoadState:I
    if-nez v0, :cond_0

    .line 1408
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->setIntermediateDataBundle(Landroid/os/Bundle;)V

    .line 1410
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1435
    :cond_1
    :goto_0
    iput-boolean v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mIsInAnimation:Z

    .line 1436
    return-void

    .line 1415
    :pswitch_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v2, v4}, Lcom/htc/sunnyCore/widget/gridview/GridView;->resumePreparator(Z)V

    .line 1418
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v2, :cond_2

    const-string v2, "profiler.performance"

    invoke-static {v2, v5}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 1420
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/album/Customizable/CustAlbumCollection;->getStringForCollectionKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1421
    .local v1, viewName:Ljava/lang/String;
    const-string v2, "AutoTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AutoProf](304) [LAUNCH_TIME][Gallery]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][DATA_READY]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1410
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 1114
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onPostBackPressed(Z)Z

    move-result v0

    return v0
.end method

.method public onBindAdapter()V
    .locals 3

    .prologue
    .line 1088
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onBindAdapter()V

    .line 1089
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][onBindAdapter]: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setMediaList(Lcom/htc/sunnyCore/IMediaList;)V

    .line 1092
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$GridViewScrollListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$GridViewScrollListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;Lcom/htc/album/TabPluginDevice/SceneLocalFolder$1;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOnScrollListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;)V

    .line 1093
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->invalidateControlBars()V

    .line 1094
    return-void
.end method

.method public onBroadcastMediaScanFinished(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v3, 0x138f

    const/4 v2, 0x0

    .line 1505
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][onBroadcastMediaScanFinished]: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onRemoveMessage(I)V

    .line 1507
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onPostMessage(I)V

    .line 1508
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onHandleUpdatingState(ZZ)V

    .line 1509
    return v2
.end method

.method public onBroadcastMediaScanStarted(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 1497
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][onBroadcastMediaScanStarted]: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    invoke-direct {p0, v2, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onHandleUpdatingState(ZZ)V

    .line 1499
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1515
    invoke-static {p2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageDisconnected(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1517
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][onBroadcastReceive] ACTION_MEDIA_UNMOUNTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    if-eqz v0, :cond_0

    .line 1519
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/FileOperationManager;->cancel()V

    .line 1521
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onConfigMainViewLayout(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 948
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onConfigMainViewLayout(Landroid/content/res/Configuration;)V

    .line 950
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->verticalSpacing(Landroid/content/res/Configuration;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setVerticalSpacing(I)V

    .line 951
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->horizontalSpacing(Landroid/content/res/Configuration;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setHorizontalSpacing(I)V

    .line 953
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 954
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mIsInAnimation:Z

    if-nez v1, :cond_0

    .line 956
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->setGlobalBackgroundOrOverlapRoundCorner(Z)V

    .line 958
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    .line 184
    const/4 v3, 0x0

    .line 185
    .local v3, bRes:Z
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v6, :cond_1

    :cond_0
    move v4, v3

    .line 210
    .end local v3           #bRes:Z
    .local v4, bRes:I
    :goto_0
    return v4

    .line 189
    .end local v4           #bRes:I
    .restart local v3       #bRes:Z
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 190
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    .line 191
    .local v1, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v6

    check-cast v6, Lcom/htc/sunnyCore/widget/gridview/GridView$AdapterContextMenuInfo;

    iget v5, v6, Lcom/htc/sunnyCore/widget/gridview/GridView$AdapterContextMenuInfo;->position:I

    .line 192
    .local v5, position:I
    invoke-virtual {v1, v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 194
    .local v2, anAlbum:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    iput v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOperationIndex:I

    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :goto_1
    move v4, v3

    .line 210
    .restart local v4       #bRes:I
    goto :goto_0

    .line 198
    .end local v4           #bRes:I
    :pswitch_0
    invoke-virtual {p0, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onItemSelected(I)V

    goto :goto_1

    .line 201
    :pswitch_1
    sget-object v6, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_RENAME_FOLDER:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    invoke-virtual {p0, v0, v2, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->showFileOperationDialog(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)Z

    move-result v3

    .line 202
    goto :goto_1

    .line 204
    :pswitch_2
    sget-object v6, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_DELETE_FOLDER:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    invoke-virtual {p0, v0, v2, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->showFileOperationDialog(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)Z

    move-result v3

    .line 205
    goto :goto_1

    .line 195
    :pswitch_data_0
    .packed-switch 0x7f090079
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreateAdapter()V
    .locals 3

    .prologue
    .line 1068
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1069
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->doCreateAdapter(Landroid/app/Activity;)Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 1070
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->setSceneDisplayControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    .line 1071
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->enableObserverNotify()V

    .line 1072
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v1, p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 1073
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->onLoadData()V

    .line 1074
    return-void
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 3
    .parameter "nAnimState"

    .prologue
    const/4 v2, 0x1

    .line 1367
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1369
    .local v0, animationBundle:Landroid/os/Bundle;
    packed-switch p1, :pswitch_data_0

    .line 1386
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    .line 1388
    return-object v0

    .line 1371
    :pswitch_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v1, :cond_0

    .line 1372
    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->setGlobalBackgroundOrOverlapRoundCorner(Z)V

    goto :goto_0

    .line 1376
    :pswitch_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v1, :cond_1

    .line 1377
    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->setGlobalBackgroundOrOverlapRoundCorner(Z)V

    .line 1382
    :cond_1
    :pswitch_2
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->resumePreparator(Z)V

    goto :goto_0

    .line 1369
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 154
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v6, :cond_1

    .line 179
    .end local p3
    :cond_0
    :goto_0
    return-void

    .line 156
    .restart local p3
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    .line 158
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;
    check-cast p3, Lcom/htc/sunnyCore/widget/gridview/GridView$AdapterContextMenuInfo;

    .end local p3
    iget v5, p3, Lcom/htc/sunnyCore/widget/gridview/GridView$AdapterContextMenuInfo;->position:I

    .line 159
    .local v5, position:I
    invoke-virtual {v0, v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 160
    .local v3, anAlbum:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-nez v3, :cond_2

    .line 162
    const-string v6, "SceneLocalFolder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SceneLocalFolder][onCreateContextMenu] Collection is NULL, position: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    :cond_2
    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getFolderType()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, albumType:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, albumDisplayName:Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "com.htc.HTCAlbum.SMART_SEPARATOR"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 170
    :cond_3
    sget-boolean v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 171
    const-string v6, "SceneLocalFolder"

    const-string v7, "[HTCAlbum][SceneLocalFolder][onCreateContextMenu] the illegal display name or press the seperator collection."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    :cond_4
    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 176
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 177
    .local v4, context:Landroid/content/Context;
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    invoke-virtual {v6, v4, v7, p1, v3}, Lcom/htc/album/helper/MenuManager;->showFolderMenu(Landroid/content/Context;Landroid/view/MenuInflater;Landroid/view/Menu;Lcom/htc/album/TabPluginDevice/AlbumCollection;)V

    goto :goto_0
.end method

.method protected onCreateGridView(Landroid/content/Context;Lcom/htc/sunny2/widget/gridview/GridItemFolder;)Lcom/htc/sunnyCore/widget/gridview/GridView;
    .locals 6
    .parameter "context"
    .parameter "item"

    .prologue
    .line 707
    new-instance v1, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunnyCore/widget/gridview/GridViewItem;)V

    .line 710
    .local v1, gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x208003f

    const v3, 0x7f020037

    const v4, 0x208003e

    const v5, 0x7f020036

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;IIII)V

    .line 715
    .local v0, res:Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;
    invoke-virtual {v1, v0}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setHtcFastScrollerRes(Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;)V

    .line 717
    return-object v1
.end method

.method protected onCreateItemPrototype(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)Lcom/htc/sunnyCore/widget/gridview/GridViewItem;
    .locals 4
    .parameter "param"

    .prologue
    .line 618
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 619
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 622
    .local v1, context:Landroid/content/Context;
    new-instance v2, Lcom/htc/sunny2/widget/gridview/GridItemFolder;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v3

    check-cast p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    .end local p1
    invoke-direct {v2, v1, v3, p1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V

    .line 625
    .local v2, item:Lcom/htc/sunny2/widget/gridview/GridItemFolder;
    new-instance v3, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$4;

    invoke-direct {v3, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$4;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)V

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setBindMediaDataListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;)V

    .line 640
    return-object v2
.end method

.method protected onCreateParams4Preparator()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;
    .locals 2

    .prologue
    .line 721
    invoke-static {}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;->spawn()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;

    move-result-object v0

    .line 722
    .local v0, params:Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;
    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;->setCacheSet(I)V

    .line 723
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;->enableFileCache()V

    .line 724
    return-object v0
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunnyCore/view/SView;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;
    .locals 8

    .prologue
    .line 645
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 646
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 648
    const-string v6, "SceneLocalFolder"

    const-string v7, "[HTCAlbum][SceneLocalFolder][onCreateScene]: null..."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const/4 v2, 0x0

    .line 675
    :goto_0
    return-object v2

    .line 652
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 653
    .local v1, appContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->updateSystemFontScale(Landroid/content/Context;)Z

    .line 656
    invoke-static {}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetMgr()Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getMgr()Lcom/htc/opensense2/album/cache/CacheCountMgr;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->SetCacheCountClient(Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;)V

    .line 658
    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->getParamsGridItem(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    move-result-object v4

    .line 659
    .local v4, param:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;
    iget-boolean v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mEnableViewBackgroundDecode:Z

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->enableViewBackgroundDecode(Z)V

    .line 660
    invoke-virtual {p0, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onCreateItemPrototype(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    move-result-object v3

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridItemFolder;

    .line 661
    .local v3, item:Lcom/htc/sunny2/widget/gridview/GridItemFolder;
    invoke-virtual {p0, v1, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onCreateGridView(Landroid/content/Context;Lcom/htc/sunny2/widget/gridview/GridItemFolder;)Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v2

    .line 663
    .local v2, gridview:Lcom/htc/sunnyCore/widget/gridview/GridView;
    new-instance v6, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-direct {v6, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 664
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onCreateParams4Preparator()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;

    move-result-object v5

    .line 665
    .local v5, params:Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;
    iget-boolean v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mEnableViewBackgroundDecode:Z

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->enableViewBackgroundDecode(Z)V

    .line 666
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v6, v1, v5}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Lcom/htc/sunnyCore/IParamsPreparator;)V

    .line 667
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    move-object v6, v2

    check-cast v6, Lcom/htc/sunnyCore/Preparator$UpdateListener;

    invoke-virtual {v7, v6}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunnyCore/Preparator$UpdateListener;)V

    .line 668
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 670
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v3, v6}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setContentGetter(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;)V

    .line 671
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v2, v6}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setPreparation(Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;)V

    .line 673
    invoke-virtual {p0, v0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onUpdateGridViewPadding(Landroid/app/Activity;Lcom/htc/sunnyCore/widget/gridview/GridView;)V

    goto :goto_0
.end method

.method public onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    .locals 2

    .prologue
    .line 1353
    new-instance v1, Lcom/htc/album/Animation/animationSetFolderGridview;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-direct {v1, v0}, Lcom/htc/album/Animation/animationSetFolderGridview;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;)V

    return-object v1
.end method

.method public onDestroyScene()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 728
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;)V

    .line 729
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 731
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/FileOperationManager;->release()V

    .line 734
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOperationDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    if-eqz v0, :cond_1

    .line 738
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOperationDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/FileOperationDialogManager;->cancel()V

    .line 739
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOperationDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    .line 741
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPDialog:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    if-eqz v0, :cond_2

    .line 743
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPDialog:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->dismiss()V

    .line 744
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPDialog:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    .line 747
    :cond_2
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onDestroyScene()V

    .line 748
    return-void
.end method

.method protected onDismissGlobalBackgroundOrOverlapRoundCorner()V
    .locals 1

    .prologue
    .line 855
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->setGlobalBackgroundOrOverlapRoundCorner(Z)V

    .line 856
    return-void
.end method

.method protected onDropListItemClick(I)V
    .locals 6
    .parameter "nIndex"

    .prologue
    .line 1015
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 1016
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-nez v0, :cond_1

    .line 1031
    :cond_0
    :goto_0
    return-void

    .line 1018
    :cond_1
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->dismissDropList()V

    .line 1020
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->isDisplayControlBusy()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1023
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    invoke-virtual {v3, p1}, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1024
    .local v2, nItem:I
    const/16 v3, 0x38

    if-ne v3, v2, :cond_0

    .line 1026
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1027
    .local v1, bundle:Landroid/os/Bundle;
    const-string v3, "from_outside"

    iget-boolean v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mIsFromOutside:Z

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1028
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v4, "SmartFolderScene"

    const/4 v5, 0x1

    invoke-interface {v3, v1, v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 1029
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->EVENTS:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    invoke-static {v3, v4}, Lcom/htc/album/Customizable/CustAlbumCollection;->setDefaultAlbumCollection(Landroid/content/Context;Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;)V

    goto :goto_0
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 1174
    const/4 v0, 0x1

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 2

    .prologue
    .line 1179
    const/4 v0, 0x0

    .line 1180
    .local v0, bResult:Z
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableLandingPage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1181
    const/4 v0, 0x1

    .line 1182
    :cond_0
    return v0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 752
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onEnterScene(Landroid/os/Bundle;)V

    .line 754
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onNewEventDropList()Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    .line 755
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    invoke-virtual {v0}, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->onCreate()V

    .line 757
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->setGlobalBackgroundOrOverlapRoundCorner(Z)V

    .line 758
    return-void
.end method

.method public onItemSelected(I)V
    .locals 14
    .parameter "index"

    .prologue
    .line 440
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    .line 441
    .local v2, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;
    if-nez v2, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    invoke-virtual {v2, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 445
    .local v3, anAlbum:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-eqz v3, :cond_0

    .line 448
    const-string v11, "SceneLocalFolder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][SceneLocalFolder][onItemSelected]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    check-cast v4, Lcom/htc/album/Animation/animationSetFolderGridview;

    .line 451
    .local v4, animationSet:Lcom/htc/album/Animation/animationSetFolderGridview;
    invoke-virtual {v4, p1}, Lcom/htc/album/Animation/animationSetFolderGridview;->setFocused(I)V

    .line 453
    iget-object v11, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v11}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 454
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v3, v1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->onFolderClicked(Landroid/app/Activity;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 457
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 458
    .local v5, bundle:Landroid/os/Bundle;
    const-string v11, "collection_info"

    invoke-virtual {v5, v11, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 459
    const-string v11, "call_MainActivity_from_collection"

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 460
    const-string v12, "physical_folder_count"

    iget-object v11, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v11, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->getPhysicalFolderCount()I

    move-result v11

    invoke-virtual {v5, v12, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 466
    new-instance v9, Lcom/htc/sunnyCore/view/Vector3F;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v9, v11, v12, v13}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    .line 467
    .local v9, pos:Lcom/htc/sunnyCore/view/Vector3F;
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v7, Lcom/htc/sunnyCore/widget/gridview/GridView;

    .line 468
    .local v7, gView:Lcom/htc/sunnyCore/widget/gridview/GridView;
    if-eqz v7, :cond_2

    .line 469
    invoke-virtual {v7}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v11

    sub-int v8, p1, v11

    .line 470
    .local v8, idx:I
    const/4 v11, -0x1

    if-le v8, v11, :cond_2

    .line 471
    invoke-virtual {v7, v8}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getChild(I)Lcom/htc/sunnyCore/view/SView;

    move-result-object v6

    .line 472
    .local v6, child:Lcom/htc/sunnyCore/view/SView;
    if-eqz v6, :cond_2

    .line 473
    invoke-virtual {v6}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/htc/sunnyCore/view/Vector3F;->setVector3F(Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 475
    const-string v11, "folder_animation_click_pos"

    invoke-virtual {v5, v11, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 481
    .end local v6           #child:Lcom/htc/sunnyCore/view/SView;
    .end local v8           #idx:I
    :cond_2
    iget-object v11, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v11, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v11}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v10

    .line 482
    .local v10, render:Lcom/htc/sunnyCore/RenderThread;
    if-eqz v10, :cond_3

    .line 483
    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/htc/sunnyCore/RenderThread;->setPriority(I)V

    .line 486
    :cond_3
    iput p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mItemSelected:I

    .line 487
    iget-object v11, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->getThumbnailSceneId()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v11, v5, v12, v13}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 489
    if-eqz v10, :cond_4

    .line 490
    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Lcom/htc/sunnyCore/RenderThread;->setPriority(I)V

    .line 496
    :cond_4
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 497
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-eqz v0, :cond_0

    .line 498
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v0, v11, v12}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setDropdownListEnabled(ZLcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;)V

    goto/16 :goto_0
.end method

.method public onLeaveScene()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 885
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SceneLocalFolder"

    const-string v2, "[HTCAlbum][SceneLocalFolder][onLeaveScene]: ..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 887
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-eqz v0, :cond_1

    .line 889
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->dismissDropList()V

    .line 892
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v1, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;)V

    .line 894
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    invoke-virtual {v1}, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->onDestroy()V

    .line 895
    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    .line 897
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onLeaveScene()V

    .line 901
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->setGlobalBackgroundOrOverlapRoundCorner(Z)V

    .line 906
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    .line 564
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_1

    .line 590
    :cond_0
    :goto_0
    return v2

    .line 566
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 567
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 570
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 588
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 573
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onItemSelected(I)V

    goto :goto_0

    .line 576
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onSceneLoading()V

    goto :goto_0

    .line 579
    :sswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onLoadingOrDecodingThumbnails(I)V

    goto :goto_0

    .line 582
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onScrollStateChanged(Landroid/os/Message;)V

    goto :goto_0

    .line 585
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onRefreshAdapter()V

    goto :goto_0

    .line 570
    nop

    :sswitch_data_0
    .sparse-switch
        0x138f -> :sswitch_4
        0x139c -> :sswitch_0
        0x4e46 -> :sswitch_1
        0x4f4f -> :sswitch_3
        0x5079 -> :sswitch_2
    .end sparse-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 1058
    const-string v2, "SceneLocalFolder"

    const-string v3, "[HTCAlbum][SceneLocalFolder][onNewAdapter]: ..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onNewAdapter(Landroid/os/Bundle;)V

    .line 1061
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1062
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "media_connected"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1063
    .local v0, bIsMediaConnected:Z
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v3, "media_connected"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1064
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onCreateAdapter()V

    .line 1065
    return-void
.end method

.method protected onNewEventDropList()Lcom/htc/album/AlbumMain/AdapterEventsDropList;
    .locals 3

    .prologue
    .line 762
    new-instance v0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/album/AlbumMain/AdapterEventsDropList;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public onNotifyUpdateComplete()V
    .locals 2

    .prologue
    .line 1337
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][onNotifyUpdateComplete]: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onNotifyUpdateComplete()V

    .line 1339
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onEnablePageLoading(Z)V

    .line 1340
    return-void
.end method

.method public onNotifyUpdating(Z)V
    .locals 1
    .parameter "bIsLoading"

    .prologue
    .line 1296
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onNotifyUpdating(Z)V

    .line 1297
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onHandleUpdatingState(ZZ)V

    .line 1298
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v8, 0x0

    .line 1248
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1249
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 1287
    :cond_0
    :goto_0
    return v8

    .line 1253
    :cond_1
    const/4 v1, 0x0

    .line 1254
    .local v1, bResult:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 1265
    :sswitch_0
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoCamera(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 1257
    :sswitch_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1258
    .local v3, hideShowAlbum:Landroid/content/Intent;
    const-class v5, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1259
    const/16 v5, 0x13a1

    invoke-virtual {v0, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1262
    .end local v3           #hideShowAlbum:Landroid/content/Intent;
    :sswitch_2
    invoke-static {v0}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoVod(Landroid/content/Context;)V

    goto :goto_0

    .line 1270
    :sswitch_3
    sget-boolean v5, Lcom/htc/opensense2/album/AlbumCommon/Constants;->FLAG_IS_SUPPORT_MAPVIEW:Z

    if-eqz v5, :cond_0

    .line 1274
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.htc.album.action.LAUNCH_LOCATION_VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1275
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1277
    .end local v4           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 1279
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "SceneLocalFolder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onOptionsItemSelected]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1254
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x42 -> :sswitch_3
        0x7f0a00cd -> :sswitch_1
        0x7f0a0113 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 921
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onPause()V

    .line 923
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v1, :cond_0

    .line 924
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->freeInvisibleResource()V

    .line 925
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->resumePreparator(Z)V

    .line 928
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 929
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-eqz v0, :cond_1

    .line 931
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->dismissDropList()V

    .line 933
    :cond_1
    return-void
.end method

.method public onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V
    .locals 2
    .parameter "animIn"
    .parameter "animOut"
    .parameter "listener"

    .prologue
    .line 1392
    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 1393
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->getAnimationState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1394
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onDismissGlobalBackgroundOrOverlapRoundCorner()V

    .line 1396
    :cond_0
    return-void
.end method

.method protected onPostBackPressed(Z)Z
    .locals 11
    .parameter "isBackKey"

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 1118
    const/4 v3, 0x0

    .line 1119
    .local v3, bResult:Z
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v8, :cond_1

    move v7, v3

    .line 1170
    :cond_0
    :goto_0
    return v7

    .line 1122
    :cond_1
    const/4 v0, 0x0

    .line 1123
    .local v0, action:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v4

    .line 1124
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_2

    .line 1125
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1127
    :cond_2
    const-string v8, "com.htc.album.action.DLNA_BROWSE_LOCAL"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1128
    .local v2, bIsFromDMC:Z
    if-eqz v2, :cond_3

    .line 1130
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 1131
    .local v1, activity:Landroid/app/Activity;
    check-cast v1, Lcom/htc/album/AlbumMain/MfMainActivityBase;

    .end local v1           #activity:Landroid/app/Activity;
    const-string v8, "com.htc.album.AlbumMain.FragmentLandingPage"

    sget v9, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {v1, v8, v10, v9}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->startFragmentAndStackUp(Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 1135
    :cond_3
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->isSecureSendToForeground()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1138
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/app/mf/MfFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v5

    .line 1139
    .local v5, nBackStackCount:I
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getSceneCount()I

    move-result v6

    .line 1143
    .local v6, nSceneCount:I
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "alwayBackToGalleryPreviousPage"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1145
    iget-boolean v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mIsFromOutside:Z

    if-eqz v8, :cond_4

    if-ne v7, v6, :cond_4

    .line 1147
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 1148
    .restart local v1       #activity:Landroid/app/Activity;
    check-cast v1, Lcom/htc/album/AlbumMain/MfMainActivityBase;

    .end local v1           #activity:Landroid/app/Activity;
    const-string v8, "com.htc.album.AlbumMain.FragmentLandingPage"

    sget v9, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {v1, v8, v10, v9}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->startFragmentAndStackUp(Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 1155
    :cond_4
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableLandingPage()Z

    move-result v8

    if-eqz v8, :cond_6

    if-ne v7, v6, :cond_6

    if-ne v7, v5, :cond_6

    .line 1160
    const-string v7, "SceneLocalFolder"

    const-string v8, "[HTCAlbum][SceneLocalFolder][onPostBackPressed]: exit 1"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    .line 1162
    const/4 v3, 0x1

    :cond_5
    :goto_1
    move v7, v3

    .line 1170
    goto/16 :goto_0

    .line 1164
    :cond_6
    iget-boolean v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mIsFromOutside:Z

    if-eqz v8, :cond_5

    if-ne v7, v6, :cond_5

    .line 1166
    const-string v7, "SceneLocalFolder"

    const-string v8, "[HTCAlbum][SceneLocalFolder][onPostBackPressed]: exit 2"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    .line 1168
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public onPrepareAnimation(I)Z
    .locals 2
    .parameter "nAnimState"

    .prologue
    .line 1358
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mIsInAnimation:Z

    .line 1359
    iput p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAnimationState:I

    .line 1360
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onPrepareAnimation(I)Z

    move-result v0

    .line 1361
    .local v0, anim:Z
    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 1203
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1204
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onUpdateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRefreshAdapter()V
    .locals 2

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityLifeCycle()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 1492
    :cond_0
    :goto_0
    return-void

    .line 1469
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->isLoadingInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1480
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][onRefreshAdapter]: is reloading... "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1483
    :cond_2
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isPhoneMediaMounted()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isExternalMediaMounted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1485
    :cond_3
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][onRefreshAdapter]: reload... "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->setIntermediateDataBundle(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1490
    :cond_4
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][onRefreshAdapter]: no media ready... "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 911
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onResume()V

    .line 913
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->resumePreparator(Z)V

    .line 916
    :cond_0
    return-void
.end method

.method protected onResumePreparatorInBackground()V
    .locals 2

    .prologue
    .line 1323
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->isSecureSendToBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->resumePreparator(Z)V

    .line 1327
    :cond_0
    return-void
.end method

.method protected onSceneLoading()V
    .locals 1

    .prologue
    .line 511
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onEnablePageLoading(Z)V

    .line 512
    return-void
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 860
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SceneLocalFolder"

    const-string v2, "[HTCAlbum][SceneLocalFolder][onSendToBackground]: ..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;)V

    .line 862
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onHandleUpdatingState(ZZ)V

    .line 863
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onSendToBackground(Landroid/os/Bundle;)V

    .line 865
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v1, :cond_1

    .line 866
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->freeInvisibleResource()V

    .line 871
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onDismissGlobalBackgroundOrOverlapRoundCorner()V

    .line 876
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 877
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-eqz v0, :cond_2

    .line 878
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->dismissDropList()V

    .line 879
    :cond_2
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 8
    .parameter "bundle"

    .prologue
    const/4 v7, 0x0

    .line 767
    const-string v4, "SceneLocalFolder"

    const-string v5, "[HTCAlbum][SceneLocalFolder][onSendToForeground]: ..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onSendToForeground(Landroid/os/Bundle;)V

    .line 769
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v4, Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mItemClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;)V

    .line 770
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mItemSelected:I

    .line 772
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    instance-of v4, v4, Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    if-eqz v4, :cond_0

    .line 774
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    .line 775
    .local v2, adapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->isObservedDataChange()Z

    move-result v3

    .line 776
    .local v3, isDataChanged:Z
    const-string v4, "SceneLocalFolder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SceneLocalFolder][onSendToForeground]: dirty: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    if-eqz v3, :cond_0

    .line 779
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->setIntermediateDataBundle(Landroid/os/Bundle;)V

    .line 782
    .end local v2           #adapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;
    .end local v3           #isDataChanged:Z
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 783
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 785
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "from_outside"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mIsFromOutside:Z

    .line 787
    const-string v4, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 789
    const-string v4, "SceneLocalFolder"

    const-string v5, "[HTCAlbum][SceneLocalFolder][onSendToForeground]: reset..."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 791
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v4

    invoke-interface {v4, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 797
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->isControlBarShowing()Z

    move-result v4

    if-nez v4, :cond_2

    .line 798
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->showControlBars()V

    .line 799
    :cond_2
    return-void

    .line 793
    :cond_3
    const-string v4, "com.htc.album.action.DLNA_BROWSE_LOCAL"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 795
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mIsFromOutside:Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 937
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onStop()V

    .line 938
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/FileOperationManager;->cancel()V

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOperationDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    if-eqz v0, :cond_1

    .line 942
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOperationDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/FileOperationDialogManager;->cancel()V

    .line 943
    :cond_1
    return-void
.end method

.method public onTriggerErrorReport()V
    .locals 4

    .prologue
    const/16 v3, 0x4e44

    .line 1301
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->isSecureUnbindAdapter()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v1, :cond_1

    .line 1313
    :cond_0
    :goto_0
    return-void

    .line 1304
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->getLastLoadState()I

    move-result v0

    .line 1306
    .local v0, nLoadState:I
    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 1308
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onRemoveMessage(I)V

    .line 1309
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v3, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onUnbindAdapter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1099
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onUnbindAdapter()V

    .line 1100
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][onUnbindAdapter]: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_1

    .line 1102
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->setSceneDisplayControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    .line 1103
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setMediaList(Lcom/htc/sunnyCore/IMediaList;)V

    .line 1104
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOnScrollListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;)V

    .line 1107
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 987
    const-string v0, ""

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 982
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 983
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected onUpdateGridViewPadding(Landroid/app/Activity;Lcom/htc/sunnyCore/widget/gridview/GridView;)V
    .locals 5
    .parameter "activity"
    .parameter "gridview"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 685
    instance-of v2, p1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v2, :cond_0

    .line 687
    const/4 v1, 0x0

    .line 688
    .local v1, nTop:I
    const/4 v0, 0x0

    .line 689
    .local v0, nRight:I
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 691
    invoke-static {p1, v3}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->getHeight(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p1, v3}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->getHeaderPaddingOffset(Landroid/content/Context;I)I

    move-result v3

    add-int v1, v2, v3

    .line 694
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 702
    :goto_0
    invoke-virtual {p2, v4, v1, v0, v4}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setPadding(IIII)V

    .line 704
    .end local v0           #nRight:I
    .end local v1           #nTop:I
    :cond_0
    return-void

    .line 698
    .restart local v0       #nRight:I
    .restart local v1       #nTop:I
    :cond_1
    invoke-static {p1, v3}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->getHeight(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p1, v3}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->getHeaderPaddingOffset(Landroid/content/Context;I)I

    move-result v3

    add-int v1, v2, v3

    goto :goto_0
.end method

.method protected onUpdateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const v5, 0x7f0a00cd

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 1208
    const/4 v1, 0x0

    .line 1209
    .local v1, bResult:Z
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1211
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 1213
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isInternalStorageStateError()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1215
    const-string v4, "SceneLocalFolder"

    const-string v5, "[HTCAlbum][SceneLocalFolder][onUpdateOptionsMenu]: InternalStorageStateError"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 1243
    .end local v1           #bResult:Z
    .local v2, bResult:I
    :goto_0
    return v2

    .line 1218
    .end local v2           #bResult:I
    .restart local v1       #bResult:Z
    :cond_0
    invoke-interface {p1, v6, v5, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1223
    const/4 v3, 0x0

    .line 1226
    .local v3, itemOutput:Landroid/view/MenuItem;
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isCHS()Z

    move-result v4

    if-nez v4, :cond_1

    sget-boolean v4, Lcom/htc/opensense2/album/AlbumCommon/Constants;->FLAG_IS_SUPPORT_MAPVIEW:Z

    if-eqz v4, :cond_1

    .line 1228
    const/16 v4, 0x42

    const v5, 0x7f0a01a4

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 1229
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getDrawableBtnMapDarkRest(Landroid/content/Context;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1230
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1235
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->enableHostCamera()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1237
    const/4 v4, 0x3

    const v5, 0x7f0a012d

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 1238
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Camera_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1239
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1242
    :cond_2
    const/4 v1, 0x1

    move v2, v1

    .line 1243
    .restart local v2       #bResult:I
    goto :goto_0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 614
    const-string v0, "SceneLocalFolder"

    return-object v0
.end method

.method protected setGlobalBackgroundOrOverlapRoundCorner(Z)V
    .locals 7
    .parameter "enable"

    .prologue
    const/4 v6, 0x0

    .line 802
    if-nez p1, :cond_5

    .line 804
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    .line 805
    .local v2, foregroundScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v2, :cond_1

    .line 840
    .end local v2           #foregroundScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_0
    :goto_0
    return-void

    .line 808
    .restart local v2       #foregroundScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->getAnimationState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    .line 810
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    .line 811
    .local v3, strSceneIdentity:Ljava/lang/String;
    const-string v4, "SceneLocalFolder"

    if-eq v3, v4, :cond_2

    const-string v4, "SmartFolderScene"

    if-ne v3, v4, :cond_3

    .line 813
    :cond_2
    const-string v4, "SceneLocalFolder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SceneLocalFolder][setGlobalBackgroundOrOverlapRoundCorner] reuse scene\'s global background, foreground scene: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 818
    .end local v3           #strSceneIdentity:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 820
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v4, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v4, v6}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    goto :goto_0

    .line 823
    :cond_4
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v4, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v4, v6}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    goto :goto_0

    .line 828
    .end local v2           #foregroundScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 829
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 831
    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getGlanceBackground(Landroid/content/Context;)I

    move-result v0

    .line 832
    .local v0, appBackground:I
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 833
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v4, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v4, v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    goto :goto_0

    .line 836
    :cond_6
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v4, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v4, v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    goto :goto_0
.end method

.method protected showFileOperationDialog(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)Z
    .locals 6
    .parameter "activity"
    .parameter "album"
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, bRes:Z
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 404
    :cond_0
    :goto_0
    return v3

    .line 361
    :cond_1
    const/4 v1, 0x0

    .line 363
    .local v1, dialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->initFileOperationManager()V

    .line 364
    invoke-virtual {p2}, Lcom/htc/album/modules/collection/Collection;->getCoverImage()Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 366
    new-instance v2, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$2;

    invoke-direct {v2, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$2;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)V

    .line 384
    .local v2, dialogCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;
    sget-object v4, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$5;->$SwitchMap$com$htc$album$helper$FileOperationManager$PROCESS_TYPE:[I

    invoke-virtual {p3}, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 387
    :pswitch_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOperationDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    if-eqz v3, :cond_2

    .line 388
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOperationDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    invoke-virtual {v3, p1, p2, v2}, Lcom/htc/album/helper/FileOperationDialogManager;->createFolderRenameDialog(Landroid/content/Context;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;)Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    move-result-object v1

    .line 397
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 398
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "SceneLocalFolder"

    invoke-virtual {v1, v3, v4}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 399
    :cond_3
    const/4 v0, 0x1

    .end local v2           #dialogCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;
    :goto_2
    move v3, v0

    .line 404
    goto :goto_0

    .line 391
    .restart local v2       #dialogCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;
    :pswitch_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOperationDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    if-eqz v3, :cond_2

    .line 392
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOperationDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    invoke-virtual {v3, p1, p2, v2}, Lcom/htc/album/helper/FileOperationDialogManager;->createFolderDeleteDialog(Landroid/content/Context;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;)Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    move-result-object v1

    goto :goto_1

    .line 402
    .end local v2           #dialogCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IDeleteRenameDialogListener;
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
