.class public Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;
.super Lcom/htc/album/TabPluginDevice/CollectionBaseScene;
.source "SceneLocalPhotoFullscreen.java"

# interfaces
.implements Lcom/htc/album/helper/INfcSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$asyncReqConsumeInkThread;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$PenMenuActionNotifier;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$PaintUpdateListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$PaintDrawListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageAnimationListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemTouchedListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FilmstripItemSelectedListner;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ViewScrollStateChangedListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FileOperationListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageProcessListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DeleteListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmRenewRightListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/TabPluginDevice/CollectionBaseScene",
        "<",
        "Lcom/htc/sunny2/fullfilmview/FullFilmView;",
        ">;",
        "Lcom/htc/album/helper/INfcSupport;"
    }
.end annotation


# static fields
.field private static final DRM_FILENAME_BAR_FULLFILM_VIEW:I = 0x3

.field private static final FOOTER_BAR_LOCAL_FULLFILM_VIEW:I = 0x1

.field private static final HEADER_BAR_LOCAL_FULLFILM_VIEW:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "SceneLocalPhotoFullscreen"

.field private static final RST_ON_BACK:I = 0x1

.field private static final RST_ON_BACK_BTN_PRESSED:I = 0x0

.field protected static final SW_BUTTON_OFF:I = 0x1

.field protected static final SW_BUTTON_ON:I = 0x0

.field public static final TIMER_PROGRESS_LOADING:I = 0x258

.field private static final TIMER_REQUEST_DECODE_EXTREME_QUALITY:I


# instance fields
.field private final DEBUG:Z

.field private mActionBarVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

.field private mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

.field protected mAnimationState:I

.field private mContinuousIndicator:Landroid/view/ViewGroup;

.field private mCurrentAnimState:I

.field private mDeleteContinuousShotDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

.field private mDoItemClickWhenBindAdapter:Z

.field private mDrmBackPreviosTemplate:Z

.field private mDrmDecoded:Z

.field private mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

.field private mDrmItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;

.field private mDrmRenewRightListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmRenewRightListener;

.field private mDrmVideoRefresh:Z

.field protected mEditedItemUri:Ljava/lang/String;

.field private mEnablePaintView:Z

.field protected mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

.field protected mFileOperationDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

.field private mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

.field private mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;

.field private mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

.field private mIsAnimateDispatcherSetListener:Z

.field private mIsForeground:Z

.field private mIsFromGridView:Z

.field private mIsPaintInitialized:Z

.field private mIsShowContinuousIndicator:Z

.field protected mMenuMgr:Lcom/htc/album/helper/MenuManager;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOnItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;

.field private mOnItemTouchedListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemTouchedListener;

.field private mOrientation:I

.field private mOrientationHasChanged:Z

.field private mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

.field private mPaintViewAttached:Z

.field protected mSWButtonState:I

.field private mShareItemClickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;

.field private mShareManager:Lcom/htc/album/helper/ShareMenuManager;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mStartupIndex:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;-><init>()V

    .line 124
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->DEBUG:Z

    .line 125
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    .line 126
    iput v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOrientation:I

    .line 130
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    .line 131
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOrientationHasChanged:Z

    .line 132
    new-instance v0, Lcom/htc/album/helper/ShareMenuManager;

    invoke-direct {v0}, Lcom/htc/album/helper/ShareMenuManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    .line 133
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 134
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    .line 135
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOnItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;

    .line 136
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemTouchedListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemTouchedListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOnItemTouchedListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemTouchedListener;

    .line 137
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;

    .line 138
    new-instance v0, Lcom/htc/album/helper/MenuManager;

    invoke-direct {v0}, Lcom/htc/album/helper/MenuManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    .line 139
    iput v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSWButtonState:I

    .line 140
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    .line 141
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDoItemClickWhenBindAdapter:Z

    .line 143
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmRenewRightListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmRenewRightListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmRenewRightListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmRenewRightListener;

    .line 144
    new-instance v0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    invoke-direct {v0}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    .line 145
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsPaintInitialized:Z

    .line 146
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsAnimateDispatcherSetListener:Z

    .line 147
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;

    .line 156
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsFromGridView:Z

    .line 158
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mActionBarVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

    .line 160
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    .line 161
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsShowContinuousIndicator:Z

    .line 162
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mEnablePaintView:Z

    .line 163
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsForeground:Z

    .line 164
    iput v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mStartupIndex:I

    .line 165
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteContinuousShotDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 169
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    .line 170
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFileOperationDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    .line 172
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mEditedItemUri:Ljava/lang/String;

    .line 175
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 1598
    iput v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimationState:I

    .line 2678
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$8;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$8;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShareItemClickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;

    .line 4793
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintViewAttached:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$10100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->invalidateControlBars()V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->swithToBurst()V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->doShowDrmFileNameBar(ZZ)V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->doDeleteContinuousShot()V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onClickShareItemSelected(Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mEnablePaintView:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/PaintManager/HtcPaintManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/PaintManager/HtcPaintManager;)Lcom/htc/album/PaintManager/HtcPaintManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsPaintInitialized:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsPaintInitialized:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsAnimateDispatcherSetListener:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/PaintManager/ImageAnimateDispatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmDecoded:Z

    return v0
.end method

.method static synthetic access$5202(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmDecoded:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setEnableControlBarAnimation(Z)V

    return-void
.end method

.method static synthetic access$5600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->hideControlBars()V

    return-void
.end method

.method static synthetic access$5700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmFileNameBar(ZZ)V

    return-void
.end method

.method static synthetic access$5900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showContinuousShotIndicator(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOnItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setEnableControlBarAnimation(Z)V

    return-void
.end method

.method static synthetic access$6100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->hideControlBars()V

    return-void
.end method

.method static synthetic access$6200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setEnableControlBarAnimation(Z)V

    return-void
.end method

.method static synthetic access$6400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOrientationHasChanged:Z

    return v0
.end method

.method static synthetic access$6402(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOrientationHasChanged:Z

    return p1
.end method

.method static synthetic access$6500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->doSimulateScreenTouched(IZ)V

    return-void
.end method

.method static synthetic access$7500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isDRMPressed(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmBackPreviosTemplate:Z

    return v0
.end method

.method static synthetic access$8302(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmBackPreviosTemplate:Z

    return p1
.end method

.method static synthetic access$8400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onHandleCacheStateChanged(II)V

    return-void
.end method

.method static synthetic access$9900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method private attachPaintView(Z)V
    .locals 0
    .parameter "attach"

    .prologue
    .line 4809
    return-void
.end method

.method private doDeleteContinuousShot()V
    .locals 9

    .prologue
    .line 2492
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2493
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 2494
    const-string v6, "SceneLocalPhotoFullscreen"

    const-string v7, "[HTCAlbum][SceneLocalPhotoFullscreen][onDeleteContinuousShot] -: Activity is null"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2516
    :goto_0
    return-void

    .line 2498
    :cond_0
    if-nez v0, :cond_1

    .line 2500
    const-string v6, "SceneLocalPhotoFullscreen"

    const-string v7, "[HTCAlbum][SceneLocalPhotoFullscreen][onDeleteContinuousShot] -: Context is null"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2504
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v4

    .line 2505
    .local v4, position:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2507
    .local v5, selectedImg:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 2508
    .local v1, bucketId:Ljava/lang/String;
    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 2510
    .local v3, displayName:Ljava/lang/String;
    const-string v6, "SceneLocalPhotoFullscreen"

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

    .line 2511
    const-string v6, "SceneLocalPhotoFullscreen"

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

    .line 2513
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2514
    .local v2, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2515
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v6, v2}, Lcom/htc/album/helper/DeleteManager;->deleteMedias(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private doShowDrmFileNameBar(ZZ)V
    .locals 13
    .parameter "bIsShow"
    .parameter "bForce"

    .prologue
    const/16 v12, 0x8

    const/4 v3, 0x1

    const/16 v11, 0xc

    const/4 v10, 0x2

    const/4 v8, 0x0

    .line 1172
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    if-nez v6, :cond_2

    .line 1174
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v6, :cond_1

    .line 1246
    :cond_0
    :goto_0
    return-void

    .line 1179
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1180
    .local v0, activityRef:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1185
    new-instance v6, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    const/4 v7, 0x3

    const v9, 0x7f030033

    invoke-direct {v6, v7, v0, v9}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;-><init>(ILandroid/content/Context;I)V

    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    .line 1186
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 1188
    .local v5, root:Landroid/widget/RelativeLayout;
    if-eqz v5, :cond_2

    .line 1190
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1194
    :try_start_0
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v4, v6, Landroid/content/res/Configuration;->orientation:I

    .line 1195
    .local v4, ori:I
    if-ne v4, v10, :cond_4

    .line 1197
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v6}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1198
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v6}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v9

    invoke-virtual {v6, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1199
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v6}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1220
    .end local v4           #ori:I
    :goto_1
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v6}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getRootView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v7}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1224
    .end local v0           #activityRef:Landroid/app/Activity;
    .end local v5           #root:Landroid/widget/RelativeLayout;
    :cond_2
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v6, :cond_0

    .line 1229
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v7, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1230
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1232
    :cond_3
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v6, v12}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 1203
    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v0       #activityRef:Landroid/app/Activity;
    .restart local v4       #ori:I
    .restart local v5       #root:Landroid/widget/RelativeLayout;
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v6}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v9

    invoke-virtual {v6, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1204
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v6}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1205
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v6}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    const/16 v7, 0xc

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1208
    .end local v4           #ori:I
    :catch_0
    move-exception v1

    .line 1210
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "SceneLocalPhotoFullscreen"

    const-string v7, "[HtcAlbum][SceneLocalPhotoFullScreen][doShowDrmFileNameBar]add DRM file name bar failed"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1217
    .end local v1           #e:Ljava/lang/Exception;
    :cond_5
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v6}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 1236
    .end local v0           #activityRef:Landroid/app/Activity;
    .end local v5           #root:Landroid/widget/RelativeLayout;
    .restart local v2       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_6
    if-eqz p1, :cond_7

    .line 1238
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v6, v8}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 1242
    :cond_7
    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v6

    if-ne v6, v3, :cond_9

    .line 1243
    .local v3, isDRMFL:Z
    :goto_2
    iget-boolean v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmDecoded:Z

    if-nez v6, :cond_8

    if-nez v3, :cond_8

    if-eqz p2, :cond_0

    .line 1244
    :cond_8
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v6, v12}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->setVisibility(I)V

    goto/16 :goto_0

    .end local v3           #isDRMFL:Z
    :cond_9
    move v3, v8

    .line 1242
    goto :goto_2
.end method

.method private doSimulateScreenTouched(IZ)V
    .locals 17
    .parameter "position"
    .parameter "isFromOnPrepareOptionsMenu"

    .prologue
    .line 3414
    const/4 v3, 0x0

    .line 3415
    .local v3, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .end local v3           #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .restart local v3       #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v3, :cond_1

    .line 3417
    const-string v14, "SceneLocalPhotoFullscreen"

    const-string v15, "[HTCAlbum][SceneLocalPhotoFullscreen][doSimulateScreenTouched]adapter is null"

    invoke-static {v14, v15}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3562
    :cond_0
    :goto_0
    return-void

    .line 3421
    :cond_1
    const/4 v10, 0x0

    .line 3422
    .local v10, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v14, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v10

    .end local v10           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    check-cast v10, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .restart local v10       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v10, :cond_2

    .line 3424
    const-string v14, "SceneLocalPhotoFullscreen"

    const-string v15, "[HTCAlbum][SceneLocalPhotoFullscreen][doSimulateScreenTouched]image is null"

    invoke-static {v14, v15}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3428
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v14, :cond_3

    .line 3430
    const-string v14, "SceneLocalPhotoFullscreen"

    const-string v15, "[HTCAlbum][SceneLocalPhotoFullscreen][doSimulateScreenTouched]mSceneControl is null"

    invoke-static {v14, v15}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3434
    :cond_3
    const/4 v2, 0x0

    .line 3435
    .local v2, activity:Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v14}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_4

    .line 3437
    const-string v14, "SceneLocalPhotoFullscreen"

    const-string v15, "[HTCAlbum][SceneLocalPhotoFullscreen][doSimulateScreenTouched]activity is null"

    invoke-static {v14, v15}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3441
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v14, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v14}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v14

    instance-of v6, v14, Lcom/htc/album/addons/SingleCollection;

    .line 3443
    .local v6, bIsShowSingle:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isControlBarShowing()Z

    move-result v4

    .line 3445
    .local v4, bControlBarShowing:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v14, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v14}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v14

    shr-int/lit8 v12, v14, 0x1

    .line 3446
    .local v12, posX:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v14, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v14}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v14

    shr-int/lit8 v13, v14, 0x1

    .line 3448
    .local v13, posY:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v14, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v14}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getItemClickInfo()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    move-result-object v14

    iget-object v11, v14, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->motionEvent:Landroid/view/MotionEvent;

    .line 3449
    .local v11, me:Landroid/view/MotionEvent;
    if-eqz v11, :cond_5

    .line 3451
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v12, v14

    .line 3452
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v13, v14

    .line 3455
    :cond_5
    const/4 v5, 0x0

    .line 3456
    .local v5, bIndicatorClicked:Z
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDoItemClickWhenBindAdapter:Z

    if-eqz v14, :cond_e

    .line 3458
    const/4 v5, 0x1

    .line 3469
    :goto_1
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 3470
    .local v7, bundle:Landroid/os/Bundle;
    const-string v14, "index_id"

    move/from16 v0, p1

    invoke-virtual {v7, v14, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3471
    const-string v14, "folder_type"

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3472
    const-string v14, "key_folder_name"

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3473
    const-string v14, "key_bucket_id"

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3474
    const-string v14, "position"

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3476
    const/4 v9, 0x0

    .line 3477
    .local v9, goPlay:Z
    if-eqz v5, :cond_7

    if-eqz v10, :cond_7

    .line 3479
    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v14

    if-eqz v14, :cond_10

    .line 3481
    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 3483
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmDecoded:Z

    .line 3484
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmVideoRefresh:Z

    .line 3487
    :cond_6
    invoke-static {v2, v10, v7}, Lcom/htc/album/helper/MenuManager;->launchVideo(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/os/Bundle;)V

    .line 3488
    const/4 v9, 0x1

    .line 3515
    :cond_7
    :goto_2
    if-nez v9, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDoItemClickWhenBindAdapter:Z

    if-nez v14, :cond_0

    .line 3517
    const/16 v14, 0x4e3c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRemoveMessage(I)V

    .line 3518
    if-nez v4, :cond_8

    .line 3520
    const/16 v14, 0x4e3c

    const/4 v15, 0x0

    const/16 v16, 0x1388

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    .line 3523
    :cond_8
    if-eqz p2, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v14}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->isInvalidateOptionsMenu()Z

    move-result v14

    if-nez v14, :cond_0

    .line 3525
    :cond_9
    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v14

    if-eqz v14, :cond_b

    if-nez v6, :cond_b

    .line 3527
    if-nez v4, :cond_13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDoItemClickWhenBindAdapter:Z

    if-eqz v14, :cond_a

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v14

    if-eqz v14, :cond_a

    check-cast v10, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    .end local v10           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-virtual {v10}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_13

    .line 3529
    :cond_a
    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmFileNameBar(ZZ)V

    .line 3530
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v14, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->showDRMIndicator(Z)V

    .line 3540
    :cond_b
    :goto_3
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v14

    if-eqz v14, :cond_c

    if-nez p2, :cond_d

    .line 3542
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->toggleControlBarsVisibility()V

    .line 3545
    :cond_d
    if-nez v4, :cond_14

    .line 3547
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showContinuousShotIndicator(Z)V

    goto/16 :goto_0

    .line 3460
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v9           #goPlay:Z
    .restart local v10       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_e
    if-eqz p2, :cond_f

    .line 3462
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3466
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isHitIndicator(II)Z

    move-result v5

    goto/16 :goto_1

    .line 3490
    .restart local v7       #bundle:Landroid/os/Bundle;
    .restart local v9       #goPlay:Z
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmConsumeDialog(ILcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 3492
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 3494
    :cond_11
    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isGif()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 3496
    const/4 v8, -0x1

    .line 3497
    .local v8, count:I
    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v14

    if-eqz v14, :cond_12

    .line 3499
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmDecoded:Z

    move-object v14, v10

    .line 3500
    check-cast v14, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v14}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getFrameCount()I

    move-result v8

    .line 3507
    :goto_4
    const/4 v14, 0x1

    if-le v8, v14, :cond_7

    .line 3509
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v14, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v14}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v14

    invoke-static {v2, v10, v14, v7}, Lcom/htc/album/helper/MenuManager;->launchGif(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/opensense2/album/util/ImageManager$IImageList;Landroid/os/Bundle;)V

    .line 3510
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 3504
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v14}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14, v10}, Lcom/htc/opensense2/album/util/ImageUtils;->getGifFrameCount(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v8

    goto :goto_4

    .line 3534
    .end local v8           #count:I
    .end local v10           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_13
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmFileNameBar(ZZ)V

    .line 3535
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v14, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v14}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->hideDRMIndicator()V

    goto :goto_3

    .line 3551
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v14, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v14}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v14

    if-eqz v14, :cond_15

    .line 3553
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showContinuousShotIndicator(Z)V

    goto/16 :goto_0

    .line 3557
    :cond_15
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showContinuousShotIndicator(Z)V

    goto/16 :goto_0
.end method

.method private findPosFromList(I)I
    .locals 6
    .parameter "position"

    .prologue
    .line 4383
    const/4 v2, -0x1

    .line 4384
    .local v2, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 4386
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 4387
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4388
    add-int/lit8 v2, v2, 0x1

    .line 4390
    :cond_0
    if-ne v2, p1, :cond_1

    .line 4395
    .end local v0           #i:I
    .end local v1           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :goto_1
    return v0

    .line 4384
    .restart local v0       #i:I
    .restart local v1       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4394
    .end local v1           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_2
    const-string v3, "SceneLocalPhotoFullscreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneLocalPhotoFullScreen]Not match the item from list: oldPosition "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, p1

    .line 4395
    goto :goto_1
.end method

