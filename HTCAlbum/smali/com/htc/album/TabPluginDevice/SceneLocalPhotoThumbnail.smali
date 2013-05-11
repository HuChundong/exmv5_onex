.class public Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;
.super Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;
.source "SceneLocalPhotoThumbnail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$ImageProcessListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$OnShareItemSelectedListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$OnItemVibrateListener;
    }
.end annotation


# static fields
.field private static final EVENT_NAME_QUICKBIND:Ljava/lang/String; = "QuickBind"

.field private static final FOOTER_BAR_LOCAL_THUMBNAIL_VIEW:I = 0x1

.field private static final HEADER_BAR_LOCAL_DELETE_VIEW:I = 0x12

.field private static final HEADER_BAR_LOCAL_THUMBNAIL_VIEW:I = 0x11

.field public static final LOG_TAG:Ljava/lang/String; = "SceneLocalPhotoThumbnail"

.field public static final SCENE_ID:Ljava/lang/String; = "SceneLocalPhotoThumbnail"

.field protected static final SENSE_MODE_DELETE:I = 0x2

.field protected static final SENSE_MODE_NORMAL:I = 0x1

.field private static final THUMB_IMAGE_STATUS_FIRST:I = 0x0

.field private static final THUMB_IMAGE_STATUS_LAST:I = 0x1

.field private static final THUMB_IMAGE_STATUS_NONE:I = -0x1

.field private static final TIMER_PROGRESS_LOADING:I = 0x258

.field private static mMaxPickCount:I


# instance fields
.field private mConnection:Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;

.field private mContinuousShotItem:Landroid/view/MenuItem;

.field protected mCurrentSenseMode:I

.field private mDelPickerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteContinuousShotDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

.field private mDestroyController:Z

.field protected mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

.field protected mFileOperationDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

.field private mFolderPosition:Lcom/htc/sunnyCore/view/Vector3F;

.field private mIGridItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

.field private mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

.field private mIsDLNAPlaying:Z

.field private mIsDeleteAll:Z

.field private mIsDeleteAnimation:Z

.field private mIsDeleting:Z

.field private mIsInitDLNAPlaying:Z

.field private mItemClickPosition:Lcom/htc/sunnyCore/view/Vector3F;

.field private mMenuMgr:Lcom/htc/album/helper/MenuManager;

.field private mOldDmr:Ljava/lang/String;

.field private mOnItemVibrateListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$OnItemVibrateListener;

.field public mOnShareItemListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$OnShareItemSelectedListener;

.field private mReduceinvalidateControlBar_workaround:Z

.field protected mShareIntent:Landroid/content/Intent;

.field private mShareItemClickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;

.field private mShareManager:Lcom/htc/album/helper/ShareMenuManager;

.field private mThumbImageStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, -0x1

    sput v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMaxPickCount:I

    return-void
.end method

.method public constructor <init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V
    .locals 4
    .parameter "tvListener"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;-><init>()V

    .line 107
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    .line 110
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    .line 112
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAll:Z

    .line 113
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAnimation:Z

    .line 114
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleting:Z

    .line 117
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteContinuousShotDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 120
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mConnection:Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;

    .line 121
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDestroyController:Z

    .line 122
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mOldDmr:Ljava/lang/String;

    .line 124
    new-instance v0, Lcom/htc/album/helper/ShareMenuManager;

    invoke-direct {v0}, Lcom/htc/album/helper/ShareMenuManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    .line 125
    new-instance v0, Lcom/htc/album/helper/MenuManager;

    invoke-direct {v0}, Lcom/htc/album/helper/MenuManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    .line 126
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    .line 127
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    .line 129
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0, v3, v3, v3}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mItemClickPosition:Lcom/htc/sunnyCore/view/Vector3F;

    .line 131
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$OnShareItemSelectedListener;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$OnShareItemSelectedListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mOnShareItemListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$OnShareItemSelectedListener;

    .line 133
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$OnItemVibrateListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$OnItemVibrateListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$1;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mOnItemVibrateListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$OnItemVibrateListener;

    .line 136
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsInitDLNAPlaying:Z

    .line 140
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    .line 141
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOperationDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    .line 199
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareItemClickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;

    .line 626
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mThumbImageStatus:I

    .line 2443
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mReduceinvalidateControlBar_workaround:Z

    .line 2491
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$6;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$6;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIGridItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    .line 145
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    .line 146
    return-void
.end method

.method private ToggleSelectAll(Z)Z
    .locals 8
    .parameter "selectAll"

    .prologue
    const/4 v5, 0x1

    .line 1717
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1718
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-nez v4, :cond_1

    .line 1719
    :cond_0
    const/4 v4, 0x0

    .line 1759
    :goto_0
    return v4

    .line 1721
    :cond_1
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v3

    .line 1723
    .local v3, totalItems:I
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1725
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 1728
    const/4 v4, -0x1

    :try_start_0
    sget v7, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMaxPickCount:I

    if-eq v4, v7, :cond_4

    if-eqz p1, :cond_4

    .line 1730
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sget v7, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMaxPickCount:I

    if-lt v4, v7, :cond_4

    .line 1750
    :cond_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1752
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v4, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 1753
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->invalidateControlBars()V

    .line 1755
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1757
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    :cond_3
    move v4, v5

    .line 1759
    goto :goto_0

    .line 1734
    :cond_4
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1736
    .local v2, idx:Ljava/lang/Integer;
    if-eqz p1, :cond_6

    .line 1739
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1740
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1725
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1745
    :cond_6
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-ne v5, v4, :cond_5

    .line 1746
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1750
    .end local v2           #idx:Ljava/lang/Integer;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method static synthetic access$100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onClickShareItemSelected(Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onProcessRenderEventIRT()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAnimation:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAnimation:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->invalidateControlBarsWithoutThreadCheck()V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->changeSenseMode(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDataSetChange(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->doDeleteContinuousShot()V

    return-void
.end method

.method private changeSenseMode(I)V
    .locals 6
    .parameter "mode"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 150
    iget v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    if-ne v1, p1, :cond_1

    .line 152
    const-string v1, "SceneLocalPhotoThumbnail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change the same sense mode? from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    const-string v1, "SceneLocalPhotoThumbnail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change sense mode from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iput p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    .line 158
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 162
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 164
    iget v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    if-eq v1, v5, :cond_2

    .line 166
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyMediaDataInvalidate()V

    .line 169
    :cond_2
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 172
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAll:Z

    .line 196
    :goto_1
    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleting:Z

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 177
    :cond_3
    const/16 v0, 0x11

    .line 178
    .local v0, headerId:I
    iget v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    if-ne v1, v5, :cond_4

    .line 180
    const/16 v0, 0x12

    .line 187
    :goto_2
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 189
    :try_start_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 190
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 191
    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAll:Z

    .line 193
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->invalidateControlBars()V

    goto :goto_1

    .line 184
    :cond_4
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyMediaDataInvalidate()V

    goto :goto_2

    .line 190
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private clearDelListWhenAdapterChanged(Z)V
    .locals 2
    .parameter "isNotifyDataSetChange"

    .prologue
    .line 2349
    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2350
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2351
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2352
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2354
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2355
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 2358
    :cond_0
    return-void

    .line 2352
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private doDeleteContinuousShot()V
    .locals 9

    .prologue
    .line 2160
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2161
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 2162
    const-string v6, "SceneLocalPhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneLocalPhotoThumbnail][onDeleteContinuousShot] -: Activity is null"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2182
    :goto_0
    return-void

    .line 2165
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 2166
    .local v2, context:Landroid/content/Context;
    if-nez v2, :cond_1

    .line 2167
    const-string v6, "SceneLocalPhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneLocalPhotoThumbnail][onDeleteContinuousShot] -: Context is null"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2171
    :cond_1
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mContinuousShotItem:Landroid/view/MenuItem;

    invoke-interface {v6}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v6

    check-cast v6, Lcom/htc/sunnyCore/widget/gridview/GridView$AdapterContextMenuInfo;

    iget v4, v6, Lcom/htc/sunnyCore/widget/gridview/GridView$AdapterContextMenuInfo;->position:I

    .line 2172
    .local v4, position:I
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2174
    .local v5, selectedImg:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 2175
    .local v1, bucketId:Ljava/lang/String;
    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 2177
    .local v3, displayName:Ljava/lang/String;
    const-string v6, "SceneLocalPhotoThumbnail"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onDeleteContinuousShot]getBucketName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    const-string v6, "SceneLocalPhotoThumbnail"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onDeleteContinuousShot]getDisplayName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2180
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2181
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/htc/album/helper/DeleteManager;->deleteMedias(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private initFileOperationManager()V
    .locals 5

    .prologue
    .line 2902
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_1

    .line 2904
    const-string v2, "SceneLocalPhotoThumbnail"

    const-string v3, "[HTCAlbum][SceneLocalPhotoThumbnail][initFileOperationManager] scene control is null."

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2915
    :cond_0
    :goto_0
    return-void

    .line 2907
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v1

    .line 2908
    .local v1, fragment:Landroid/app/Fragment;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 2910
    .local v0, collection:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->isManageable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2912
    new-instance v2, Lcom/htc/album/helper/FileOperationDialogManager;

    invoke-direct {v2}, Lcom/htc/album/helper/FileOperationDialogManager;-><init>()V

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOperationDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    .line 2913
    new-instance v2, Lcom/htc/album/helper/FileOperationManager;

    new-instance v3, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FileOperationListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$1;)V

    invoke-direct {v2, v1, v3}, Lcom/htc/album/helper/FileOperationManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;)V

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    goto :goto_0
.end method