.method private getStartupIndex()I
    .locals 14

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 4303
    const/4 v6, 0x0

    .line 4304
    .local v6, photoPos:I
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v10}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v3

    .line 4306
    .local v3, intent:Landroid/content/Intent;
    if-nez v3, :cond_0

    move v7, v6

    .line 4378
    .end local v6           #photoPos:I
    .local v7, photoPos:I
    :goto_0
    return v7

    .line 4309
    .end local v7           #photoPos:I
    .restart local v6       #photoPos:I
    :cond_0
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4310
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 4312
    .local v4, intentData:Landroid/net/Uri;
    const-string v10, "com.htc.album.action.DLNA_BROWSE_LOCAL"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "com.htc.album.action.DLNA_VIEW_LOCAL_PHOTO"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 4316
    :cond_1
    const-string v10, "position"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4318
    .local v9, strPos:Ljava/lang/String;
    if-nez v9, :cond_3

    .line 4320
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v12, "itemIndex"

    invoke-virtual {v10, v12, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 4321
    :goto_1
    const-string v10, "SceneLocalPhotoFullscreen"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][SceneLoaclPhotoFullscreen][getStartupIndex]key item index Pos: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    .line 4322
    .end local v6           #photoPos:I
    .restart local v7       #photoPos:I
    goto :goto_0

    .end local v7           #photoPos:I
    .restart local v6       #photoPos:I
    :cond_2
    move v6, v11

    .line 4320
    goto :goto_1

    .line 4325
    :cond_3
    const/4 v8, 0x0

    .line 4328
    .local v8, pos:I
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 4329
    const-string v10, "SceneLocalPhotoFullscreen"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][SceneLocalPhotoFullscreen][getStartupIndex]strPos:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4331
    if-eqz v8, :cond_4

    .line 4333
    invoke-direct {p0, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->findPosFromList(I)I

    move-result v8

    .line 4336
    :cond_4
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v10, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-lt v8, v10, :cond_5

    .line 4337
    const/4 v8, 0x0

    .line 4345
    :cond_5
    :goto_2
    move v6, v8

    .line 4347
    const-string v10, "position"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 4372
    .end local v8           #pos:I
    .end local v9           #strPos:Ljava/lang/String;
    :goto_3
    if-gez v6, :cond_6

    .line 4373
    const/4 v6, 0x0

    .line 4375
    :cond_6
    const-string v10, "SceneLocalPhotoFullscreen"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[getStartupIndex] poistion:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4376
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-eqz v10, :cond_7

    .line 4377
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v11, "itemIndex"

    invoke-virtual {v10, v11, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_7
    move v7, v6

    .line 4378
    .end local v6           #photoPos:I
    .restart local v7       #photoPos:I
    goto/16 :goto_0

    .line 4339
    .end local v7           #photoPos:I
    .restart local v6       #photoPos:I
    .restart local v8       #pos:I
    .restart local v9       #strPos:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 4341
    .local v1, e:Ljava/lang/NumberFormatException;
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v12, "itemIndex"

    invoke-virtual {v10, v12, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 4342
    :goto_4
    const-string v10, "SceneLocalPhotoFullscreen"

    const-string v11, "[HTCAlbum][SceneLocalPhotoFullscreen][getStartupIndex]NumberFormatException"

    invoke-static {v10, v11}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move v8, v11

    .line 4341
    goto :goto_4

    .line 4349
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v8           #pos:I
    .end local v9           #strPos:Ljava/lang/String;
    :cond_9
    const-string v10, "com.htc.album.action.VIEW_FOLDER"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 4352
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4353
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v10, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v10, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->queryPosByUri(Landroid/net/Uri;)I

    move-result v6

    :goto_5
    goto :goto_3

    :cond_a
    move v6, v11

    goto :goto_5

    .line 4355
    :cond_b
    const-string v10, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v12, v10, :cond_f

    sget-object v10, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v10, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eq v12, v10, :cond_c

    const-string v10, "null"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v12, v10, :cond_f

    .line 4359
    :cond_c
    const-string v10, "camera_last_file_path"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4360
    .local v5, path:Ljava/lang/String;
    if-nez v5, :cond_d

    .line 4361
    .local v2, fileUri:Landroid/net/Uri;
    :goto_6
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v10, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v10, v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->queryPosByUri(Landroid/net/Uri;)I

    move-result v6

    .line 4362
    :goto_7
    goto/16 :goto_3

    .line 4360
    .end local v2           #fileUri:Landroid/net/Uri;
    :cond_d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "file://"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_6

    .restart local v2       #fileUri:Landroid/net/Uri;
    :cond_e
    move v6, v11

    .line 4361
    goto :goto_7

    .line 4363
    .end local v2           #fileUri:Landroid/net/Uri;
    .end local v5           #path:Ljava/lang/String;
    :cond_f
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v10, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/album/modules/collection/Collection;->showLatest()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 4365
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v10, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v10

    add-int/lit8 v6, v10, -0x1

    goto/16 :goto_3

    .line 4369
    :cond_10
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v12, "itemIndex"

    invoke-virtual {v10, v12, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    :goto_8
    goto/16 :goto_3

    :cond_11
    move v6, v11

    goto :goto_8
.end method

.method private initFileOperationManager()V
    .locals 5

    .prologue
    .line 1908
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_1

    .line 1910
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HTCAlbum][SceneLocalPhotoFullscreen][initFileOperationManager] scene control is null."

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1920
    :cond_0
    :goto_0
    return-void

    .line 1913
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v1

    .line 1914
    .local v1, fragment:Landroid/app/Fragment;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 1915
    .local v0, collection:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->isManageable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1917
    new-instance v2, Lcom/htc/album/helper/FileOperationDialogManager;

    invoke-direct {v2}, Lcom/htc/album/helper/FileOperationDialogManager;-><init>()V

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFileOperationDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    .line 1918
    new-instance v2, Lcom/htc/album/helper/FileOperationManager;

    new-instance v3, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FileOperationListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FileOperationListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    invoke-direct {v2, v1, v3}, Lcom/htc/album/helper/FileOperationManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;)V

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    goto :goto_0
.end method

.method private isCurrentItemCanShow3D()Z
    .locals 6

    .prologue
    .line 3799
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    .line 3800
    .local v3, nIndex:I
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 3801
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-eqz v0, :cond_3

    .line 3803
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v2

    check-cast v2, Lcom/htc/sunnyCore/IMediaList;

    .line 3804
    .local v2, mediaList:Lcom/htc/sunnyCore/IMediaList;
    if-eqz v2, :cond_2

    .line 3806
    invoke-interface {v2, v3}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    .line 3807
    .local v1, data:Lcom/htc/sunnyCore/IMediaData;
    if-eqz v1, :cond_0

    .line 3809
    instance-of v4, v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v4, :cond_1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .end local v1           #data:Lcom/htc/sunnyCore/IMediaData;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3811
    const/4 v4, 0x1

    .line 3828
    .end local v2           #mediaList:Lcom/htc/sunnyCore/IMediaList;
    :goto_0
    return v4

    .line 3816
    .restart local v1       #data:Lcom/htc/sunnyCore/IMediaData;
    .restart local v2       #mediaList:Lcom/htc/sunnyCore/IMediaList;
    :cond_0
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[HtcAlbum][SceneLocalPhotoFullScreen][isCurrentItemCanShow3D]data is null"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3828
    .end local v1           #data:Lcom/htc/sunnyCore/IMediaData;
    .end local v2           #mediaList:Lcom/htc/sunnyCore/IMediaList;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 3821
    .restart local v2       #mediaList:Lcom/htc/sunnyCore/IMediaList;
    :cond_2
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[HtcAlbum][SceneLocalPhotoFullScreen][isCurrentItemCanShow3D]mediaList is null"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3826
    .end local v2           #mediaList:Lcom/htc/sunnyCore/IMediaList;
    :cond_3
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[HtcAlbum][SceneLocalPhotoFullScreen][isCurrentItemCanShow3D]mAdapter is null"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isCurrentItemVideo()Z
    .locals 6

    .prologue
    .line 3833
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    .line 3834
    .local v3, nIndex:I
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 3835
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-eqz v0, :cond_3

    .line 3837
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v2

    check-cast v2, Lcom/htc/sunnyCore/IMediaList;

    .line 3838
    .local v2, mediaList:Lcom/htc/sunnyCore/IMediaList;
    if-eqz v2, :cond_2

    .line 3840
    invoke-interface {v2, v3}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    .line 3841
    .local v1, data:Lcom/htc/sunnyCore/IMediaData;
    if-eqz v1, :cond_0

    .line 3843
    instance-of v4, v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v4, :cond_1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .end local v1           #data:Lcom/htc/sunnyCore/IMediaData;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3845
    const/4 v4, 0x1

    .line 3862
    .end local v2           #mediaList:Lcom/htc/sunnyCore/IMediaList;
    :goto_0
    return v4

    .line 3850
    .restart local v1       #data:Lcom/htc/sunnyCore/IMediaData;
    .restart local v2       #mediaList:Lcom/htc/sunnyCore/IMediaList;
    :cond_0
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[HtcAlbum][SceneLocalPhotoFullScreen][isCurrentItemVideo]data is null"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3862
    .end local v1           #data:Lcom/htc/sunnyCore/IMediaData;
    .end local v2           #mediaList:Lcom/htc/sunnyCore/IMediaList;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 3855
    .restart local v2       #mediaList:Lcom/htc/sunnyCore/IMediaList;
    :cond_2
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[HtcAlbum][SceneLocalPhotoFullScreen][isCurrentItemVideo]mediaList is null"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3860
    .end local v2           #mediaList:Lcom/htc/sunnyCore/IMediaList;
    :cond_3
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[HtcAlbum][SceneLocalPhotoFullScreen][isCurrentItemVideo]mAdapter is null"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isDRMPressed(I)Z
    .locals 8
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 3607
    const/4 v0, 0x0

    .line 3608
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .end local v0           #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .restart local v0       #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v0, :cond_1

    .line 3610
    const-string v6, "SceneLocalPhotoFullscreen"

    const-string v7, "[HTCAlbum][SceneLocalPhotoFullscreen][doSimulateScreenPressed]adapter is null"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3644
    :cond_0
    :goto_0
    return v1

    .line 3614
    :cond_1
    const/4 v2, 0x0

    .line 3615
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v2

    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .restart local v2       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v2, :cond_2

    .line 3617
    const-string v6, "SceneLocalPhotoFullscreen"

    const-string v7, "[HTCAlbum][SceneLocalPhotoFullscreen][doSimulateScreenPressed]image is null"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3621
    :cond_2
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3624
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v6

    shr-int/lit8 v4, v6, 0x1

    .line 3625
    .local v4, posX:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v6

    shr-int/lit8 v5, v6, 0x1

    .line 3627
    .local v5, posY:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getItemClickInfo()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    move-result-object v6

    iget-object v3, v6, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->motionEvent:Landroid/view/MotionEvent;

    .line 3628
    .local v3, me:Landroid/view/MotionEvent;
    if-eqz v3, :cond_3

    .line 3630
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 3631
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 3634
    :cond_3
    const/4 v1, 0x0

    .line 3635
    .local v1, bIndicatorPressed:Z
    iget-boolean v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDoItemClickWhenBindAdapter:Z

    if-eqz v6, :cond_4

    .line 3637
    const/4 v1, 0x1

    goto :goto_0

    .line 3641
    :cond_4
    invoke-direct {p0, v4, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isHitIndicator(II)Z

    move-result v1

    goto :goto_0
.end method

.method private isHitIndicator(II)Z
    .locals 21
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 3696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    move-object/from16 v18, v0

    check-cast v18, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v18

    div-int/lit8 v17, v18, 0x5

    .line 3697
    .local v17, wSection:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    move-object/from16 v18, v0

    check-cast v18, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v18

    div-int/lit8 v6, v18, 0x5

    .line 3698
    .local v6, hSection:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    move-object/from16 v18, v0

    check-cast v18, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 3699
    .local v16, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    move-object/from16 v18, v0

    check-cast v18, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v12, v0

    .line 3701
    .local v12, left:I
    sub-int v18, p1, v12

    mul-int/lit8 v19, v17, 0x2

    sub-int v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    const/4 v9, 0x1

    .line 3702
    .local v9, hitX:Z
    :goto_0
    sub-int v18, p2, v16

    mul-int/lit8 v19, v6, 0x2

    sub-int v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v18

    if-ge v0, v6, :cond_4

    const/4 v10, 0x1

    .line 3704
    .local v10, hitY:Z
    :goto_1
    const/4 v11, 0x0

    .line 3705
    .local v11, isDrm:Z
    const/4 v7, 0x0

    .line 3706
    .local v7, hitDrmX:Z
    const/4 v8, 0x0

    .line 3709
    .local v8, hitDrmY:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v18, v0

    check-cast v18, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    move-object/from16 v19, v0

    check-cast v19, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v18

    check-cast v18, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 3716
    :goto_2
    if-eqz v11, :cond_0

    .line 3718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->getScreenDisplayDimension(Landroid/content/Context;)[I

    move-result-object v13

    .line 3719
    .local v13, nScreenDisplay:[I
    const/16 v18, 0x0

    aget v15, v13, v18

    .line 3720
    .local v15, screenw:I
    const/16 v18, 0x1

    aget v14, v13, v18

    .line 3722
    .local v14, screenh:I
    div-int/lit8 v18, v15, 0x2

    sget v19, Lcom/htc/album/AlbumCommon/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_WIDTH:I

    div-int/lit8 v19, v19, 0x2

    sub-int v3, v18, v19

    .line 3723
    .local v3, drmLeft:I
    div-int/lit8 v18, v14, 0x2

    sget v19, Lcom/htc/album/AlbumCommon/LayoutConstants;->DRM_THUMBNAIL_SIZE:I

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f07001f

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v4, v0

    .line 3724
    .local v4, drmTop:I
    sget v5, Lcom/htc/album/AlbumCommon/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_WIDTH:I

    .line 3725
    .local v5, drmWidth:I
    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_HEIGHT:I

    .line 3727
    .local v2, drmHeight:I
    sub-int v18, p1, v3

    if-lez v18, :cond_5

    sub-int v18, p1, v3

    move/from16 v0, v18

    if-ge v0, v5, :cond_5

    const/4 v7, 0x1

    .line 3728
    :goto_3
    sub-int v18, p2, v4

    if-lez v18, :cond_6

    sub-int v18, p2, v4

    move/from16 v0, v18

    if-ge v0, v2, :cond_6

    const/4 v8, 0x1

    .line 3731
    .end local v2           #drmHeight:I
    .end local v3           #drmLeft:I
    .end local v4           #drmTop:I
    .end local v5           #drmWidth:I
    .end local v13           #nScreenDisplay:[I
    .end local v14           #screenh:I
    .end local v15           #screenw:I
    :cond_0
    :goto_4
    if-eqz v9, :cond_1

    if-nez v10, :cond_2

    :cond_1
    if-eqz v7, :cond_7

    if-eqz v8, :cond_7

    :cond_2
    const/16 v18, 0x1

    :goto_5
    return v18

    .line 3701
    .end local v7           #hitDrmX:Z
    .end local v8           #hitDrmY:Z
    .end local v9           #hitX:Z
    .end local v10           #hitY:Z
    .end local v11           #isDrm:Z
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 3702
    .restart local v9       #hitX:Z
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 3727
    .restart local v2       #drmHeight:I
    .restart local v3       #drmLeft:I
    .restart local v4       #drmTop:I
    .restart local v5       #drmWidth:I
    .restart local v7       #hitDrmX:Z
    .restart local v8       #hitDrmY:Z
    .restart local v10       #hitY:Z
    .restart local v11       #isDrm:Z
    .restart local v13       #nScreenDisplay:[I
    .restart local v14       #screenh:I
    .restart local v15       #screenw:I
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 3728
    :cond_6
    const/4 v8, 0x0

    goto :goto_4

    .line 3731
    .end local v2           #drmHeight:I
    .end local v3           #drmLeft:I
    .end local v4           #drmTop:I
    .end local v5           #drmWidth:I
    .end local v13           #nScreenDisplay:[I
    .end local v14           #screenh:I
    .end local v15           #screenw:I
    :cond_7
    const/16 v18, 0x0

    goto :goto_5

    .line 3711
    :catch_0
    move-exception v18

    goto :goto_2
.end method

.method private onCamera()V
    .locals 4

    .prologue
    .line 2587
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 2588
    .local v1, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v2

    .line 2589
    .local v2, folderType:Ljava/lang/String;
    const-string v3, "com.htc.HTCAlbum.SNAPBOOTH"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2591
    check-cast v1, Landroid/app/Activity;

    .end local v1           #context:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoSnapbooth(Landroid/app/Activity;)V

    .line 2603
    :goto_0
    return-void

    .line 2595
    .restart local v1       #context:Landroid/content/Context;
    :cond_0
    const/4 v0, 0x0

    .line 2597
    .local v0, bVideo:Z
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getNonDrmImageCount()I

    move-result v3

    if-gtz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getVideoCount()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v0, 0x1

    .line 2601
    :goto_1
    check-cast v1, Landroid/app/Activity;

    .end local v1           #context:Landroid/content/Context;
    invoke-static {v1, v0}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoCamera(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 2597
    .restart local v1       #context:Landroid/content/Context;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private onClickShareItemSelected(Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V
    .locals 8
    .parameter "dialog"
    .parameter "adapter"
    .parameter "position"

    .prologue
    .line 2689
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2690
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p2, p3}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 2691
    .local v3, ri:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v4

    .line 2692
    .local v4, selectedItemPosition:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2694
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-virtual {p2, p3}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v5

    .line 2696
    .local v5, shareIntent:Landroid/content/Intent;
    const-string v6, "SharedAdapter.KEY_PACKAGE"

    invoke-interface {v3}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2698
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    if-eqz v6, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2700
    :cond_0
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    const/4 v7, 0x2

    invoke-virtual {v6, v7, v4, v5}, Lcom/htc/album/helper/ImageProcessManager;->OnMenuItemSelected(IILandroid/content/Intent;)V

    .line 2716
    :goto_0
    return-void

    .line 2706
    :cond_1
    const/4 v0, 0x0

    .line 2707
    .local v0, activity:Landroid/app/Activity;
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2709
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v6

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v6, v7}, Lcom/htc/album/helper/MenuManager;->doShareSingleMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 2713
    :cond_2
    const-string v6, "SceneLocalPhotoFullscreen"

    const-string v7, "[HTCAlbum][SceneLocalPhotoFullScreens][onClickShareItemSelected]: get activity NG !"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onCrop()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2530
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    .line 2531
    .local v1, pos:I
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2532
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2534
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1, v6}, Lcom/htc/album/helper/ImageProcessManager;->OnMenuItemSelected(IILandroid/content/Intent;)V

    .line 2541
    :goto_0
    return-void

    .line 2538
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x7f00

    invoke-static {v2, v3, v4, v5, v6}, Lcom/htc/album/helper/MenuManager;->launchCropMode(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private onDecodeExtremeQuality(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 4225
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    if-nez v1, :cond_1

    .line 4235
    :cond_0
    :goto_0
    return-void

    .line 4227
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4228
    .local v0, itemIndex:I
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 4230
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setExtremeQualityItemIndex(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4232
    const-string v1, "SceneLocalPhotoFullscreen"

    const-string v2, "[HTCAlbum][SceneLocalPhotoFullScreen][onDecodeExtremeQuality] setExtremeQualityItemIndex fail."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDelete()V
    .locals 4

    .prologue
    .line 2418
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v2, :cond_1

    .line 2420
    :cond_0
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HTCAlbum][SceneLocalPhotoFullscreen][onDelete] mMainView or mAdapter is null"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2445
    :goto_0
    return-void

    .line 2423
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 2424
    .local v0, position:I
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2425
    .local v1, selectedImg:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v1, :cond_2

    .line 2427
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HTCAlbum][SceneLocalPhotoFullscreen][onDelete] selectedImg is null"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2431
    :cond_2
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isFavorite()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBurstPhoto()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 2434
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onDeleteContinuousShot()V

    goto :goto_0

    .line 2438
    :cond_3
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    if-nez v2, :cond_4

    .line 2440
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HTCAlbum][SceneLocalPhotoFullscreen][onDelete] mDeleteMgr is null"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2443
    :cond_4
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v2, v0, v1}, Lcom/htc/album/helper/DeleteManager;->deleteSingleMedia(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto :goto_0
.end method

.method private onDeleteContinuousShot()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 2449
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2450
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 2451
    const-string v6, "SceneLocalPhotoFullscreen"

    const-string v7, "[HTCAlbum][SceneLocalPhotoFullscreen][onDeleteContinuousShot] -: Activity is null"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2488
    :cond_0
    :goto_0
    return-void

    .line 2455
    :cond_1
    const-string v2, ""

    .line 2456
    .local v2, message:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    .line 2458
    .local v3, position:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2459
    .local v4, selectedImg:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v4, v9, v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->expand(ILcom/htc/opensense2/album/util/ImageManager$ImageListUber;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    .line 2460
    .local v1, imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v5

    .line 2461
    .local v5, totalCount:I
    invoke-interface {v4, v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->collapse(Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;)V

    .line 2463
    const v6, 0x7f0a0176

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2468
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x2040214

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x2040174

    new-instance v8, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$7;

    invoke-direct {v8, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$7;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x20401ee

    new-instance v8, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$6;

    invoke-direct {v8, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$6;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteContinuousShotDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 2486
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteContinuousShotDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v6, :cond_0

    .line 2487
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteContinuousShotDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0
.end method

.method private onEffects()V
    .locals 5

    .prologue
    .line 2545
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    .line 2546
    .local v1, pos:I
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2547
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2549
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/htc/album/helper/ImageProcessManager;->OnMenuItemSelected(IILandroid/content/Intent;)V

    .line 2555
    :goto_0
    return-void

    .line 2553
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/htc/album/helper/MenuManager;->launchEnhancerMode(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto :goto_0
.end method

.method private onFavorite()V
    .locals 4

    .prologue
    .line 2403
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2404
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/helper/MenuManager;->setFavorite(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 2405
    return-void
.end method

.method private onHandleCacheStateChanged(II)V
    .locals 13
    .parameter "stateBefore"
    .parameter "stateAfter"

    .prologue
    const/4 v12, 0x1

    const/4 v7, 0x0

    const/high16 v5, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 4422
    if-ne p1, p2, :cond_1

    .line 4466
    :cond_0
    :goto_0
    return-void

    .line 4424
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-eqz v0, :cond_0

    .line 4426
    const-string v4, "SceneLocalPhotoFullscreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][FullscreenZoomListener][onHandleCacheStateChanged]: index: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4427
    const/4 v0, 0x2

    if-eq v0, p2, :cond_2

    if-nez p2, :cond_3

    .line 4432
    :cond_2
    const/16 v0, 0x272e

    const/16 v3, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    .line 4434
    :cond_3
    if-ne p2, v12, :cond_0

    .line 4437
    const/16 v0, 0x272e

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRemoveMessage(I)V

    .line 4438
    const/16 v0, 0x272f

    invoke-virtual {p0, v0, v2, v7}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    .line 4440
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v10

    .line 4441
    .local v10, nCount:I
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/HtcPaintManager;->getCurrentPaint()I

    move-result v1

    .line 4443
    .local v1, nIndex:I
    const/4 v0, -0x1

    if-eq v0, v1, :cond_4

    if-ne v10, v1, :cond_5

    .line 4445
    :cond_4
    const-string v0, "SceneLocalPhotoFullscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][FullscreenZoomListener][onHandleCacheStateChanged]: skip1 index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4449
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move v4, v3

    move v6, v5

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPaintLayerBMPIHT(ILandroid/graphics/Bitmap;FFFFILcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;)V

    .line 4451
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v9, Lcom/htc/album/PaintManager/Interface/IPaintings;

    .line 4452
    .local v9, iPaintings:Lcom/htc/album/PaintManager/Interface/IPaintings;
    invoke-interface {v9, v1}, Lcom/htc/album/PaintManager/Interface/IPaintings;->getPaintItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/album/PaintManager/PaintViewItem;

    .line 4453
    .local v11, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-nez v11, :cond_6

    .line 4455
    const-string v0, "SceneLocalPhotoFullscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][FullscreenZoomListener][onHandleCacheStateChanged]: skip2 index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4458
    :cond_6
    invoke-virtual {v11}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkData()[B

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v11}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkPaint()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_8

    .line 4460
    :cond_7
    const-string v0, "SceneLocalPhotoFullscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][FullscreenZoomListener][onHandleCacheStateChanged]: skip3 index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4464
    :cond_8
    invoke-virtual {v11, v12}, Lcom/htc/album/PaintManager/PaintViewItem;->setPrepared(Z)V

    goto/16 :goto_0
.end method

.method private onPrepareNextPenableViewPort(ILcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 5
    .parameter "nIndex"
    .parameter "itemInfo"
    .parameter "iimage"

    .prologue
    const/4 v4, 0x0

    .line 4746
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-nez v1, :cond_0

    .line 4778
    :goto_0
    return-void

    .line 4748
    :cond_0
    const-string v1, "SceneLocalPhotoFullscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][LocalFullFilmViewTemplate][onPrepareNextPenableViewPort]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4750
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 4751
    .local v0, handler:Landroid/os/Handler;
    if-nez p3, :cond_1

    if-eqz v0, :cond_1

    .line 4753
    const/16 v1, 0x272e

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRemoveMessage(I)V

    .line 4754
    const/16 v1, 0x272f

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    .line 4760
    :cond_1
    const/4 v1, -0x1

    if-ne v1, p1, :cond_2

    .line 4762
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/htc/album/PaintManager/HtcPaintManager;->requestViewStrokeGroup(I)V

    goto :goto_0

    .line 4767
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v1

    if-ne v1, p1, :cond_3

    .line 4769
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v1, v4}, Lcom/htc/album/PaintManager/HtcPaintManager;->showPaintingView(Z)V

    goto :goto_0

    .line 4773
    :cond_3
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v1, p1}, Lcom/htc/album/PaintManager/HtcPaintManager;->requestViewStrokeGroup(I)V

    .line 4774
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/album/PaintManager/HtcPaintManager;->doPrepareNextViewPort(ILcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 4775
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/HtcPaintManager;->updatePenableViewPortChange()V

    .line 4776
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/PaintManager/HtcPaintManager;->showPaintingView(Z)V

    goto :goto_0
.end method

.method private onPrint()V
    .locals 5

    .prologue
    .line 2634
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2635
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v0, :cond_0

    .line 2650
    :goto_0
    return-void

    .line 2638
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2639
    .local v1, tempIntent:Landroid/content/Intent;
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2641
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2643
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lcom/htc/album/helper/ImageProcessManager;->OnMenuItemSelected(ILandroid/content/Intent;Landroid/content/Intent;)V

    goto :goto_0

    .line 2647
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/htc/album/helper/MenuManager;->CallPrintDialog2(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onRecoverFromCameraEntry()V
    .locals 4

    .prologue
    .line 918
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_1

    .line 919
    const/4 v1, 0x0

    .line 920
    .local v1, bFromCamera:Z
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 923
    .local v0, activity:Landroid/app/Activity;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "preview_mode"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 929
    :goto_0
    if-eqz v1, :cond_1

    .line 931
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HTCAlbum][SceneLocalPhotoFullscreen][onRecoverFromCameraEntry]overrideRotateAnimation, TYPE_NO_ROTATE_ANIMATION"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    :cond_0
    const/16 v2, 0x68

    invoke-static {v0, v2}, Lcom/htc/wrap/android/app/HtcWrapActivity;->overrideRotateAnimation(Landroid/app/Activity;I)V

    .line 935
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #bFromCamera:Z
    :cond_1
    return-void

    .line 923
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v1       #bFromCamera:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 925
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private onRotateLeft()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2573
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    .line 2574
    .local v3, pos:I
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2575
    .local v4, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2577
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3, v6}, Lcom/htc/album/helper/ImageProcessManager;->OnMenuItemSelected(IILandroid/content/Intent;)V

    .line 2583
    :goto_0
    return-void

    .line 2581
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    new-instance v5, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;

    invoke-direct {v5, p0, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    const/16 v6, 0x10e

    invoke-virtual/range {v0 .. v6}, Lcom/htc/album/helper/MenuManager;->launchRotateMode(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/helper/MenuManager$RotateCallbackListener;I)V

    goto :goto_0
.end method

.method private onRotateRight()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2559
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    .line 2560
    .local v3, pos:I
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2561
    .local v4, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2563
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3, v6}, Lcom/htc/album/helper/ImageProcessManager;->OnMenuItemSelected(IILandroid/content/Intent;)V

    .line 2569
    :goto_0
    return-void

    .line 2567
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    new-instance v5, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;

    invoke-direct {v5, p0, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    const/16 v6, 0x5a

    invoke-virtual/range {v0 .. v6}, Lcom/htc/album/helper/MenuManager;->launchRotateMode(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/helper/MenuManager$RotateCallbackListener;I)V

    goto :goto_0
.end method

.method private onSaveAs2D()V
    .locals 5

    .prologue
    .line 2520
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    .line 2521
    .local v1, pos:I
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2522
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2524
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/htc/album/helper/ImageProcessManager;->OnMenuItemSelected(IILandroid/content/Intent;)V

    .line 2526
    :cond_0
    return-void
.end method

.method private onScrollStateChange(Landroid/os/Message;)V
    .locals 6
    .parameter "message"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 4239
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4240
    .local v2, scrollState:I
    if-nez v2, :cond_7

    .line 4242
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onScrollStateIDLE()V

    .line 4249
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->FLAG_ENABLE_BURSTSHOT_MODE:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v3, :cond_3

    .line 4251
    :cond_1
    if-eqz v2, :cond_2

    if-ne v5, v2, :cond_3

    .line 4254
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    .line 4255
    .local v1, nIndex:I
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    if-eqz v3, :cond_3

    .line 4257
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    invoke-virtual {v3, v1, v2}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->setScrollState(II)Z

    move-result v3

    if-ne v4, v3, :cond_3

    .line 4259
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    invoke-virtual {v3}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->doDispatch()V

    .line 4265
    .end local v1           #nIndex:I
    :cond_3
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnablePaintView()Z

    move-result v3

    if-ne v4, v3, :cond_6

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-eqz v3, :cond_6

    .line 4267
    if-eqz v2, :cond_4

    if-ne v5, v2, :cond_6

    .line 4271
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    .line 4272
    .restart local v1       #nIndex:I
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    if-eqz v3, :cond_5

    .line 4274
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    invoke-virtual {v3, v1, v2}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->setScrollState(II)Z

    move-result v3

    if-ne v4, v3, :cond_5

    .line 4276
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    invoke-virtual {v3}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->doDispatch()V

    .line 4279
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/PaintManager/Interface/IPaintings;

    .line 4280
    .local v0, iPaintings:Lcom/htc/album/PaintManager/Interface/IPaintings;
    if-eqz v0, :cond_6

    .line 4282
    invoke-interface {v0, v2, v1}, Lcom/htc/album/PaintManager/Interface/IPaintings;->setPaintScrollState(II)V

    .line 4287
    .end local v0           #iPaintings:Lcom/htc/album/PaintManager/Interface/IPaintings;
    .end local v1           #nIndex:I
    :cond_6
    return-void

    .line 4244
    :cond_7
    if-ne v2, v5, :cond_0

    .line 4246
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onScrollStateScroll()V

    goto :goto_0
.end method

.method private onShare()V
    .locals 6

    .prologue
    .line 2607
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 2608
    .local v1, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 2609
    .local v4, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    .line 2610
    .local v2, pos:I
    if-nez v4, :cond_0

    .line 2621
    :goto_0
    return-void

    .line 2611
    :cond_0
    invoke-virtual {v4, v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2613
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isSharable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2615
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/album/helper/MenuManager;->showShareMediaMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)Landroid/app/AlertDialog;

    goto :goto_0

    .line 2619
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/helper/MenuManager;->showItemDetails(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)V

    goto :goto_0
.end method

.method private onShowOnMap()V
    .locals 4

    .prologue
    .line 2654
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2655
    .local v0, activity:Landroid/app/Activity;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    .line 2656
    .local v2, pos:I
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3, v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2657
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-static {v0, v1}, Lcom/htc/album/helper/MenuManager;->showOnMap(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 2658
    return-void
.end method

.method private onSlideShow()V
    .locals 4

    .prologue
    .line 2625
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2626
    .local v0, activity:Landroid/app/Activity;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    .line 2627
    .local v2, pos:I
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 2628
    .local v1, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-eqz v1, :cond_0

    .line 2629
    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/htc/album/helper/MenuManager;->launchSlideShow(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILjava/lang/Object;)V

    .line 2630
    :cond_0
    return-void
.end method

.method private onTrim()V
    .locals 4

    .prologue
    .line 2409
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2410
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2414
    :cond_0
    :goto_0
    return-void

    .line 2412
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2413
    .local v0, act:Landroid/app/Activity;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/album/helper/MenuManager;->callTrimApplication(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openFileOperationFolderSelector(Landroid/app/Activity;)V
    .locals 8
    .parameter "activity"

    .prologue
    .line 1876
    if-nez p1, :cond_1

    .line 1878
    sget-boolean v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 1879
    const-string v6, "SceneLocalPhotoFullscreen"

    const-string v7, "[HTCAlbum][SceneLocalPhotoFullscreen][openFileOperationFolderSelector] the activity refernece is null."

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    :cond_0
    :goto_0
    return-void

    .line 1882
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v4

    .line 1883
    .local v4, position:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1884
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v2, :cond_2

    .line 1886
    sget-boolean v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 1887
    const-string v6, "SceneLocalPhotoFullscreen"

    const-string v7, "[HTCAlbum][SceneLocalPhotoFullscreen][openFileOperationFolderSelector] the selected image is null."

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1891
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1892
    .local v5, uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1893
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1894
    .local v3, imageIndexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1896
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1897
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 1899
    .local v1, collectionInfo:Lcom/htc/album/modules/collection/Collection;
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    if-eqz v6, :cond_0

    .line 1900
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v6, p1, v1, v5, v3}, Lcom/htc/album/helper/FileOperationManager;->callFileOperationFolderSelector(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private showContinuousShotIndicator(Z)V
    .locals 4
    .parameter "bIsShow"

    .prologue
    .line 1021
    const/4 v0, 0x0

    .line 1022
    .local v0, removeMssageId:I
    const/4 v1, 0x0

    .line 1023
    .local v1, sendMssageId:I
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1024
    const/16 v0, 0x4e4b

    .line 1025
    const/16 v1, 0x4e4a

    .line 1031
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRemoveMessage(I)V

    .line 1032
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    .line 1033
    return-void

    .line 1028
    :cond_0
    const/16 v0, 0x4e4a

    .line 1029
    const/16 v1, 0x4e4b

    goto :goto_0
.end method

.method private showContinuousShotIndicator_inUIThread(Z)V
    .locals 13
    .parameter "bIsShow"

    .prologue
    const/4 v12, 0x2

    const/4 v11, -0x1

    const/16 v10, 0xc

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1036
    if-nez p1, :cond_1

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    if-nez v6, :cond_1

    .line 1154
    :cond_0
    :goto_0
    return-void

    .line 1040
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v6, :cond_0

    .line 1045
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v6

    instance-of v6, v6, Lcom/htc/album/addons/SingleCollection;

    if-nez v6, :cond_0

    .line 1051
    iget v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mStartupIndex:I

    if-eq v6, v11, :cond_6

    .line 1053
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mStartupIndex:I

    invoke-virtual {v6, v7}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1054
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iput v11, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mStartupIndex:I

    .line 1066
    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBurstPhoto()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1067
    :cond_2
    const/4 p1, 0x0

    .line 1070
    :cond_3
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 1071
    .local v5, root:Landroid/widget/RelativeLayout;
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1072
    .local v0, activityRef:Landroid/app/Activity;
    if-eqz v0, :cond_0

    if-eqz v5, :cond_0

    .line 1074
    if-ne p1, v9, :cond_5

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    if-nez v6, :cond_5

    .line 1075
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030017

    invoke-virtual {v6, v7, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    .line 1076
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_GalleryBtnLeft(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1077
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    new-instance v7, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$3;

    invoke-direct {v7, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$3;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1085
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1086
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v2

    .line 1087
    .local v2, footer:Landroid/view/View;
    if-eqz v2, :cond_4

    .line 1088
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v4, v6, Landroid/content/res/Configuration;->orientation:I

    .line 1089
    .local v4, ori:I
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1090
    .local v1, continuousLP:Landroid/widget/RelativeLayout$LayoutParams;
    if-ne v4, v9, :cond_7

    .line 1091
    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v6

    invoke-virtual {v1, v12, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1092
    invoke-virtual {v1, v10, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1104
    .end local v1           #continuousLP:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #footer:Landroid/view/View;
    .end local v4           #ori:I
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1107
    :cond_5
    iget-boolean v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsShowContinuousIndicator:Z

    if-eq p1, v6, :cond_0

    .line 1147
    if-ne v9, p1, :cond_9

    .line 1148
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1153
    :goto_3
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsShowContinuousIndicator:Z

    goto/16 :goto_0

    .line 1058
    .end local v0           #activityRef:Landroid/app/Activity;
    .end local v3           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v5           #root:Landroid/widget/RelativeLayout;
    :cond_6
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v7, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .restart local v3       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    goto/16 :goto_1

    .line 1095
    .restart local v0       #activityRef:Landroid/app/Activity;
    .restart local v1       #continuousLP:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v2       #footer:Landroid/view/View;
    .restart local v4       #ori:I
    .restart local v5       #root:Landroid/widget/RelativeLayout;
    :cond_7
    invoke-virtual {v1, v12, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1096
    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    .line 1101
    .end local v1           #continuousLP:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #footer:Landroid/view/View;
    .end local v4           #ori:I
    :cond_8
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v6}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    .line 1151
    :cond_9
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3
.end method

.method private showDrmConsumeDialog(ILcom/htc/opensense2/album/util/ImageManager$IImage;)Z
    .locals 3
    .parameter "position"
    .parameter "image"

    .prologue
    const/4 v2, 0x1

    .line 3650
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmDecoded:Z

    if-nez v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 3653
    check-cast p2, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->setDrmStateToNonCheck()V

    .line 3655
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 3656
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$10;

    invoke-direct {v1, p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$10;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    move v1, v2

    .line 3682
    .end local v0           #activity:Landroid/app/Activity;
    :goto_0
    return v1

    .restart local p2
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showDrmFileNameBar(ZZ)V
    .locals 2
    .parameter "bIsShow"
    .parameter "bForce"

    .prologue
    .line 1158
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$4;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1168
    return-void
.end method

.method private showEdit(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, editBtn:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 2101
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[showEdit] + "

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2102
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_2

    .line 2104
    :cond_0
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[showEdit]can\'t get context"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    :cond_1
    :goto_0
    return-void

    .line 2108
    :cond_2
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v5, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2110
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v1, :cond_3

    .line 2112
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[showEdit]can\'t get image"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2116
    :cond_3
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->clearBubble()V

    .line 2122
    const-string v4, "video/x-wmv-drm"

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2123
    .local v3, isWMDrm:Z
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v3, :cond_6

    :cond_4
    move v2, v0

    .line 2128
    .local v2, isDRM:Z
    :goto_1
    if-nez v2, :cond_7

    .line 2140
    .local v0, canShowEdit:Z
    :goto_2
    if-eqz v0, :cond_1

    .line 2142
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2144
    const/16 v4, 0x16

    const v5, 0x7f0a0141

    invoke-virtual {p1, v4, v6, v5}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 2146
    :cond_5
    const/16 v4, 0x17

    const v5, 0x7f0a0142

    invoke-virtual {p1, v4, v6, v5}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 2147
    const/16 v4, 0x18

    const v5, 0x7f0a0143

    invoke-virtual {p1, v4, v6, v5}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 2148
    const/16 v4, 0x19

    const v5, 0x7f0a0144

    invoke-virtual {p1, v4, v6, v5}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 2149
    const/16 v4, 0x1a

    const v5, 0x7f0a0145

    invoke-virtual {p1, v4, v6, v5}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    goto :goto_0

    .end local v0           #canShowEdit:Z
    .end local v2           #isDRM:Z
    :cond_6
    move v2, v6

    .line 2123
    goto :goto_1

    .restart local v2       #isDRM:Z
    :cond_7
    move v0, v6

    .line 2128
    goto :goto_2
.end method

.method private showMore(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 22
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2256
    .local p1, moreBtn:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const-string v19, "SceneLocalPhotoFullscreen"

    const-string v20, "[showMore] + "

    invoke-static/range {v19 .. v20}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2257
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v19

    if-nez v19, :cond_1

    .line 2259
    :cond_0
    const-string v19, "SceneLocalPhotoFullscreen"

    const-string v20, "[showMore]can\'t get context"

    invoke-static/range {v19 .. v20}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2373
    :goto_0
    return-void

    .line 2262
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 2263
    .local v10, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v19, v0

    check-cast v19, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    move-object/from16 v20, v0

    check-cast v20, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v20 .. v20}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v14

    check-cast v14, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2265
    .local v14, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v19, v0

    check-cast v19, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v9

    .line 2267
    .local v9, collection:Lcom/htc/album/modules/collection/Collection;
    if-nez v14, :cond_2

    .line 2269
    const-string v19, "SceneLocalPhotoFullscreen"

    const-string v20, "[showMore]can\'t get image"

    invoke-static/range {v19 .. v20}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2273
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->clearBubble()V

    .line 2279
    const-string v19, "video/x-wmv-drm"

    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 2280
    .local v18, isWMDrm:Z
    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v19

    if-eqz v19, :cond_6

    move-object/from16 v19, v14

    check-cast v19, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    move-object/from16 v12, v19

    .line 2281
    .local v12, drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :goto_1
    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v19

    if-nez v19, :cond_3

    if-eqz v18, :cond_7

    :cond_3
    const/4 v15, 0x1

    .line 2282
    .local v15, isDRM:Z
    :goto_2
    if-eqz v18, :cond_8

    const/4 v11, 0x1

    .line 2283
    .local v11, drmType:I
    :goto_3
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_a

    const/16 v16, 0x1

    .line 2287
    .local v16, isDRMFL:Z
    :goto_4
    if-eqz v15, :cond_b

    move/from16 v7, v16

    .line 2288
    .local v7, canShowSetAs:Z
    :goto_5
    if-eqz v15, :cond_c

    move/from16 v8, v16

    .line 2290
    .local v8, canShowSlideShow:Z
    :goto_6
    sget-boolean v19, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v19, :cond_d

    if-nez v15, :cond_d

    const/4 v6, 0x1

    .line 2292
    .local v6, canShowSelectPlayer:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    if-eqz v14, :cond_e

    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_e

    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_e

    if-nez v18, :cond_e

    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isPrintSupport(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_e

    const/4 v5, 0x1

    .line 2296
    .local v5, canShowPrint:Z
    :goto_8
    if-nez v15, :cond_f

    if-nez v18, :cond_f

    invoke-virtual {v9}, Lcom/htc/album/modules/collection/Collection;->isManageable()Z

    move-result v19

    if-eqz v19, :cond_f

    const/4 v4, 0x1

    .line 2303
    .local v4, canShowFileOperations:Z
    :goto_9
    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v19

    if-eqz v19, :cond_10

    .line 2306
    sget-boolean v19, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v19, :cond_4

    if-eqz v6, :cond_4

    .line 2308
    const/16 v19, 0xf

    const/16 v20, 0x0

    const v21, 0x7f0a00da

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 2311
    :cond_4
    if-eqz v4, :cond_5

    .line 2313
    const/16 v19, 0x3e

    const/16 v20, 0x0

    const v21, 0x2040304

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 2314
    const/16 v19, 0x3f

    const/16 v20, 0x0

    const v21, 0x7f0a0186

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 2318
    :cond_5
    const/16 v19, 0x1c

    const/16 v20, 0x0

    const v21, 0x7f0a0146

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 2319
    const/16 v19, 0xb

    const/16 v20, 0x0

    const v21, 0x7f0a0147

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    goto/16 :goto_0

    .line 2280
    .end local v4           #canShowFileOperations:Z
    .end local v5           #canShowPrint:Z
    .end local v6           #canShowSelectPlayer:Z
    .end local v7           #canShowSetAs:Z
    .end local v8           #canShowSlideShow:Z
    .end local v11           #drmType:I
    .end local v12           #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    .end local v15           #isDRM:Z
    .end local v16           #isDRMFL:Z
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 2281
    .restart local v12       #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 2282
    .restart local v15       #isDRM:Z
    :cond_8
    if-eqz v12, :cond_9

    invoke-virtual {v12}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v11

    goto/16 :goto_3

    :cond_9
    const/4 v11, -0x1

    goto/16 :goto_3

    .line 2283
    .restart local v11       #drmType:I
    :cond_a
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 2287
    .restart local v16       #isDRMFL:Z
    :cond_b
    const/4 v7, 0x1

    goto/16 :goto_5

    .line 2288
    .restart local v7       #canShowSetAs:Z
    :cond_c
    const/4 v8, 0x1

    goto/16 :goto_6

    .line 2290
    .restart local v8       #canShowSlideShow:Z
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_7

    .line 2292
    .restart local v6       #canShowSelectPlayer:Z
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 2296
    .restart local v5       #canShowPrint:Z
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 2328
    .restart local v4       #canShowFileOperations:Z
    :cond_10
    if-eqz v7, :cond_11

    .line 2330
    const/16 v19, 0x7

    const/16 v20, 0x0

    const v21, 0x7f0a014a

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 2333
    :cond_11
    if-eqz v8, :cond_12

    .line 2335
    const/16 v19, 0xd

    const/16 v20, 0x0

    const v21, 0x7f0a0134

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 2339
    :cond_12
    sget-boolean v19, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v19, :cond_13

    if-eqz v6, :cond_13

    .line 2341
    const/16 v19, 0xf

    const/16 v20, 0x0

    const v21, 0x7f0a00da

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 2347
    :cond_13
    if-eqz v4, :cond_14

    .line 2349
    const/16 v19, 0x3e

    const/16 v20, 0x0

    const v21, 0x2040304

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 2350
    const/16 v19, 0x3f

    const/16 v20, 0x0

    const v21, 0x7f0a0186

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 2353
    :cond_14
    if-eqz v5, :cond_15

    .line 2355
    invoke-static {v10}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isPrintExists(Landroid/content/Context;)Z

    move-result v17

    .line 2356
    .local v17, isPrintExists:Z
    if-eqz v17, :cond_15

    .line 2357
    const/16 v19, 0x12

    const/16 v20, 0x0

    const v21, 0x7f0a0135

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 2361
    .end local v17           #isPrintExists:Z
    :cond_15
    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/htc/album/AlbumUtility/ExifUtil;->hasGpsInfo(Ljava/lang/String;)Z

    move-result v13

    .line 2362
    .local v13, hasGPSInfo:Z
    sget-boolean v19, Lcom/htc/album/helper/MenuManager;->DISABLE_GEOCODE_RELEATE_FUNCTION:Z

    if-nez v19, :cond_16

    if-eqz v13, :cond_16

    .line 2364
    const/16 v19, 0x1b

    const/16 v20, 0x0

    const v21, 0x7f0a0136

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 2367
    :cond_16
    if-eqz v15, :cond_17

    .line 2369
    const/16 v19, 0xc

    const/16 v20, 0x0

    const v21, 0x7f0a0148

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 2372
    :cond_17
    const/16 v19, 0xb

    const/16 v20, 0x0

    const v21, 0x7f0a0147

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    goto/16 :goto_0
.end method

.method private showShare(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2034
    .local p1, shareBtn:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[showShare] + "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2037
    :cond_0
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[showShare]can\'t get context"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2050
    :goto_0
    return-void

    .line 2040
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2041
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2043
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v1, :cond_2

    .line 2045
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[showShare]can\'t get image"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2049
    :cond_2
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v2, v0, v1, p1}, Lcom/htc/album/helper/ShareMenuManager;->createLocalSingleShareBubble(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/modules/ui/widget/ControlButton;)Z

    goto :goto_0
.end method

.method private showTabletEdit(Landroid/view/SubMenu;)V
    .locals 11
    .parameter "editMenu"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2054
    const-string v7, "SceneLocalPhotoFullscreen"

    const-string v8, "[showTabletEdit] + "

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    if-nez p1, :cond_1

    .line 2057
    const-string v7, "SceneLocalPhotoFullscreen"

    const-string v8, "[showTabletEdit]can\'t get editMenu"

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2097
    :cond_0
    :goto_0
    return-void

    .line 2060
    :cond_1
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v8, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2062
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v3, :cond_2

    .line 2064
    const-string v7, "SceneLocalPhotoFullscreen"

    const-string v8, "[showTabletEdit]can\'t get image"

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2068
    :cond_2
    invoke-interface {p1}, Landroid/view/SubMenu;->clear()V

    .line 2074
    const-string v7, "video/x-wmv-drm"

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 2075
    .local v6, isWMDrm:Z
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, v3

    check-cast v7, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    move-object v2, v7

    .line 2076
    .local v2, drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :goto_1
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz v6, :cond_6

    :cond_3
    move v4, v9

    .line 2077
    .local v4, isDRM:Z
    :goto_2
    if-eqz v6, :cond_7

    move v1, v9

    .line 2078
    .local v1, drmType:I
    :goto_3
    if-ne v1, v9, :cond_9

    move v5, v9

    .line 2080
    .local v5, isDRMFL:Z
    :goto_4
    if-nez v4, :cond_a

    move v0, v9

    .line 2082
    .local v0, canShowEdit:Z
    :goto_5
    if-eqz v0, :cond_0

    .line 2084
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2086
    const/16 v7, 0x16

    const v8, 0x7f0a0141

    invoke-interface {p1, v10, v7, v10, v8}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2088
    :cond_4
    const/16 v7, 0x17

    const v8, 0x7f0a0142

    invoke-interface {p1, v10, v7, v10, v8}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2089
    const/16 v7, 0x18

    const v8, 0x7f0a0143

    invoke-interface {p1, v10, v7, v10, v8}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2091
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/htc/opensense2/album/util/ImageUtils;->getGifFrameCount(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v7

    if-gt v7, v9, :cond_0

    .line 2093
    const/16 v7, 0x19

    const v8, 0x7f0a0144

    invoke-interface {p1, v10, v7, v10, v8}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2094
    const/16 v7, 0x1a

    const v8, 0x7f0a0145

    invoke-interface {p1, v10, v7, v10, v8}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 2075
    .end local v0           #canShowEdit:Z
    .end local v1           #drmType:I
    .end local v2           #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    .end local v4           #isDRM:Z
    .end local v5           #isDRMFL:Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .restart local v2       #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :cond_6
    move v4, v10

    .line 2076
    goto :goto_2

    .line 2077
    .restart local v4       #isDRM:Z
    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v1

    goto :goto_3

    :cond_8
    const/4 v1, -0x1

    goto :goto_3

    .restart local v1       #drmType:I
    :cond_9
    move v5, v10

    .line 2078
    goto :goto_4

    .restart local v5       #isDRMFL:Z
    :cond_a
    move v0, v10

    .line 2080
    goto :goto_5
.end method

.method private showTabletMore(Landroid/view/Menu;)V
    .locals 24
    .parameter "moreMenu"

    .prologue
    .line 2155
    const-string v20, "SceneLocalPhotoFullscreen"

    const-string v21, "[showTabletMore] + "

    invoke-static/range {v20 .. v21}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2156
    if-nez p1, :cond_0

    .line 2158
    const-string v20, "SceneLocalPhotoFullscreen"

    const-string v21, "[showTabletMore]can\'t get moreMenu"

    invoke-static/range {v20 .. v21}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2252
    :goto_0
    return-void

    .line 2161
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v20, v0

    check-cast v20, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    move-object/from16 v21, v0

    check-cast v21, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v21 .. v21}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v14

    check-cast v14, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2163
    .local v14, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v14, :cond_1

    .line 2165
    const-string v20, "SceneLocalPhotoFullscreen"

    const-string v21, "[showTabletMore]can\'t get image"

    invoke-static/range {v20 .. v21}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2175
    :cond_1
    const-string v20, "video/x-wmv-drm"

    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 2176
    .local v18, isWMDrm:Z
    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v20

    if-eqz v20, :cond_3

    move-object/from16 v20, v14

    check-cast v20, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    move-object/from16 v12, v20

    .line 2177
    .local v12, drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :goto_1
    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v20

    if-nez v20, :cond_2

    if-eqz v18, :cond_4

    :cond_2
    const/4 v15, 0x1

    .line 2178
    .local v15, isDRM:Z
    :goto_2
    if-eqz v18, :cond_5

    const/4 v11, 0x1

    .line 2179
    .local v11, drmType:I
    :goto_3
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v11, v0, :cond_7

    const/16 v16, 0x1

    .line 2181
    .local v16, isDRMFL:Z
    :goto_4
    if-eqz v15, :cond_8

    move/from16 v8, v16

    .line 2182
    .local v8, canShowSetAs:Z
    :goto_5
    if-eqz v15, :cond_9

    move/from16 v9, v16

    .line 2184
    .local v9, canShowSlideShow:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 2185
    .local v10, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    if-eqz v14, :cond_a

    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    if-nez v18, :cond_a

    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isPrintSupport(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    const/4 v7, 0x1

    .line 2189
    .local v7, canShowPrint:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v20, v0

    check-cast v20, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual/range {v20 .. v20}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v5, v0, Lcom/htc/album/addons/SingleCollection;

    .line 2190
    .local v5, bViewSingle:Z
    sget-boolean v20, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v20, :cond_b

    if-nez v15, :cond_b

    if-nez v5, :cond_b

    const/4 v6, 0x1

    .line 2198
    .local v6, canShowDLNA:Z
    :goto_8
    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v20

    if-eqz v20, :cond_e

    .line 2200
    const/16 v20, 0x0

    const/16 v21, 0x2

    const/16 v22, 0x0

    const v23, 0x7f0a0131

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2201
    const/16 v20, 0x0

    const/16 v21, 0x1c

    const/16 v22, 0x0

    const v23, 0x7f0a0146

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2203
    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 2204
    const/16 v20, 0x0

    const/16 v21, 0xc

    const/16 v22, 0x0

    const v23, 0x7f0a0148

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2211
    :goto_9
    const/16 v20, 0x0

    const/16 v21, 0xb

    const/16 v22, 0x0

    const v23, 0x7f0a0147

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 2176
    .end local v5           #bViewSingle:Z
    .end local v6           #canShowDLNA:Z
    .end local v7           #canShowPrint:Z
    .end local v8           #canShowSetAs:Z
    .end local v9           #canShowSlideShow:Z
    .end local v10           #context:Landroid/content/Context;
    .end local v11           #drmType:I
    .end local v12           #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    .end local v15           #isDRM:Z
    .end local v16           #isDRMFL:Z
    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 2177
    .restart local v12       #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 2178
    .restart local v15       #isDRM:Z
    :cond_5
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v11

    goto/16 :goto_3

    :cond_6
    const/4 v11, -0x1

    goto/16 :goto_3

    .line 2179
    .restart local v11       #drmType:I
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 2181
    .restart local v16       #isDRMFL:Z
    :cond_8
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 2182
    .restart local v8       #canShowSetAs:Z
    :cond_9
    const/4 v9, 0x1

    goto/16 :goto_6

    .line 2185
    .restart local v9       #canShowSlideShow:Z
    .restart local v10       #context:Landroid/content/Context;
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 2190
    .restart local v5       #bViewSingle:Z
    .restart local v7       #canShowPrint:Z
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 2207
    .restart local v6       #canShowDLNA:Z
    :cond_c
    const/16 v20, 0x0

    const/16 v21, 0x10

    const/16 v22, 0x0

    const v23, 0x7f0a012e

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    .line 2208
    .local v19, item:Landroid/view/MenuItem;
    invoke-static {v10}, Lcom/htc/album/helper/WirelessDisplayHelper;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_d

    const/16 v20, 0x1

    :goto_a
    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_9

    :cond_d
    const/16 v20, 0x0

    goto :goto_a

    .line 2215
    .end local v19           #item:Landroid/view/MenuItem;
    :cond_e
    const/16 v20, 0x0

    const/16 v21, 0x2

    const/16 v22, 0x0

    const v23, 0x7f0a0131

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2217
    if-eqz v8, :cond_f

    .line 2219
    const/16 v20, 0x0

    const/16 v21, 0x7

    const/16 v22, 0x0

    const v23, 0x7f0a014a

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2222
    :cond_f
    if-eqz v9, :cond_10

    .line 2224
    const/16 v20, 0x0

    const/16 v21, 0xd

    const/16 v22, 0x0

    const v23, 0x7f0a0134

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2227
    :cond_10
    if-eqz v6, :cond_11

    .line 2229
    move-object/from16 v0, p1

    invoke-static {v10, v0}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->addTVDisplayMenu(Landroid/content/Context;Landroid/view/Menu;)V

    .line 2232
    :cond_11
    if-eqz v7, :cond_12

    .line 2234
    invoke-static {v10}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isPrintExists(Landroid/content/Context;)Z

    move-result v17

    .line 2235
    .local v17, isPrintExists:Z
    if-eqz v17, :cond_12

    .line 2236
    const/16 v20, 0x0

    const/16 v21, 0x12

    const/16 v22, 0x0

    const v23, 0x7f0a0135

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2240
    .end local v17           #isPrintExists:Z
    :cond_12
    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/htc/album/AlbumUtility/ExifUtil;->hasGpsInfo(Ljava/lang/String;)Z

    move-result v13

    .line 2241
    .local v13, hasGPSInfo:Z
    sget-boolean v20, Lcom/htc/album/helper/MenuManager;->DISABLE_GEOCODE_RELEATE_FUNCTION:Z

    if-nez v20, :cond_13

    if-eqz v13, :cond_13

    .line 2243
    const/16 v20, 0x0

    const/16 v21, 0x1b

    const/16 v22, 0x0

    const v23, 0x7f0a0136

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2246
    :cond_13
    if-eqz v15, :cond_14

    .line 2248
    const/16 v20, 0x0

    const/16 v21, 0xc

    const/16 v22, 0x0

    const v23, 0x7f0a0148

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2251
    :cond_14
    const/16 v20, 0x0

    const/16 v21, 0xb

    const/16 v22, 0x0

    const v23, 0x7f0a0147

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method private showTabletShare(Landroid/view/Menu;)V
    .locals 4
    .parameter "shareMenu"

    .prologue
    .line 2014
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[showTabletShare] + "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2017
    :cond_0
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[showTabletShare]can\'t get context"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    :goto_0
    return-void

    .line 2020
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2021
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2023
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v1, :cond_2

    .line 2025
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[showTabletShare]can\'t get image"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2029
    :cond_2
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v2, v0, v1, p1}, Lcom/htc/album/helper/ShareMenuManager;->createLocalSingleShareMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/view/Menu;)Z

    goto :goto_0
.end method

.method private swithToBurst()V
    .locals 10

    .prologue
    .line 1978
    const-string v7, "SceneLocalPhotoFullscreen"

    const-string v8, "[swithToBurst] + "

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    .line 1981
    .local v3, context:Landroid/content/Context;
    if-nez v3, :cond_0

    .line 2010
    :goto_0
    return-void

    .line 1983
    :cond_0
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v7}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v2

    .line 1984
    .local v2, c:Lcom/htc/album/modules/collection/Collection;
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v7, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v5

    .line 1986
    .local v5, position:I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1987
    .local v1, bundle:Landroid/os/Bundle;
    const-string v7, "folder_type"

    const-string v8, "com.htc.HTCAlbum.BURST_SHOTS"

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v7, v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1991
    .local v4, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 1992
    .local v0, bucketId:Ljava/lang/String;
    const-string v7, "SceneLocalPhotoFullscreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[switchToBurst]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    const-string v7, "collection_info"

    new-instance v8, Lcom/htc/album/TabPluginDevice/BurstShotCollection;

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v3, v0, v9}, Lcom/htc/album/TabPluginDevice/BurstShotCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1996
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v7, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->purgeTextureMapsForMemory(Z)Z

    .line 1997
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v7, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getTileDecoder()Lcom/htc/sunny2/fullfilmview/TileDecoder;

    move-result-object v6

    .line 1998
    .local v6, tileDecoder:Lcom/htc/sunny2/fullfilmview/TileDecoder;
    if-eqz v6, :cond_1

    .line 2000
    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->freeBitmapRegionDecoder()V

    .line 2002
    :cond_1
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v7, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->purgeTileTextures()V

    .line 2003
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v7, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2005
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v7, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->unzoomCenter()V

    .line 2008
    :cond_2
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v8, "SceneLocalPhotoBurstShot"

    const/4 v9, 0x0

    invoke-interface {v7, v1, v8, v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 2009
    const-string v7, "SceneLocalPhotoFullscreen"

    const-string v8, "[swithToBurst] - "

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1567
    const-string v0, "AdapterLocalPhoto"

    return-object v0
.end method

.method protected defaultControlBarOn()Z
    .locals 1

    .prologue
    .line 1572
    const/4 v0, 0x0

    return v0
.end method

.method public disableNfcBeamPushUris(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 4983
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4984
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HTCAlbum][SceneLocalPhotoFullscreen][disableBeamPushUris]"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4985
    :cond_0
    if-nez p1, :cond_1

    .line 4987
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HTCAlbum][SceneLocalPhotoFullscreen][disableBeamPushUris] activity is null"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4992
    :goto_0
    return-void

    .line 4991
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setNfcNdefPushMessage(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public enableFullScreen()Z
    .locals 1

    .prologue
    .line 1579
    const/4 v0, 0x1

    return v0
.end method

.method public enableProgressLoading()Z
    .locals 5

    .prologue
    .line 346
    const/4 v1, 0x1

    .line 347
    .local v1, bResult:Z
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 350
    .local v0, activity:Landroid/app/Activity;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, szAction:Ljava/lang/String;
    const-string v4, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 352
    const/4 v1, 0x0

    .line 361
    .end local v3           #szAction:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 356
    :catch_0
    move-exception v2

    .line 358
    .local v2, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public exclusionEditTag(I)I
    .locals 1
    .parameter "exclusion"

    .prologue
    .line 3867
    const/high16 v0, 0x1

    or-int/2addr v0, p1

    return v0
.end method

.method public exclusionShowHideTag(I)I
    .locals 1
    .parameter "exclusion"

    .prologue
    .line 3872
    const/high16 v0, 0x10

    or-int/2addr v0, p1

    return v0
.end method

.method protected getDLNAOutputIndex()I
    .locals 2

    .prologue
    .line 4293
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-nez v1, :cond_1

    .line 4294
    :cond_0
    const/4 v0, -0x1

    .line 4298
    :goto_0
    return v0

    .line 4296
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 4298
    .local v0, index:I
    goto :goto_0
.end method

.method public getEnvironmentRenderOrder()I
    .locals 1

    .prologue
    .line 4168
    const/4 v0, 0x3

    return v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3994
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 3995
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v0, :cond_1

    .line 3997
    const-string v3, "SceneLocalPhotoFullscreen"

    const-string v4, "[HTCAlbum][SceneLocalPhotoFullScreen][getHeaderTitle]adapter is null"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4007
    :cond_0
    :goto_0
    return-object v2

    .line 4001
    :cond_1
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    .line 4002
    .local v1, collection:Lcom/htc/album/modules/collection/Collection;
    if-eqz v1, :cond_0

    .line 4005
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getPhotoCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4007
    .local v2, subTitle:Ljava/lang/String;
    goto :goto_0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3975
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 3976
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v0, :cond_1

    .line 3978
    const-string v3, "SceneLocalPhotoFullscreen"

    const-string v4, "[HTCAlbum][SceneLocalPhotoFullScreen][getHeaderTitle]adapter is null"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3988
    :cond_0
    :goto_0
    return-object v2

    .line 3982
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    .line 3983
    .local v1, collection:Lcom/htc/album/modules/collection/Collection;
    if-eqz v1, :cond_0

    .line 3986
    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 3988
    .local v2, szTitle:Ljava/lang/String;
    goto :goto_0
.end method

.method protected getThumbnailSceneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 987
    const-string v0, "SceneLocalPhotoThumbnail"

    return-object v0
.end method

.method public initNfcAdapter(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 4905
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4906
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HTCAlbum][SceneLocalPhotoFullscreen][initNfcAfapter]"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4907
    :cond_0
    if-nez p1, :cond_1

    .line 4909
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HTCAlbum][SceneLocalPhotoFullscreen][initNfcAfapter] context is null"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4913
    :goto_0
    return-void

    .line 4912
    :cond_1
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    goto :goto_0
.end method

.method public isFileCachable()Z
    .locals 1

    .prologue
    .line 4399
    const/4 v0, 0x1

    return v0
.end method

.method protected isSelectedImageDRM()Z
    .locals 6

    .prologue
    .line 4818
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    .line 4819
    .local v2, index:I
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3, v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 4820
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 4821
    const/4 v3, 0x1

    .line 4828
    .end local v1           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v2           #index:I
    :goto_0
    return v3

    .line 4823
    :catch_0
    move-exception v0

    .line 4825
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "SceneLocalPhotoFullscreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isSelectedImageDRM] Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4828
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 789
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 791
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mEditedItemUri:Ljava/lang/String;

    .line 792
    .local v4, editedItemUri:Ljava/lang/String;
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mEditedItemUri:Ljava/lang/String;

    .line 793
    if-eqz v4, :cond_1

    .line 795
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v10}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v10}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->isFinishing()Z

    move-result v10

    if-nez v10, :cond_1

    .line 797
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->hideControlBars()V

    .line 798
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showContinuousShotIndicator(Z)V

    .line 800
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v8

    .line 803
    .local v8, strFolderName:Ljava/lang/String;
    if-eqz v8, :cond_1

    const-string v10, "com.htc.HTCAlbum.ALL_3DS"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 805
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v10, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v10}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    .line 806
    .local v3, currentPos:I
    invoke-virtual {p0, v4, v3, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->seekUriInAdapter(Ljava/lang/String;ILcom/htc/album/TabPluginDevice/AdapterLocalPhoto;)I

    move-result v7

    .line 808
    .local v7, nPos:I
    const/4 v10, -0x1

    if-eq v10, v7, :cond_0

    .line 810
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v10, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setIsAfterEdit(ZI)V

    .line 813
    :cond_0
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v10, :cond_1

    .line 815
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v10}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 821
    .end local v3           #currentPos:I
    .end local v7           #nPos:I
    .end local v8           #strFolderName:Ljava/lang/String;
    :cond_1
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->notifyDataSetChanged()V

    .line 823
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v9, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 824
    .local v9, view:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2;

    invoke-direct {v11, p0, v9, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 855
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v11, "SceneLocalFolder"

    invoke-interface {v10, v11}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->isSceneExist(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 856
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v10}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    .line 857
    .local v2, context:Landroid/content/Context;
    iget-object v10, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v10}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v5

    .line 859
    .local v5, intent:Landroid/content/Intent;
    const/16 v6, 0xff

    .line 860
    .local v6, mediaType:I
    if-nez v5, :cond_3

    .line 862
    .local v1, bundle:Landroid/os/Bundle;
    :goto_0
    invoke-static {v2, v1, v6}, Lcom/htc/album/ObjectWriter/AlbumCacher;->updateCache(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 864
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #context:Landroid/content/Context;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #mediaType:I
    :cond_2
    return-void

    .line 860
    .restart local v2       #context:Landroid/content/Context;
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v6       #mediaType:I
    :cond_3
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 1264
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onBack()V

    .line 1265
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 4067
    const-string v11, "SceneLocalPhotoFullscreen"

    const-string v12, "[HtcAlbum][SceneLocalPhotoFullscreen][RotateListener][onActivityResult] + "

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4068
    const/4 v11, -0x1

    move/from16 v0, p2

    if-eq v0, v11, :cond_0

    .line 4146
    :goto_0
    return-void

    .line 4071
    :cond_0
    iget-object v11, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v11}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    .line 4072
    .local v2, activity:Landroid/app/Activity;
    sparse-switch p1, :sswitch_data_0

    .line 4145
    :cond_1
    :goto_1
    const-string v11, "SceneLocalPhotoFullscreen"

    const-string v12, "[HtcAlbum][SceneLocalPhotoFullscreen][RotateListener][onActivityResult] - "

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4078
    :sswitch_0
    const-string v11, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4079
    .local v9, strUri:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isTrimExists(Landroid/content/Context;)Z

    move-result v5

    .line 4080
    .local v5, isTrimExists:Z
    if-eqz v5, :cond_1

    .line 4081
    invoke-static {v2, v9}, Lcom/htc/album/helper/MenuManager;->callTrimApplication(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 4088
    .end local v5           #isTrimExists:Z
    .end local v9           #strUri:Ljava/lang/String;
    :sswitch_1
    const-string v11, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4089
    .restart local v9       #strUri:Ljava/lang/String;
    const-string v11, "data2"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4091
    .local v8, strData:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v11, :cond_2

    if-eqz v9, :cond_2

    if-nez v8, :cond_3

    .line 4093
    :cond_2
    const-string v11, "SceneLocalPhotoFullscreen"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[LocalGridview3DTemplate][onActivityResult][CommonMessageID.MSG_INTENT_TRIMAPP] adpater,data1,data2="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4097
    :cond_3
    sget-boolean v11, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v11, :cond_4

    .line 4098
    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/album/helper/MenuManager;->GetDataPathByUri1(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    .line 4100
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 4101
    .local v3, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->notifyDataSetChanged()V

    .line 4103
    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mEditedItemUri:Ljava/lang/String;

    goto :goto_1

    .line 4114
    .end local v3           #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    .end local v8           #strData:Ljava/lang/String;
    .end local v9           #strUri:Ljava/lang/String;
    :sswitch_2
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onActivityResult_CROP_NONE(ILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 4118
    :sswitch_3
    const-string v11, "DMR"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4119
    .local v7, selectDMR:Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 4121
    invoke-virtual {p0, v7}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onDMRChanged(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4125
    :cond_5
    const-string v11, "SceneLocalPhotoFullscreen"

    const-string v12, "[LocalGridview3DTemplate][onActivityResult]: MSG_PICK_DMR DMR is null."

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4131
    .end local v7           #selectDMR:Ljava/lang/String;
    :sswitch_4
    const-string v12, "itemIndex"

    iget-object v11, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v11, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v11}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 4132
    .local v6, newIndex:I
    iget-object v11, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v11}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v4

    .line 4133
    .local v4, intent:Landroid/content/Intent;
    const-string v11, "last_viewed_photo_index"

    invoke-virtual {v4, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4134
    iget-object v11, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getThumbnailSceneId()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v11, v12, v13, v14}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 4139
    .end local v4           #intent:Landroid/content/Intent;
    .end local v6           #newIndex:I
    :sswitch_5
    const-string v11, "file_operation_target_folder_location"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4140
    .local v10, targetLocation:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    if-eqz v11, :cond_1

    .line 4141
    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v11, v10}, Lcom/htc/album/helper/FileOperationManager;->doCopyMoveOperation(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4072
    :sswitch_data_0
    .sparse-switch
        0x1398 -> :sswitch_3
        0x13ba -> :sswitch_1
        0x13bb -> :sswitch_0
        0x1458 -> :sswitch_5
        0x7f00 -> :sswitch_2
        0x7f08 -> :sswitch_2
        0x330010 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onActivityResult_CROP_NONE(ILandroid/content/Intent;)V
    .locals 4
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 4153
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneLocalPhotoFullscreen][RotateListener][onActivityResult_CROP_NONE] + "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4155
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 4156
    .local v1, extras:Landroid/os/Bundle;
    const-string v2, "filePath"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4157
    .local v0, dstFilePath:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 4159
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "image/jpeg"

    invoke-static {v2, v0, v3}, Lcom/htc/album/AlbumUtility/MediaScannerRes;->SyncScanSingleFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 4162
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mEditedItemUri:Ljava/lang/String;

    .line 4163
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneLocalPhotoFullscreen][RotateListener][onActivityResult_CROP_NONE] - "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4164
    return-void
.end method

.method public onAnimationBegin()V
    .locals 3

    .prologue
    .line 4604
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 4606
    .local v0, nIndex:I
    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onTransformBegin(I)V

    .line 4608
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsForeground:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4610
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4612
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showContinuousShotIndicator(Z)V

    .line 4615
    :cond_0
    return-void
.end method

.method public onAnimationEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4618
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 4620
    .local v0, nIndex:I
    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onTransformEnd(I)V

    .line 4622
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsForeground:Z

    if-ne v1, v2, :cond_0

    .line 4624
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreen()Z

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4626
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showContinuousShotIndicator(Z)V

    .line 4629
    :cond_0
    return-void
.end method

.method public onAnimationEnd(I)V
    .locals 3
    .parameter "nAnimState"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1686
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onAnimationEnd(I)V

    .line 1687
    packed-switch p1, :pswitch_data_0

    .line 1716
    :cond_0
    :goto_0
    return-void

    .line 1691
    :pswitch_0
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_1

    const-string v0, "profiler.performance"

    invoke-static {v0, v2}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1692
    :cond_1
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](302) [OTHER][Gallery][FSVBackKeyToGV][FINISH]\u2026"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1699
    :pswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->resumePreparator(Z)V

    .line 1700
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1706
    :goto_1
    if-nez p1, :cond_0

    .line 1708
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_2

    const-string v0, "profiler.performance"

    invoke-static {v0, v2}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1710
    :cond_2
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](304) [LAUNCH_TIME][Gallery][Thumb2Full][DATA_READY]\u2026"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1704
    :cond_3
    const/16 v0, 0x4e3c

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRemoveMessage(I)V

    goto :goto_1

    .line 1687
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationSwitched()V
    .locals 2

    .prologue
    .line 4632
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 4634
    .local v0, nIndex:I
    return-void
.end method

.method public onBack()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 992
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-nez v1, :cond_1

    .line 994
    const-string v1, "SceneLocalPhotoFullscreen"

    const-string v2, "[HTCAlbum][SceneLocalPhotoFullscreen][onBack] mMainView is null"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v1, v4}, Lcom/htc/album/PaintManager/HtcPaintManager;->doRequestForceSave(Z)Z

    move-result v1

    if-ne v4, v1, :cond_2

    .line 1006
    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$asyncReqConsumeInkThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$asyncReqConsumeInkThread;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    new-array v2, v4, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$asyncReqConsumeInkThread;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1010
    :goto_1
    return-void

    .line 998
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    .line 999
    .local v0, renderThread:Lcom/htc/sunnyCore/RenderThread;
    if-eqz v0, :cond_0

    .line 1001
    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->cancelForceDisableRenderingBeforeTimeMillis()V

    goto :goto_0

    .line 1008
    .end local v0           #renderThread:Lcom/htc/sunnyCore/RenderThread;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPostBack()V

    goto :goto_1
.end method

.method public onBackPressed()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 883
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-nez v1, :cond_0

    .line 885
    const-string v1, "SceneLocalPhotoFullscreen"

    const-string v3, "[HTCAlbum][SceneLocalPhotoFullscreen][onBackPressed] mMainView is null"

    invoke-static {v1, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 913
    :goto_0
    return v1

    .line 888
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    .line 889
    .local v0, renderThread:Lcom/htc/sunnyCore/RenderThread;
    if-eqz v0, :cond_1

    .line 891
    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->cancelForceDisableRenderingBeforeTimeMillis()V

    .line 893
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 895
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->unzoomCenter()V

    :goto_1
    move v1, v3

    .line 913
    goto :goto_0

    .line 897
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isEnabledFullScreenAndInFilmstrip()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 899
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->forceFilmstripViewAlign()V

    goto :goto_1

    .line 903
    :cond_3
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v1, v3}, Lcom/htc/album/PaintManager/HtcPaintManager;->doRequestForceSave(Z)Z

    move-result v1

    if-ne v3, v1, :cond_4

    .line 905
    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$asyncReqConsumeInkThread;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$asyncReqConsumeInkThread;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    new-array v4, v3, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v1, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$asyncReqConsumeInkThread;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 909
    :cond_4
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPostBackPressed()V

    goto :goto_1
.end method

.method public onBindAdapter()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 672
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onBindAdapter()V

    .line 675
    invoke-direct {p0, v5, v7}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmFileNameBar(ZZ)V

    .line 677
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getStartupIndex()I

    move-result v2

    iput v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mStartupIndex:I

    .line 679
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SceneLocalPhotoFullscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneLocalPhotoFullscreen][onBindAdapter] Start Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mStartupIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    iget v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mStartupIndex:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunnyCore/IMediaList;I)V

    .line 683
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 684
    .local v0, activity:Landroid/app/Activity;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v1

    .line 685
    .local v1, fragment:Landroid/app/Fragment;
    new-instance v3, Lcom/htc/album/helper/DeleteManager;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v2

    new-instance v4, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DeleteListener;

    invoke-direct {v4, p0, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DeleteListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    invoke-direct {v3, v1, v2, v4}, Lcom/htc/album/helper/DeleteManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 688
    if-nez v1, :cond_4

    .line 690
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HTCAlbum][SceneLocalPhotoFullscreen][onBindAdapter]fragment is null"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    :goto_0
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 700
    invoke-static {v0, v6, v7}, Lcom/htc/album/PaintManager/HtcPaintManager;->disableSketcher(Landroid/app/Activity;Landroid/view/Window;Z)V

    .line 702
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-eqz v2, :cond_2

    .line 704
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v2, v0, v5}, Lcom/htc/album/PaintManager/HtcPaintManager;->enablePaintView(Landroid/app/Activity;Z)V

    .line 705
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v2, v0, v5}, Lcom/htc/album/PaintManager/HtcPaintManager;->enablePenMenu(Landroid/app/Activity;Z)V

    .line 707
    :cond_2
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 708
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HTCAlbum][SceneLocalPhotoFullscreen][onBindAdapter] - "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    :cond_3
    const/16 v2, 0x2724

    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRemoveMessage(I)V

    .line 711
    const/16 v2, 0x2728

    invoke-virtual {p0, v2, v6, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    .line 712
    return-void

    .line 694
    :cond_4
    new-instance v3, Lcom/htc/album/helper/ImageProcessManager;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    new-instance v4, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageProcessListener;

    invoke-direct {v4, p0, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageProcessListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    invoke-direct {v3, v1, v2, v4}, Lcom/htc/album/helper/ImageProcessManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/TabPluginDevice/ObserverAdapter;Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;)V

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    .line 695
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v2, v3}, Lcom/htc/album/helper/MenuManager;->setOnMenuItemSelectedListener(Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;)V

    goto :goto_0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4861
    invoke-static {p2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageDisconnected(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4863
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HTCAlbum][SceneLocalPhotoFullscreen][onBroadcastReceive] ACTION_MEDIA_UNMOUNTED"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4864
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    if-eqz v0, :cond_0

    .line 4866
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/FileOperationManager;->setStorageProblemState()V

    .line 4867
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/FileOperationManager;->cancel()V

    .line 4870
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onBubbleDismissed()V
    .locals 3

    .prologue
    .line 2392
    const/16 v0, 0x4e3c

    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    .line 2393
    return-void
.end method

.method public onBubblePopped()V
    .locals 1

    .prologue
    .line 2382
    const/16 v0, 0x4e3c

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRemoveMessage(I)V

    .line 2383
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .parameter "newConfig"

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0xc

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 2721
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2722
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOrientation:I

    .line 2723
    iput-boolean v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOrientationHasChanged:Z

    .line 2724
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    if-eqz v4, :cond_0

    .line 2726
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->resetCurrentIndex()V

    .line 2727
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    invoke-virtual {v4}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->setScreenRotateBegin()V

    .line 2728
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    invoke-virtual {v4}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->doDispatch()V

    .line 2732
    :cond_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 2733
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2734
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v2

    .line 2735
    .local v2, footer:Landroid/view/View;
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2736
    .local v0, continuousLP:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v2, :cond_1

    .line 2737
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v8, :cond_3

    .line 2738
    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v4

    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2739
    invoke-virtual {v0, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2751
    .end local v0           #continuousLP:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #footer:Landroid/view/View;
    :cond_1
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v3, v4, Landroid/content/res/Configuration;->orientation:I

    .line 2752
    .local v3, ori:I
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2754
    if-ne v3, v6, :cond_4

    .line 2756
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v4}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2757
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v4}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2758
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v4}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2777
    .end local v3           #ori:I
    :cond_2
    :goto_1
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[HTCAlbum][SceneLocalPhotoFullscreen][onConfigurationChanged]: ..."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2778
    return-void

    .line 2742
    .restart local v0       #continuousLP:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v2       #footer:Landroid/view/View;
    :cond_3
    invoke-virtual {v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2743
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 2762
    .end local v0           #continuousLP:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #footer:Landroid/view/View;
    .restart local v3       #ori:I
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v4}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2763
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v4}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2764
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v4}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2772
    .end local v3           #ori:I
    :catch_0
    move-exception v1

    .line 2774
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[HTCAlbum][SceneLocalPhotoFullscreen][onConfigurationChanged]change DRM file name bar orientation failed."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1735
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_0

    .line 1737
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HTCAlbum][SceneLocalPhotoFullscreen][onControlButtonClick] mSceneControl parameter is null..."

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    :goto_0
    return-void

    .line 1740
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 1741
    .local v1, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1743
    .local v0, activity:Landroid/app/Activity;
    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getGroupId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1745
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onShare(I)V

    goto :goto_0

    .line 1749
    :cond_1
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 1844
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showShare(Lcom/htc/album/modules/ui/widget/ControlButton;)V

    goto :goto_0

    .line 1753
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onSelectPlayer()V

    goto :goto_0

    .line 1758
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onDelete()V

    goto :goto_0

    .line 1763
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onCamera()V

    goto :goto_0

    .line 1769
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onBack()V

    goto :goto_0

    .line 1774
    :sswitch_5
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onSaveAs2D()V

    goto :goto_0

    .line 1779
    :sswitch_6
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onCrop()V

    goto :goto_0

    .line 1784
    :sswitch_7
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onEffects()V

    goto :goto_0

    .line 1789
    :sswitch_8
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRotateRight()V

    goto :goto_0

    .line 1794
    :sswitch_9
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRotateLeft()V

    goto :goto_0

    .line 1799
    :sswitch_a
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onSetAs()V

    goto :goto_0

    .line 1804
    :sswitch_b
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onFavorite()V

    goto :goto_0

    .line 1809
    :sswitch_c
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onTrim()V

    goto :goto_0

    .line 1814
    :sswitch_d
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onSlideShow()V

    goto :goto_0

    .line 1819
    :sswitch_e
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPrint()V

    goto :goto_0

    .line 1824
    :sswitch_f
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onShowOnMap()V

    goto :goto_0

    .line 1829
    :sswitch_10
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onDetails()V

    goto :goto_0

    .line 1834
    :sswitch_11
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onProtectionInfo()V

    goto :goto_0

    .line 1839
    :sswitch_12
    invoke-static {v1}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoVod(Landroid/content/Context;)V

    goto :goto_0

    .line 1849
    :sswitch_13
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showEdit(Lcom/htc/album/modules/ui/widget/ControlButton;)V

    goto :goto_0

    .line 1854
    :sswitch_14
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showMore(Lcom/htc/album/modules/ui/widget/ControlButton;)V

    goto :goto_0

    .line 1859
    :sswitch_15
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->initFileOperationManager()V

    .line 1860
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    sget-object v3, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_MOVE:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    invoke-virtual {v2, v3}, Lcom/htc/album/helper/FileOperationManager;->setOperationType(Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)V

    .line 1861
    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->openFileOperationFolderSelector(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1866
    :sswitch_16
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->initFileOperationManager()V

    .line 1867
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    sget-object v3, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_COPY:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    invoke-virtual {v2, v3}, Lcom/htc/album/helper/FileOperationManager;->setOperationType(Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)V

    .line 1868
    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->openFileOperationFolderSelector(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1749
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x7 -> :sswitch_a
        0xa -> :sswitch_13
        0xb -> :sswitch_10
        0xc -> :sswitch_11
        0xd -> :sswitch_d
        0xe -> :sswitch_c
        0xf -> :sswitch_1
        0x11 -> :sswitch_14
        0x12 -> :sswitch_e
        0x13 -> :sswitch_4
        0x15 -> :sswitch_4
        0x16 -> :sswitch_5
        0x17 -> :sswitch_6
        0x18 -> :sswitch_7
        0x19 -> :sswitch_8
        0x1a -> :sswitch_9
        0x1b -> :sswitch_f
        0x1c -> :sswitch_b
        0x29 -> :sswitch_12
        0x3e -> :sswitch_15
        0x3f -> :sswitch_16
    .end sparse-switch
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 7
    .parameter "nAnimState"

    .prologue
    const/4 v6, 0x0

    .line 1641
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1642
    .local v0, animationBundle:Landroid/os/Bundle;
    iput p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimationState:I

    .line 1645
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 1646
    .local v3, view:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 1647
    .local v2, sceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    .line 1648
    .local v1, idx:I
    invoke-virtual {v3, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->queryItemImageTexture(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1649
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$5;

    invoke-direct {v5, p0, v3, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$5;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/sunny2/fullfilmview/FullFilmView;ILcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 1672
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 1682
    :cond_1
    :goto_1
    return-object v0

    .line 1667
    :cond_2
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    .line 1668
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->resumePreparator(Z)V

    .line 1669
    sget-boolean v4, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[SceneLocalPhotoFullscreen] [onCreateAnimation] wait texture ready time: 0"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1674
    :pswitch_0
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1676
    const/16 v4, 0x4e4a

    invoke-virtual {p0, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRemoveMessage(I)V

    .line 1677
    const/16 v4, 0x4e4b

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_1

    .line 1672
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 5
    .parameter "id"

    .prologue
    .line 3877
    const-string v3, "SceneLocalPhotoFullscreen"

    const-string v4, "[HtcAlbum][SceneLocalPhotoFullScreen][onCreateFooterBar] + "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3878
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_2

    .line 3880
    :cond_0
    const-string v3, "SceneLocalPhotoFullscreen"

    const-string v4, "[HtcAlbum][SceneLocalPhotoFullScreen][onCreateFooterBar]can\'t get context"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3881
    const/4 v2, 0x0

    .line 3893
    :cond_1
    :goto_0
    return-object v2

    .line 3883
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3885
    .local v0, context:Landroid/content/Context;
    const/4 v2, 0x0

    .line 3886
    .local v2, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->enableRightFooter()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v2

    .line 3888
    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 3889
    .local v1, footer:Landroid/view/ViewGroup;
    instance-of v3, v1, Lcom/htc/widget/HtcFooter;

    if-eqz v3, :cond_1

    .line 3890
    check-cast v1, Lcom/htc/widget/HtcFooter;

    .end local v1           #footer:Landroid/view/ViewGroup;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    goto :goto_0
.end method

.method public onCreateFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 3
    .parameter "id"
    .parameter "extras"

    .prologue
    const/4 v1, 0x1

    .line 323
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/album/helper/DeleteManager;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 324
    .local v0, dlg:Z
    if-eqz v0, :cond_1

    .line 329
    :cond_0
    :goto_0
    return v1

    .line 326
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/album/helper/ImageProcessManager;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 327
    if-nez v0, :cond_0

    .line 329
    invoke-super {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_0
.end method

.method public onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;
    .locals 13

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x1

    .line 371
    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "SceneLocalPhotoFullscreen"

    const-string v11, "[HTCAlbum][SceneLocalPhotoFullscreen][onCreateScene] + "

    invoke-static {v9, v11}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_0
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    .line 374
    .local v2, activity:Landroid/app/Activity;
    if-nez v2, :cond_2

    .line 375
    const-string v9, "SceneLocalPhotoFullscreen"

    const-string v11, "[HTCAlbum][SceneLocalPhotoFullscreen][onCreateScene] -: Activity is null"

    invoke-static {v9, v11}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v10

    .line 459
    :cond_1
    :goto_0
    return-object v5

    .line 379
    :cond_2
    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 380
    .local v3, context:Landroid/content/Context;
    new-instance v4, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v9

    invoke-direct {v4, v3, v9}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    .line 381
    .local v4, fsvi:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
    new-instance v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v9

    invoke-direct {v6, v3, v9}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    .line 382
    .local v6, fvci:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    new-instance v5, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v9

    invoke-direct {v5, v3, v9, v4, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V

    .line 383
    .local v5, fullfilmview:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    new-instance v9, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-direct {v9, v3}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    .line 384
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 385
    .local v7, inValue:Landroid/os/Bundle;
    const-string v9, "TEXTURE_MAX_COUNT"

    const/16 v11, 0x24

    invoke-virtual {v7, v9, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 386
    const-string v9, "CACHE_SET"

    const/16 v11, 0xc

    invoke-virtual {v7, v9, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 387
    const-string v9, "FULL_MEM_CAHCE_SIZE"

    const/4 v11, 0x3

    invoke-virtual {v7, v9, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 388
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isFileCachable()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 389
    const-string v9, "FULL_FILE_CAHCE_SIZE"

    const/16 v11, 0xa

    invoke-virtual {v7, v9, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 391
    :cond_3
    const-string v9, "FULL_FILM_FLAG"

    invoke-virtual {v7, v9, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 392
    sget-boolean v9, Lcom/htc/album/AlbumCommon/LayoutConstants;->IS_FULLHD_OR_HIGHER:Z

    if-eqz v9, :cond_4

    .line 394
    const-string v9, "IS_ENABLE_HALF_PREFER_SIZE"

    invoke-virtual {v7, v9, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 397
    :cond_4
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 398
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, action:Ljava/lang/String;
    if-eqz v8, :cond_5

    const-string v9, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 402
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->raisePriorityOnce()V

    .line 405
    :cond_5
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    instance-of v9, v9, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    if-eqz v9, :cond_8

    const-string v9, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 408
    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    check-cast v9, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v9}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getInitBackgroundCallback()Lcom/htc/sunnyCore/view/SSurfaceViewInitBackgroundCallback;

    move-result-object v9

    invoke-virtual {v11, v3, v7, v9}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Landroid/os/Bundle;Lcom/htc/sunnyCore/view/SSurfaceViewInitBackgroundCallback;)V

    .line 414
    :goto_1
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v9, v5}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunnyCore/Preparator$UpdateListener;)V

    .line 415
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v5, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPreparation(Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;)V

    .line 416
    new-instance v9, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;

    invoke-direct {v9, p0, v10}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;

    .line 417
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;

    invoke-virtual {v5, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPanZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    .line 418
    new-instance v9, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ViewScrollStateChangedListener;

    invoke-direct {v9, p0, v10}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ViewScrollStateChangedListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    invoke-virtual {v5, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnScrollListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;)V

    .line 419
    new-instance v9, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FilmstripItemSelectedListner;

    invoke-direct {v9, p0, v10}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FilmstripItemSelectedListner;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    invoke-virtual {v5, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemSelectedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;)V

    .line 420
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOnItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;

    invoke-virtual {v5, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemClickListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;)V

    .line 421
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOnItemTouchedListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemTouchedListener;

    invoke-virtual {v5, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemTouchedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;)V

    .line 423
    const-string v9, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eq v12, v9, :cond_6

    const-string v9, "com.htc.album.action.VIEW_FOLDER"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-ne v12, v9, :cond_7

    .line 426
    :cond_6
    const-string v9, "from_outside"

    invoke-virtual {v8, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 430
    :cond_7
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 435
    iput-boolean v12, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mEnablePaintView:Z

    .line 437
    new-instance v9, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

    invoke-direct {v9, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mActionBarVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

    .line 448
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 449
    .local v1, actionBar:Landroid/app/ActionBar;
    if-nez v1, :cond_9

    .line 451
    const-string v9, "SceneLocalPhotoFullscreen"

    const-string v10, "[HTCAlbum][SceneLocalPhotoFullscreen][onCreateScene] -: ActionBar is null"

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 411
    .end local v1           #actionBar:Landroid/app/ActionBar;
    :cond_8
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v9, v3, v7}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_1

    .line 455
    .restart local v1       #actionBar:Landroid/app/ActionBar;
    :cond_9
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mActionBarVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

    invoke-virtual {v1, v9}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 458
    .end local v1           #actionBar:Landroid/app/ActionBar;
    :cond_a
    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "SceneLocalPhotoFullscreen"

    const-string v10, "[HTCAlbum][SceneLocalPhotoFullscreen][onCreateScene] - "

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunnyCore/view/SView;
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    .locals 2

    .prologue
    .line 577
    new-instance v1, Lcom/htc/album/Animation/animationSetFullscreenview;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-direct {v1, v0}, Lcom/htc/album/Animation/animationSetFullscreenview;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    return-object v1
.end method

.method public onDestroyScene()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 545
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPanZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    .line 546
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnScrollListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;)V

    .line 547
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemSelectedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;)V

    .line 548
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemClickListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;)V

    .line 550
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 552
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 554
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 556
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mActionBarVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 560
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    if-eqz v1, :cond_1

    .line 562
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v1}, Lcom/htc/album/helper/FileOperationManager;->release()V

    .line 563
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    .line 566
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFileOperationDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    if-eqz v1, :cond_2

    .line 568
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFileOperationDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    invoke-virtual {v1}, Lcom/htc/album/helper/FileOperationDialogManager;->cancel()V

    .line 569
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFileOperationDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    .line 571
    :cond_2
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onDestroyScene()V

    .line 572
    return-void
.end method

.method protected onDetails()V
    .locals 7

    .prologue
    .line 2662
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    .line 2663
    .local v6, context:Landroid/content/Context;
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/album/addons/SingleCollection;

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    .line 2665
    .local v5, isViewSingle:Z
    :goto_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/helper/MenuManager;->showItemDetails(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)V

    .line 2669
    return-void

    .line 2663
    .end local v5           #isViewSingle:Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onDismissFragmentDialog(I)Z
    .locals 3
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    .line 335
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v2, p1}, Lcom/htc/album/helper/DeleteManager;->onDismissFragmentDialog(I)Z

    move-result v0

    .line 336
    .local v0, dlg:Z
    if-eqz v0, :cond_1

    .line 341
    :cond_0
    :goto_0
    return v1

    .line 338
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v2, p1}, Lcom/htc/album/helper/ImageProcessManager;->onDismissFragmentDialog(I)Z

    move-result v0

    .line 339
    if-nez v0, :cond_0

    .line 341
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onDismissFragmentDialog(I)Z

    move-result v1

    goto :goto_0
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 1268
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 1260
    const/4 v0, 0x1

    return v0
.end method

.method public final onEnterFullscreenMode()V
    .locals 1

    .prologue
    .line 1583
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1594
    :cond_0
    :goto_0
    return-void

    .line 1586
    :cond_1
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1589
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    .line 1593
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->hideControlBars()V

    goto :goto_0
.end method

.method public onEnterImage(I)V
    .locals 7
    .parameter "nIndex"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4547
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/PaintManager/Interface/IPaintings;

    .line 4548
    .local v1, iPaintings:Lcom/htc/album/PaintManager/Interface/IPaintings;
    if-nez v1, :cond_1

    .line 4580
    :cond_0
    :goto_0
    return-void

    .line 4550
    :cond_1
    invoke-interface {v1, p1}, Lcom/htc/album/PaintManager/Interface/IPaintings;->getPaintItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/PaintManager/PaintViewItem;

    .line 4551
    .local v2, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-eqz v2, :cond_0

    .line 4555
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 4557
    .local v0, activity:Landroid/app/Activity;
    invoke-interface {v1, p1}, Lcom/htc/album/PaintManager/Interface/IPaintings;->isPaintable(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4559
    invoke-static {v0, v6, v5}, Lcom/htc/album/PaintManager/HtcPaintManager;->disableSketcher(Landroid/app/Activity;Landroid/view/Window;Z)V

    .line 4560
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v3, v0, v4}, Lcom/htc/album/PaintManager/HtcPaintManager;->enablePaintView(Landroid/app/Activity;Z)V

    .line 4562
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v3, v4}, Lcom/htc/album/PaintManager/HtcPaintManager;->showPenMenu(Z)V

    .line 4563
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v3, v0, v4}, Lcom/htc/album/PaintManager/HtcPaintManager;->enablePenMenu(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 4567
    :cond_2
    invoke-static {v0, v6, v4}, Lcom/htc/album/PaintManager/HtcPaintManager;->disableSketcher(Landroid/app/Activity;Landroid/view/Window;Z)V

    .line 4568
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v3, v0, v5}, Lcom/htc/album/PaintManager/HtcPaintManager;->enablePaintView(Landroid/app/Activity;Z)V

    .line 4569
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v3, v0, v5}, Lcom/htc/album/PaintManager/HtcPaintManager;->enablePenMenu(Landroid/app/Activity;Z)V

    .line 4573
    invoke-interface {v1, p1}, Lcom/htc/album/PaintManager/Interface/IPaintings;->requestInkCachePaint(I)V

    .line 4577
    invoke-interface {v1, p1}, Lcom/htc/album/PaintManager/Interface/IPaintings;->requestInkCacheData(I)V

    goto :goto_0
.end method

.method public onEnterImageIHT(II)I
    .locals 20
    .parameter "nIndexPrev"
    .parameter "nIndexNext"

    .prologue
    .line 2785
    move/from16 v14, p1

    .line 2787
    .local v14, nIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 2789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2791
    .local v8, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v8, :cond_2

    .line 2793
    const-string v17, "video/x-wmv-drm"

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 2794
    .local v13, isWMDrm:Z
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v17, v8

    check-cast v17, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    move-object/from16 v6, v17

    .line 2795
    .local v6, drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :goto_0
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v17

    if-nez v17, :cond_0

    if-eqz v13, :cond_7

    :cond_0
    const/4 v11, 0x1

    .line 2796
    .local v11, isDRM:Z
    :goto_1
    if-eqz v13, :cond_8

    const/4 v5, 0x1

    .line 2797
    .local v5, drmType:I
    :goto_2
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_a

    const/4 v12, 0x1

    .line 2798
    .local v12, isDRMFL:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    if-eqz v11, :cond_1

    .line 2800
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 2801
    .local v4, displayName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    move-object/from16 v17, v0

    const v18, 0x7f09005e

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->setText(ILjava/lang/String;)V

    .line 2802
    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmDecoded:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 2804
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmFileNameBar(ZZ)V

    .line 2808
    .end local v4           #displayName:Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBurstPhoto()Z

    move-result v17

    if-nez v17, :cond_2

    .line 2809
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showContinuousShotIndicator(Z)V

    .line 2814
    .end local v5           #drmType:I
    .end local v6           #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    .end local v8           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v11           #isDRM:Z
    .end local v12           #isDRMFL:Z
    .end local v13           #isWMDrm:Z
    :cond_2
    const/4 v8, 0x0

    .line 2815
    .restart local v8       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 2816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v8

    .end local v8           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    check-cast v8, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2819
    .restart local v8       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_3
    const/16 v17, 0x1

    sget-boolean v18, Lcom/htc/opensense2/album/AlbumCommon/Constants;->FLAG_ENABLE_BURSTSHOT_MODE:Z

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsAnimateDispatcherSetListener:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 2821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    move-object/from16 v17, v0

    new-instance v18, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageAnimationListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageAnimationListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    invoke-virtual/range {v17 .. v18}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->setListener(Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;)V

    .line 2822
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsAnimateDispatcherSetListener:Z

    .line 2825
    :cond_4
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v17

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    if-eqz v8, :cond_c

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v17

    if-nez v17, :cond_c

    .line 2826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    .line 2827
    .local v3, activity:Landroid/app/Activity;
    if-eqz v3, :cond_c

    .line 2828
    const/4 v15, 0x0

    .line 2829
    .local v15, shouldSet:Z
    move/from16 v10, p1

    .line 2830
    .local v10, indexNext:I
    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_5

    .line 2832
    const/4 v15, 0x1

    .line 2833
    move/from16 v10, p2

    .line 2835
    :cond_5
    move/from16 v16, v15

    .line 2836
    .local v16, shouldSetIndex:Z
    move v9, v10

    .line 2838
    .local v9, index:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v7

    .line 2839
    .local v7, handler:Landroid/os/Handler;
    if-nez v7, :cond_b

    move v9, v14

    .line 3003
    .end local v3           #activity:Landroid/app/Activity;
    .end local v7           #handler:Landroid/os/Handler;
    .end local v9           #index:I
    .end local v10           #indexNext:I
    .end local v15           #shouldSet:Z
    .end local v16           #shouldSetIndex:Z
    :goto_4
    return v9

    .line 2794
    .restart local v13       #isWMDrm:Z
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2795
    .restart local v6       #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 2796
    .restart local v11       #isDRM:Z
    :cond_8
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v5

    goto/16 :goto_2

    :cond_9
    const/4 v5, -0x1

    goto/16 :goto_2

    .line 2797
    .restart local v5       #drmType:I
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 2842
    .end local v5           #drmType:I
    .end local v6           #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    .end local v11           #isDRM:Z
    .end local v13           #isWMDrm:Z
    .restart local v3       #activity:Landroid/app/Activity;
    .restart local v7       #handler:Landroid/os/Handler;
    .restart local v9       #index:I
    .restart local v10       #indexNext:I
    .restart local v15       #shouldSet:Z
    .restart local v16       #shouldSetIndex:Z
    :cond_b
    new-instance v17, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v0, v1, v3, v2, v9}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Landroid/app/Activity;ZI)V

    const-wide/16 v18, 0xc8

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 2885
    .end local v3           #activity:Landroid/app/Activity;
    .end local v7           #handler:Landroid/os/Handler;
    .end local v9           #index:I
    .end local v10           #indexNext:I
    .end local v15           #shouldSet:Z
    .end local v16           #shouldSetIndex:Z
    :cond_c
    if-eqz v8, :cond_e

    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isSupportNfc()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 2887
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v17

    if-nez v17, :cond_d

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBurstPhoto()Z

    move-result v17

    if-nez v17, :cond_d

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v17

    if-eqz v17, :cond_11

    .line 2890
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    .line 2891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setNfcNdefPushMessage(Landroid/app/Activity;)V

    .line 2901
    :cond_e
    :goto_5
    move/from16 v0, p2

    if-ne v14, v0, :cond_12

    .line 2903
    sget-boolean v17, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v17, :cond_f

    const-string v17, "SceneLocalPhotoFullscreen"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[HtcAlbum][SceneLocalPhotoFullScreen][onEnterImageIHT]: on the spot: mIndex: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2916
    :cond_f
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsForeground:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 2918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreen()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v17

    if-nez v17, :cond_10

    .line 2920
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showContinuousShotIndicator(Z)V

    .line 2924
    :cond_10
    sget-boolean v17, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-nez v17, :cond_14

    move v9, v14

    .line 2927
    goto/16 :goto_4

    .line 2895
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    .line 2896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setNfcBeamPushUris(Landroid/app/Activity;)V

    goto :goto_5

    .line 2907
    :cond_12
    move/from16 v14, p2

    .line 2908
    sget-boolean v17, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v17, :cond_13

    const-string v17, "SceneLocalPhotoFullscreen"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[HtcAlbum][SceneLocalPhotoFullScreen][onEnterImageIHT]: mIndex = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2910
    :cond_13
    sget-boolean v17, Lcom/htc/opensense2/album/AlbumCommon/Constants;->FLAG_ENABLE_BURSTSHOT_MODE:Z

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f

    .line 2912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->setIndex(I)V

    goto/16 :goto_6

    .line 2930
    :cond_14
    move/from16 v0, p2

    if-ne v14, v0, :cond_15

    .line 2932
    const-string v17, "SceneLocalPhotoFullscreen"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[HtcAlbum][SceneLocalPhotoFullScreen][onEnterImageIHT]: on the spot: mIndex: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    move v9, v14

    .line 3003
    goto/16 :goto_4

    .line 2936
    :cond_15
    move/from16 v14, p2

    .line 2937
    const-string v17, "SceneLocalPhotoFullscreen"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[HtcAlbum][SceneLocalPhotoFullScreen][onEnterImageIHT]: mIndex = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 582
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v2, :cond_0

    const-string v2, "profiler.performance"

    invoke-static {v2, v4}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 584
    :cond_0
    const-string v2, "AutoTest"

    const-string v3, "[AutoProf](303) [LAUNCH_TIME][Gallery][Thumb2Full][START]\u2026"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 590
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 591
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 592
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 594
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-nez v2, :cond_2

    .line 596
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->defaultControlBarOn()Z

    move-result v2

    invoke-virtual {p0, v5, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->createFooterBar(IZ)V

    .line 599
    :cond_2
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmRenewRightListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmRenewRightListener;

    invoke-static {v2}, Lcom/htc/opensense2/album/util/DrmManager;->registerRenewRightListener(Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;)V

    .line 600
    invoke-virtual {p0, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setEnableControlBarAnimation(Z)V

    .line 603
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isSupportNfc()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 605
    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->initNfcAdapter(Landroid/content/Context;)V

    .line 607
    :cond_3
    return-void
.end method

.method public onImageRotated(I)V
    .locals 4
    .parameter "nIndex"

    .prologue
    const/4 v3, 0x1

    .line 4584
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnablePaintView()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-nez v2, :cond_1

    .line 4596
    :cond_0
    :goto_0
    return-void

    .line 4586
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/PaintManager/Interface/IPaintings;

    .line 4587
    .local v0, iPaintings:Lcom/htc/album/PaintManager/Interface/IPaintings;
    invoke-interface {v0, p1}, Lcom/htc/album/PaintManager/Interface/IPaintings;->getPaintItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/PaintManager/PaintViewItem;

    .line 4588
    .local v1, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-eqz v1, :cond_0

    .line 4590
    invoke-virtual {p0, v3, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onTransformPaintPanZoom(ZZ)V

    .line 4592
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->resetCurrentIndex()V

    .line 4593
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    invoke-virtual {v2}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->setScreenRotateBegin()V

    .line 4594
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    invoke-virtual {v2}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->doDispatch()V

    goto :goto_0
.end method

.method public onLeaveScene()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 743
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SceneLocalPhotoFullscreen"

    const-string v4, "[HTCAlbum][SceneLocalPhotoFullscreen][onLeaveScene] + "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    :cond_0
    const/4 v3, 0x1

    invoke-direct {p0, v5, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmFileNameBar(ZZ)V

    .line 747
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    if-eqz v3, :cond_1

    .line 749
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v3}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 750
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 751
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_1

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 752
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 756
    .end local v1           #v:Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 758
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 759
    .restart local v0       #parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_2

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 760
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #parent:Landroid/view/ViewParent;
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 762
    :cond_2
    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    .line 765
    :cond_3
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 766
    iput-boolean v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mEnablePaintView:Z

    .line 769
    :cond_4
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-eqz v3, :cond_5

    .line 770
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    check-cast v2, Landroid/view/ViewGroup;

    .line 771
    .local v2, viewGroup:Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v3}, Lcom/htc/album/PaintManager/HtcPaintManager;->getPaintLayout()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 773
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v3}, Lcom/htc/album/PaintManager/HtcPaintManager;->onDestroy()V

    .line 774
    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    .line 777
    .end local v2           #viewGroup:Landroid/view/ViewGroup;
    :cond_5
    invoke-static {}, Lcom/htc/opensense2/album/util/DrmManager;->unregisterRenewRightListener()V

    .line 778
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onLeaveScene()V

    .line 781
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isSupportNfc()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 782
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->disableNfcBeamPushUris(Landroid/app/Activity;)V

    .line 784
    :cond_6
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string v3, "SceneLocalPhotoFullscreen"

    const-string v4, "[HTCAlbum][SceneLocalPhotoFullscreen][onLeaveScene] - "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :cond_7
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4174
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_0

    move v1, v2

    .line 4219
    :goto_0
    return v1

    .line 4176
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 4177
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v1, v2

    .line 4178
    goto :goto_0

    .line 4180
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 4219
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onMessage(Landroid/os/Message;)Z

    move-result v1

    goto :goto_0

    .line 4183
    :sswitch_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4184
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showContinuousShotIndicator_inUIThread(Z)V

    .line 4185
    :cond_3
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->hideControlBars()V

    .line 4186
    invoke-direct {p0, v2, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmFileNameBar(ZZ)V

    .line 4187
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->hideDRMIndicator()V

    move v1, v3

    .line 4188
    goto :goto_0

    :sswitch_1
    move v1, v3

    .line 4202
    goto :goto_0

    .line 4204
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onScrollStateChange(Landroid/os/Message;)V

    move v1, v3

    .line 4205
    goto :goto_0

    .line 4207
    :sswitch_3
    invoke-direct {p0, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showContinuousShotIndicator_inUIThread(Z)V

    move v1, v3

    .line 4208
    goto :goto_0

    .line 4210
    :sswitch_4
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showContinuousShotIndicator_inUIThread(Z)V

    move v1, v3

    .line 4211
    goto :goto_0

    .line 4213
    :sswitch_5
    sget-boolean v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->IS_FULLHD_OR_HIGHER:Z

    if-eqz v1, :cond_4

    .line 4215
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onDecodeExtremeQuality(Landroid/os/Message;)V

    :cond_4
    move v1, v3

    .line 4217
    goto :goto_0

    .line 4180
    :sswitch_data_0
    .sparse-switch
        0x4e3c -> :sswitch_0
        0x4e48 -> :sswitch_1
        0x4e4a -> :sswitch_3
        0x4e4b -> :sswitch_4
        0x4e4d -> :sswitch_5
        0x4f4f -> :sswitch_2
    .end sparse-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 365
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onNewAdapter(Landroid/os/Bundle;)V

    .line 366
    const/16 v0, 0x2724

    const/4 v1, 0x0

    const/16 v2, 0x258

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    .line 367
    return-void
.end method

.method public onNoTVToPlay()V
    .locals 1

    .prologue
    .line 4852
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mTVOutIndex:I

    .line 4853
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isSelectedImageDRM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4857
    :goto_0
    return-void

    .line 4856
    :cond_0
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onNoTVToPlay()V

    goto :goto_0
.end method

.method public onNotifyUpdateComplete()V
    .locals 6

    .prologue
    .line 868
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onNotifyUpdateComplete()V

    .line 870
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v5, "SceneLocalFolder"

    invoke-interface {v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->isSceneExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 871
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 872
    .local v1, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v2

    .line 874
    .local v2, intent:Landroid/content/Intent;
    const/16 v3, 0xff

    .line 875
    .local v3, mediaType:I
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 877
    .local v0, bundle:Landroid/os/Bundle;
    :goto_0
    invoke-static {v1, v0, v3}, Lcom/htc/album/ObjectWriter/AlbumCacher;->updateCache(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 879
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #mediaType:I
    :cond_0
    return-void

    .line 875
    .restart local v1       #context:Landroid/content/Context;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #mediaType:I
    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1431
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1433
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1435
    :cond_0
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneLocalPhotoFullScreen][onOptionsItemSelected]can\'t get context"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    .line 1558
    :goto_0
    return v2

    .line 1439
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1440
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1442
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v1, :cond_2

    .line 1444
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneLocalPhotoFullScreen][onOptionsItemSelected]can\'t get image"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    .line 1445
    goto :goto_0

    .line 1448
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    const/16 v3, 0x3039

    if-ne v2, v3, :cond_3

    .line 1450
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onShare(I)V

    move v2, v5

    .line 1451
    goto :goto_0

    .line 1454
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_1
    move v2, v5

    .line 1558
    goto :goto_0

    .line 1458
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onSelectPlayer()V

    goto :goto_1

    .line 1463
    :sswitch_1
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->turnOnTV(Landroid/content/Context;)Z

    goto :goto_1

    .line 1467
    :sswitch_2
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->turnOffTV(Landroid/content/Context;)V

    goto :goto_1

    .line 1472
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onDelete()V

    goto :goto_1

    .line 1477
    :sswitch_4
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onCamera()V

    goto :goto_1

    .line 1483
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onBack()V

    goto :goto_1

    .line 1488
    :sswitch_6
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onSaveAs2D()V

    goto :goto_1

    .line 1493
    :sswitch_7
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onCrop()V

    goto :goto_1

    .line 1498
    :sswitch_8
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onEffects()V

    goto :goto_1

    .line 1503
    :sswitch_9
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRotateRight()V

    goto :goto_1

    .line 1508
    :sswitch_a
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRotateLeft()V

    goto :goto_1

    .line 1513
    :sswitch_b
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onSetAs()V

    goto :goto_1

    .line 1518
    :sswitch_c
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onFavorite()V

    goto :goto_1

    .line 1523
    :sswitch_d
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onTrim()V

    goto :goto_1

    .line 1528
    :sswitch_e
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onSlideShow()V

    goto :goto_1

    .line 1533
    :sswitch_f
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPrint()V

    goto :goto_1

    .line 1538
    :sswitch_10
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onShowOnMap()V

    goto :goto_1

    .line 1543
    :sswitch_11
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onDetails()V

    goto :goto_1

    .line 1548
    :sswitch_12
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onProtectionInfo()V

    goto :goto_1

    .line 1553
    :sswitch_13
    invoke-static {v0}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoVod(Landroid/content/Context;)V

    goto :goto_1

    .line 1454
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x7 -> :sswitch_b
        0xb -> :sswitch_11
        0xc -> :sswitch_12
        0xd -> :sswitch_e
        0xe -> :sswitch_d
        0xf -> :sswitch_0
        0x12 -> :sswitch_f
        0x13 -> :sswitch_5
        0x15 -> :sswitch_5
        0x16 -> :sswitch_6
        0x17 -> :sswitch_7
        0x18 -> :sswitch_8
        0x19 -> :sswitch_9
        0x1a -> :sswitch_a
        0x1b -> :sswitch_10
        0x1c -> :sswitch_c
        0x29 -> :sswitch_13
        0x7f0a0183 -> :sswitch_1
        0x7f0a0184 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPaintDataReady(I)V
    .locals 11
    .parameter "nIndex"

    .prologue
    const/high16 v5, 0x3f80

    const/4 v3, 0x0

    .line 4659
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnablePaintView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-nez v0, :cond_1

    .line 4668
    :cond_0
    :goto_0
    return-void

    .line 4661
    :cond_1
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v9, Lcom/htc/album/PaintManager/Interface/IPaintings;

    .line 4662
    .local v9, iPaintings:Lcom/htc/album/PaintManager/Interface/IPaintings;
    invoke-interface {v9, p1}, Lcom/htc/album/PaintManager/Interface/IPaintings;->getPaintItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/album/PaintManager/PaintViewItem;

    .line 4663
    .local v10, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-eqz v10, :cond_0

    .line 4665
    const-string v0, "SceneLocalPhotoFullscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][FullscreenZoomListener][PaintUpdateListener]: onPaintDataReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4666
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1, p1, v0}, Lcom/htc/album/PaintManager/HtcPaintManager;->setPenAlpha(ILcom/htc/sunny2/fullfilmview/FullFilmView;)V

    .line 4667
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v10}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkPaint()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v1, p1

    move v4, v3

    move v6, v5

    invoke-virtual/range {v0 .. v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPaintLayerBMPIHT(ILandroid/graphics/Bitmap;FFFFILcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 498
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v1, :cond_1

    .line 500
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->purgeTextureMapsForMemory(Z)Z

    .line 501
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getTileDecoder()Lcom/htc/sunny2/fullfilmview/TileDecoder;

    move-result-object v0

    .line 502
    .local v0, tileDecoder:Lcom/htc/sunny2/fullfilmview/TileDecoder;
    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->setValid(Z)V

    .line 505
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->freeBitmapRegionDecoder()V

    .line 507
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->purgeTileTextures()V

    .line 508
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 510
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->unzoomCenter()V

    .line 514
    .end local v0           #tileDecoder:Lcom/htc/sunny2/fullfilmview/TileDecoder;
    :cond_1
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnablePaintView()Z

    move-result v1

    if-ne v3, v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-eqz v1, :cond_2

    .line 516
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/HtcPaintManager;->onPause()V

    .line 519
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v1, :cond_3

    .line 520
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->resumePreparator(Z)V

    .line 523
    :cond_3
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->resetCurrentIndex()V

    .line 525
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onPause()V

    .line 526
    return-void
.end method

.method protected onPhaseInScreenControl(I)V
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 1613
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1619
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onPhaseInScreenControl(I)V

    .line 1620
    return-void

    .line 1617
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setEnableControlBarAnimation(Z)V

    goto :goto_0
.end method

.method protected onPhaseOutScreenControl(I)V
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 1601
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1607
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onPhaseOutScreenControl(I)V

    .line 1608
    return-void

    .line 1605
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setEnableControlBarAnimation(Z)V

    goto :goto_0
.end method

.method protected onPostBack()V
    .locals 4

    .prologue
    .line 1013
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onLastViewItemUpdate()V

    .line 1014
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getThumbnailSceneId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 1018
    :cond_0
    return-void
.end method

.method protected onPostBackPressed()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 937
    const/4 v0, 0x0

    .line 938
    .local v0, action:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v3

    .line 939
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 941
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 943
    :cond_0
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreen()Z

    move-result v2

    .line 945
    .local v2, bIsFullScreen:Z
    if-nez v2, :cond_1

    .line 946
    invoke-virtual {p0, v9}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onDisableTransitionAnimation(Z)V

    .line 948
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onLastViewItemUpdate()V

    .line 949
    const-string v6, "com.htc.album.action.DLNA_VIEW_LOCAL_PHOTO"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 951
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getThumbnailSceneId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8, v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 983
    :goto_0
    return-void

    .line 955
    :cond_2
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/app/mf/MfFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v4

    .line 956
    .local v4, nBackStackCount:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getSceneCount()I

    move-result v5

    .line 957
    .local v5, nSceneCount:I
    const-string v6, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 959
    .local v1, bIsFromCamera:Z
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableLandingPage()Z

    move-result v6

    if-eqz v6, :cond_4

    if-ne v9, v5, :cond_4

    if-ne v9, v4, :cond_4

    .line 964
    sget-boolean v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "SceneLocalPhotoFullscreen"

    const-string v7, "[HTCAlbum][SceneLocalPhotoFullscreen][onPostBackPressed]: exit 1"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    :cond_3
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 981
    :goto_1
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRecoverFromCameraEntry()V

    goto :goto_0

    .line 967
    :cond_4
    if-eqz v1, :cond_6

    if-ne v9, v5, :cond_6

    .line 969
    sget-boolean v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "SceneLocalPhotoFullscreen"

    const-string v7, "[HTCAlbum][SceneLocalPhotoFullscreen][onPostBackPressed]: exit 2"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    :cond_5
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 975
    :cond_6
    sget-boolean v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v6, :cond_7

    const-string v6, "SceneLocalPhotoFullscreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SceneLocalPhotoFullscreen][onPostBackPressed]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    :cond_7
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v6, :cond_8

    const-string v6, "profiler.performance"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_9

    .line 977
    :cond_8
    const-string v6, "AutoTest"

    const-string v7, "[AutoProf](301) [OTHER][Gallery][FSVBackKeyToGV][START]\u2026"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_9
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    goto :goto_1
.end method

.method public onPrepareAnimation(I)Z
    .locals 4
    .parameter "nAnimState"

    .prologue
    .line 1624
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onPrepareAnimation(I)Z

    move-result v0

    .line 1626
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getThumbnailSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->isSceneExist(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsFromGridView:Z

    .line 1627
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsFromGridView:Z

    if-nez v1, :cond_0

    .line 1628
    const/4 v0, 0x0

    .line 1630
    :cond_0
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "SceneLocalPhotoFullscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneLocalPhotoFullscreen][onPrepareAnimation]2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    :cond_1
    const/16 v1, 0x4e3c

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRemoveMessage(I)V

    .line 1636
    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    .line 1276
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1278
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1281
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/album/addons/SingleCollection;

    if-nez v3, :cond_0

    .line 1283
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1285
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPrepareTabletOptionsMenu(Landroid/view/Menu;)V

    .line 1293
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    .line 1295
    .local v2, position:I
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v3, :cond_1

    .line 1297
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1298
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1300
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 1301
    .local v0, displayName:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    const v4, 0x7f09005e

    invoke-virtual {v3, v4, v0}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->setText(ILjava/lang/String;)V

    .line 1304
    .end local v0           #displayName:Ljava/lang/String;
    .end local v1           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_1
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->doSimulateScreenTouched(IZ)V

    .line 1306
    const/4 v3, 0x0

    return v3

    .line 1289
    .end local v2           #position:I
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPreparePhoneOptionsMenu(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onPreparePhoneOptionsMenu(Landroid/view/Menu;)V
    .locals 10
    .parameter "menu"

    .prologue
    const v9, 0x7f0a0116

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1384
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1386
    :cond_0
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[HtcAlbum][SceneLocalPhotoFullScreen][onPreparePhoneOptionsMenu]can\'t get context"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    :goto_0
    return-void

    .line 1390
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1391
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1393
    .local v1, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v5, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1394
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v2, :cond_2

    .line 1396
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[HtcAlbum][SceneLocalPhotoFullScreen][onPreparePhoneOptionsMenu]can\'t get image"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1400
    :cond_2
    const/4 v3, 0x0

    .line 1402
    .local v3, item:Landroid/view/MenuItem;
    sget-boolean v4, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v4, :cond_3

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1404
    iget v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSWButtonState:I

    if-nez v4, :cond_5

    .line 1406
    invoke-interface {p1, v6, v8, v6, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 1407
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1418
    :cond_3
    :goto_1
    const v4, 0x7f0a012d

    invoke-interface {p1, v6, v8, v6, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 1419
    if-eqz v3, :cond_4

    .line 1420
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1421
    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Camera_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1425
    :cond_4
    invoke-static {v1, p1}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->addTVDisplayMenu(Landroid/content/Context;Landroid/view/Menu;)V

    goto :goto_0

    .line 1412
    :cond_5
    invoke-interface {p1, v6, v8, v6, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 1413
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method protected onPrepareTabletOptionsMenu(Landroid/view/Menu;)V
    .locals 22
    .parameter "menu"

    .prologue
    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v18

    if-nez v18, :cond_1

    .line 1313
    :cond_0
    const-string v18, "SceneLocalPhotoFullscreen"

    const-string v19, "[HtcAlbum][SceneLocalPhotoFullScreen][onPrepareTabletOptionsMenu]can\'t get context"

    invoke-static/range {v18 .. v19}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    :goto_0
    return-void

    .line 1317
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 1318
    .local v7, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v18, v0

    check-cast v18, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    move-object/from16 v19, v0

    check-cast v19, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1320
    .local v8, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v8, :cond_2

    .line 1322
    const-string v18, "SceneLocalPhotoFullscreen"

    const-string v19, "[HtcAlbum][SceneLocalPhotoFullScreen][onPrepareTabletOptionsMenu]can\'t get image"

    invoke-static/range {v18 .. v19}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1330
    :cond_2
    const-string v18, "video/x-wmv-drm"

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 1331
    .local v12, isWMDrm:Z
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v18

    if-nez v18, :cond_3

    if-eqz v12, :cond_8

    :cond_3
    const/4 v9, 0x1

    .line 1332
    .local v9, isDRM:Z
    :goto_1
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isSharable()Z

    move-result v18

    if-eqz v18, :cond_9

    if-nez v12, :cond_9

    const/4 v10, 0x1

    .line 1333
    .local v10, isSharable:Z
    :goto_2
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v18

    if-eqz v18, :cond_a

    if-nez v9, :cond_a

    const/4 v6, 0x1

    .line 1334
    .local v6, canShowTrim:Z
    :goto_3
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v18

    if-nez v18, :cond_b

    if-nez v9, :cond_b

    const/4 v5, 0x1

    .line 1336
    .local v5, canShowEdit:Z
    :goto_4
    if-eqz v10, :cond_4

    .line 1338
    const/16 v18, 0x0

    const v19, 0x7f09008b

    const/16 v20, 0x0

    const v21, 0x7f0a0130

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v14

    .line 1340
    .local v14, itemShare:Landroid/view/MenuItem;
    invoke-direct/range {p0 .. p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showTabletShare(Landroid/view/Menu;)V

    .line 1342
    const v18, 0x7f09008b

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    .line 1343
    if-eqz v14, :cond_4

    .line 1344
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1345
    invoke-static {v7}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Share_Dark_Rest(Landroid/content/Context;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1349
    .end local v14           #itemShare:Landroid/view/MenuItem;
    :cond_4
    if-eqz v6, :cond_5

    .line 1351
    invoke-static {v7}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isTrimExists(Landroid/content/Context;)Z

    move-result v11

    .line 1352
    .local v11, isTrimExists:Z
    if-eqz v11, :cond_5

    .line 1353
    const/16 v18, 0x0

    const/16 v19, 0xe

    const/16 v20, 0x0

    const v21, 0x7f0a0149

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v15

    .line 1354
    .local v15, itemTrim:Landroid/view/MenuItem;
    if-eqz v15, :cond_5

    .line 1355
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1356
    invoke-static {v7}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Trim_Dark_Rest(Landroid/content/Context;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1361
    .end local v11           #isTrimExists:Z
    .end local v15           #itemTrim:Landroid/view/MenuItem;
    :cond_5
    if-eqz v5, :cond_6

    .line 1363
    const/16 v18, 0x0

    const v19, 0x7f09007f

    const/16 v20, 0x0

    const v21, 0x7f0a0140

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v17

    .line 1364
    .local v17, subMenu:Landroid/view/SubMenu;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showTabletEdit(Landroid/view/SubMenu;)V

    .line 1366
    const v18, 0x7f09007f

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    .line 1367
    .local v16, menuItem:Landroid/view/MenuItem;
    const/16 v18, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1368
    invoke-static {v7}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Edit_Dark_Rest(Landroid/content/Context;)I

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1371
    .end local v16           #menuItem:Landroid/view/MenuItem;
    .end local v17           #subMenu:Landroid/view/SubMenu;
    :cond_6
    const/16 v18, 0x0

    const/16 v19, 0x3

    const/16 v20, 0x0

    const v21, 0x7f0a012d

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v13

    .line 1372
    .local v13, itemCamera:Landroid/view/MenuItem;
    if-eqz v13, :cond_7

    .line 1373
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1374
    invoke-static {v7}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Camera_Dark_Rest(Landroid/content/Context;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1379
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showTabletMore(Landroid/view/Menu;)V

    goto/16 :goto_0

    .line 1331
    .end local v5           #canShowEdit:Z
    .end local v6           #canShowTrim:Z
    .end local v9           #isDRM:Z
    .end local v10           #isSharable:Z
    .end local v13           #itemCamera:Landroid/view/MenuItem;
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1332
    .restart local v9       #isDRM:Z
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1333
    .restart local v10       #isSharable:Z
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 1334
    .restart local v6       #canShowTrim:Z
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_4
.end method

.method protected onProtectionInfo()V
    .locals 4

    .prologue
    .line 2673
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    .line 2674
    .local v1, pos:I
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2675
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/htc/album/helper/MenuManager;->showProtectedInfo(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 2676
    return-void
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 14
    .parameter "footer"

    .prologue
    .line 3899
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v2, "[HtcAlbum][SceneLocalPhotoFullScreen][onRefreshFooterBar] + "

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3900
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3902
    :cond_1
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v2, "[HtcAlbum][SceneLocalPhotoFullScreen][onRefreshFooterBar]can\'t get context"

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3964
    :goto_0
    return-void

    .line 3905
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 3906
    .local v1, context:Landroid/content/Context;
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v7

    check-cast v7, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 3908
    .local v7, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v7, :cond_3

    .line 3910
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v2, "[HtcAlbum][SceneLocalPhotoFullScreen][onRefreshFooterBar]can\'t get image"

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3914
    :cond_3
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->clear()V

    .line 3916
    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isFavorite()Z

    move-result v9

    .line 3917
    .local v9, isFavoriteCollection:Z
    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3919
    if-eqz v9, :cond_4

    .line 3920
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Delete_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x2040272

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 3923
    :goto_1
    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Info_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a0147

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    goto :goto_0

    .line 3922
    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Delete_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a0131

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    goto :goto_1

    .line 3930
    :cond_5
    const-string v0, "video/x-wmv-drm"

    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 3931
    .local v12, isWMDrm:Z
    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz v12, :cond_a

    :cond_6
    const/4 v8, 0x1

    .line 3932
    .local v8, isDRM:Z
    :goto_2
    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isSharable()Z

    move-result v0

    if-eqz v0, :cond_b

    if-nez v12, :cond_b

    const/4 v10, 0x1

    .line 3933
    .local v10, isSharable:Z
    :goto_3
    if-eqz v10, :cond_7

    .line 3935
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 3937
    :cond_7
    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v6

    check-cast v6, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 3938
    .local v6, delBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    if-eqz v9, :cond_8

    .line 3939
    const v0, 0x2040272

    invoke-virtual {v6, v0}, Lcom/htc/album/modules/ui/widget/FooterButton;->setTextResource(I)V

    .line 3941
    :cond_8
    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3943
    if-nez v8, :cond_9

    .line 3945
    invoke-static {v1}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isTrimExists(Landroid/content/Context;)Z

    move-result v11

    .line 3946
    .local v11, isTrimExists:Z
    if-eqz v11, :cond_9

    .line 3947
    const/4 v0, 0x0

    const/16 v2, 0xe

    invoke-virtual {p1, v1, v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 3963
    .end local v11           #isTrimExists:Z
    :cond_9
    :goto_4
    const/4 v0, 0x0

    const/16 v2, 0x11

    invoke-virtual {p1, v1, v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v13

    check-cast v13, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 3964
    .local v13, moreBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    goto/16 :goto_0

    .line 3931
    .end local v6           #delBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    .end local v8           #isDRM:Z
    .end local v10           #isSharable:Z
    .end local v13           #moreBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    :cond_a
    const/4 v8, 0x0

    goto :goto_2

    .line 3932
    .restart local v8       #isDRM:Z
    :cond_b
    const/4 v10, 0x0

    goto :goto_3

    .line 3957
    .restart local v6       #delBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    .restart local v10       #isSharable:Z
    :cond_c
    if-nez v8, :cond_9

    .line 3959
    const/4 v0, 0x0

    const/16 v2, 0xa

    invoke-virtual {p1, v1, v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    goto :goto_4
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 465
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onResume()V

    .line 466
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnablePaintView()Z

    move-result v1

    if-ne v3, v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/HtcPaintManager;->onResume()V

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v1, :cond_3

    .line 472
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getTileDecoder()Lcom/htc/sunny2/fullfilmview/TileDecoder;

    move-result-object v0

    .line 473
    .local v0, tileDecoder:Lcom/htc/sunny2/fullfilmview/TileDecoder;
    if-eqz v0, :cond_1

    .line 475
    invoke-virtual {v0, v3}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->setValid(Z)V

    .line 477
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->isLoadingInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 479
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "SceneLocalPhotoFullscreen"

    const-string v2, "[HTCAlbum][SceneLocalPhotoFullscreen][onResume]isLoadingInProgress"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->resumePreparator(Z)V

    .line 488
    :goto_0
    sget-boolean v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->IS_FULLHD_OR_HIGHER:Z

    if-eqz v1, :cond_3

    .line 490
    const/16 v2, 0x4e4d

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v2, v1, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    .line 493
    .end local v0           #tileDecoder:Lcom/htc/sunny2/fullfilmview/TileDecoder;
    :cond_3
    return-void

    .line 484
    .restart local v0       #tileDecoder:Lcom/htc/sunny2/fullfilmview/TileDecoder;
    :cond_4
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "SceneLocalPhotoFullscreen"

    const-string v2, "[HTCAlbum][SceneLocalPhotoFullscreen][onResume]!isLoadingInProgress"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_5
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->resumePreparator(Z)V

    goto :goto_0
.end method

.method public onScrollStateIDLE()V
    .locals 1

    .prologue
    .line 3320
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    .line 3322
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 3325
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setEnableControlBarAnimation(Z)V

    .line 3326
    return-void
.end method

.method public onScrollStateScroll()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3331
    invoke-virtual {p0, v9}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setEnableControlBarAnimation(Z)V

    .line 3332
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->hideControlBars()V

    .line 3334
    invoke-direct {p0, v9, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmFileNameBar(ZZ)V

    .line 3337
    :try_start_0
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v7, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 3338
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    const-string v6, "video/x-wmv-drm"

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 3339
    .local v5, isWMDrm:Z
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v6

    if-eqz v6, :cond_3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    .end local v3           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    move-object v1, v3

    .line 3340
    .local v1, drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :goto_0
    if-eqz v5, :cond_4

    move v0, v8

    .line 3341
    .local v0, drmType:I
    :goto_1
    if-ne v0, v8, :cond_6

    move v4, v8

    .line 3342
    .local v4, isDRMFL:Z
    :goto_2
    if-nez v4, :cond_0

    iget-boolean v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmDecoded:Z

    if-eqz v6, :cond_1

    .line 3344
    :cond_0
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->hideDRMIndicator()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3352
    .end local v0           #drmType:I
    .end local v1           #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    .end local v4           #isDRMFL:Z
    .end local v5           #isWMDrm:Z
    :cond_1
    :goto_3
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnablePaintView()Z

    move-result v6

    if-ne v8, v6, :cond_2

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v6, :cond_2

    .line 3354
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->resetCurrentIndex()V

    .line 3355
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v6, v9}, Lcom/htc/album/PaintManager/HtcPaintManager;->showPenMenu(Z)V

    .line 3356
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7, v9}, Lcom/htc/album/PaintManager/HtcPaintManager;->enablePenMenu(Landroid/app/Activity;Z)V

    .line 3357
    invoke-direct {p0, v9}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->attachPaintView(Z)V

    .line 3358
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v6, v9}, Lcom/htc/album/PaintManager/HtcPaintManager;->show(Z)V

    .line 3362
    :cond_2
    return-void

    .line 3339
    .restart local v3       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v5       #isWMDrm:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 3340
    .end local v3           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v1       #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :cond_4
    if-eqz v1, :cond_5

    :try_start_1
    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_1

    :cond_5
    const/4 v0, -0x1

    goto :goto_1

    .restart local v0       #drmType:I
    :cond_6
    move v4, v9

    .line 3341
    goto :goto_2

    .line 3347
    .end local v0           #drmType:I
    .end local v1           #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    .end local v5           #isWMDrm:Z
    :catch_0
    move-exception v2

    .line 3349
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "SceneLocalPhotoFullscreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HtcAlbum][SceneLocalFullscreen][onScrollStateScroll]err "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    const/4 v0, 0x0

    .line 663
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onSendToBackground(Landroid/os/Bundle;)V

    .line 664
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsForeground:Z

    .line 665
    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showContinuousShotIndicator(Z)V

    .line 666
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->hideFullFilmView()V

    .line 667
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 11
    .parameter "bundle"

    .prologue
    const/16 v10, 0xc

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 614
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onSendToForeground(Landroid/os/Bundle;)V

    .line 625
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v5, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v4

    .line 626
    .local v4, selectedItemIndex:I
    iput-boolean v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsForeground:Z

    .line 627
    iput-boolean v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDoItemClickWhenBindAdapter:Z

    .line 628
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v5, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 629
    .local v3, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 631
    sget-boolean v5, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "SceneLocalPhotoFullscreen"

    const-string v6, "[HTCAlbum][SceneLocalPhotoFullScreen][onSendToForeground]Do item click for DRM."

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :cond_0
    iput-boolean v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmBackPreviosTemplate:Z

    .line 633
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOnItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v5, v6, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;->onItemClick(Lcom/htc/sunnyCore/view/SView;I)V

    .line 635
    :cond_1
    iput-boolean v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDoItemClickWhenBindAdapter:Z

    .line 637
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 638
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v5

    if-nez v5, :cond_2

    .line 639
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 640
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_2

    .line 642
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v2

    .line 643
    .local v2, footer:Landroid/view/View;
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 644
    .local v1, continuousLP:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v2, :cond_2

    .line 645
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v7, :cond_3

    .line 646
    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v5

    invoke-virtual {v1, v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 647
    invoke-virtual {v1, v10, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 657
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #continuousLP:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #footer:Landroid/view/View;
    :cond_2
    :goto_0
    invoke-direct {p0, v7}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showContinuousShotIndicator_inUIThread(Z)V

    .line 658
    return-void

    .line 650
    .restart local v0       #context:Landroid/content/Context;
    .restart local v1       #continuousLP:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v2       #footer:Landroid/view/View;
    :cond_3
    invoke-virtual {v1, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 651
    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method protected onSetAs()V
    .locals 4

    .prologue
    .line 2397
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 2398
    .local v0, pos:I
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-virtual {v2, v3, v1, v0}, Lcom/htc/album/helper/MenuManager;->showSetAsMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)Landroid/app/AlertDialog;

    .line 2399
    return-void
.end method

.method public onShare(I)V
    .locals 3
    .parameter "selection"

    .prologue
    .line 1723
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HTCAlbum][SceneLocalPhotoFullscreen][onShare]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShareItemClickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;

    invoke-virtual {v0, v1, p1, v2}, Lcom/htc/album/helper/ShareMenuManager;->onLocalShareFolderClick(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)V

    .line 1727
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 531
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onStop()V

    .line 532
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->onDismissAllFragmentDialog()V

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/FileOperationManager;->cancel()V

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFileOperationDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    if-eqz v0, :cond_2

    .line 537
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFileOperationDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/FileOperationDialogManager;->cancel()V

    .line 538
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteContinuousShotDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_3

    .line 539
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteContinuousShotDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 540
    :cond_3
    return-void
.end method

.method public onStrokeDataReady(I)V
    .locals 8
    .parameter "nIndex"

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 4638
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnablePaintView()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-nez v3, :cond_1

    .line 4656
    :cond_0
    :goto_0
    return-void

    .line 4640
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getCurrentItemInfoIHT()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    move-result-object v1

    .line 4641
    .local v1, itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 4643
    .local v0, iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    .line 4644
    .local v2, nIndexSelected:I
    if-eq p1, v2, :cond_2

    .line 4646
    const-string v3, "SceneLocalPhotoFullscreen"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "[HTCAlbum][FullscreenZoomListener][PaintUpdateListener]: onStrokeDataReady skip: "

    aput-object v5, v4, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4650
    :cond_2
    const-string v3, "SceneLocalPhotoFullscreen"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "[HTCAlbum][FullscreenZoomListener][PaintUpdateListener]: onStrokeDataReady: "

    aput-object v5, v4, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4652
    invoke-direct {p0, p1, v1, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPrepareNextPenableViewPort(ILcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 4653
    invoke-direct {p0, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->attachPaintView(Z)V

    .line 4654
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v3, v6}, Lcom/htc/album/PaintManager/HtcPaintManager;->show(Z)V

    goto :goto_0
.end method

.method public onTVReadyToPlay()V
    .locals 1

    .prologue
    .line 4841
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mTVOutIndex:I

    .line 4842
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isSelectedImageDRM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4846
    :goto_0
    return-void

    .line 4845
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onDMRChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTransformBegin(I)V
    .locals 11
    .parameter "nIndex"

    .prologue
    const/high16 v5, 0x3f80

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 4671
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnablePaintView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-nez v0, :cond_1

    .line 4693
    :cond_0
    :goto_0
    return-void

    .line 4673
    :cond_1
    const-string v0, "SceneLocalPhotoFullscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][FullscreenZoomListener][onTransformBegin]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4675
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v0, p1, v7}, Lcom/htc/album/PaintManager/HtcPaintManager;->reRoutePaintSave(IZ)Z

    .line 4679
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v9, Lcom/htc/album/PaintManager/Interface/IPaintings;

    .line 4680
    .local v9, iPaintings:Lcom/htc/album/PaintManager/Interface/IPaintings;
    invoke-interface {v9, p1}, Lcom/htc/album/PaintManager/Interface/IPaintings;->getPaintItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/album/PaintManager/PaintViewItem;

    .line 4681
    .local v10, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-eqz v10, :cond_0

    .line 4683
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1, p1, v0}, Lcom/htc/album/PaintManager/HtcPaintManager;->setPenAlpha(ILcom/htc/sunny2/fullfilmview/FullFilmView;)V

    .line 4684
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v10}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkPaint()Landroid/graphics/Bitmap;

    move-result-object v2

    move v1, p1

    move v4, v3

    move v6, v5

    invoke-virtual/range {v0 .. v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPaintLayerBMPIHT(ILandroid/graphics/Bitmap;FFFFILcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;)V

    .line 4689
    invoke-direct {p0, v7}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->attachPaintView(Z)V

    .line 4690
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v0, v7}, Lcom/htc/album/PaintManager/HtcPaintManager;->show(Z)V

    .line 4691
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v0

    invoke-direct {p0, v0, v8, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPrepareNextPenableViewPort(ILcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto :goto_0
.end method

.method public onTransformEnd(I)V
    .locals 6
    .parameter "nIndex"

    .prologue
    const/4 v5, 0x1

    .line 4696
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnablePaintView()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-nez v2, :cond_1

    .line 4709
    :cond_0
    :goto_0
    return-void

    .line 4698
    :cond_1
    const-string v2, "SceneLocalPhotoFullscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][FullscreenZoomListener][onTransformEnd]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4702
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getCurrentItemInfoIHT()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    move-result-object v1

    .line 4703
    .local v1, itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 4705
    .local v0, iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    const/4 v2, 0x0

    invoke-virtual {p0, v5, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onTransformPaintPanZoom(ZZ)V

    .line 4706
    invoke-direct {p0, p1, v1, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPrepareNextPenableViewPort(ILcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 4707
    invoke-direct {p0, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->attachPaintView(Z)V

    .line 4708
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v2, v5}, Lcom/htc/album/PaintManager/HtcPaintManager;->show(Z)V

    goto :goto_0
.end method

.method public onTransformPaintPanZoom(ZZ)V
    .locals 12
    .parameter "bIsPanZoom"
    .parameter "bIsRotate"

    .prologue
    const/4 v11, 0x1

    .line 4713
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    .line 4714
    .local v3, nIndex:I
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/PaintManager/Interface/IPaintings;

    .line 4715
    .local v0, iPaintings:Lcom/htc/album/PaintManager/Interface/IPaintings;
    invoke-interface {v0, v3}, Lcom/htc/album/PaintManager/Interface/IPaintings;->getPaintItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/album/PaintManager/PaintViewItem;

    .line 4716
    .local v4, paintItem:Lcom/htc/album/PaintManager/PaintViewItem;
    if-nez v4, :cond_1

    .line 4742
    :cond_0
    :goto_0
    return-void

    .line 4718
    :cond_1
    invoke-virtual {v4}, Lcom/htc/album/PaintManager/PaintViewItem;->getPaintView()Lcom/htc/album/PaintManager/PaintViewPort3D;

    move-result-object v5

    .line 4719
    .local v5, viewPort:Lcom/htc/album/PaintManager/PaintViewPort3D;
    if-eqz v5, :cond_0

    .line 4721
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getCurrentItemInfoIHT()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    move-result-object v2

    .line 4722
    .local v2, itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;
    if-eqz v2, :cond_0

    .line 4724
    invoke-virtual {v5}, Lcom/htc/album/PaintManager/PaintViewPort3D;->matrixbegin()V

    .line 4725
    iget v6, v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageLeft:I

    iget v7, v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageTop:I

    iget v8, v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageLeft:I

    iget v9, v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageWidth:I

    add-int/2addr v8, v9

    iget v9, v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageTop:I

    iget v10, v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageHeight:I

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/htc/album/PaintManager/PaintViewPort3D;->setRectangle(IIII)V

    .line 4729
    if-ne v11, p2, :cond_2

    .line 4731
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 4732
    .local v1, iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/htc/album/PaintManager/PaintViewPort3D;->setRotation(F)V

    .line 4735
    .end local v1           #iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_2
    iget v6, v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->zoomFactor:F

    invoke-virtual {v5, v6}, Lcom/htc/album/PaintManager/PaintViewPort3D;->setScale(F)V

    .line 4736
    iget v6, v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageLeft:I

    iget v7, v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageTop:I

    invoke-virtual {v5, v6, v7}, Lcom/htc/album/PaintManager/PaintViewPort3D;->setTranslation(II)V

    .line 4737
    invoke-virtual {v5, p2}, Lcom/htc/album/PaintManager/PaintViewPort3D;->matrixEnd(Z)V

    .line 4738
    if-ne v11, p2, :cond_0

    .line 4740
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onTransformPaintPanZoom"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/album/PaintManager/PaintViewPort3D;->printfMatrix(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUnbindAdapter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 717
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HTCAlbum][SceneLocalPhotoFullscreen][onUnbindAdapter] +  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    :cond_0
    const/16 v0, 0x4e3c

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRemoveMessage(I)V

    .line 722
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    if-eqz v0, :cond_1

    .line 724
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v0, v2}, Lcom/htc/album/PaintManager/HtcPaintManager;->setPaintUpdateListener(Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;)V

    .line 725
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v0, v2}, Lcom/htc/album/PaintManager/HtcPaintManager;->setPaintDrawListener(Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;)V

    .line 726
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsPaintInitialized:Z

    .line 729
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_2

    .line 730
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunnyCore/IMediaList;)V

    .line 731
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    if-eqz v0, :cond_3

    .line 732
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->release()V

    .line 733
    :cond_3
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    if-eqz v0, :cond_4

    .line 734
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/ImageProcessManager;->release()V

    .line 735
    :cond_4
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onUnbindAdapter()V

    .line 737
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HTCAlbum][SceneLocalPhotoFullscreen][onUnbindAdapter] - "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :cond_5
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1256
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1252
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onUpdatePaintTextLayer(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 4601
    return-void
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 3969
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestTVDisplay()Z
    .locals 1

    .prologue
    .line 4834
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
    .line 300
    const-string v0, "SceneLocalPhotoFullscreen"

    return-object v0
.end method

.method protected seekUriInAdapter(Ljava/lang/String;ILcom/htc/album/TabPluginDevice/AdapterLocalPhoto;)I
    .locals 4
    .parameter "uriString"
    .parameter "seekBeginPos"
    .parameter "adapter"

    .prologue
    .line 4875
    if-nez p3, :cond_1

    .line 4877
    const-string v1, "SceneLocalPhotoFullscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneLocalPhotoFullscreen][seekUriInAdapter]null adapter, return seekBeginPos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4898
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 4881
    .restart local p2
    :cond_1
    if-eqz p1, :cond_0

    .line 4883
    move v0, p2

    .local v0, i:I
    :goto_1
    invoke-virtual {p3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 4885
    invoke-virtual {p3, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move p2, v0

    .line 4887
    goto :goto_0

    .line 4883
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4890
    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-ge v0, p2, :cond_0

    .line 4892
    invoke-virtual {p3, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move p2, v0

    .line 4894
    goto :goto_0

    .line 4890
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public setNfcBeamPushUris(Landroid/app/Activity;)V
    .locals 9
    .parameter "activity"

    .prologue
    const/4 v8, 0x0

    .line 4917
    sget-boolean v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 4918
    const-string v6, "SceneLocalPhotoFullscreen"

    const-string v7, "[HTCAlbum][SceneLocalPhotoFullscreen][setNfcBeamPushUris]"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4920
    :cond_0
    const/4 v0, 0x0

    .line 4921
    .local v0, bRes:Z
    if-nez p1, :cond_2

    .line 4923
    const-string v6, "SceneLocalPhotoFullscreen"

    const-string v7, "[HTCAlbum][SceneLocalPhotoFullscreen][setNfcBeamPushUris] activity is null"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4957
    :cond_1
    :goto_0
    return-void

    .line 4926
    :cond_2
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v6, :cond_4

    .line 4928
    const-string v6, "SceneLocalPhotoFullscreen"

    const-string v7, "[HTCAlbum][SceneLocalPhotoFullscreen][setNfcBeamPushUris] Nfc adapter is null"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4929
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->initNfcAdapter(Landroid/content/Context;)V

    .line 4953
    :cond_3
    :goto_1
    if-nez v0, :cond_1

    .line 4955
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setNfcNdefPushMessage(Landroid/app/Activity;)V

    goto :goto_0

    .line 4933
    :cond_4
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v4

    .line 4934
    .local v4, selectedItemIndex:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 4935
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v1, :cond_3

    .line 4937
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    .line 4940
    .local v2, imageUri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 4941
    .local v3, scheme:Ljava/lang/String;
    const-string v6, "file"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "content"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4944
    :cond_5
    const/4 v6, 0x1

    new-array v5, v6, [Landroid/net/Uri;

    aput-object v2, v5, v8

    .line 4945
    .local v5, uris:[Landroid/net/Uri;
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v7, 0x0

    new-array v8, v8, [Landroid/app/Activity;

    invoke-virtual {v6, v7, p1, v8}, Landroid/nfc/NfcAdapter;->setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 4946
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v6, v5, p1}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    .line 4947
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setNfcNdefPushMessage(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 4961
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 4962
    const-string v1, "SceneLocalPhotoFullscreen"

    const-string v2, "[HTCAlbum][SceneLocalPhotoFullscreen][setNfcNdefPushMessage]"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4963
    :cond_0
    if-nez p1, :cond_2

    .line 4965
    const-string v1, "SceneLocalPhotoFullscreen"

    const-string v2, "[HTCAlbum][SceneLocalPhotoFullscreen][setNfcNdefPushMessage] activity is null"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4979
    :cond_1
    :goto_0
    return-void

    .line 4968
    :cond_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_3

    .line 4970
    const-string v1, "SceneLocalPhotoFullscreen"

    const-string v2, "[HTCAlbum][SceneLocalPhotoFullscreen][setNfcNdefPushMessage] Nfc adapter is null"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4971
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->initNfcAdapter(Landroid/content/Context;)V

    .line 4973
    :cond_3
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v1, :cond_1

    .line 4975
    sget-object v0, Lcom/htc/album/helper/INfcSupport;->LAUNCH_ALBUM_MESSAGE:Landroid/nfc/NdefMessage;

    .line 4976
    .local v0, msg:Landroid/nfc/NdefMessage;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    .line 4977
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v1, v0, p1, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public setPaintManager(Lcom/htc/album/PaintManager/HtcPaintManager;)V
    .locals 2
    .parameter "htcPaintManager"

    .prologue
    .line 4781
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnablePaintView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4783
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;

    .line 4784
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HTCAlbum][LocalFullFilmViewTemplate][setPaintManager]: enable..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4792
    :goto_0
    return-void

    .line 4788
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/album/PaintManager/HtcPaintManager;->show(Z)V

    .line 4789
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HTCAlbum][LocalFullFilmViewTemplate][setPaintManager]: disable..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