.method private isDRMOnlyCollection()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 458
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 459
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v0, :cond_1

    .line 472
    :cond_0
    :goto_0
    return v4

    .line 462
    :cond_1
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v2

    .line 463
    .local v2, listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    if-eqz v2, :cond_0

    .line 466
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v3

    .line 467
    .local v3, totalCount:I
    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getDrmContentCount()I

    move-result v1

    .line 469
    .local v1, drmCount:I
    if-ne v3, v1, :cond_0

    .line 470
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private onActivityResult_CROP_NONE(ILandroid/content/Intent;)V
    .locals 5
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 426
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v3, :cond_1

    .line 428
    const-string v3, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onActivityResult_CROP_NONE]mSceneControl is null"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 432
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_2

    .line 434
    const-string v3, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onActivityResult_CROP_NONE]activity is null"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 438
    :cond_2
    if-nez p2, :cond_3

    .line 440
    const-string v3, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onActivityResult_CROP_NONE]data is null"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 443
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 444
    .local v2, extras:Landroid/os/Bundle;
    if-nez v2, :cond_4

    .line 446
    const-string v3, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onActivityResult_CROP_NONE]extras is null"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :cond_4
    const-string v3, "filePath"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, dstFilePath:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 452
    const-string v3, "image/jpeg"

    invoke-static {v0, v1, v3}, Lcom/htc/album/AlbumUtility/MediaScannerRes;->SyncScanSingleFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private onClickShareItemSelected(Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V
    .locals 4
    .parameter "dialog"
    .parameter "adapter"
    .parameter "position"

    .prologue
    .line 216
    invoke-virtual {p2, p3}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 218
    .local v0, ri:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-virtual {p2, p3}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    .line 219
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    const-string v2, "SharedAdapter.KEY_PACKAGE"

    invoke-interface {v0}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    instance-of v1, v0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;

    if-eqz v1, :cond_0

    .line 222
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    const-string v3, "SharedAdapter.KEY_SHARE_TO"

    move-object v1, v0

    check-cast v1, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/htc/album/helper/MenuManager;->callSharePicker(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;Ljava/lang/Object;)V

    .line 225
    return-void
.end method

.method private onDataSetChange(I)V
    .locals 6
    .parameter "index"

    .prologue
    .line 2447
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->clearDelListWhenAdapterChanged(Z)V

    .line 2449
    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsBound:Z

    if-ne v4, v5, :cond_1

    .line 2450
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->isNotifyDataChangedFromPartialListBuilt()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mReduceinvalidateControlBar_workaround:Z

    if-nez v4, :cond_0

    .line 2452
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->invalidateControlBars()V

    .line 2455
    :cond_0
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2456
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 2460
    :cond_1
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->updateThumbImageStatus()V

    .line 2466
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v5, "SceneLocalFolder"

    invoke-interface {v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->isSceneExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v5, "SmartFolderScene"

    invoke-interface {v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->isSceneExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2469
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 2470
    .local v1, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2472
    .local v2, intent:Landroid/content/Intent;
    const/16 v3, 0xff

    .line 2473
    .local v3, mediaType:I
    if-nez v2, :cond_3

    const/4 v0, 0x0

    .line 2475
    .local v0, bundle:Landroid/os/Bundle;
    :goto_0
    invoke-static {v1, v0, v3}, Lcom/htc/album/ObjectWriter/AlbumCacher;->updateCache(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 2477
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #mediaType:I
    :cond_2
    return-void

    .line 2473
    .restart local v1       #context:Landroid/content/Context;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #mediaType:I
    :cond_3
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method private onDeleteContinuousShot(Landroid/view/MenuItem;)V
    .locals 10
    .parameter "item"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 2116
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2117
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 2118
    const-string v6, "SceneLocalPhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneLocalPhotoThumbnail][onDeleteContinuousShot] -: Activity is null"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2156
    :cond_0
    :goto_0
    return-void

    .line 2122
    :cond_1
    const-string v2, ""

    .line 2123
    .local v2, message:Ljava/lang/String;
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mContinuousShotItem:Landroid/view/MenuItem;

    .line 2124
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mContinuousShotItem:Landroid/view/MenuItem;

    invoke-interface {v6}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v6

    check-cast v6, Lcom/htc/sunnyCore/widget/gridview/GridView$AdapterContextMenuInfo;

    iget v3, v6, Lcom/htc/sunnyCore/widget/gridview/GridView$AdapterContextMenuInfo;->position:I

    .line 2125
    .local v3, position:I
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2127
    .local v4, selectedImg:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v4, v9, v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->expand(ILcom/htc/opensense2/album/util/ImageManager$ImageListUber;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    .line 2128
    .local v1, imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v5

    .line 2129
    .local v5, totalCount:I
    invoke-interface {v4, v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->collapse(Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;)V

    .line 2131
    const v6, 0x7f0a0175

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2136
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x2040214

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x2040174

    new-instance v8, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$4;

    invoke-direct {v8, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$4;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x20401ee

    new-instance v8, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$3;

    invoke-direct {v8, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$3;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteContinuousShotDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 2154
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteContinuousShotDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v6, :cond_0

    .line 2155
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteContinuousShotDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0
.end method

.method private onEditPhoto(I)V
    .locals 6
    .parameter "nIndex"

    .prologue
    const/4 v4, 0x0

    .line 2186
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v0, :cond_1

    .line 2187
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v2, "[onEditPhoto] SceneControl is null"

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2194
    :cond_0
    :goto_0
    return-void

    .line 2190
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 2191
    .local v1, activity:Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 2192
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/helper/MenuManager;->showEditPhotoMenu(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/AlbumUtility/IPluginWarningMessage;)V

    goto :goto_0
.end method

.method private onProcessRenderEventIRT()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 2378
    sget-boolean v5, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "SceneLocalPhotoThumbnail"

    const-string v6, "QuickBind+"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2380
    :cond_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 2382
    .local v3, preparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->isMediaListBinded()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2414
    :cond_1
    :goto_0
    return-void

    .line 2385
    :cond_2
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v5, :cond_1

    .line 2388
    invoke-virtual {v3, v9}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->unbind(I)V

    .line 2389
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v3, v9, v5, v9}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->bind(ILcom/htc/sunnyCore/IMediaList;I)V

    .line 2391
    const/16 v4, 0x18

    .line 2392
    .local v4, range:I
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 2393
    .local v2, l:I
    iget v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mThumbImageStatus:I

    if-ne v5, v7, :cond_4

    .line 2395
    add-int/lit8 v5, v2, -0x18

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2396
    .local v1, f:I
    invoke-virtual {v3, v9, v1, v2}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setVisibleRange(III)V

    .line 2403
    .end local v1           #f:I
    :goto_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFolderPosition:Lcom/htc/sunnyCore/view/Vector3F;

    if-eqz v5, :cond_3

    .line 2404
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v5, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getHeight()I

    move-result v5

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v0, v5

    .line 2405
    .local v0, centerY:F
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFolderPosition:Lcom/htc/sunnyCore/view/Vector3F;

    iget v5, v5, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setDecodeDirection(I)V

    .line 2407
    .end local v0           #centerY:F
    :cond_3
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v5, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v5, v7}, Lcom/htc/sunnyCore/widget/gridview/GridView;->enableSkipPreparatorDecodeDirection(Z)V

    .line 2409
    invoke-virtual {v3, v7}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setEnableSkiaDecodeCacheBitmap(Z)V

    .line 2410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x18

    add-long/2addr v5, v7

    invoke-virtual {v3, v5, v6}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->onProcessPreparationIRT(J)Z

    .line 2411
    invoke-virtual {v3, v9}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setEnableSkiaDecodeCacheBitmap(Z)V

    .line 2413
    sget-boolean v5, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "SceneLocalPhotoThumbnail"

    const-string v6, "QuickBind-"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2399
    :cond_4
    const/16 v5, 0x18

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2400
    invoke-virtual {v3, v9, v9, v2}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setVisibleRange(III)V

    goto :goto_1
.end method

.method private onSlideShow(I)V
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, -0x1

    .line 2198
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2199
    .local v0, activity:Landroid/app/Activity;
    move v1, p1

    .line 2201
    .local v1, itemPosition:I
    if-ne v3, v1, :cond_0

    .line 2203
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v1

    .line 2205
    if-ne v1, v3, :cond_0

    .line 2206
    const/4 v1, 0x0

    .line 2210
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/htc/album/helper/MenuManager;->launchSlideShow(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILjava/lang/Object;)V

    .line 2211
    return-void
.end method

.method private onTickleScreenRender()V
    .locals 4

    .prologue
    .line 2860
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-nez v1, :cond_1

    .line 2879
    :cond_0
    :goto_0
    return-void

    .line 2863
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    .line 2864
    .local v0, render:Lcom/htc/sunnyCore/RenderThread;
    if-eqz v0, :cond_0

    .line 2867
    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$7;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    const-string v3, "EmptyEvent"

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$7;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    goto :goto_0
.end method

.method private onViewMediaContent(ILandroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 6
    .parameter "nIndex"
    .parameter "activity"
    .parameter "targetImg"

    .prologue
    .line 2215
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    .line 2217
    .local v1, c:Lcom/htc/album/modules/collection/Collection;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2218
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "itemIndex"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2219
    const-string v4, "index_id"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2220
    const-string v4, "folder_type"

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    const-string v4, "key_folder_name"

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2222
    const-string v4, "key_bucket_id"

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    const-string v4, "position"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2225
    const/4 v3, 0x0

    .line 2226
    .local v3, physicalFolderCount:I
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneBundle:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 2228
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneBundle:Landroid/os/Bundle;

    const-string v5, "physical_folder_count"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2229
    const-string v4, "physical_folder_count"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2232
    :cond_0
    invoke-interface {p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->isDLNAPlaying(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2234
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->getRunningDMR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2235
    .local v2, dmr:Ljava/lang/String;
    invoke-virtual {p0, v2, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDMRChanged(Ljava/lang/String;I)V

    .line 2244
    .end local v2           #dmr:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 2239
    :cond_2
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v4

    invoke-static {p2, p3, v4, v0}, Lcom/htc/album/helper/MenuManager;->playVideo(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/opensense2/album/util/ImageManager$IImageList;Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2241
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->playImage(ILandroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private openFileOperationFolderSelector(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "activity"
    .parameter "collectionInfo"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/htc/album/modules/collection/Collection;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2100
    .local p3, imageUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .local p4, imageIndexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 2102
    :cond_0
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2103
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v1, "[HTCAlbum][SceneLocalPhotoThumbnail][openFileOperationFolderSelector] illegal input parameters"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    :cond_1
    :goto_0
    return-void

    .line 2107
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    if-eqz v0, :cond_1

    .line 2108
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/album/helper/FileOperationManager;->callFileOperationFolderSelector(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private playImage(ILandroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/os/Bundle;)V
    .locals 3
    .parameter "nIndex"
    .parameter "activity"
    .parameter "targetImg"
    .parameter "bundle"

    .prologue
    .line 2248
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 2255
    :cond_0
    :goto_0
    return-void

    .line 2251
    :cond_1
    invoke-interface {p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2254
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->getFullscreenSceneId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, p4, v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private showShare(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1046
    .local p1, shareBtn:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v2, "[showShare] + "

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1049
    :cond_0
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v2, "[showShare]can\'t get context"

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    :cond_1
    :goto_0
    return-void

    .line 1053
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1054
    .local v1, context:Landroid/content/Context;
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1055
    .local v6, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v8

    .line 1057
    .local v8, listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    if-nez v8, :cond_3

    .line 1059
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v2, "[showShare]can\'t get imageListUber"

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1063
    :cond_3
    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v10

    .line 1064
    .local v10, totalCount:I
    invoke-virtual {v8}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getDrmContentCount()I

    move-result v7

    .line 1066
    .local v7, drmCount:I
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getSharableImageCount()I

    move-result v3

    invoke-virtual {v8}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getSharableVideoCount()I

    move-result v4

    sub-int v2, v7, v10

    if-nez v2, :cond_4

    const/4 v5, 0x1

    :goto_1
    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/helper/ShareMenuManager;->createLocalFolderShareBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;IIZ)Z

    move-result v9

    .line 1072
    .local v9, result:Z
    if-nez v9, :cond_1

    .line 1074
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v2, "[showShare]can\'t show share bubble"

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1066
    .end local v9           #result:Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private updateThumbImageStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 632
    iget v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mThumbImageStatus:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 634
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    if-nez v1, :cond_2

    .line 635
    :cond_0
    iput v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mThumbImageStatus:I

    .line 649
    :cond_1
    :goto_0
    return-void

    .line 639
    :cond_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v0

    .line 641
    .local v0, collection:Lcom/htc/album/modules/collection/Collection;
    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->showLatest()Z

    move-result v1

    if-eq v4, v1, :cond_3

    const-string v1, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 643
    :cond_3
    iput v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mThumbImageStatus:I

    goto :goto_0

    .line 646
    :cond_4
    iput v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mThumbImageStatus:I

    goto :goto_0
.end method


# virtual methods
.method protected createAdapterLocalPhoto(Lcom/htc/album/modules/collection/Collection;)Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    .locals 4
    .parameter "collection"

    .prologue
    .line 583
    new-instance v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;Z)V

    .line 588
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    return-object v0
.end method

.method public enableContextMenu()Z
    .locals 1

    .prologue
    .line 1814
    const/4 v0, 0x1

    return v0
.end method

.method public enableProgressLoading()Z
    .locals 1

    .prologue
    .line 565
    const/4 v0, 0x1

    return v0
.end method

.method protected getDLNAOutputIndex()I
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 477
    iget v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    if-eq v5, v6, :cond_1

    .line 478
    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    .line 510
    :cond_0
    :goto_0
    return v3

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 481
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v5, :cond_3

    :cond_2
    move v3, v6

    .line 482
    goto :goto_0

    .line 484
    :cond_3
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->isDRMOnlyCollection()Z

    move-result v5

    if-eqz v5, :cond_4

    move v3, v6

    .line 485
    goto :goto_0

    .line 487
    :cond_4
    iget v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v5, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v3

    .line 488
    .local v3, startIndex:I
    :goto_1
    invoke-virtual {v0, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 489
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 492
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v4

    .line 493
    .local v4, totalCount:I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    move v3, v6

    .line 494
    goto :goto_0

    .line 487
    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v3           #startIndex:I
    .end local v4           #totalCount:I
    :cond_5
    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    goto :goto_1

    .line 498
    .restart local v2       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v3       #startIndex:I
    .restart local v4       #totalCount:I
    :cond_6
    add-int/lit8 v1, v3, 0x1

    .line 501
    .local v1, i:I
    :cond_7
    rem-int/2addr v1, v4

    .line 502
    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v2

    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 503
    .restart local v2       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v2, :cond_8

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v5

    if-nez v5, :cond_8

    move v3, v1

    .line 504
    goto :goto_0

    .line 506
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 508
    if-ne v1, v3, :cond_7

    move v3, v6

    .line 510
    goto :goto_0
.end method

.method public getEnvironmentRenderOrder()I
    .locals 1

    .prologue
    .line 2703
    const/4 v0, 0x2

    return v0
.end method

.method protected getFolderSceneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1159
    const-string v0, "SceneLocalFolder"

    return-object v0
.end method

.method protected getFullscreenSceneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2259
    const-string v0, "SceneLocalPhotoFullscreen"

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 2638
    const-string v6, ""

    .line 2640
    .local v6, szTitle:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v7, :cond_0

    .line 2642
    const-string v7, "SceneLocalPhotoThumbnail"

    const-string v9, "[HTCAlbum][SceneLocalPhotoThumbnail][getHeaderTitle] mSceneControl is null."

    invoke-static {v7, v9}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v8

    .line 2699
    :goto_0
    return-object v7

    .line 2646
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 2647
    .local v1, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v1, :cond_1

    .line 2649
    const-string v7, "SceneLocalPhotoThumbnail"

    const-string v9, "[HTCAlbum][SceneLocalPhotoThumbnail][getHeaderTitle] adapter is null"

    invoke-static {v7, v9}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v8

    .line 2650
    goto :goto_0

    .line 2652
    :cond_1
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v7}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v2

    .line 2653
    .local v2, collection:Lcom/htc/album/modules/collection/Collection;
    if-nez v2, :cond_2

    .line 2655
    const-string v7, "SceneLocalPhotoThumbnail"

    const-string v9, "[HTCAlbum][SceneLocalPhotoThumbnail][getHeaderTitle] collection is null"

    invoke-static {v7, v9}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v8

    .line 2656
    goto :goto_0

    .line 2659
    :cond_2
    iget v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    .line 2660
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2662
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_3

    .line 2663
    invoke-virtual {v2}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v3

    .line 2664
    .local v3, collectionType:Ljava/lang/String;
    const-string v7, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 2665
    .local v4, isFavoriteCollection:Z
    if-eqz v4, :cond_4

    .line 2666
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a005a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2670
    :goto_1
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2677
    iget-boolean v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAll:Z

    if-eqz v7, :cond_5

    .line 2679
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/htc/album/modules/collection/Collection;->getPhotoCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v0           #activity:Landroid/app/Activity;
    .end local v3           #collectionType:Ljava/lang/String;
    .end local v4           #isFavoriteCollection:Z
    :cond_3
    :goto_2
    move-object v7, v6

    .line 2699
    goto :goto_0

    .line 2668
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v3       #collectionType:Ljava/lang/String;
    .restart local v4       #isFavoriteCollection:Z
    :cond_4
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0059

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 2683
    :cond_5
    const/4 v5, 0x0

    .line 2684
    .local v5, numPick:I
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    monitor-enter v8

    .line 2686
    :try_start_0
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2687
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2688
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 2687
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 2695
    .end local v0           #activity:Landroid/app/Activity;
    .end local v3           #collectionType:Ljava/lang/String;
    .end local v4           #isFavoriteCollection:Z
    .end local v5           #numPick:I
    :cond_6
    invoke-virtual {v2}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 2696
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/htc/album/modules/collection/Collection;->getPhotoCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2
.end method

.method protected isPreNewAdapter(Landroid/os/Bundle;)Z
    .locals 1
    .parameter "bundle"

    .prologue
    .line 571
    const/4 v0, 0x0

    return v0
.end method

.method public notifyDataChangedAt(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 2370
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDataSetChange(I)V

    .line 2371
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->notifyDataChangedAt(I)V

    .line 2372
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 2363
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDataSetChange(I)V

    .line 2364
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->notifyDataSetChanged()V

    .line 2365
    return-void
.end method

.method public onActionBarBackPressed()V
    .locals 1

    .prologue
    .line 1179
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleting:Z

    if-nez v0, :cond_0

    .line 1181
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onPostBackPressed(Z)Z

    .line 1183
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 325
    const-string v10, "SceneLocalPhotoThumbnail"

    const-string v11, "[HTCAlbum][SceneLocalPhotoThumbnail][onActivityResult]: "

    invoke-static {v10, v11}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const/4 v10, -0x1

    move/from16 v0, p2

    if-eq v0, v10, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v10, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v10}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    .line 331
    .local v2, activity:Landroid/app/Activity;
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 397
    :sswitch_0
    const-string v10, "DMR"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 398
    .local v8, selectDMR:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 400
    invoke-virtual {p0, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDMRChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 335
    .end local v8           #selectDMR:Ljava/lang/String;
    :sswitch_1
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v2, v0, v1}, Lcom/htc/album/helper/MenuManager;->setFootprint(Landroid/app/Activity;ILandroid/content/Intent;)V

    goto :goto_0

    .line 340
    :sswitch_2
    if-nez p3, :cond_2

    .line 342
    const-string v10, "SceneLocalPhotoThumbnail"

    const-string v11, "[HTCAlbum][SceneLocalPhotoThumbnail][onActivityResult][SHARE_SINGLE_ITEM_SHARE]data is null"

    invoke-static {v10, v11}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_2
    iget-object v10, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v10, v11, v12}, Lcom/htc/album/helper/MenuManager;->doShareSingleMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :sswitch_3
    if-nez p3, :cond_3

    .line 356
    const-string v10, "SceneLocalPhotoThumbnail"

    const-string v11, "[HTCAlbum][SceneLocalPhotoThumbnail][onActivityResult][SHARE_SINGLE_ITEM_SET_AS]data is null"

    invoke-static {v10, v11}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :cond_3
    iget-object v10, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v12

    const-string v13, "drm_content"

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    invoke-static {v2, v10, v11, v12, v13}, Lcom/htc/album/helper/MenuManager;->doSetAsSingleMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Z)V

    goto :goto_0

    .line 365
    :sswitch_4
    iget-object v10, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-static {v2, v10, v0}, Lcom/htc/album/helper/MenuManager;->doShareMultiMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V

    goto :goto_0

    .line 370
    :sswitch_5
    iget-object v10, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-static {v2, v10, v0}, Lcom/htc/album/helper/MenuManager;->doSetAsMultiMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V

    goto :goto_0

    .line 375
    :sswitch_6
    if-nez p3, :cond_4

    .line 377
    const-string v10, "SceneLocalPhotoThumbnail"

    const-string v11, "[HTCAlbum][SceneLocalPhotoThumbnail][onActivityResult][SHARE_PRINT]data is null"

    invoke-static {v10, v11}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_4
    iget-object v10, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v2, v11, v12}, Lcom/htc/album/helper/MenuManager;->preDoPrintSingleMedia(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 386
    :sswitch_7
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onActivityResult_CROP_NONE(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 391
    :sswitch_8
    const-string v11, "itemIndex"

    iget-object v10, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v10, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v10}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getFirstIndexPostion()I

    move-result v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 392
    .local v7, index:I
    iget-object v10, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v10, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v10, v7}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setSelection(I)V

    goto/16 :goto_0

    .line 407
    .end local v7           #index:I
    :sswitch_9
    const-string v10, "android.intent.extra.STREAM"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 408
    .local v6, imageUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v10, "picker_index_list"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 409
    .local v5, imageIndexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 410
    .local v3, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 411
    .local v4, collectionInfo:Lcom/htc/album/modules/collection/Collection;
    invoke-direct {p0, v2, v4, v6, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->openFileOperationFolderSelector(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 416
    .end local v3           #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    .end local v4           #collectionInfo:Lcom/htc/album/modules/collection/Collection;
    .end local v5           #imageIndexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6           #imageUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :sswitch_a
    const-string v10, "file_operation_target_folder_location"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 417
    .local v9, targetLocation:Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    if-eqz v10, :cond_0

    .line 418
    iget-object v10, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v10, v9}, Lcom/htc/album/helper/FileOperationManager;->doCopyMoveOperation(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 331
    nop

    :sswitch_data_0
    .sparse-switch
        0x1398 -> :sswitch_0
        0x1457 -> :sswitch_9
        0x1458 -> :sswitch_a
        0x7f00 -> :sswitch_7
        0x7f03 -> :sswitch_1
        0x7f08 -> :sswitch_7
        0x110000 -> :sswitch_2
        0x220000 -> :sswitch_4
        0x330000 -> :sswitch_3
        0x330010 -> :sswitch_8
        0x440000 -> :sswitch_5
        0x550000 -> :sswitch_6
    .end sparse-switch
.end method

.method public onAnimationEnd(I)V
    .locals 3
    .parameter "nAnimState"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2318
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onAnimationEnd(I)V

    .line 2319
    packed-switch p1, :pswitch_data_0

    .line 2341
    :cond_0
    :goto_0
    invoke-static {v2}, Lcom/htc/wrap/dalvik/system/HtcWrapVMRuntime;->disableGcForExternalAlloc(Z)V

    .line 2342
    return-void

    .line 2323
    :pswitch_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->resumePreparator(Z)V

    .line 2324
    if-nez p1, :cond_0

    .line 2326
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_1

    const-string v0, "profiler.performance"

    invoke-static {v0, v2}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2328
    :cond_1
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](304) [LAUNCH_TIME][Gallery][Folder2Thumb][DATA_READY]\u2026"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2336
    :pswitch_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->resumePreparator(Z)V

    goto :goto_0

    .line 2319
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 1154
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onPostBackPressed(Z)Z

    move-result v0

    return v0
.end method

.method public onBindAdapter()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 656
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$2;

    invoke-direct {v4, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$2;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 665
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->updateThumbImageStatus()V

    .line 666
    const/4 v2, 0x0

    .line 667
    .local v2, selectIdx:I
    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mThumbImageStatus:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 668
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 670
    :cond_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v3, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setSelection(I)V

    .line 672
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onBindAdapter()V

    .line 674
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v1

    .line 675
    .local v1, fragment:Landroid/app/Fragment;
    new-instance v4, Lcom/htc/album/helper/DeleteManager;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v3

    new-instance v5, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;

    invoke-direct {v5, p0, v7}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$1;)V

    invoke-direct {v4, v1, v3, v5}, Lcom/htc/album/helper/DeleteManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V

    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 681
    :try_start_0
    new-instance v4, Lcom/htc/album/helper/ImageProcessManager;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    new-instance v5, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$ImageProcessListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$ImageProcessListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$1;)V

    invoke-direct {v4, v1, v3, v5}, Lcom/htc/album/helper/ImageProcessManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/TabPluginDevice/ObserverAdapter;Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;)V

    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    :goto_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v3, v4}, Lcom/htc/album/helper/MenuManager;->setOnMenuItemSelectedListener(Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;)V

    .line 690
    const/16 v3, 0x2724

    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onRemoveMessage(I)V

    .line 691
    const/16 v3, 0x2728

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v7, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onPostMessage(ILjava/lang/Object;I)V

    .line 692
    return-void

    .line 683
    :catch_0
    move-exception v0

    .line 685
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "SceneLocalPhotoThumbnail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneLocalPhotoThumbnail][onBindAdapter]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3027
    invoke-static {p2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageDisconnected(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3029
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v1, "[HTCAlbum][SceneLocalPhotoThumbnail][onBroadcastReceive] ACTION_MEDIA_UNMOUNTED"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3030
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    if-eqz v0, :cond_0

    .line 3032
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/FileOperationManager;->setStorageProblemState()V

    .line 3033
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/FileOperationManager;->cancel()V

    .line 3036
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCamera()V
    .locals 7

    .prologue
    .line 1765
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_2

    .line 1767
    :cond_0
    const-string v5, "SceneLocalPhotoThumbnail"

    const-string v6, "[HTCAlbum][SceneLocalPhotoThumbnail][OnShareItemSelectedListener][onClick]can\'t get activity"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    :cond_1
    :goto_0
    return-void

    .line 1770
    :cond_2
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1771
    .local v0, activity:Landroid/app/Activity;
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v3

    .line 1773
    .local v3, folderType:Ljava/lang/String;
    const-string v5, "com.htc.HTCAlbum.SNAPBOOTH"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1775
    invoke-static {v0}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoSnapbooth(Landroid/app/Activity;)V

    .line 1787
    :goto_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v5, :cond_1

    .line 1789
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v5, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getSelectedItemPosition()I

    move-result v4

    .line 1790
    .local v4, pos:I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 1792
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v5, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v4

    .line 1794
    :cond_3
    const v5, 0x7fffffff

    invoke-virtual {p0, v4, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->markSelection(II)V

    goto :goto_0

    .line 1779
    .end local v4           #pos:I
    :cond_4
    const/4 v2, 0x0

    .line 1781
    .local v2, bVideo:Z
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1782
    .local v1, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getNonDrmImageCount()I

    move-result v5

    if-gtz v5, :cond_5

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getVideoCount()I

    move-result v5

    if-lez v5, :cond_5

    const/4 v2, 0x1

    .line 1784
    :goto_2
    invoke-static {v0, v2}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoCamera(Landroid/app/Activity;Z)V

    goto :goto_1

    .line 1782
    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .parameter "item"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 1911
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v0, :cond_1

    .line 2092
    :cond_0
    :goto_0
    return v5

    .line 1915
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    .line 1920
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$AdapterContextMenuInfo;

    iget v2, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$AdapterContextMenuInfo;->position:I

    .line 1921
    .local v2, position:I
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 1922
    .local v1, activity:Landroid/app/Activity;
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1924
    .local v3, selectedImg:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1925
    .local v6, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v7

    .line 1927
    .local v7, collectionInfo:Lcom/htc/album/modules/collection/Collection;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 1931
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2087
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v4, "[onContextItemSelected] Unsupported context menu operation."

    invoke-static {v0, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onContextItemSelected(Landroid/view/MenuItem;)Z

    :goto_1
    :sswitch_0
    move v5, v11

    .line 2092
    goto :goto_0

    .line 1936
    :sswitch_1
    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    if-eq v0, v12, :cond_2

    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v0, :cond_2

    .line 1940
    :try_start_0
    iput v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    .line 1941
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 1942
    .local v8, context:Landroid/content/Context;
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    invoke-static {v8, v0}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->shouldPlayOnTV(Landroid/content/Context;Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1945
    const-string v0, "SceneLocalPhotoThumbnail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneLocalPhotoThumbnail][onContextItemSelected]: launch DMC TV Mode. Index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v11

    .line 1946
    goto :goto_0

    .line 1949
    .end local v8           #context:Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 1955
    :cond_2
    invoke-direct {p0, v2, v1, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onViewMediaContent(ILandroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto :goto_1

    .line 1960
    :sswitch_2
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onEditPhoto(I)V

    goto :goto_1

    .line 1965
    :sswitch_3
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/album/helper/MenuManager;->showShareMediaMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)Landroid/app/AlertDialog;

    goto :goto_1

    .line 1970
    :sswitch_4
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/album/helper/MenuManager;->showSetAsMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)Landroid/app/AlertDialog;

    goto :goto_1

    .line 1975
    :sswitch_5
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/htc/album/helper/MenuManager;->setFavorite(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_1

    .line 1980
    :sswitch_6
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isFavorite()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBurstPhoto()Z

    move-result v0

    if-ne v0, v11, :cond_3

    .line 1982
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDeleteContinuousShot(Landroid/view/MenuItem;)V

    .line 1996
    :goto_2
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v4, "trigger deleteSingleMedia, mCurrentSenseMode=SENSE_MODE_DELETE"

    invoke-static {v0, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1986
    :cond_3
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0, v2, v3}, Lcom/htc/album/helper/DeleteManager;->deleteSingleMedia(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 1990
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1991
    :try_start_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1992
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1993
    iput v12, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    .line 1994
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyMediaDataInvalidate(I)V

    goto :goto_2

    .line 1992
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2001
    :sswitch_7
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onSlideShow(I)V

    goto/16 :goto_1

    .line 2006
    :sswitch_8
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v4, "[onContextItemSelected][PRINT]"

    invoke-static {v0, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lcom/htc/album/helper/MenuManager;->preDoPrintSingleMedia(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2012
    :sswitch_9
    const-string v0, "SceneLocalPhotoThumbnail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][LocalGridviewTemplate][onMainViewContextItemSelected][TRIM]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/album/helper/MenuManager;->callTrimApplication(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2020
    :sswitch_a
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-static {v1, v0}, Lcom/htc/album/helper/MenuManager;->showOnMap(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto/16 :goto_1

    .line 2025
    :sswitch_b
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    invoke-virtual {v0, v1, v3}, Lcom/htc/album/helper/MenuManager;->showProtectedInfo(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto/16 :goto_1

    .line 2030
    :sswitch_c
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/helper/MenuManager;->showItemDetails(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)V

    goto/16 :goto_1

    .line 2064
    :sswitch_d
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2065
    .local v10, imageUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2066
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2067
    .local v9, imageIndexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2069
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->initFileOperationManager()V

    .line 2070
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    sget-object v4, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_MOVE:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    invoke-virtual {v0, v4}, Lcom/htc/album/helper/FileOperationManager;->setOperationType(Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)V

    .line 2071
    invoke-direct {p0, v1, v7, v10, v9}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->openFileOperationFolderSelector(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 2076
    .end local v9           #imageIndexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10           #imageUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :sswitch_e
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2077
    .restart local v10       #imageUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2078
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2079
    .restart local v9       #imageIndexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2081
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->initFileOperationManager()V

    .line 2082
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    sget-object v4, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_COPY:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    invoke-virtual {v0, v4}, Lcom/htc/album/helper/FileOperationManager;->setOperationType(Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)V

    .line 2083
    invoke-direct {p0, v1, v7, v10, v9}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->openFileOperationFolderSelector(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 1931
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09007a -> :sswitch_6
        0x7f09007c -> :sswitch_1
        0x7f09007d -> :sswitch_1
        0x7f09007e -> :sswitch_0
        0x7f09007f -> :sswitch_2
        0x7f090081 -> :sswitch_4
        0x7f090082 -> :sswitch_5
        0x7f090085 -> :sswitch_7
        0x7f090089 -> :sswitch_d
        0x7f09008a -> :sswitch_e
        0x7f09008b -> :sswitch_3
        0x7f09008c -> :sswitch_8
        0x7f09008d -> :sswitch_a
        0x7f09008f -> :sswitch_b
        0x7f090090 -> :sswitch_c
        0x7f0a0115 -> :sswitch_9
    .end sparse-switch
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 920
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v5, :cond_1

    .line 922
    const-string v5, "SceneLocalPhotoThumbnail"

    const-string v6, "[HTCAlbum][SceneLocalPhotoThumbnail][onControlButtonClick] mSceneControl parameter is null..."

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    :cond_0
    :goto_0
    return-void

    .line 926
    :cond_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 928
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getGroupId()I

    move-result v5

    if-ne v6, v5, :cond_2

    .line 930
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onShare(I)V

    goto :goto_0

    .line 934
    :cond_2
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 939
    :sswitch_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->getFolderSceneId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v8, v7, v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0

    .line 945
    :sswitch_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->isPartialListBuilding()Z

    move-result v5

    if-nez v5, :cond_0

    .line 946
    invoke-direct {p0, v9}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->changeSenseMode(I)V

    goto :goto_0

    .line 952
    :sswitch_2
    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleting:Z

    if-nez v5, :cond_0

    .line 954
    invoke-direct {p0, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->changeSenseMode(I)V

    goto :goto_0

    .line 960
    :sswitch_3
    iget v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    if-ne v5, v9, :cond_0

    .line 962
    iput-boolean v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleting:Z

    .line 964
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 965
    .local v2, delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 966
    :try_start_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 967
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 968
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v5, v2}, Lcom/htc/album/helper/DeleteManager;->deleteMedias(Ljava/util/ArrayList;)V

    .line 969
    invoke-virtual {p1, v7}, Lcom/htc/album/modules/ui/widget/ControlButton;->setEnabled(Z)V

    goto :goto_0

    .line 967
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 975
    .end local v2           #delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_4
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v3

    .line 977
    .local v3, folderType:Ljava/lang/String;
    const-string v5, "com.htc.HTCAlbum.SNAPBOOTH"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 979
    invoke-static {v0}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoSnapbooth(Landroid/app/Activity;)V

    .line 990
    :goto_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v5, :cond_0

    .line 991
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v5, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getSelectedItemPosition()I

    move-result v4

    .line 992
    .local v4, pos:I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 993
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v5, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getFirstVisiblePosition()I

    goto/16 :goto_0

    .line 983
    .end local v4           #pos:I
    :cond_3
    const/4 v1, 0x0

    .line 985
    .local v1, bVideo:Z
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getNonDrmImageCount()I

    move-result v5

    if-gtz v5, :cond_4

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getVideoCount()I

    move-result v5

    if-lez v5, :cond_4

    move v1, v6

    .line 987
    :goto_2
    invoke-static {v0, v1}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoCamera(Landroid/app/Activity;Z)V

    goto :goto_1

    :cond_4
    move v1, v7

    .line 985
    goto :goto_2

    .line 1001
    .end local v1           #bVideo:Z
    .end local v3           #folderType:Ljava/lang/String;
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->getDLNAOutputIndex()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onSlideShow(I)V

    goto/16 :goto_0

    .line 1006
    :sswitch_6
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/htc/album/helper/MenuManager;->callSharePickerForPrint(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;)V

    goto/16 :goto_0

    .line 1012
    :sswitch_7
    invoke-static {v0}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoVod(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1018
    :sswitch_8
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onSelectPlayer()V

    goto/16 :goto_0

    .line 1023
    :sswitch_9
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->showShare(Lcom/htc/album/modules/ui/widget/ControlButton;)V

    goto/16 :goto_0

    .line 1028
    :sswitch_a
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->initFileOperationManager()V

    .line 1029
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    sget-object v6, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_MOVE:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    invoke-virtual {v5, v6}, Lcom/htc/album/helper/FileOperationManager;->setOperationType(Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)V

    .line 1030
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v5

    invoke-static {v6, v5, v8}, Lcom/htc/album/helper/MenuManager;->callFileOperationMultiItemPicker(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1035
    :sswitch_b
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->initFileOperationManager()V

    .line 1036
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    sget-object v6, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_COPY:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    invoke-virtual {v5, v6}, Lcom/htc/album/helper/FileOperationManager;->setOperationType(Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)V

    .line 1037
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v5

    invoke-static {v6, v5, v8}, Lcom/htc/album/helper/MenuManager;->callFileOperationMultiItemPicker(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 934
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_9
        0x2 -> :sswitch_1
        0x3 -> :sswitch_4
        0x4 -> :sswitch_3
        0x5 -> :sswitch_2
        0xd -> :sswitch_5
        0xf -> :sswitch_8
        0x12 -> :sswitch_6
        0x13 -> :sswitch_0
        0x29 -> :sswitch_7
        0x3e -> :sswitch_a
        0x3f -> :sswitch_b
    .end sparse-switch
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 2
    .parameter "nAnimState"

    .prologue
    .line 2309
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 2312
    .local v0, animationBundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    .line 2313
    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 18
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 1820
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 1905
    .end local p3
    :cond_0
    :goto_0
    return-void

    .line 1822
    .restart local p3
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_0

    .line 1824
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v13, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1826
    .local v13, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    check-cast p3, Lcom/htc/sunnyCore/widget/gridview/GridView$AdapterContextMenuInfo;

    .end local p3
    move-object/from16 v0, p3

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$AdapterContextMenuInfo;->position:I

    move/from16 v16, v0

    .line 1827
    .local v16, position:I
    invoke-virtual {v13}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getCanSetAsImageCount()I

    move-result v6

    .line 1829
    .local v6, count:I
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1830
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-virtual {v13}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v14

    .line 1832
    .local v14, collection:Lcom/htc/album/modules/collection/Collection;
    if-nez v3, :cond_2

    .line 1834
    const-string v1, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onCreateContextMenu]: skip1..."

    invoke-static {v1, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1837
    :cond_2
    const/4 v1, 0x1

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isFakeForLoading()Z

    move-result v4

    if-eq v1, v4, :cond_0

    .line 1839
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1841
    .local v2, context:Landroid/content/Context;
    const/4 v15, 0x0

    .line 1842
    .local v15, isWMDrm:Z
    if-eqz v3, :cond_3

    const-string v1, "video/x-wmv-drm"

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1843
    const/4 v15, 0x1

    .line 1846
    :cond_3
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1847
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v7, 0x20128

    invoke-virtual/range {v1 .. v7}, Lcom/htc/album/helper/MenuManager;->makeExclusion(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;ZZII)I

    move-result v12

    .line 1858
    .local v12, exclusion:I
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v15, :cond_5

    .line 1860
    :cond_4
    if-eqz v15, :cond_c

    const/16 v17, 0x1

    .line 1861
    .local v17, type:I
    :goto_1
    const/4 v1, 0x1

    move/from16 v0, v17

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1864
    or-int/lit8 v12, v12, 0x4

    .line 1869
    .end local v17           #type:I
    :cond_5
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v1

    if-nez v1, :cond_6

    if-nez v15, :cond_6

    invoke-virtual {v14}, Lcom/htc/album/modules/collection/Collection;->isManageable()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1871
    :cond_6
    const/high16 v1, 0x80

    or-int/2addr v12, v1

    .line 1872
    const/high16 v1, 0x40

    or-int/2addr v12, v1

    .line 1875
    :cond_7
    if-eqz v3, :cond_8

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v4, "video"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1878
    invoke-static {v2}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isTrimExists(Landroid/content/Context;)Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_8

    .line 1879
    const/4 v1, 0x0

    const v4, 0x7f0a0115

    const/16 v5, 0x11

    const v7, 0x7f0a0115

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v4, v5, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1883
    :cond_8
    if-eqz v3, :cond_9

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_9

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_9

    if-nez v15, :cond_9

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isPrintSupport(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v2}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isPrintExists(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1890
    :cond_9
    const/high16 v1, 0x8

    or-int/2addr v12, v1

    .line 1893
    :cond_a
    const/high16 v1, 0x1

    or-int/2addr v12, v1

    .line 1894
    const/high16 v1, 0x10

    or-int/2addr v12, v1

    .line 1896
    invoke-static {v3, v12}, Lcom/htc/album/helper/MenuManager;->exclusionSlideShow(Lcom/htc/opensense2/album/util/ImageManager$IImage;I)V

    .line 1898
    invoke-virtual {v14}, Lcom/htc/album/modules/collection/Collection;->isManageable()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1900
    const/high16 v1, 0x80

    or-int/2addr v12, v1

    .line 1901
    const/high16 v1, 0x40

    or-int/2addr v12, v1

    .line 1904
    :cond_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v9

    move-object v8, v2

    move-object/from16 v10, p1

    move-object v11, v3

    invoke-virtual/range {v7 .. v12}, Lcom/htc/album/helper/MenuManager;->showPhotoMenu(Landroid/content/Context;Landroid/view/MenuInflater;Landroid/view/Menu;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)V

    goto/16 :goto_0

    :cond_c
    move-object v1, v3

    .line 1860
    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v17

    goto/16 :goto_1
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 3
    .parameter "id"

    .prologue
    .line 746
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 747
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 748
    const/4 v1, 0x0

    .line 753
    :goto_0
    return-object v1

    .line 750
    :cond_0
    const/4 v1, 0x0

    .line 751
    .local v1, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->enableRightFooter()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v1

    .line 753
    goto :goto_0
.end method

.method public onCreateFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 3
    .parameter "id"
    .parameter "extras"

    .prologue
    const/4 v1, 0x1

    .line 246
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/album/helper/DeleteManager;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 247
    .local v0, dlg:Z
    if-eqz v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v1

    .line 250
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    if-eqz v2, :cond_2

    .line 251
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/album/helper/ImageProcessManager;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 253
    :cond_2
    if-nez v0, :cond_0

    .line 255
    invoke-super {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunnyCore/view/SView;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 711
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v1

    .line 712
    .local v1, gridView:Lcom/htc/sunnyCore/widget/gridview/GridView;
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 713
    .local v0, context:Landroid/content/Context;
    const/4 v3, 0x0

    .line 714
    .local v3, nTop:I
    const/4 v2, 0x0

    .line 715
    .local v2, nBottom:I
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 717
    invoke-static {v0, v5}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->getHeight(Landroid/content/Context;I)I

    move-result v3

    .line 727
    :goto_0
    invoke-virtual {v1, v7, v3, v7, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setPadding(IIII)V

    .line 728
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onUpdateMainViewLayout(Lcom/htc/sunnyCore/widget/gridview/GridView;Landroid/content/res/Configuration;)V

    .line 731
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mOnItemVibrateListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$OnItemVibrateListener;

    invoke-virtual {v1, v4}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOnItemLongPressVibrateListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongPressVibrateListener;)V

    .line 732
    return-object v1

    .line 723
    :cond_0
    invoke-static {v0, v5}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->getHeight(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07002b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v4, -0x1

    .line 725
    invoke-static {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v2

    goto :goto_0
.end method

.method public onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    .locals 2

    .prologue
    .line 2294
    new-instance v1, Lcom/htc/album/Animation/animationSetGridview;

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-direct {v1, v0}, Lcom/htc/album/Animation/animationSetGridview;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;)V

    return-object v1
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 1800
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1802
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v1, "[HTCAlbum][SceneLocalPhotoThumbnail][onDelete][tablet]"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->changeSenseMode(I)V

    .line 1809
    :goto_0
    return-void

    .line 1807
    :cond_0
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v1, "[HTCAlbum][SceneLocalPhotoThumbnail][onDelete][!tablet]"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroyScene()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 613
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/FileOperationManager;->release()V

    .line 616
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOperationDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    if-eqz v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOperationDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/FileOperationDialogManager;->cancel()V

    .line 621
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOperationDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    .line 623
    :cond_1
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onDestroyScene()V

    .line 624
    return-void
.end method

.method public onDismissFragmentDialog(I)Z
    .locals 3
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    .line 261
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v2, p1}, Lcom/htc/album/helper/DeleteManager;->onDismissFragmentDialog(I)Z

    move-result v0

    .line 262
    .local v0, dlg:Z
    if-eqz v0, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v1

    .line 265
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    if-eqz v2, :cond_2

    .line 266
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v2, p1}, Lcom/htc/album/helper/ImageProcessManager;->onDismissFragmentDialog(I)Z

    move-result v0

    .line 268
    :cond_2
    if-nez v0, :cond_0

    .line 270
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onDismissFragmentDialog(I)Z

    move-result v1

    goto :goto_0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 1173
    const/4 v0, 0x1

    return v0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 594
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_0

    const-string v0, "profiler.performance"

    invoke-static {v0, v2}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 596
    :cond_0
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](303) [LAUNCH_TIME][Gallery][Folder2Thumb][START]\u2026"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 599
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-nez v0, :cond_2

    .line 601
    invoke-virtual {p0, v3, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->createFooterBarWithoutThreadCheck(IZ)V

    .line 603
    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->setEnableInvalidateWhenShow(Z)V

    .line 605
    if-eqz p1, :cond_3

    .line 606
    const-string v0, "folder_animation_click_pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/view/Vector3F;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFolderPosition:Lcom/htc/sunnyCore/view/Vector3F;

    .line 608
    :cond_3
    return-void
.end method

.method protected onItemClickIRT(Lcom/htc/sunnyCore/view/SView;I)V
    .locals 11
    .parameter "view"
    .parameter "index"

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x2

    const/4 v6, 0x0

    .line 2529
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 2530
    .local v1, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v1, :cond_1

    .line 2600
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 2532
    .restart local p1
    :cond_1
    invoke-virtual {v1, p2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2533
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isFakeForLoading()Z

    move-result v7

    if-eq v5, v7, :cond_0

    .line 2535
    iget v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    if-eq v7, v10, :cond_3

    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v7, :cond_3

    .line 2539
    :try_start_0
    iput p2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    .line 2540
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2541
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 2542
    .local v2, context:Landroid/content/Context;
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    invoke-static {v2, v7}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->shouldPlayOnTV(Landroid/content/Context;Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2544
    const-string v7, "SceneLocalPhotoThumbnail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][SceneLocalPhotoThumbnail][onItemClickIRT]: launch DMC TV Mode. Index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2548
    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #context:Landroid/content/Context;
    :catch_0
    move-exception v7

    .line 2552
    :cond_2
    const-string v7, "SceneLocalPhotoThumbnail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][SceneLocalPhotoThumbnail][onItemClickIRT]: No TV Mode. Index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2555
    :cond_3
    const/4 v7, -0x1

    iput v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    .line 2557
    invoke-super {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onItemClickIRT(Lcom/htc/sunnyCore/view/SView;I)V

    .line 2562
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mItemClickPosition:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {p1}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/sunnyCore/view/Vector3F;->setVector3F(Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 2565
    iget v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    if-ne v7, v10, :cond_8

    .line 2566
    const/4 v4, 0x0

    .line 2567
    .local v4, selected:Z
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 2569
    :try_start_1
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    move v4, v5

    .line 2570
    :goto_1
    if-eqz v4, :cond_4

    .line 2571
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2573
    :cond_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2575
    instance-of v5, p1, Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItem;

    if-eqz v5, :cond_5

    move-object v5, p1

    .line 2576
    check-cast v5, Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItem;

    invoke-interface {v5, v10}, Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItem;->setStyle(I)V

    .line 2579
    :cond_5
    instance-of v5, p1, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemPickerable;

    if-eqz v5, :cond_6

    .line 2580
    check-cast p1, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemPickerable;

    .end local p1
    const/4 v5, 0x0

    invoke-interface {p1, v4, v5}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemPickerable;->setPicked(ZLcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 2583
    :cond_6
    iput-boolean v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAll:Z

    .line 2585
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 2586
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2588
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->invalidateControlBars()V

    goto/16 :goto_0

    .restart local p1
    :cond_7
    move v4, v6

    .line 2569
    goto :goto_1

    .line 2573
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 2594
    .end local v4           #selected:Z
    :cond_8
    instance-of v5, p1, Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItem;

    if-eqz v5, :cond_0

    .line 2596
    check-cast p1, Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItem;

    .end local p1
    invoke-interface {p1, v6}, Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItem;->setStyle(I)V

    goto/16 :goto_0
.end method

.method protected onItemSelected(I)V
    .locals 7
    .parameter "index"

    .prologue
    .line 2608
    sget-boolean v4, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "SceneLocalPhotoThumbnail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SceneLocalPhotoThumbnail][onItemSelected]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2610
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 2611
    .local v1, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v1, :cond_2

    .line 2630
    :cond_1
    :goto_0
    return-void

    .line 2613
    :cond_2
    invoke-virtual {v1, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2614
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v3, :cond_1

    const/4 v4, 0x1

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isFakeForLoading()Z

    move-result v5

    if-eq v4, v5, :cond_1

    .line 2616
    iget v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 2622
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2623
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 2625
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    check-cast v2, Lcom/htc/album/Animation/animationSetGridview;

    .line 2626
    .local v2, animationSet:Lcom/htc/album/Animation/animationSetGridview;
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mItemClickPosition:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v2, p1, v4}, Lcom/htc/album/Animation/animationSetGridview;->setFocused(ILcom/htc/sunnyCore/view/Vector3F;)V

    .line 2628
    invoke-direct {p0, p1, v0, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onViewMediaContent(ILandroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 7
    .parameter "message"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 276
    const/4 v2, 0x1

    .line 278
    .local v2, isHandled:Z
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v4, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v3

    .line 280
    :cond_1
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 281
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 284
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 307
    const/4 v2, 0x0

    .line 311
    :cond_2
    :goto_1
    if-nez v2, :cond_4

    .line 312
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onMessage(Landroid/os/Message;)Z

    move-result v3

    goto :goto_0

    .line 287
    :pswitch_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mConnection:Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;

    if-eqz v3, :cond_2

    .line 291
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDestroyController:Z

    if-eqz v3, :cond_3

    .line 294
    :try_start_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mConnection:Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->getService()Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mOldDmr:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V

    .line 295
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mOldDmr:Ljava/lang/String;

    .line 296
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDestroyController:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mConnection:Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;

    invoke-static {v3}, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper;->unbindService(Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;)V

    .line 303
    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mConnection:Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;

    goto :goto_1

    .line 297
    :catch_0
    move-exception v1

    .line 298
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "SceneLocalPhotoThumbnail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mServiceCallback Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v1           #e:Landroid/os/RemoteException;
    :cond_4
    move v3, v2

    .line 315
    goto :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x139a
        :pswitch_0
    .end packed-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 577
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onNewAdapter(Landroid/os/Bundle;)V

    .line 578
    const/16 v0, 0x2724

    const/4 v1, 0x0

    const/16 v2, 0x258

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onPostMessage(ILjava/lang/Object;I)V

    .line 579
    return-void
.end method

.method protected onNewThumbnailItem(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
    .locals 2
    .parameter "context"
    .parameter "sContext"

    .prologue
    .line 2519
    invoke-super {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onNewThumbnailItem(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;

    move-result-object v0

    .line 2521
    .local v0, gItem:Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIGridItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setBindMediaDataListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;)V

    .line 2523
    return-object v0
.end method

.method public onNoTVToPlay()V
    .locals 1

    .prologue
    .line 558
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    .line 559
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->isDRMOnlyCollection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onNoTVToPlay()V

    .line 561
    :cond_0
    return-void
.end method

.method public onNotifyUpdateComplete()V
    .locals 4

    .prologue
    .line 2418
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->updateThumbImageStatus()V

    .line 2421
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    .line 2422
    .local v0, render:Lcom/htc/sunnyCore/RenderThread;
    if-eqz v0, :cond_0

    .line 2424
    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    const-string v3, "QuickBind"

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    .line 2437
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mReduceinvalidateControlBar_workaround:Z

    .line 2438
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDataSetChange(I)V

    .line 2439
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mReduceinvalidateControlBar_workaround:Z

    .line 2440
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onNotifyUpdateComplete()V

    .line 2441
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 15
    .parameter "item"

    .prologue
    .line 1538
    iget-object v12, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v12}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v12

    if-nez v12, :cond_1

    .line 1540
    :cond_0
    const-string v12, "SceneLocalPhotoThumbnail"

    const-string v13, "[HTCAlbum][SceneLocalPhotoThumbnail][onOptionsItemSelected][tablet]can\'t get activity"

    invoke-static {v12, v13}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    const/4 v2, 0x0

    .line 1712
    :goto_0
    return v2

    .line 1544
    :cond_1
    iget-object v12, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v12}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1545
    .local v0, activity:Landroid/app/Activity;
    const-string v12, "SceneLocalPhotoThumbnail"

    const-string v13, "[HTCAlbum][LocalGridviewActivity][onMaOptionsItemSelected]: "

    invoke-static {v12, v13}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    const/4 v2, 0x0

    .line 1547
    .local v2, bResult:Z
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    .line 1548
    .local v9, menuId:I
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v5

    .line 1549
    .local v5, groupId:I
    const/16 v12, 0x303a

    if-ne v5, v12, :cond_2

    .line 1551
    iget-object v12, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    iget-object v13, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mOnShareItemListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$OnShareItemSelectedListener;

    invoke-virtual {v12, v0, v9, v13}, Lcom/htc/album/helper/ShareMenuManager;->onLocalShareFolderClick(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)V

    .line 1552
    const/4 v2, 0x1

    goto :goto_0

    .line 1555
    :cond_2
    sparse-switch v9, :sswitch_data_0

    .line 1708
    const-string v12, "SceneLocalPhotoThumbnail"

    const-string v13, "[HTCAlbum][LocalGridviewActivity][onMenuItemSelected] Unsupported context menu operation."

    invoke-static {v12, v13}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1565
    :sswitch_0
    iget-object v12, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v12, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v12}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v8

    .line 1566
    .local v8, itemPosition:I
    const/4 v12, -0x1

    if-ne v8, v12, :cond_3

    .line 1568
    const/4 v8, 0x0

    .line 1570
    :cond_3
    iget-object v12, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v12, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    const/4 v13, 0x0

    invoke-static {v0, v12, v8, v13}, Lcom/htc/album/helper/MenuManager;->launchSlideShow(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILjava/lang/Object;)V

    .line 1572
    const/4 v2, 0x1

    .line 1573
    goto :goto_0

    .line 1598
    .end local v8           #itemPosition:I
    :sswitch_1
    const/4 v12, 0x0

    invoke-static {v0, v12}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->launchSelectPlayer(Landroid/app/Activity;Z)V

    .line 1600
    const/4 v2, 0x1

    .line 1601
    goto :goto_0

    .line 1604
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->turnOnTV()V

    .line 1605
    const/4 v2, 0x1

    .line 1606
    goto :goto_0

    .line 1609
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->turnOffTV()V

    .line 1610
    const/4 v2, 0x1

    .line 1611
    goto :goto_0

    .line 1614
    :sswitch_4
    invoke-static {v0}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoVod(Landroid/content/Context;)V

    .line 1615
    const/4 v2, 0x1

    .line 1616
    goto :goto_0

    .line 1621
    :sswitch_5
    const-string v12, "SceneLocalPhotoThumbnail"

    const-string v13, "[HTCAlbum][LocalGridviewActivity][onMenuItemSelected] CommonLocalMenuID.PRINT"

    invoke-static {v12, v13}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    iget-object v12, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v12}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v12

    if-nez v12, :cond_5

    .line 1625
    :cond_4
    const-string v12, "SceneLocalPhotoThumbnail"

    const-string v13, "[HTCAlbum][SceneLocalPhotoThumbnail][OnShareItemSelectedListener][onClick]can\'t get activity"

    invoke-static {v12, v13}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    const/4 v2, 0x0

    goto :goto_0

    .line 1628
    :cond_5
    iget-object v12, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v12, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/htc/album/helper/MenuManager;->callSharePickerForPrint(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;)V

    goto/16 :goto_0

    .line 1634
    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onCamera()V

    goto/16 :goto_0

    .line 1639
    :sswitch_7
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDelete()V

    goto/16 :goto_0

    .line 1643
    :sswitch_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1644
    .local v3, delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v13, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    monitor-enter v13

    .line 1645
    :try_start_0
    iget-object v12, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1646
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1647
    iget-object v12, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v12, v3}, Lcom/htc/album/helper/DeleteManager;->deleteMedias(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1646
    :catchall_0
    move-exception v12

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .line 1651
    .end local v3           #delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_9
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onBackPressed()Z

    goto/16 :goto_0

    .line 1656
    :sswitch_a
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1657
    .local v1, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v1, :cond_6

    .line 1659
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1662
    :cond_6
    iget-object v12, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v12, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v12}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v4

    .line 1663
    .local v4, firstViewPos:I
    iget-object v12, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v12, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v12}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getChildrenCount()I

    move-result v12

    add-int/lit8 v10, v12, 0x4

    .line 1664
    .local v10, totalChildren:I
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v11

    .line 1666
    .local v11, totalItems:I
    const-string v12, "SceneLocalPhotoThumbnail"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "firstViewPos="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", totalChildren="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", totalItems="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    iget-object v13, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    monitor-enter v13

    .line 1669
    move v6, v4

    .local v6, i:I
    :goto_1
    add-int v12, v4, v10

    if-ge v6, v12, :cond_7

    .line 1671
    if-lt v6, v11, :cond_9

    .line 1682
    :cond_7
    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1683
    iget-object v12, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v12}, Lcom/htc/album/helper/DeleteManager;->deleteAllMedias()V

    .line 1684
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAll:Z

    .line 1686
    iget-object v12, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v12, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v12}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 1687
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->invalidateControlBars()V

    .line 1689
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1691
    iget-object v12, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v12}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 1694
    :cond_8
    const/4 v2, 0x1

    .line 1695
    goto/16 :goto_0

    .line 1676
    :cond_9
    :try_start_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1677
    .local v7, idx:Ljava/lang/Integer;
    iget-object v12, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 1679
    iget-object v12, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1669
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1682
    .end local v7           #idx:Ljava/lang/Integer;
    :catchall_1
    move-exception v12

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v12

    .line 1699
    .end local v1           #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    .end local v4           #firstViewPos:I
    .end local v6           #i:I
    .end local v10           #totalChildren:I
    .end local v11           #totalItems:I
    :sswitch_b
    const/4 v12, 0x1

    invoke-direct {p0, v12}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->ToggleSelectAll(Z)Z

    goto/16 :goto_0

    .line 1704
    :sswitch_c
    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->ToggleSelectAll(Z)Z

    goto/16 :goto_0

    .line 1555
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x4 -> :sswitch_8
        0x5 -> :sswitch_9
        0x204014f -> :sswitch_b
        0x20401ec -> :sswitch_a
        0x20401f4 -> :sswitch_c
        0x7f09007a -> :sswitch_7
        0x7f090085 -> :sswitch_0
        0x7f090086 -> :sswitch_1
        0x7f09008c -> :sswitch_5
        0x7f0a0113 -> :sswitch_4
        0x7f0a0183 -> :sswitch_2
        0x7f0a0184 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 739
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getFirstIndexPostion()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->markSelection(II)V

    .line 741
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onPause()V

    .line 742
    return-void
.end method

.method protected onPhaseInScreenControl(I)V
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 2283
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2289
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onPhaseInScreenControl(I)V

    .line 2290
    return-void

    .line 2287
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->setEnableControlBarAnimation(Z)V

    goto :goto_0
.end method

.method protected onPhaseOutScreenControl(I)V
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 2273
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2279
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onPhaseOutScreenControl(I)V

    .line 2280
    return-void

    .line 2277
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->setEnableControlBarAnimation(Z)V

    goto :goto_0
.end method

.method protected onPostBackPressed(Z)Z
    .locals 10
    .parameter "isBackKey"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1087
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v6, :cond_0

    .line 1149
    :goto_0
    return v8

    .line 1093
    :cond_0
    const/4 v0, 0x0

    .line 1094
    .local v0, action:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1095
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_1

    .line 1097
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1102
    :cond_1
    if-eqz v0, :cond_2

    const-string v6, "com.htc.album.action.DLNA_BROWSE_LOCAL"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.htc.album.action.DLNA_VIEW_LOCAL_PHOTO"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1108
    :cond_2
    if-nez p1, :cond_3

    .line 1109
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->getFolderSceneId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v9, v7, v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1112
    :cond_3
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/app/mf/MfFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v4

    .line 1113
    .local v4, nBackStackCount:I
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getSceneCount()I

    move-result v5

    .line 1114
    .local v5, nSceneCount:I
    const-string v6, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1115
    .local v1, bIsFromCamera:Z
    const-string v6, "com.htc.album.action.DLNA_BROWSE_LOCAL"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1117
    .local v2, bIsFromDMC:Z
    if-eqz v2, :cond_4

    .line 1119
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->getFolderSceneId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v9, v7, v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1121
    :cond_4
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableLandingPage()Z

    move-result v6

    if-eqz v6, :cond_5

    if-ne v8, v5, :cond_5

    if-ne v8, v4, :cond_5

    .line 1126
    const-string v6, "SceneLocalPhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneLocalPhotoThumbnail][onPostBackPressed]: exit 1"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1129
    :cond_5
    if-eqz v1, :cond_6

    if-ne v8, v5, :cond_6

    .line 1131
    const-string v6, "SceneLocalPhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneLocalPhotoThumbnail][onPostBackPressed]: exit 2"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1136
    :cond_6
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->getFolderSceneId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v9, v7, v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1142
    .end local v1           #bIsFromCamera:Z
    .end local v2           #bIsFromDMC:Z
    .end local v4           #nBackStackCount:I
    .end local v5           #nSceneCount:I
    :cond_7
    iget v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    if-eq v6, v8, :cond_8

    .line 1143
    invoke-direct {p0, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->changeSenseMode(I)V

    goto/16 :goto_0

    .line 1146
    :cond_8
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    goto/16 :goto_0
.end method

.method public onPrepareAnimation(I)Z
    .locals 2
    .parameter "nAnimState"

    .prologue
    const/4 v1, 0x1

    .line 2299
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onPrepareAnimation(I)Z

    move-result v0

    .line 2300
    .local v0, doAnimation:Z
    if-ne v1, v0, :cond_0

    .line 2301
    invoke-static {v1}, Lcom/htc/wrap/dalvik/system/HtcWrapVMRuntime;->disableGcForExternalAlloc(Z)V

    .line 2304
    :cond_0
    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 30
    .parameter "menu"

    .prologue
    .line 1188
    invoke-super/range {p0 .. p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1189
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->clear()V

    .line 1191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v2, :cond_0

    .line 1192
    const/4 v2, 0x0

    .line 1464
    :goto_0
    return v2

    .line 1193
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1194
    .local v8, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v11

    .line 1195
    .local v11, collection:Lcom/htc/album/modules/collection/Collection;
    if-nez v11, :cond_1

    .line 1196
    const/4 v2, 0x0

    goto :goto_0

    .line 1197
    :cond_1
    invoke-virtual {v11}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v12

    .line 1198
    .local v12, collectionType:Ljava/lang/String;
    const-string v2, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    .line 1200
    .local v19, isFavoriteCollection:Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1b

    .line 1202
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1204
    const-string v2, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onPrepareOptionsMenu][tablet] + "

    invoke-static {v2, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1208
    :cond_2
    const-string v2, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onPrepareOptionsMenu][tablet]can\'t get activity"

    invoke-static {v2, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    const/4 v2, 0x0

    goto :goto_0

    .line 1221
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    .line 1223
    .local v3, activity:Landroid/app/Activity;
    const/4 v2, 0x0

    const v4, 0x7f09008b

    const/4 v5, 0x1

    const v6, 0x204020f

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    .line 1224
    .local v20, item:Landroid/view/MenuItem;
    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Share_Dark_Rest(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1225
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1227
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const v6, 0x7f0a012d

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    .line 1228
    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Camera_Dark_Rest(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1229
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1231
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v24

    .line 1232
    .local v24, listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    if-nez v24, :cond_4

    .line 1234
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1236
    :cond_4
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v29

    .line 1237
    .local v29, totalCount:I
    invoke-virtual/range {v24 .. v24}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getDrmContentCount()I

    move-result v14

    .line 1239
    .local v14, drmCount:I
    const/16 v27, 0x1

    .line 1240
    .local v27, showSlideShow:Z
    const-string v2, "com.htc.HTCAlbum.ALL_VIDEOS"

    invoke-virtual {v11}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v24, :cond_5

    invoke-virtual/range {v24 .. v24}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getVideoCount()I

    move-result v2

    move/from16 v0, v29

    if-eq v2, v0, :cond_6

    :cond_5
    invoke-static {v3}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->isDLNAPlaying(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1245
    :cond_6
    const/16 v27, 0x0

    .line 1247
    :cond_7
    sub-int v2, v14, v29

    if-nez v2, :cond_8

    .line 1249
    const/16 v27, 0x0

    .line 1250
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v29

    if-ge v0, v1, :cond_8

    .line 1252
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_e

    .line 1254
    const/16 v27, 0x1

    .line 1260
    .end local v17           #i:I
    :cond_8
    if-eqz v27, :cond_f

    .line 1262
    const/4 v2, 0x0

    const v4, 0x7f090085

    const/4 v5, 0x3

    const v6, 0x204020e

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    .line 1263
    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Slideshow_Dark_Rest(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1264
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1277
    :cond_9
    :goto_2
    if-eqz v19, :cond_10

    .line 1278
    const/4 v2, 0x0

    const v4, 0x7f09007a

    const/4 v5, 0x4

    const v6, 0x2040272

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    .line 1286
    :goto_3
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v2, :cond_a

    .line 1289
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->ENABLE_TV_BUTTON:Z

    if-eqz v2, :cond_11

    .line 1291
    if-eqz v3, :cond_a

    .line 1293
    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    .line 1294
    .local v13, context:Landroid/content/Context;
    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->addTVDisplayMenu(Landroid/content/Context;Landroid/view/Menu;)V

    .line 1333
    .end local v13           #context:Landroid/content/Context;
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isPrintExists(Landroid/content/Context;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_c

    .line 1335
    const/4 v10, 0x0

    .line 1337
    .local v10, bPrintableImage:Z
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_b

    .line 1339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v18

    check-cast v18, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1341
    .local v18, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v18, :cond_16

    invoke-interface/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-interface/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-interface/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isPrintSupport(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_16

    .line 1343
    const/4 v10, 0x1

    .line 1348
    .end local v18           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_b
    if-eqz v10, :cond_c

    .line 1350
    const/4 v2, 0x0

    const v4, 0x7f09008c

    const/16 v5, 0xc

    const v6, 0x7f0a0114

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    .line 1356
    .end local v10           #bPrintableImage:Z
    .end local v17           #i:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    if-eqz v2, :cond_d

    .line 1358
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v9

    .line 1359
    .local v9, adapterCount:I
    if-lez v9, :cond_d

    .line 1361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual/range {v24 .. v24}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getSharableImageCount()I

    move-result v5

    invoke-virtual/range {v24 .. v24}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getSharableVideoCount()I

    move-result v6

    invoke-virtual/range {v24 .. v24}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getDrmContentCount()I

    move-result v4

    sub-int/2addr v4, v9

    if-nez v4, :cond_17

    const/4 v7, 0x1

    :goto_6
    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/htc/album/helper/ShareMenuManager;->createLocalFolderShareMenu(Landroid/content/Context;Landroid/view/Menu;IIZ)Z

    .line 1365
    .end local v9           #adapterCount:I
    :cond_d
    const-string v2, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onPrepareOptionsMenu][tablet] - "

    invoke-static {v2, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1250
    .restart local v17       #i:I
    :cond_e
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 1268
    .end local v17           #i:I
    :cond_f
    invoke-static {v3}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->isDLNAPlaying(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1270
    const/4 v2, 0x0

    const v4, 0x7f090085

    const/4 v5, 0x3

    const v6, 0x204020e

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    .line 1271
    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Slideshow_Dark_Rest(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1272
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1273
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1280
    :cond_10
    const/4 v2, 0x0

    const v4, 0x7f09007a

    const/4 v5, 0x4

    const v6, 0x2040214

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    goto/16 :goto_3

    .line 1299
    :cond_11
    const/16 v16, 0x0

    .line 1300
    .local v16, hasOutput:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getSelectedItemPosition()I

    move-result v23

    .line 1301
    .local v23, itemPosition:I
    const/4 v2, -0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_14

    .line 1303
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_12

    .line 1305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v18

    check-cast v18, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1306
    .restart local v18       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v18, :cond_13

    invoke-interface/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-interface/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1308
    const/16 v16, 0x1

    .line 1322
    .end local v17           #i:I
    .end local v18           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_12
    :goto_8
    if-eqz v16, :cond_a

    .line 1324
    const/4 v2, 0x0

    const v4, 0x7f090086

    const/16 v5, 0xb

    const v6, 0x7f0a012e

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    .line 1325
    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Output_Dark_Rest(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1326
    invoke-static {v3}, Lcom/htc/album/helper/WirelessDisplayHelper;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_15

    const/4 v2, 0x1

    :goto_9
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 1303
    .restart local v17       #i:I
    .restart local v18       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_13
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 1315
    .end local v17           #i:I
    .end local v18           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v18

    check-cast v18, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1316
    .restart local v18       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v18, :cond_12

    invoke-interface/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1318
    const/16 v16, 0x1

    goto :goto_8

    .line 1326
    .end local v18           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_15
    const/4 v2, 0x0

    goto :goto_9

    .line 1337
    .end local v16           #hasOutput:Z
    .end local v23           #itemPosition:I
    .restart local v10       #bPrintableImage:Z
    .restart local v17       #i:I
    .restart local v18       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_16
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_5

    .line 1361
    .end local v10           #bPrintableImage:Z
    .end local v17           #i:I
    .end local v18           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v9       #adapterCount:I
    :cond_17
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 1370
    .end local v3           #activity:Landroid/app/Activity;
    .end local v9           #adapterCount:I
    .end local v14           #drmCount:I
    .end local v20           #item:Landroid/view/MenuItem;
    .end local v24           #listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    .end local v27           #showSlideShow:Z
    .end local v29           #totalCount:I
    :cond_18
    const-string v2, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onPrepareOptionsMenu][phone] + "

    invoke-static {v2, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 1374
    :cond_19
    const-string v2, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onPrepareOptionsMenu][phone]can\'t get activity"

    invoke-static {v2, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1378
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    .line 1380
    .restart local v3       #activity:Landroid/app/Activity;
    const/16 v25, 0x0

    .line 1382
    .local v25, menuItem:Landroid/view/MenuItem;
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0x7f0a012d

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v25

    .line 1383
    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Camera_Dark_Rest(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1384
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1386
    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->addTVDisplayMenu(Landroid/content/Context;Landroid/view/Menu;)V

    .line 1388
    const-string v2, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onPrepareOptionsMenu][phone] - "

    invoke-static {v2, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1394
    .end local v3           #activity:Landroid/app/Activity;
    .end local v25           #menuItem:Landroid/view/MenuItem;
    :cond_1b
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1d

    .line 1398
    :cond_1c
    const-string v2, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onPrepareOptionsMenu][tablet]can\'t get activity"

    invoke-static {v2, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1402
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    .line 1403
    .restart local v3       #activity:Landroid/app/Activity;
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v24

    .line 1404
    .restart local v24       #listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    if-nez v24, :cond_1e

    .line 1406
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1408
    :cond_1e
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v29

    .line 1409
    .restart local v29       #totalCount:I
    invoke-virtual/range {v24 .. v24}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getDrmContentCount()I

    move-result v14

    .line 1412
    .restart local v14       #drmCount:I
    if-eqz v19, :cond_1f

    .line 1413
    const/4 v2, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const v6, 0x2040272

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v22

    .line 1416
    .local v22, itemDelete:Landroid/view/MenuItem;
    :goto_a
    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Delete_Dark_Rest(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1417
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1420
    const/4 v2, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    const v6, 0x20401ee

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    .line 1421
    .local v21, itemCancel:Landroid/view/MenuItem;
    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1422
    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1428
    invoke-virtual/range {p0 .. p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->showSelectAllInOptionsMenu(Landroid/view/Menu;)V

    .line 1430
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x2040214

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 1431
    .local v28, textConfirm:Ljava/lang/String;
    const/16 v26, 0x0

    .line 1432
    .local v26, numPick:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1434
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 1435
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1437
    const/4 v15, 0x1

    .line 1444
    .local v15, enable:Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAll:Z

    if-eqz v2, :cond_20

    .line 1453
    :goto_b
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1454
    move-object/from16 v0, v22

    invoke-interface {v0, v15}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1455
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1415
    .end local v15           #enable:Z
    .end local v21           #itemCancel:Landroid/view/MenuItem;
    .end local v22           #itemDelete:Landroid/view/MenuItem;
    .end local v26           #numPick:I
    .end local v28           #textConfirm:Ljava/lang/String;
    :cond_1f
    const/4 v2, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const v6, 0x2040214

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v22

    .restart local v22       #itemDelete:Landroid/view/MenuItem;
    goto :goto_a

    .line 1435
    .restart local v21       #itemCancel:Landroid/view/MenuItem;
    .restart local v26       #numPick:I
    .restart local v28       #textConfirm:Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1451
    .restart local v15       #enable:Z
    :cond_20
    if-eqz v26, :cond_21

    const/4 v15, 0x1

    :goto_c
    goto :goto_b

    :cond_21
    const/4 v15, 0x0

    goto :goto_c

    .line 1462
    .end local v3           #activity:Landroid/app/Activity;
    .end local v14           #drmCount:I
    .end local v15           #enable:Z
    .end local v21           #itemCancel:Landroid/view/MenuItem;
    .end local v22           #itemDelete:Landroid/view/MenuItem;
    .end local v24           #listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    .end local v26           #numPick:I
    .end local v28           #textConfirm:Ljava/lang/String;
    .end local v29           #totalCount:I
    :cond_22
    invoke-virtual/range {p0 .. p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->showSelectAllInOptionsMenu(Landroid/view/Menu;)V

    .line 1464
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 28
    .parameter "footer"

    .prologue
    .line 759
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v1, :cond_1

    .line 908
    :cond_0
    :goto_0
    return-void

    .line 761
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    .line 762
    .local v7, activity:Landroid/app/Activity;
    if-eqz v7, :cond_0

    .line 764
    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 765
    .local v2, context:Landroid/content/Context;
    if-eqz v2, :cond_0

    .line 767
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 768
    .local v8, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v11

    .line 769
    .local v11, collection:Lcom/htc/album/modules/collection/Collection;
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v18

    .line 770
    .local v18, listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    if-eqz v11, :cond_0

    if-eqz v18, :cond_0

    .line 772
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v27

    .line 773
    .local v27, totalCount:I
    invoke-virtual/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getDrmContentCount()I

    move-result v13

    .line 775
    .local v13, drmCount:I
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->clear()V

    .line 777
    invoke-virtual {v11}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v12

    .line 778
    .local v12, collectionType:Ljava/lang/String;
    const-string v1, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 780
    .local v16, isFavoriteCollection:Z
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 782
    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v5

    const v6, 0x20401ee

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 783
    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Delete_Dark_Rest(Landroid/content/Context;)I

    move-result v5

    const v6, 0x2040214

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v9

    check-cast v9, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 785
    .local v9, btnConfirm:Lcom/htc/album/modules/ui/widget/FooterButton;
    const/16 v26, 0x0

    .line 786
    .local v26, textConfirm:Ljava/lang/String;
    if-eqz v16, :cond_2

    .line 787
    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x2040272

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 790
    :goto_1
    const/16 v20, 0x0

    .line 791
    .local v20, numPick:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 792
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 793
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    const/4 v14, 0x1

    .line 801
    .local v14, enable:Z
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDeleteAll:Z

    if-eqz v1, :cond_3

    .line 802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 808
    :goto_2
    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lcom/htc/album/modules/ui/widget/FooterButton;->setTextString(Ljava/lang/String;)V

    .line 809
    invoke-virtual {v9, v14}, Lcom/htc/album/modules/ui/widget/FooterButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 789
    .end local v14           #enable:Z
    .end local v20           #numPick:I
    :cond_2
    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x2040214

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    goto :goto_1

    .line 793
    .restart local v20       #numPick:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 805
    .restart local v14       #enable:Z
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 806
    if-eqz v20, :cond_4

    const/4 v14, 0x1

    :goto_3
    goto :goto_2

    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    .line 817
    .end local v9           #btnConfirm:Lcom/htc/album/modules/ui/widget/FooterButton;
    .end local v14           #enable:Z
    .end local v20           #numPick:I
    .end local v26           #textConfirm:Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v21

    check-cast v21, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 818
    .local v21, shareBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    if-eqz v18, :cond_6

    .line 820
    if-lez v27, :cond_6

    .line 822
    invoke-virtual/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getSharableImageCount()I

    move-result v1

    if-gtz v1, :cond_6

    invoke-virtual/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getSharableVideoCount()I

    move-result v1

    if-gtz v1, :cond_6

    .line 823
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->removeButton(I)V

    .line 831
    :cond_6
    if-eqz v16, :cond_f

    .line 832
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Delete_Dark_Rest(Landroid/content/Context;)I

    move-result v5

    const v6, 0x2040272

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 839
    :goto_4
    const/16 v25, 0x1

    .line 840
    .local v25, showSlideShow:Z
    const-string v1, "com.htc.HTCAlbum.ALL_VIDEOS"

    invoke-virtual {v11}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    if-eqz v18, :cond_7

    invoke-virtual/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getVideoCount()I

    move-result v1

    move/from16 v0, v27

    if-eq v1, v0, :cond_8

    :cond_7
    const/4 v1, 0x1

    invoke-static {v7}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->isDLNAPlaying(Landroid/content/Context;)Z

    move-result v3

    if-ne v1, v3, :cond_9

    .line 846
    :cond_8
    const/16 v25, 0x0

    .line 848
    :cond_9
    sub-int v1, v13, v27

    if-nez v1, :cond_a

    .line 849
    const/16 v25, 0x0

    .line 850
    const/4 v15, 0x0

    .local v15, i:I
    :goto_5
    move/from16 v0, v27

    if-ge v15, v0, :cond_a

    .line 851
    invoke-virtual {v8, v15}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    .line 852
    const/16 v25, 0x1

    .line 858
    .end local v15           #i:I
    :cond_a
    if-eqz v25, :cond_11

    .line 860
    const/4 v3, 0x0

    const/16 v4, 0xd

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Slideshow_Dark_Rest(Landroid/content/Context;)I

    move-result v5

    const v6, 0x7f0a0134

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 875
    :cond_b
    :goto_6
    invoke-virtual/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getNonDrmVideoCount()I

    move-result v1

    add-int/2addr v1, v13

    move/from16 v0, v27

    if-eq v1, v0, :cond_12

    const/16 v23, 0x1

    .line 876
    .local v23, showPrint:Z
    :goto_7
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v1, :cond_13

    move/from16 v0, v27

    if-eq v13, v0, :cond_13

    const/16 v24, 0x1

    .line 877
    .local v24, showSelectPlayer:Z
    :goto_8
    sub-int v1, v13, v27

    if-eqz v1, :cond_14

    invoke-virtual {v11}, Lcom/htc/album/modules/collection/Collection;->isManageable()Z

    move-result v1

    if-eqz v1, :cond_14

    const/16 v22, 0x1

    .line 878
    .local v22, showFileOperations:Z
    :goto_9
    const/4 v1, 0x1

    move/from16 v0, v23

    if-eq v1, v0, :cond_c

    const/4 v1, 0x1

    move/from16 v0, v24

    if-eq v1, v0, :cond_c

    if-eqz v22, :cond_0

    .line 880
    :cond_c
    const/4 v1, 0x0

    const/16 v3, 0x11

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v19

    check-cast v19, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 884
    .local v19, moreBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    if-eqz v24, :cond_d

    .line 886
    const/16 v1, 0xf

    const/4 v3, 0x0

    const v4, 0x7f0a00da

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v3, v4}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 892
    :cond_d
    if-eqz v22, :cond_e

    .line 894
    const/16 v1, 0x3e

    const/4 v3, 0x0

    const v4, 0x2040304

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v3, v4}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 895
    const/16 v1, 0x3f

    const/4 v3, 0x0

    const v4, 0x7f0a0186

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v3, v4}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 898
    :cond_e
    if-eqz v23, :cond_0

    .line 900
    invoke-static {v2}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isPrintExists(Landroid/content/Context;)Z

    move-result v17

    .line 901
    .local v17, isPrintExists:Z
    if-eqz v17, :cond_0

    .line 902
    const/16 v1, 0x12

    const/4 v3, 0x0

    const v4, 0x7f0a0135

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v3, v4}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    goto/16 :goto_0

    .line 834
    .end local v17           #isPrintExists:Z
    .end local v19           #moreBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    .end local v22           #showFileOperations:Z
    .end local v23           #showPrint:Z
    .end local v24           #showSelectPlayer:Z
    .end local v25           #showSlideShow:Z
    :cond_f
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Delete_Dark_Rest(Landroid/content/Context;)I

    move-result v5

    const v6, 0x7f0a0131

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    goto/16 :goto_4

    .line 850
    .restart local v15       #i:I
    .restart local v25       #showSlideShow:Z
    :cond_10
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5

    .line 865
    .end local v15           #i:I
    :cond_11
    invoke-static {v7}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->isDLNAPlaying(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 867
    const/4 v3, 0x0

    const/16 v4, 0xd

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Slideshow_Dark_Rest(Landroid/content/Context;)I

    move-result v5

    const v6, 0x7f0a0134

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v10

    check-cast v10, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 868
    .local v10, btnSlideshow:Lcom/htc/album/modules/ui/widget/FooterButton;
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/htc/album/modules/ui/widget/FooterButton;->setEnabled(Z)V

    goto/16 :goto_6

    .line 875
    .end local v10           #btnSlideshow:Lcom/htc/album/modules/ui/widget/FooterButton;
    :cond_12
    const/16 v23, 0x0

    goto/16 :goto_7

    .line 876
    .restart local v23       #showPrint:Z
    :cond_13
    const/16 v24, 0x0

    goto/16 :goto_8

    .line 877
    .restart local v24       #showSelectPlayer:Z
    :cond_14
    const/16 v22, 0x0

    goto/16 :goto_9
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2828
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->isObservedDataChange()Z

    move-result v1

    if-ne v2, v1, :cond_0

    .line 2829
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->clearDelListWhenAdapterChanged(Z)V

    .line 2832
    :cond_0
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onResume()V

    .line 2835
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->isDLNAPlaying(Landroid/content/Context;)Z

    move-result v0

    .line 2836
    .local v0, bIsDLNAPlaying:Z
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDLNAPlaying:Z

    if-eq v1, v0, :cond_1

    .line 2837
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->invalidateControlBars()V

    .line 2838
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDLNAPlaying:Z

    .line 2840
    :cond_1
    return-void
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 3020
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v1, "[HTCAlbum][SceneLocalPhotoThumbnail][onSendToBackground]:"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3021
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onSendToBackground(Landroid/os/Bundle;)V

    .line 3022
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 2883
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onSendToForeground(Landroid/os/Bundle;)V

    .line 2885
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsInitDLNAPlaying:Z

    if-nez v1, :cond_0

    .line 2887
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->isDLNAPlaying(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDLNAPlaying:Z

    .line 2888
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsInitDLNAPlaying:Z

    .line 2892
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->isDLNAPlaying(Landroid/content/Context;)Z

    move-result v0

    .line 2893
    .local v0, bIsDLNAPlaying:Z
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDLNAPlaying:Z

    if-eq v1, v0, :cond_1

    .line 2894
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->invalidateControlBars()V

    .line 2895
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsDLNAPlaying:Z

    .line 2897
    :cond_1
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onTickleScreenRender()V

    .line 2898
    return-void
.end method

.method public onShare(I)V
    .locals 3
    .parameter "selection"

    .prologue
    .line 911
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v1, "[HTCAlbum][SceneLocalPhotoThumbnail][onShare]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareItemClickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;

    invoke-virtual {v0, v1, p1, v2}, Lcom/htc/album/helper/ShareMenuManager;->onLocalShareFolderClick(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)V

    .line 916
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 2844
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    if-eqz v0, :cond_0

    .line 2845
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->cancelDeleteMedias()V

    .line 2846
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->onCancelDeleteSingle()V

    .line 2847
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->onDismissAllFragmentDialog()V

    .line 2849
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteContinuousShotDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteContinuousShotDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2850
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteContinuousShotDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 2852
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    if-eqz v0, :cond_2

    .line 2853
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/FileOperationManager;->cancel()V

    .line 2854
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOperationDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    if-eqz v0, :cond_3

    .line 2855
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOperationDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/FileOperationDialogManager;->cancel()V

    .line 2856
    :cond_3
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onStop()V

    .line 2857
    return-void
.end method

.method public onTVReadyToPlay()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 526
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->getDLNAOutputIndex()I

    move-result v4

    .line 527
    .local v4, outputIndex:I
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v5, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 529
    .local v3, outputImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->isDRMOnlyCollection()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 531
    :cond_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 532
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 550
    .end local v0           #activity:Landroid/app/Activity;
    .end local v3           #outputImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v4           #outputIndex:I
    :goto_0
    iput v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    .line 552
    return-void

    .line 534
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v3       #outputImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v4       #outputIndex:I
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    check-cast v1, Lcom/htc/album/Animation/animationSetGridview;

    .line 535
    .local v1, animationSet:Lcom/htc/album/Animation/animationSetGridview;
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mItemClickPosition:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v1, v4, v5}, Lcom/htc/album/Animation/animationSetGridview;->setFocused(ILcom/htc/sunnyCore/view/Vector3F;)V

    .line 537
    invoke-direct {p0, v4, v0, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onViewMediaContent(ILandroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 544
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #animationSet:Lcom/htc/album/Animation/animationSetGridview;
    .end local v3           #outputImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v4           #outputIndex:I
    :catch_0
    move-exception v2

    .line 546
    .local v2, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "SceneLocalPhotoThumbnail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onTVReadyToPlay] Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 550
    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    iput v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mTVOutIndex:I

    throw v5

    .line 541
    .restart local v3       #outputImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v4       #outputIndex:I
    :cond_2
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {p0, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDMRChanged(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->cancelDeleteMedias()V

    .line 699
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->release()V

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/ImageProcessManager;->release()V

    .line 704
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOnScrollListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;)V

    .line 705
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onUnbindAdapter()V

    .line 706
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1168
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1164
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 2481
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2483
    const/4 v0, 0x0

    .line 2487
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public requestTVDisplay()Z
    .locals 1

    .prologue
    .line 517
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2265
    const-string v0, "SceneLocalPhotoThumbnail"

    return-object v0
.end method

.method showSelectAllInOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .parameter "menu"

    .prologue
    .line 1472
    const/4 v1, 0x0

    .line 1474
    .local v1, item:Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v0

    .line 1475
    .local v0, PickUpperBound:I
    const/4 v3, -0x1

    sget v4, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMaxPickCount:I

    if-eq v3, v4, :cond_0

    sget v3, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMaxPickCount:I

    if-le v3, v0, :cond_1

    .line 1476
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDelPickerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1478
    .local v2, pickCount:I
    invoke-static {p1, v0, v2}, Lcom/htc/album/picker/PickerItemBaseScene;->prepareSelectMenuItem(Landroid/view/Menu;II)Z

    .line 1480
    return-void

    .line 1475
    .end local v2           #pickCount:I
    :cond_1
    sget v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMaxPickCount:I

    goto :goto_0
.end method
