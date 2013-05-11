.class public Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;
.super Lcom/htc/sunny2/scene/GalleryBaseScene;
.source "SceneOnlinePhotoFullscreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FilmstripItemSelectedListner;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$filmstripViewScrollChangeListener;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$ViewScrollStateChangedListener;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sunny2/scene/GalleryBaseScene",
        "<",
        "Lcom/htc/sunny2/fullfilmview/FullFilmView;",
        "Lcom/htc/album/SocialNetwork/LivePhotoAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTIONBTN_CUST1:I = -0x1

.field private static final ACTIONBTN_CUST2:I = -0x2

.field private static final COMMENT_BAR_ONLINE_FULLFILM_VIEW:I = 0x1003

.field private static final FOOTER_BAR_ONLINE_FULLFILM_VIEW:I = 0x1001

.field private static final HEADER_BAR_ONLINE_FULLFILM_VIEW:I = 0x1002

.field public static final LOG_TAG:Ljava/lang/String; = "SceneOnlinePhotoFullscreen"

.field private static final TAG_BAR_ONLINE_FULLFILM_VIEW:I = 0x1004


# instance fields
.field protected mAnimationState:I

.field private mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

.field private mCommentCount:I

.field private mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

.field private mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

.field private mDownloadedHandler:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;

.field protected mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

.field private mIsDelete:Z

.field private mIsDeleteAll:Z

.field private mIsFooterbarVisible:Z

.field private mIsNewAdapter:Z

.field private mIsPluginDelete:Z

.field private mLoadingText:Ljava/lang/String;

.field private mNoPhotoList:Z

.field private mOldDmr:Ljava/lang/String;

.field protected mOnItemClickListener:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;

.field private mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

.field protected mOrientationHasChanged:Z

.field private mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

.field protected mPrevPosition:I

.field protected mPrevScrollState:I

.field protected mProgressLoad:Lcom/htc/app/HtcProgressDialog;

.field protected mServiceType:Ljava/lang/String;

.field private mShareListDialog:Landroid/app/AlertDialog;

.field private mShareManager:Lcom/htc/album/helper/ShareMenuManager;

.field private mTagBar:Lcom/htc/album/SocialNetwork/LiveTagBar;

.field private mTagManager:Lcom/htc/album/TagUtils/TagViewManager;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;-><init>()V

    .line 95
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    .line 96
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagBar:Lcom/htc/album/SocialNetwork/LiveTagBar;

    .line 97
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    .line 98
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOrientationHasChanged:Z

    .line 99
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mServiceType:Ljava/lang/String;

    .line 100
    iput v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mPrevPosition:I

    .line 101
    iput v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mPrevScrollState:I

    .line 102
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    .line 103
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$1;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOnItemClickListener:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;

    .line 104
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsNewAdapter:Z

    .line 105
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDownloadedHandler:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;

    .line 106
    new-instance v0, Lcom/htc/album/helper/ShareMenuManager;

    invoke-direct {v0}, Lcom/htc/album/helper/ShareMenuManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    .line 107
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    .line 108
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    .line 109
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mProgressLoad:Lcom/htc/app/HtcProgressDialog;

    .line 110
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsDeleteAll:Z

    .line 111
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsDelete:Z

    .line 112
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsPluginDelete:Z

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsFooterbarVisible:Z

    .line 114
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mNoPhotoList:Z

    .line 115
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mLoadingText:Ljava/lang/String;

    .line 117
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    .line 129
    iput v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentCount:I

    .line 131
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    .line 133
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareListDialog:Landroid/app/AlertDialog;

    .line 135
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOldDmr:Ljava/lang/String;

    .line 395
    iput v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAnimationState:I

    .line 1441
    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideControlBars()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideControlBars()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideTag()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->isPhotoFullSize(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleCaption(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->isHitIndicator(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mIsBound:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onShare(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsDeleteAll:Z

    return p1
.end method

.method static synthetic access$502(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsDelete:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onRefresh()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method private addMoreBubbleList(Lcom/htc/album/modules/ui/widget/FooterButton;)V
    .locals 10
    .parameter "moreBtn"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1599
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/FooterButton;->clearBubble()V

    .line 1601
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v7, "flag_genuine"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-ne v8, v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v7, "my_live_album"

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-ne v8, v6, :cond_0

    .line 1604
    const/16 v6, 0xa

    const v7, 0x7f0a0140

    invoke-virtual {p1, v6, v9, v7}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1612
    :cond_0
    const-string v6, "showCaption"

    invoke-direct {p0, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1613
    .local v0, bShowCaption:Z
    const-string v6, "showTag"

    invoke-direct {p0, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1615
    .local v1, bShowTag:Z
    const/4 v4, 0x0

    .line 1616
    .local v4, showHideCaption:I
    if-eqz v1, :cond_1

    const v5, 0x7f0a013a

    .line 1618
    .local v5, showHideTag:I
    :goto_0
    if-eqz v1, :cond_2

    const/16 v3, 0x1e

    .line 1619
    .local v3, idshowHideTag:I
    :goto_1
    if-eqz v1, :cond_3

    const/16 v2, 0x21

    .line 1621
    .local v2, idshowHideCaption:I
    :goto_2
    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v6, v6, v9

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v8, "service_name"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1622
    if-eqz v0, :cond_4

    const v4, 0x7f0a013d

    .line 1626
    :goto_3
    invoke-virtual {p1, v2, v9, v4}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1627
    invoke-virtual {p1, v3, v9, v5}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1628
    return-void

    .line 1616
    .end local v2           #idshowHideCaption:I
    .end local v3           #idshowHideTag:I
    .end local v5           #showHideTag:I
    :cond_1
    const v5, 0x7f0a0139

    goto :goto_0

    .line 1618
    .restart local v5       #showHideTag:I
    :cond_2
    const/16 v3, 0x1d

    goto :goto_1

    .line 1619
    .restart local v3       #idshowHideTag:I
    :cond_3
    const/16 v2, 0x20

    goto :goto_2

    .line 1622
    .restart local v2       #idshowHideCaption:I
    :cond_4
    const v4, 0x7f0a013c

    goto :goto_3

    .line 1624
    :cond_5
    if-eqz v0, :cond_6

    const v4, 0x7f0a013f

    :goto_4
    goto :goto_3

    :cond_6
    const v4, 0x7f0a013e

    goto :goto_4
.end method

.method private enableProgressLoading(ZI)V
    .locals 3
    .parameter "bShow"
    .parameter "iResID"

    .prologue
    .line 2577
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 2578
    invoke-direct {p0, p2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->prepareLoadingText(I)V

    .line 2580
    :cond_0
    const-string v0, "SceneOnlinePhotoFullscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneOnlinePhotoFullscreen][enableProgressLoading]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mLoadingText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2581
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onEnableProgressLoading(Z)V

    .line 2582
    return-void
.end method

.method private getSharedPreferencesWithBoolean(Ljava/lang/String;)Z
    .locals 2
    .parameter "shareKey"

    .prologue
    .line 2654
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2655
    .local v0, preference:Landroid/content/SharedPreferences;
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private hideAllControlBars()V
    .locals 0

    .prologue
    .line 760
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->hideControlBars()V

    .line 761
    return-void
.end method

.method private hideTag()V
    .locals 2

    .prologue
    .line 2393
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    if-nez v0, :cond_0

    .line 2398
    :goto_0
    return-void

    .line 2396
    :cond_0
    const-string v0, "SceneOnlinePhotoFullscreen"

    const-string v1, "[HTCAlbum][SceneOnlinePhotoFullscreen][hideTag]:... "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2397
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->showTagGroup(Z)V

    goto :goto_0
.end method

.method private isHitIndicator(II)Z
    .locals 10
    .parameter "posX"
    .parameter "posY"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 843
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v6

    div-int/lit8 v5, v6, 0x5

    .line 844
    .local v5, wSection:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v6

    div-int/lit8 v0, v6, 0x5

    .line 845
    .local v0, hSection:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v6

    iget v6, v6, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    float-to-int v4, v6

    .line 846
    .local v4, top:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v6

    iget v6, v6, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    float-to-int v3, v6

    .line 848
    .local v3, left:I
    sub-int v6, p1, v3

    mul-int/lit8 v9, v5, 0x2

    sub-int/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v5, :cond_0

    move v1, v7

    .line 849
    .local v1, hitX:Z
    :goto_0
    sub-int v6, p2, v4

    mul-int/lit8 v9, v0, 0x2

    sub-int/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v0, :cond_1

    move v2, v7

    .line 851
    .local v2, hitY:Z
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    :goto_2
    return v7

    .end local v1           #hitX:Z
    .end local v2           #hitY:Z
    :cond_0
    move v1, v8

    .line 848
    goto :goto_0

    .restart local v1       #hitX:Z
    :cond_1
    move v2, v8

    .line 849
    goto :goto_1

    .restart local v2       #hitY:Z
    :cond_2
    move v7, v8

    .line 851
    goto :goto_2
.end method

.method private isPhotoFullSize(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 880
    const/4 v1, 0x0

    .line 881
    .local v1, bResult:Z
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    .line 882
    .local v0, adapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;
    if-eqz v0, :cond_0

    .line 884
    const/4 v2, 0x1

    invoke-virtual {v0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onRequestPhotoIntegrity(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 885
    const/4 v1, 0x1

    .line 888
    :cond_0
    return v1
.end method

.method private onDropListShareItemSelected(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 1435
    const-string v0, "SceneOnlinePhotoFullscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneOnlinePhotoFullscreen][onDropListShareItemSelected]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->isNetworkConnectionActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1440
    :goto_0
    return-void

    .line 1439
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onShare(I)V

    goto :goto_0
.end method

.method private onErrorNoList(Landroid/os/Message;)V
    .locals 5
    .parameter "message"

    .prologue
    const/4 v4, 0x1

    .line 782
    const/4 v0, 0x0

    .line 783
    .local v0, isPhotoListSizeChanged:Z
    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mNoPhotoList:Z

    if-nez v2, :cond_0

    .line 785
    iput-boolean v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mNoPhotoList:Z

    .line 786
    const/4 v0, 0x1

    .line 789
    :cond_0
    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsDeleteAll:Z

    if-eq v4, v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsPluginDelete:Z

    if-ne v4, v2, :cond_2

    .line 791
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onEnableProgressLoading(Z)V

    .line 792
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 793
    .local v1, nBundle:Landroid/os/Bundle;
    const-string v2, "refresh_by_delete_all"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 794
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v3, "SceneOnlinePhotoThumbnail"

    invoke-interface {v2, v1, v3, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 799
    .end local v1           #nBundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 798
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onSyncList(Landroid/os/Message;Z)V

    goto :goto_0
.end method

.method private onItemSelected(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    const/16 v3, 0x4e3c

    .line 765
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onRemoveMessage(I)V

    .line 766
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->isControlBarShowing()Z

    move-result v0

    .line 767
    .local v0, bControlBarShowing:Z
    if-nez v0, :cond_0

    .line 768
    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-virtual {p0, v3, v1, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    .line 770
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->toggleControlBarsVisibility()V

    .line 771
    return-void
.end method

.method private onOpenSenseControlButtonClick(I)Z
    .locals 20
    .parameter "nBtnId"

    .prologue
    .line 1925
    const/4 v6, 0x0

    .line 1926
    .local v6, bResult:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    move v7, v6

    .line 2017
    .end local v6           #bResult:Z
    .local v7, bResult:I
    :goto_0
    return v7

    .line 1928
    .end local v7           #bResult:I
    .restart local v6       #bResult:Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense/album/plugin/CommandBar;->getSize()I

    move-result v9

    .line 1930
    .local v9, buttonSize:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    if-ge v13, v9, :cond_1

    .line 1932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/htc/opensense/album/plugin/CommandBar;->getButton(I)Lcom/htc/opensense/album/plugin/CommandBarButton;

    move-result-object v8

    .line 1933
    .local v8, btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    invoke-virtual {v8}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getSubItemList()Ljava/util/List;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 1935
    .local v15, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    invoke-virtual {v8}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_5

    .line 1937
    invoke-virtual {v8}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v17

    const v18, 0x60a00001

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 1939
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onComment()V

    .end local v8           #btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v15           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    :cond_1
    :goto_2
    move v7, v6

    .line 2017
    .restart local v7       #bResult:I
    goto :goto_0

    .line 1943
    .end local v7           #bResult:I
    .restart local v8       #btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .restart local v15       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v16

    .line 1944
    .local v16, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v4

    .line 1945
    .local v4, aphoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    move-object/from16 v18, v0

    if-nez v4, :cond_4

    const/16 v17, 0x0

    :goto_3
    move-object/from16 v0, v18

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v8, v1, v2}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onCommandBarButtonSelected(Lcom/htc/opensense/album/plugin/CommandBarButton;ILjava/lang/String;)Z

    .line 1946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/album/helper/ShareMenuManager;->getSharePluginButtonID()I

    move-result v17

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    if-eqz v15, :cond_3

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    .line 1948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    .line 1952
    .local v3, activity:Landroid/app/Activity;
    new-instance v10, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$2;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v15}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$2;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Ljava/util/ArrayList;)V

    .line 1977
    .local v10, clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    move-object/from16 v17, v0

    const v18, 0x2040219

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1, v10}, Lcom/htc/album/helper/ShareMenuManager;->createSocialShareDialog(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareListDialog:Landroid/app/AlertDialog;

    .line 1979
    .end local v3           #activity:Landroid/app/Activity;
    .end local v10           #clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;
    :cond_3
    const/4 v6, 0x1

    .line 1981
    goto :goto_2

    .line 1945
    :cond_4
    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    .line 1983
    .end local v4           #aphoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .end local v16           #pos:I
    :cond_5
    if-eqz v15, :cond_9

    .line 1985
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/album/plugin/CommandBarButton;

    .line 1987
    .local v5, b:Lcom/htc/opensense/album/plugin/CommandBarButton;
    invoke-virtual {v5}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_6

    .line 1989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v5, v1, v2}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onCommandBarButtonSelected(Lcom/htc/opensense/album/plugin/CommandBarButton;ILjava/lang/String;)Z

    .line 1994
    invoke-virtual {v8}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/album/helper/ShareMenuManager;->getSharePluginButtonID()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    invoke-virtual {v8}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v17

    const/high16 v18, 0x60a0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/album/helper/ShareMenuManager;->getPluginFooterButton()Lcom/htc/album/modules/ui/widget/FooterButton;

    move-result-object v17

    if-eqz v17, :cond_a

    .line 1999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    .line 2000
    .local v11, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/album/helper/ShareMenuManager;->getPluginFooterButton()Lcom/htc/album/modules/ui/widget/FooterButton;

    move-result-object v12

    .line 2001
    .local v12, footer:Lcom/htc/album/modules/ui/widget/FooterButton;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    move-object/from16 v17, v0

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/htc/album/helper/ShareMenuManager;->createSocialPluginShareList(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Lcom/htc/album/helper/ShareMenuManager;->doCreatePluginBubble(Lcom/htc/album/modules/ui/widget/FooterButton;Ljava/util/ArrayList;)Z

    .line 2009
    .end local v11           #context:Landroid/content/Context;
    .end local v12           #footer:Lcom/htc/album/modules/ui/widget/FooterButton;
    :cond_8
    :goto_4
    const/4 v6, 0x1

    .line 1930
    .end local v5           #b:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 2004
    .restart local v5       #b:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .restart local v14       #i$:Ljava/util/Iterator;
    :cond_a
    invoke-virtual {v5}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v17

    const v18, 0x60a00001

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 2006
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onComment()V

    goto :goto_4
.end method

.method private onRefresh()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2065
    invoke-direct {p0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->prepareLoadingText(I)V

    .line 2066
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/16 v1, 0x4e28

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 2067
    return-void
.end method

.method private onShare(I)V
    .locals 9
    .parameter "selection"

    .prologue
    .line 2042
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v6, :cond_1

    .line 2061
    :cond_0
    :goto_0
    return-void

    .line 2043
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 2044
    .local v1, activity:Landroid/app/Activity;
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v6, :cond_0

    .line 2045
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    .line 2046
    .local v2, nIndex:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v6, :cond_0

    .line 2047
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v6, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 2048
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-eqz v0, :cond_0

    .line 2050
    const/4 v4, 0x0

    .line 2051
    .local v4, szUrl:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2052
    .local v3, szLink:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2054
    .local v5, szWebLink:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getLink()Ljava/lang/String;

    move-result-object v3

    .line 2055
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 2056
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    move-object v5, v4

    .line 2058
    :goto_1
    const-string v6, "SceneOnlinePhotoFullscreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SceneOnlinePhotoFullscreen][onShare]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2059
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v6, v1, p1, v5}, Lcom/htc/album/helper/ShareMenuManager;->onSocialShareClick(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v5, v3

    .line 2056
    goto :goto_1
.end method

.method private onShowCaption(IZ)V
    .locals 6
    .parameter "nIndex"
    .parameter "bEnable"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2221
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v2, :cond_1

    .line 2275
    :cond_0
    :goto_0
    return-void

    .line 2224
    :cond_1
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v2}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onEnableCaptionPlugin()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2227
    :cond_2
    if-nez p2, :cond_3

    .line 2229
    invoke-virtual {p0, v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->showCommentBar(Z)V

    goto :goto_0

    .line 2232
    :cond_3
    const/4 v0, 0x0

    .line 2233
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const-string v1, ""

    .line 2235
    .local v1, szText:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    if-eq v2, p1, :cond_4

    .line 2237
    const-string v2, "SceneOnlinePhotoFullscreen"

    const-string v3, "[HTCAlbum][SceneOnlinePhotoFullscreen][onShowCaption]: diff index..."

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2238
    invoke-virtual {p0, v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->showCommentBar(Z)V

    goto :goto_0

    .line 2241
    :cond_4
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v2, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    if-nez v0, :cond_5

    .line 2243
    invoke-virtual {p0, v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->showCommentBar(Z)V

    goto :goto_0

    .line 2246
    :cond_5
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mServiceType:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 2248
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mServiceType:Ljava/lang/String;

    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2251
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isInDetail()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2252
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2263
    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 2265
    :cond_7
    const-string v1, ""

    .line 2266
    invoke-virtual {p0, v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->showCommentBar(Z)V

    .line 2273
    :goto_2
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    const v3, 0x7f09005c

    invoke-virtual {v2, v3, v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->setText(ILjava/lang/String;)V

    goto :goto_0

    .line 2254
    :cond_8
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mServiceType:Ljava/lang/String;

    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2256
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isInDetail()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2257
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2260
    :cond_9
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2270
    :cond_a
    invoke-virtual {p0, v5}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->showCommentBar(Z)V

    goto :goto_2
.end method

.method private onSyncList(Landroid/os/Message;Z)V
    .locals 6
    .parameter "message"
    .parameter "isNoPhoto"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 802
    const/4 v1, 0x0

    .line 803
    .local v1, isPhotoListSizeChanged:Z
    const/4 v0, 0x0

    .line 804
    .local v0, hasListUpdate:Z
    if-ne v4, p2, :cond_4

    .line 806
    const/4 v1, 0x1

    .line 820
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsNewAdapter:Z

    if-eqz v2, :cond_6

    .line 822
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_1

    .line 823
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-interface {v2, p0, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->setNewAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;)V

    .line 824
    :cond_1
    invoke-virtual {p0, v5}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onEnableProgressLoading(Z)V

    .line 835
    :cond_2
    :goto_1
    if-ne v4, v1, :cond_3

    .line 837
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->invalidateControlBars()V

    .line 839
    :cond_3
    return-void

    .line 808
    :cond_4
    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mNoPhotoList:Z

    if-ne v4, v2, :cond_5

    .line 810
    iput-boolean v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mNoPhotoList:Z

    .line 811
    const/4 v1, 0x1

    goto :goto_0

    .line 813
    :cond_5
    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v4, v2, :cond_0

    .line 815
    const/4 v0, 0x1

    goto :goto_0

    .line 826
    :cond_6
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 828
    invoke-virtual {p0, v5}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onEnableProgressLoading(Z)V

    .line 829
    if-nez v1, :cond_7

    if-eqz v0, :cond_2

    .line 830
    :cond_7
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->notifyMediaDataChange()V

    goto :goto_1
.end method

.method private onToggleCaption(Z)V
    .locals 4
    .parameter "bUpdateMode"

    .prologue
    const/4 v2, 0x1

    .line 2194
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->isSecureSendToForeground()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2217
    :cond_0
    :goto_0
    return-void

    .line 2197
    :cond_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    if-eqz v1, :cond_0

    .line 2200
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v1}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onEnableCaptionPlugin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2203
    :cond_2
    if-ne v2, p1, :cond_3

    .line 2205
    const-string v3, "showCaption"

    const-string v1, "showCaption"

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-direct {p0, v3, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->putSharedPreferencesWithBoolean(Ljava/lang/String;Z)V

    .line 2208
    :cond_3
    const-string v1, "showCaption"

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2209
    .local v0, bEnable:Z
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onShowCaption(IZ)V

    .line 2211
    if-ne v2, p1, :cond_0

    .line 2213
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->invalidateControlBars()V

    goto :goto_0

    .line 2205
    .end local v0           #bEnable:Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private onUICmdDelete(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    const/4 v1, 0x1

    .line 742
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 753
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onDelete()V

    .line 756
    :goto_0
    return-void

    .line 745
    :pswitch_0
    const v0, 0x7f0a0012

    invoke-direct {p0, v1, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->enableProgressLoading(ZI)V

    goto :goto_0

    .line 748
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onEnableProgressLoading(Z)V

    .line 749
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsPluginDelete:Z

    .line 750
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onRefresh()V

    goto :goto_0

    .line 742
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onUpdateTags(IZ)V
    .locals 5
    .parameter "nIndex"
    .parameter "bEnable"

    .prologue
    .line 2305
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v3, :cond_0

    .line 2389
    :goto_0
    return-void

    .line 2308
    :cond_0
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v3}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onEnableTagsPlugin()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2310
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideTag()V

    goto :goto_0

    .line 2314
    :cond_1
    if-nez p2, :cond_2

    .line 2316
    const-string v3, "SceneOnlinePhotoFullscreen"

    const-string v4, "[HTCAlbum][SceneOnlinePhotoFullscreen][onUpdateTags]: exit..."

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2317
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideTag()V

    goto :goto_0

    .line 2320
    :cond_2
    const/4 v0, 0x0

    .line 2325
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    if-eq p1, v3, :cond_3

    .line 2327
    const-string v3, "SceneOnlinePhotoFullscreen"

    const-string v4, "[HTCAlbum][SceneOnlinePhotoFullscreen][onUpdateTags]: diff index..."

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2328
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideTag()V

    goto :goto_0

    .line 2333
    :cond_3
    iget v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mPrevScrollState:I

    if-eqz v3, :cond_4

    .line 2335
    const-string v3, "SceneOnlinePhotoFullscreen"

    const-string v4, "[HTCAlbum][SceneOnlinePhotoFullscreen][onUpdateTags]: scrolling..."

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2336
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideTag()V

    goto :goto_0

    .line 2341
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2343
    const-string v3, "SceneOnlinePhotoFullscreen"

    const-string v4, "[HTCAlbum][SceneOnlinePhotoFullscreen][onUpdateTags]: zoomed..."

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2344
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideTag()V

    goto :goto_0

    .line 2356
    :cond_5
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v3, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 2358
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getMediaQuality()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    .line 2360
    :cond_6
    const-string v3, "SceneOnlinePhotoFullscreen"

    const-string v4, "[HTCAlbum][SceneOnlinePhotoFullscreen][onUpdateTags]: not HQ"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2361
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideTag()V

    goto :goto_0

    .line 2366
    :cond_7
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getCurrentItemInfoIHT()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    move-result-object v1

    .line 2367
    .local v1, itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;
    if-nez v1, :cond_8

    .line 2369
    const-string v3, "SceneOnlinePhotoFullscreen"

    const-string v4, "[HTCAlbum][SceneOnlinePhotoFullscreen][onUpdateTags]: no item"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2370
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideTag()V

    goto/16 :goto_0

    .line 2373
    :cond_8
    if-eqz v1, :cond_9

    iget v3, v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->zoomFactor:F

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_9

    .line 2375
    const-string v3, "SceneOnlinePhotoFullscreen"

    const-string v4, "[HTCAlbum][SceneOnlinePhotoFullscreen][onUpdateTags]: not 1.0"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2376
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideTag()V

    goto/16 :goto_0

    .line 2380
    :cond_9
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getTags()Ljava/util/ArrayList;

    move-result-object v2

    .line 2381
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2383
    :cond_a
    const-string v3, "SceneOnlinePhotoFullscreen"

    const-string v4, "[HTCAlbum][SceneOnlinePhotoFullscreen][onUpdateTags]: no tag"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2384
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideTag()V

    goto/16 :goto_0

    .line 2387
    :cond_b
    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->showTag(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method private prepareLoadingText(I)V
    .locals 4
    .parameter "iResID"

    .prologue
    .line 2586
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_0

    .line 2601
    :goto_0
    return-void

    .line 2587
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2588
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    if-gez p1, :cond_2

    .line 2590
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mLoadingText:Ljava/lang/String;

    .line 2591
    const-string v1, "SceneOnlinePhotoFullscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneOnlinePhotoFullscreen][prepareLoadingText] NG: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2593
    :cond_2
    if-nez p1, :cond_3

    .line 2595
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0153

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mLoadingText:Ljava/lang/String;

    goto :goto_0

    .line 2599
    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mLoadingText:Ljava/lang/String;

    goto :goto_0
.end method

.method private putSharedPreferencesWithBoolean(Ljava/lang/String;Z)V
    .locals 3
    .parameter "shareKey"
    .parameter "enable"

    .prologue
    .line 2637
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2638
    .local v1, preference:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2640
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2641
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2643
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    instance-of v2, v2, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v2, :cond_0

    .line 2645
    const-string v2, "showTag"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2646
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v2, p2}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onNotifyUpdateTagMode(Z)V

    .line 2650
    :cond_0
    :goto_0
    return-void

    .line 2647
    :cond_1
    const-string v2, "showCaption"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2648
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v2, p2}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onNotifyUpdateCaptionMode(Z)V

    goto :goto_0
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
    .line 1833
    .local p1, shareBtn:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const-string v2, "SceneOnlinePhotoFullscreen"

    const-string v3, "[showShare] + "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1836
    :cond_0
    const-string v2, "SceneOnlinePhotoFullscreen"

    const-string v3, "[showShare]can\'t get context"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    :cond_1
    :goto_0
    return-void

    .line 1840
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1841
    .local v0, activity:Landroid/app/Activity;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/htc/album/helper/ShareMenuManager;->createSocialShareBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;)Z

    move-result v1

    .line 1845
    .local v1, result:Z
    if-nez v1, :cond_1

    .line 1847
    const-string v2, "SceneOnlinePhotoFullscreen"

    const-string v3, "[showShare]can\'t show share bubble"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showShareDialog()V
    .locals 4

    .prologue
    .line 1853
    const-string v2, "SceneOnlinePhotoFullscreen"

    const-string v3, "[HTCAlbum][SceneOnlinePhotoFullscreen][showShareDialog] ... "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1856
    :cond_0
    const-string v2, "SceneOnlinePhotoFullscreen"

    const-string v3, "[HTCAlbum][SceneOnlinePhotoFullscreen][showShareDialog] can\'t get context"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    :goto_0
    return-void

    .line 1859
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1863
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$1;

    invoke-direct {v1, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$1;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V

    .line 1870
    .local v1, clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    const v3, 0x2040219

    invoke-virtual {v2, v0, v3, v1}, Lcom/htc/album/helper/ShareMenuManager;->createSocialShareDialog(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareListDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showTag(Ljava/util/ArrayList;)V
    .locals 27
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2401
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    const/16 v20, 0x0

    .line 2402
    .local v20, nPhotoX:I
    const/16 v21, 0x0

    .line 2403
    .local v21, nPhotoY:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v19

    .line 2404
    .local v19, nPhotoW:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v18

    .line 2405
    .local v18, nPhotoH:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getCurrentItemInfoIHT()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    move-result-object v14

    .line 2406
    .local v14, currentItemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;
    if-eqz v14, :cond_0

    .line 2408
    iget v0, v14, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageLeft:I

    move/from16 v20, v0

    .line 2409
    iget v0, v14, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageTop:I

    move/from16 v21, v0

    .line 2410
    iget v0, v14, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageWidth:I

    move/from16 v19, v0

    .line 2411
    iget v0, v14, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageHeight:I

    move/from16 v18, v0

    .line 2414
    :cond_0
    if-eqz v19, :cond_1

    if-nez v18, :cond_2

    .line 2416
    :cond_1
    const-string v4, "SceneOnlinePhotoFullscreen"

    const-string v5, "[HTCAlbum][SceneOnlinePhotoFullscreen][showTag]: no photo"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2484
    :goto_0
    return-void

    .line 2420
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v23

    .line 2421
    .local v23, nScreenW:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v22

    .line 2424
    .local v22, nScreenH:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v13

    .line 2425
    .local v13, activity:Landroid/app/Activity;
    const-string v4, "window"

    invoke-virtual {v13, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    .line 2426
    .local v15, display:Landroid/view/Display;
    new-instance v26, Landroid/graphics/Point;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Point;-><init>()V

    .line 2427
    .local v26, ptSize:Landroid/graphics/Point;
    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2428
    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    .line 2429
    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    .line 2434
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    if-eqz v4, :cond_3

    .line 2436
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v4}, Lcom/htc/album/TagUtils/TagViewManager;->removeAllViews()V

    .line 2437
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v4}, Lcom/htc/album/TagUtils/TagViewManager;->clearTagGroup()V

    .line 2438
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    .line 2440
    :cond_3
    new-instance v4, Lcom/htc/album/TagUtils/TagViewManager;

    invoke-direct {v4, v13}, Lcom/htc/album/TagUtils/TagViewManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    .line 2441
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagBar:Lcom/htc/album/SocialNetwork/LiveTagBar;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LiveTagBar;->getRootView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v4}, Lcom/htc/album/TagUtils/TagViewManager;->setReferenceTagGroup(Landroid/widget/RelativeLayout;)V

    .line 2445
    new-instance v24, Landroid/graphics/Point;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Point;-><init>()V

    .line 2446
    .local v24, newPhoto:Landroid/graphics/Point;
    move/from16 v0, v19

    move/from16 v1, v23

    if-gt v0, v1, :cond_4

    move/from16 v0, v18

    move/from16 v1, v22

    if-le v0, v1, :cond_5

    .line 2449
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    move/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/htc/album/TagUtils/TagViewManager;->countPhotoSize(IIII)Landroid/graphics/Point;

    move-result-object v24

    .line 2451
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    .line 2452
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    .line 2456
    :cond_5
    sub-int v4, v23, v19

    div-int/lit8 v20, v4, 0x2

    .line 2457
    sub-int v4, v22, v18

    div-int/lit8 v21, v4, 0x2

    .line 2459
    new-instance v25, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    move-object/from16 v0, v25

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2460
    .local v25, param:Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v0, v23

    move-object/from16 v1, v25

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2461
    move/from16 v0, v22

    move-object/from16 v1, v25

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2463
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    move/from16 v3, v18

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/htc/album/TagUtils/TagViewManager;->init(IIII)Z

    .line 2467
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    .line 2469
    .local v17, index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getOwnerID()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterX()F

    move-result v8

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterY()F

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/htc/album/TagUtils/TagViewManager;->addTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFFZ)V

    goto :goto_1

    .line 2473
    .end local v17           #index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    move-object/from16 v0, v25

    invoke-virtual {v4, v5, v0}, Lcom/htc/album/TagUtils/TagViewManager;->addViewToTagGroup(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 2475
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_7

    .line 2478
    invoke-direct/range {p0 .. p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideTag()V

    goto/16 :goto_0

    .line 2482
    :cond_7
    const-string v4, "SceneOnlinePhotoFullscreen"

    const-string v5, "[HTCAlbum][SceneOnlinePhotoFullscreen][showTag]:... "

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2483
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/album/TagUtils/TagViewManager;->showTagGroup(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    const-string v0, "LivePhotoAdapter"

    return-object v0
.end method

.method protected defaultControlBarOn()Z
    .locals 1

    .prologue
    .line 1286
    const/4 v0, 0x0

    return v0
.end method

.method public enableFullScreen()Z
    .locals 1

    .prologue
    .line 606
    const/4 v0, 0x1

    return v0
.end method

.method public enableProgressLoading()Z
    .locals 1

    .prologue
    .line 2572
    const/4 v0, 0x1

    return v0
.end method

.method public enableRightFooter()Z
    .locals 1

    .prologue
    .line 1752
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsFooterbarVisible:Z

    return v0
.end method

.method public getEnvironmentRenderOrder()I
    .locals 1

    .prologue
    .line 1557
    const/4 v0, 0x3

    return v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2154
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v1, :cond_0

    const-string v0, ""

    .line 2158
    :goto_0
    return-object v0

    .line 2156
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getCount()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2158
    .local v0, szSecondTitle:Ljava/lang/String;
    goto :goto_0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2144
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-nez v1, :cond_0

    const-string v0, ""

    .line 2148
    :goto_0
    return-object v0

    .line 2146
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v2, "album_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2148
    .local v0, szPrimanyTitle:Ljava/lang/String;
    goto :goto_0
.end method

.method public getProgressLoadingText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2605
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mLoadingText:Ljava/lang/String;

    return-object v0
.end method

.method public isNetworkConnectionActive()Z
    .locals 7

    .prologue
    .line 574
    const/4 v0, 0x0

    .line 575
    .local v0, bResult:Z
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v2

    .line 576
    .local v2, fragment:Lcom/htc/app/mf/MfFragment;
    if-nez v2, :cond_0

    move v1, v0

    .line 587
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 579
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    instance-of v4, v2, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

    if-eqz v4, :cond_1

    move-object v3, v2

    .line 581
    check-cast v3, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

    .line 582
    .local v3, msgHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
    invoke-virtual {v2}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isNetworkConnectionActive(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 583
    const/4 v0, 0x1

    .end local v3           #msgHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
    :cond_1
    :goto_1
    move v1, v0

    .line 587
    .restart local v1       #bResult:I
    goto :goto_0

    .line 585
    .end local v1           #bResult:I
    .restart local v3       #msgHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
    :cond_2
    const/16 v4, 0x272c

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_1
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 1303
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onBack()V

    .line 1304
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, plugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    const-string v1, "SceneOnlinePhotoFullscreen"

    const-string v2, "OnActivityResult: pass to data plugin"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->onUIActivityResult(IILandroid/content/Intent;)V

    .line 328
    :cond_0
    return-void
.end method

.method public onAnimationEnd(I)V
    .locals 1
    .parameter "nAnimState"

    .prologue
    const/4 v0, 0x0

    .line 473
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onAnimationEnd(I)V

    .line 475
    packed-switch p1, :pswitch_data_0

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 478
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->setEnableControlBarAnimation(Z)V

    goto :goto_0

    .line 481
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->setEnableControlBarAnimation(Z)V

    .line 482
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    const/16 v0, 0x4e3c

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onRemoveMessage(I)V

    goto :goto_0

    .line 475
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBack()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 228
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareListDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 230
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 232
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-nez v4, :cond_2

    .line 264
    :cond_1
    :goto_0
    return-void

    .line 235
    :cond_2
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreen()Z

    move-result v1

    .line 237
    .local v1, bIsFullScreen:Z
    if-nez v1, :cond_3

    .line 238
    invoke-virtual {p0, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onDisableTransitionAnimation(Z)V

    .line 240
    :cond_3
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onLastViewItemUpdate()V

    .line 242
    iget-boolean v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsDelete:Z

    if-eq v6, v4, :cond_4

    iget-boolean v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsPluginDelete:Z

    if-ne v6, v4, :cond_5

    .line 244
    :cond_4
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 245
    .local v2, nBundle:Landroid/os/Bundle;
    const-string v4, "refresh_by_delete"

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 246
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v5, "SceneOnlinePhotoThumbnail"

    invoke-interface {v4, v2, v5, v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0

    .line 251
    .end local v2           #nBundle:Landroid/os/Bundle;
    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 252
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 255
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getSceneCount()I

    move-result v3

    .line 256
    .local v3, nSceneCount:I
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableLandingPage()Z

    move-result v4

    if-eqz v4, :cond_6

    if-ne v6, v3, :cond_6

    .line 258
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 262
    :cond_6
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    .line 198
    const/4 v1, 0x1

    .line 200
    .local v1, bResult:Z
    const/4 v0, 0x0

    .line 201
    .local v0, bIsSignInRequired:Z
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    if-eqz v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    invoke-interface {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->isSignInRequired()Z

    move-result v0

    .line 206
    :cond_0
    const/4 v2, 0x1

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 208
    const-string v2, "SceneOnlinePhotoFullscreen"

    const-string v3, "[HTCAlbum][SceneOnlinePhotoFullscreen][onBackPressed] account is not available..."

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v1, 0x0

    .line 223
    :goto_0
    return v1

    .line 211
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 213
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->unzoomCenter()V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isEnabledFullScreenAndInFilmstrip()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 217
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->forceFilmstripViewAlign()V

    goto :goto_0

    .line 221
    :cond_3
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onBack()V

    goto :goto_0
.end method

.method public onBindAdapter()V
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 332
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onBindAdapter()V

    .line 335
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "index_id"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 336
    .local v2, index:I
    if-ne v2, v5, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onSyncPhotoIndex()I

    move-result v2

    .line 340
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v3, v4, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunnyCore/IMediaList;I)V

    .line 342
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v1

    .line 343
    .local v1, fragment:Landroid/app/Fragment;
    if-eqz v1, :cond_1

    .line 345
    new-instance v4, Lcom/htc/album/helper/OnlineDeleteManager;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    new-instance v5, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$1;)V

    invoke-direct {v4, v1, v3, v5}, Lcom/htc/album/helper/OnlineDeleteManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/SocialNetwork/LivePhotoAdapter;Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;)V

    iput-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    .line 348
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 349
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "photo_detail_index"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 350
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/16 v4, 0x4e35

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 351
    return-void
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method public onBubbleDismissed()V
    .locals 3

    .prologue
    .line 2037
    const/16 v0, 0x4e3c

    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    .line 2038
    return-void
.end method

.method public onBubblePopped()V
    .locals 1

    .prologue
    .line 2027
    const/16 v0, 0x4e3c

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onRemoveMessage(I)V

    .line 2028
    return-void
.end method

.method public onComment()V
    .locals 5

    .prologue
    .line 2163
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v4, :cond_1

    .line 2172
    :cond_0
    :goto_0
    return-void

    .line 2165
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    .line 2166
    .local v3, nIndex:I
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 2167
    .local v1, activity:Landroid/app/Activity;
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 2168
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 2170
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 2171
    .local v2, bundle:Landroid/os/Bundle;
    invoke-static {v1, v0, v2}, Lcom/htc/album/helper/MenuManager;->launchComments(Landroid/app/Activity;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1756
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1757
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1758
    .local v0, activity:Landroid/app/Activity;
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1773
    :goto_0
    return-void

    .line 1762
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_1

    .line 1763
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1764
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1765
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 1768
    :cond_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1769
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1770
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 3
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
    const/4 v2, 0x1

    .line 1777
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->isDestroyingAdapter()Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 1779
    :cond_0
    const-string v1, "SceneOnlinePhotoFullscreen"

    const-string v2, "[HTCAlbum][SceneOnlinePhotoFullscreen][onControlButtonClick] Adapter is finishing..."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    :cond_1
    :goto_0
    return-void

    .line 1782
    :cond_2
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareListDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-ne v1, v2, :cond_3

    .line 1784
    const-string v1, "SceneOnlinePhotoFullscreen"

    const-string v2, "[HTCAlbum][SceneOnlinePhotoFullscreen][onControlButtonClick] Share list dialog is showing..."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1787
    :cond_3
    const/4 v0, 0x0

    .line 1788
    .local v0, bResult:Z
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onOpenSenseControlButtonClick(I)Z

    move-result v0

    if-eq v2, v0, :cond_1

    .line 1791
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getGroupId()I

    move-result v1

    if-ne v2, v1, :cond_4

    .line 1793
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->isNetworkConnectionActive()Z

    move-result v1

    if-ne v2, v1, :cond_1

    .line 1794
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onShare(I)V

    goto :goto_0

    .line 1799
    :cond_4
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 1825
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->showShareDialog()V

    goto :goto_0

    .line 1802
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onBack()V

    goto :goto_0

    .line 1805
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onComment()V

    goto :goto_0

    .line 1808
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onRefresh()V

    goto :goto_0

    .line 1811
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onEdit()V

    goto :goto_0

    .line 1814
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onDelete()V

    goto :goto_0

    .line 1818
    :sswitch_6
    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleCaption(Z)V

    goto :goto_0

    .line 1822
    :sswitch_7
    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleTag(Z)V

    goto :goto_0

    .line 1799
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_5
        0x6 -> :sswitch_3
        0x9 -> :sswitch_2
        0xa -> :sswitch_4
        0x13 -> :sswitch_1
        0x1d -> :sswitch_7
        0x1e -> :sswitch_7
        0x20 -> :sswitch_6
        0x21 -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 4
    .parameter "nAnimState"

    .prologue
    .line 452
    iput p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAnimationState:I

    .line 453
    const-string v1, "SceneOnlinePhotoFullscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneOnlinePhotoFullscreen][onCreateAnimation]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAnimationState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 455
    .local v0, animationBundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    .line 457
    :cond_0
    return-object v0
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 12
    .parameter "id"

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 1569
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-nez v3, :cond_2

    .line 1571
    :cond_0
    const-string v2, "SceneOnlinePhotoFullscreen"

    const-string v3, "[HTCAlbum][SceneOnlinePhotoFullscreen][onCreateFooterBar]: NG..."

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    const/4 v0, 0x0

    .line 1594
    :cond_1
    :goto_0
    return-object v0

    .line 1574
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1576
    .local v1, appContext:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->enableRightFooter()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 1577
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {v0, v1, v2, v11}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v10

    check-cast v10, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 1579
    .local v10, shareBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v5, "service_name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1580
    .local v6, bIsFacebook:Z
    if-nez v6, :cond_3

    .line 1582
    const/4 v3, 0x2

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Delete_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a0131

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v3

    check-cast v3, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 1584
    :cond_3
    const/16 v3, 0x9

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Note_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a0137

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v7

    check-cast v7, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 1585
    .local v7, commentBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v9

    check-cast v9, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 1587
    .local v9, moreBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    invoke-direct {p0, v9}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->addMoreBubbleList(Lcom/htc/album/modules/ui/widget/FooterButton;)V

    .line 1589
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v8

    .line 1590
    .local v8, footer:Landroid/view/ViewGroup;
    instance-of v2, v8, Lcom/htc/widget/HtcFooter;

    if-eqz v2, :cond_1

    .line 1591
    check-cast v8, Lcom/htc/widget/HtcFooter;

    .end local v8           #footer:Landroid/view/ViewGroup;
    invoke-virtual {v8, v11}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    goto :goto_0
.end method

.method public onCreateFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 3
    .parameter "id"
    .parameter "extras"

    .prologue
    const/4 v1, 0x1

    .line 2122
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    if-eqz v2, :cond_0

    .line 2124
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/album/helper/OnlineDeleteManager;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 2125
    .local v0, dlg:Z
    if-ne v1, v0, :cond_0

    .line 2128
    .end local v0           #dlg:Z
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_0
.end method

.method public onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;
    .locals 7

    .prologue
    .line 610
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 611
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    .line 612
    .local v1, fsvi:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
    new-instance v3, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v5

    invoke-direct {v3, v0, v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    .line 613
    .local v3, fvci:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    new-instance v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v5

    invoke-direct {v2, v0, v5, v1, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V

    .line 614
    .local v2, fullfilmview:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    new-instance v5, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-direct {v5, v0}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    .line 615
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 616
    .local v4, inValue:Landroid/os/Bundle;
    const-string v5, "TEXTURE_MAX_COUNT"

    const/16 v6, 0x14

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 617
    const-string v5, "FULL_FILM_FLAG"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 618
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v5, v0, v4}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 619
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v5, v2}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunnyCore/Preparator$UpdateListener;)V

    .line 620
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPreparation(Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;)V

    .line 621
    new-instance v5, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;

    invoke-direct {v5, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPanZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    .line 622
    new-instance v5, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$ViewScrollStateChangedListener;

    invoke-direct {v5, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$ViewScrollStateChangedListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnScrollListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;)V

    .line 623
    new-instance v5, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FilmstripItemSelectedListner;

    invoke-direct {v5, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FilmstripItemSelectedListner;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemSelectedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;)V

    .line 624
    new-instance v5, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$filmstripViewScrollChangeListener;

    invoke-direct {v5, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$filmstripViewScrollChangeListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnFilmstripViewScrollChangeListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnFilmstripViewScrollChangeListener;)V

    .line 625
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOnItemClickListener:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemClickListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;)V

    .line 627
    return-object v2
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunnyCore/view/SView;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    .locals 2

    .prologue
    .line 633
    new-instance v1, Lcom/htc/album/Animation/animationSetFullscreenview;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-direct {v1, v0}, Lcom/htc/album/Animation/animationSetFullscreenview;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    return-object v1
.end method

.method public onDelete()V
    .locals 5

    .prologue
    .line 2096
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    instance-of v4, v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    if-eqz v4, :cond_0

    .line 2098
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    .line 2100
    .local v2, nIndex:I
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v4, :cond_1

    .line 2102
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 2103
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v3

    .line 2105
    .local v3, photoID:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2107
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2108
    .local v1, msg:Landroid/os/Message;
    const v4, 0x10300001

    iput v4, v1, Landroid/os/Message;->what:I

    .line 2109
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2110
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v4, v1}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onUIHandlerMessage(Landroid/os/Message;)V

    .line 2118
    .end local v0           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #nIndex:I
    .end local v3           #photoID:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2115
    .restart local v2       #nIndex:I
    :cond_1
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v4, v2}, Lcom/htc/album/helper/OnlineDeleteManager;->deleteSingleMedia(I)V

    goto :goto_0
.end method

.method public onDestroyScene()V
    .locals 1

    .prologue
    .line 2660
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareListDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2662
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2663
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareListDialog:Landroid/app/AlertDialog;

    .line 2665
    :cond_0
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onDestroyScene()V

    .line 2666
    return-void
.end method

.method public onDismissFragmentDialog(I)Z
    .locals 3
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    .line 2133
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    if-eqz v2, :cond_0

    .line 2135
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v2, p1}, Lcom/htc/album/helper/OnlineDeleteManager;->onDismissFragmentDialog(I)Z

    move-result v0

    .line 2136
    .local v0, dlg:Z
    if-ne v1, v0, :cond_0

    .line 2139
    .end local v0           #dlg:Z
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onDismissFragmentDialog(I)Z

    move-result v1

    goto :goto_0
.end method

.method public onEdit()V
    .locals 7

    .prologue
    .line 2071
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2073
    .local v3, photoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    .line 2074
    .local v2, nIndex:I
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 2075
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2087
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 2088
    .local v1, bundle:Landroid/os/Bundle;
    const-string v4, "photo_list"

    check-cast v3, Ljava/util/ArrayList;

    .end local v3           #photoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2089
    const-string v4, "index_id"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2090
    const-string v4, "scene_identifier"

    const-string v5, "SceneOnlinePhotoFullscreen"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v5, "ScenePhotoTagEditor"

    const/4 v6, 0x0

    invoke-interface {v4, v1, v5, v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 2093
    return-void
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 1299
    const/4 v0, 0x1

    return v0
.end method

.method public onEnterImageIHT(II)I
    .locals 5
    .parameter "nIndexPrev"
    .parameter "nIndexNext"

    .prologue
    .line 856
    const-string v2, "SceneOnlinePhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneOnlinePhotoFullscreen][onEnterImageIHT]: begin"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    move v0, p1

    .line 860
    .local v0, nIndex:I
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-nez v2, :cond_0

    .line 862
    const-string v2, "SceneOnlinePhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneOnlinePhotoFullscreen][onEnterImageIHT]: no 3D barrier"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 876
    .end local v0           #nIndex:I
    .local v1, nIndex:I
    :goto_0
    return v1

    .line 866
    .end local v1           #nIndex:I
    .restart local v0       #nIndex:I
    :cond_0
    if-ne v0, p2, :cond_1

    .line 868
    const-string v2, "SceneOnlinePhotoFullscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcAlbum][SceneOnlinePhotoFullscreen][onEnterImageIHT]: on the spot: mIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    :goto_1
    const-string v2, "SceneOnlinePhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneOnlinePhotoFullscreen][onEnterImageIHT]: end "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 876
    .end local v0           #nIndex:I
    .restart local v1       #nIndex:I
    goto :goto_0

    .line 872
    .end local v1           #nIndex:I
    .restart local v0       #nIndex:I
    :cond_1
    move v0, p2

    .line 873
    const-string v2, "SceneOnlinePhotoFullscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcAlbum][SceneOnlinePhotoFullscreen][onEnterImageIHT]: mIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 14
    .parameter "bundle"

    .prologue
    const/16 v13, 0xc

    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 1462
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagBar:Lcom/htc/album/SocialNetwork/LiveTagBar;

    if-nez v7, :cond_0

    .line 1464
    new-instance v7, Lcom/htc/album/SocialNetwork/LiveTagBar;

    const/16 v8, 0x1004

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f030042

    invoke-direct {v7, v8, v9, v10}, Lcom/htc/album/SocialNetwork/LiveTagBar;-><init>(ILandroid/content/Context;I)V

    iput-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagBar:Lcom/htc/album/SocialNetwork/LiveTagBar;

    .line 1465
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 1466
    .local v5, root:Landroid/widget/RelativeLayout;
    if-eqz v5, :cond_0

    .line 1467
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagBar:Lcom/htc/album/SocialNetwork/LiveTagBar;

    invoke-virtual {v7}, Lcom/htc/album/SocialNetwork/LiveTagBar;->getRootView()Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagBar:Lcom/htc/album/SocialNetwork/LiveTagBar;

    invoke-virtual {v8}, Lcom/htc/album/SocialNetwork/LiveTagBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1470
    .end local v5           #root:Landroid/widget/RelativeLayout;
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 1475
    invoke-static {}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->instance()Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

    move-result-object v4

    .line 1476
    .local v4, connectionMgr:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v6

    .line 1477
    .local v6, sceneIntent:Landroid/content/Intent;
    if-eqz v6, :cond_1

    .line 1479
    const-string v7, "from_outside"

    invoke-virtual {v6, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1480
    .local v1, bIsExternal:Z
    if-eqz v1, :cond_1

    .line 1482
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->connectTo(Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V

    .line 1485
    .end local v1           #bIsExternal:Z
    :cond_1
    invoke-static {}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->getActiveConnection()Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    .line 1486
    invoke-static {}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->destroyInstance()V

    .line 1488
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1498
    :goto_0
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    if-nez v7, :cond_4

    .line 1500
    new-instance v7, Lcom/htc/album/SocialNetwork/LiveCommentBar;

    const/16 v8, 0x1003

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f030032

    invoke-direct {v7, v8, v9, v10}, Lcom/htc/album/SocialNetwork/LiveCommentBar;-><init>(ILandroid/content/Context;I)V

    iput-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    .line 1501
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 1502
    .restart local v5       #root:Landroid/widget/RelativeLayout;
    if-eqz v5, :cond_4

    .line 1504
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->setVisibility(I)V

    .line 1506
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    const v8, 0x7f09005b

    invoke-virtual {v7, v8}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 1507
    .local v2, commentBarLayout:Landroid/widget/RelativeLayout;
    if-eqz v2, :cond_2

    .line 1509
    sget v7, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DESCRIPTION_MIN_HEIGHT_DIMEN:I

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    .line 1510
    const v7, 0x7f020007

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1513
    :cond_2
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    const v8, 0x7f09005c

    invoke-virtual {v7, v8}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1514
    .local v3, commentBarText:Landroid/widget/TextView;
    if-eqz v3, :cond_3

    .line 1516
    sget v7, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DESCRIPTION_MAX_HEIGHT_DIMEN:I

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 1517
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1520
    :cond_3
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1522
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v7}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getId()I

    move-result v8

    invoke-virtual {v7, v13, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1538
    :goto_1
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v7}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getRootView()Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v8}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1542
    .end local v2           #commentBarLayout:Landroid/widget/RelativeLayout;
    .end local v3           #commentBarText:Landroid/widget/TextView;
    .end local v5           #root:Landroid/widget/RelativeLayout;
    :cond_4
    const-string v7, "service_name"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mServiceType:Ljava/lang/String;

    .line 1543
    return-void

    .line 1494
    :cond_5
    const/16 v7, 0x1001

    invoke-virtual {p0, v7, v11}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->createFooterBar(IZ)V

    goto/16 :goto_0

    .line 1526
    .restart local v2       #commentBarLayout:Landroid/widget/RelativeLayout;
    .restart local v3       #commentBarText:Landroid/widget/TextView;
    .restart local v5       #root:Landroid/widget/RelativeLayout;
    :cond_6
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1527
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v12, :cond_7

    .line 1528
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v7}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v7, v12, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1529
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v7}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v8

    invoke-virtual {v7, v11, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1530
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v7}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 1533
    :cond_7
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v7}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v8

    invoke-virtual {v7, v12, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1534
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v7}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v7, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1535
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v7}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v7, v13, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1
.end method

.method public onLeaveScene()V
    .locals 2

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    if-eqz v0, :cond_0

    .line 1549
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->setVisibility(I)V

    .line 1550
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideTag()V

    .line 1551
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    .line 1552
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onLeaveScene()V

    .line 1553
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 682
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_0

    move v1, v3

    .line 738
    :goto_0
    return v1

    .line 684
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 685
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    move v1, v3

    goto :goto_0

    .line 687
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v2, :cond_3

    :cond_2
    move v1, v3

    goto :goto_0

    .line 689
    :cond_3
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 735
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 692
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onErrorNoList(Landroid/os/Message;)V

    move v1, v3

    .line 693
    goto :goto_0

    .line 695
    :sswitch_1
    invoke-direct {p0, p1, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onSyncList(Landroid/os/Message;Z)V

    move v1, v3

    .line 696
    goto :goto_0

    .line 698
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onSyncPhotoDetail(Landroid/os/Message;)V

    move v1, v3

    .line 699
    goto :goto_0

    .line 701
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onScrollStateChange(Landroid/os/Message;)V

    move v1, v3

    .line 702
    goto :goto_0

    .line 704
    :sswitch_4
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideAllControlBars()V

    move v1, v3

    .line 705
    goto :goto_0

    .line 707
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onItemSelected(Landroid/os/Message;)V

    move v1, v3

    .line 708
    goto :goto_0

    .line 710
    :sswitch_6
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onRefresh()V

    move v1, v3

    .line 711
    goto :goto_0

    .line 713
    :sswitch_7
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    move v1, v3

    .line 714
    goto :goto_0

    .line 716
    :sswitch_8
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleTag(Z)V

    move v1, v3

    .line 717
    goto :goto_0

    .line 719
    :sswitch_9
    invoke-direct {p0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleCaption(Z)V

    move v1, v3

    .line 720
    goto :goto_0

    .line 722
    :sswitch_a
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onUICmdDelete(Landroid/os/Message;)V

    move v1, v3

    .line 723
    goto :goto_0

    .line 725
    :sswitch_b
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onEdit()V

    move v1, v3

    .line 726
    goto :goto_0

    .line 728
    :sswitch_c
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_4

    .line 730
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setLastVisibleIndex(I)V

    .line 731
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onVerifyImageStatus(I)V

    :cond_4
    move v1, v3

    .line 733
    goto :goto_0

    .line 689
    :sswitch_data_0
    .sparse-switch
        0x139c -> :sswitch_5
        0x2761 -> :sswitch_0
        0x4e3c -> :sswitch_4
        0x4e47 -> :sswitch_c
        0x4e88 -> :sswitch_1
        0x4e94 -> :sswitch_2
        0x4f4f -> :sswitch_3
        0x10200001 -> :sswitch_6
        0x10200003 -> :sswitch_9
        0x10200004 -> :sswitch_8
        0x10200007 -> :sswitch_a
        0x10200009 -> :sswitch_7
        0x10300002 -> :sswitch_b
    .end sparse-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 10
    .parameter "bundle"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 637
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onNewAdapter(Landroid/os/Bundle;)V

    .line 638
    iput-boolean v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsNewAdapter:Z

    .line 639
    new-instance v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 640
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4, p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 641
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setDataRequest(Ljava/lang/Object;)V

    .line 642
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onCreate()V

    .line 644
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    move-result-object v3

    .line 645
    .local v3, snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    const-string v4, "service_name"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 647
    .local v2, plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateFullPhotoListPlugin()Ljava/lang/String;

    move-result-object v0

    .line 648
    .local v0, dataplugin:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .line 650
    const-string v4, "user_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 651
    .local v1, pid:Ljava/lang/String;
    const-string v4, "SceneOnlinePhotoFullscreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create opensense data plugin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPluginRemote;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    new-instance v6, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;-><init>(Landroid/os/Handler;)V

    invoke-static {v4, v0, v6, v1}, Lcom/htc/album/SocialNetworkManager/DataPluginHelper;->createFullPhotoListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    .line 653
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v4, v6}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z

    .line 655
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    instance-of v4, v4, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v4, :cond_0

    .line 657
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    const-string v6, "showTag"

    invoke-direct {p0, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onNotifyUpdateTagMode(Z)V

    .line 658
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    const-string v6, "showCaption"

    invoke-direct {p0, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onNotifyUpdateCaptionMode(Z)V

    .line 661
    :cond_0
    const/16 v4, 0x1001

    invoke-virtual {p0, v4, v8}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->createFooterBar(IZ)V

    .line 663
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v4, :cond_1

    .line 665
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v4}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onShowFooterBar()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getChildCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 666
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->removeView(Landroid/view/View;)V

    .line 670
    .end local v1           #pid:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/4 v6, 0x4

    new-instance v7, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;

    invoke-direct {v7, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V

    invoke-virtual {v4, v6, v5, v7}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setTemplateLayout(ILcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    .line 674
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onSyncPhotoIndex()I

    .line 676
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onResume()V

    .line 677
    invoke-direct {p0, v9, v8}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->enableProgressLoading(ZI)V

    .line 678
    return-void

    .end local v0           #dataplugin:Ljava/lang/String;
    :cond_2
    move-object v0, v5

    .line 647
    goto/16 :goto_0
.end method

.method public onNotifyUpdateComplete()V
    .locals 0

    .prologue
    .line 779
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 1875
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1877
    const/4 v0, 0x0

    .line 1878
    .local v0, bResult:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onOpenSenseControlButtonClick(I)Z

    move-result v0

    if-ne v3, v0, :cond_1

    .line 1880
    const-string v1, "SceneOnlinePhotoFullscreen"

    const-string v2, "[HTCAlbum][SceneOnlinePhotoFullscreen][onOptionsItemSelected]: skip 1"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    .end local v0           #bResult:Z
    :cond_0
    :goto_0
    return v3

    .line 1884
    .restart local v0       #bResult:Z
    :cond_1
    const/16 v1, 0x28

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 1886
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->isNetworkConnectionActive()Z

    move-result v1

    if-ne v3, v1, :cond_0

    .line 1888
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onShare(I)V

    goto :goto_0

    .line 1893
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 1908
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onDelete()V

    goto :goto_0

    .line 1896
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onBack()V

    goto :goto_0

    .line 1899
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onComment()V

    goto :goto_0

    .line 1902
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onRefresh()V

    goto :goto_0

    .line 1905
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onEdit()V

    goto :goto_0

    .line 1912
    :sswitch_5
    invoke-direct {p0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleCaption(Z)V

    goto :goto_0

    .line 1916
    :sswitch_6
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleTag(Z)V

    goto :goto_0

    .line 1893
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_3
        0x9 -> :sswitch_2
        0xa -> :sswitch_4
        0x13 -> :sswitch_1
        0x1d -> :sswitch_6
        0x1e -> :sswitch_6
        0x20 -> :sswitch_5
        0x21 -> :sswitch_5
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 271
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPause()V

    .line 272
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->purgeTextureMapsForMemory(Z)Z

    .line 275
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getTileDecoder()Lcom/htc/sunny2/fullfilmview/TileDecoder;

    move-result-object v0

    .line 276
    .local v0, tileDecoder:Lcom/htc/sunny2/fullfilmview/TileDecoder;
    if-eqz v0, :cond_0

    .line 278
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->setValid(Z)V

    .line 279
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->freeBitmapRegionDecoder()V

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->purgeTileTextures()V

    .line 282
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->unzoomCenter()V

    .line 287
    .end local v0           #tileDecoder:Lcom/htc/sunny2/fullfilmview/TileDecoder;
    :cond_1
    return-void
.end method

.method protected onPhaseInScreenControl(I)V
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 398
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->setEnableControlBarAnimation(Z)V

    .line 406
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPhaseInScreenControl(I)V

    .line 407
    return-void

    .line 404
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->setEnableControlBarAnimation(Z)V

    goto :goto_0
.end method

.method protected onPhaseOutScreenControl(I)V
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 410
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->setEnableControlBarAnimation(Z)V

    .line 418
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPhaseOutScreenControl(I)V

    .line 419
    return-void

    .line 416
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->setEnableControlBarAnimation(Z)V

    goto :goto_0
.end method

.method public onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V
    .locals 3
    .parameter "animIn"
    .parameter "animOut"
    .parameter "listener"

    .prologue
    .line 462
    invoke-super {p0, p1, p2, p3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 464
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->setVisibility(I)V

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->showTagGroup(Z)V

    .line 469
    :cond_1
    const-string v0, "SceneOnlinePhotoFullscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneOnlinePhotoFullscreen][onPlayAnimation]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAnimationState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method public onPrepareAnimation(I)Z
    .locals 5
    .parameter "nAnimState"

    .prologue
    .line 423
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPrepareAnimation(I)Z

    move-result v0

    .line 428
    .local v0, bResult:Z
    const/16 v2, 0x4e3c

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onRemoveMessage(I)V

    .line 429
    const-string v2, "SceneOnlinePhotoFullscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneOnlinePhotoFullscreen][onPrepareAnimation]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v3, "SceneOnlinePhotoThumbnail"

    invoke-interface {v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->isSceneExist(Ljava/lang/String;)Z

    move-result v1

    .line 432
    .local v1, isFromGridView:Z
    if-nez v1, :cond_0

    .line 433
    const/4 v0, 0x0

    .line 436
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 446
    :goto_0
    return v0

    .line 439
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v2

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    goto :goto_0

    .line 436
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 1308
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1309
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1310
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1312
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onPrepareTabletOptionsMenu(Landroid/view/Menu;)V

    .line 1315
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onPrepareTabletOptionsMenu(Landroid/view/Menu;)V
    .locals 34
    .parameter "menu"

    .prologue
    .line 1320
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v5

    .line 1321
    .local v5, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    .line 1323
    .local v15, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    move-object/from16 v30, v0

    const-string v31, "opensense_pugin"

    invoke-virtual/range {v30 .. v31}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 1325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    move-object/from16 v30, v0

    if-nez v30, :cond_1

    .line 1432
    :cond_0
    :goto_0
    return-void

    .line 1328
    :cond_1
    new-instance v30, Lcom/htc/opensense/album/plugin/CommandBar;

    invoke-direct/range {v30 .. v30}, Lcom/htc/opensense/album/plugin/CommandBar;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v30 .. v32}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onPrepareCommandBarButton(Lcom/htc/opensense/album/plugin/CommandBar;I)Z

    .line 1331
    const/4 v11, 0x0

    .line 1332
    .local v11, barSize:I
    const/16 v16, 0x0

    .local v16, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/htc/opensense/album/plugin/CommandBar;->getSize()I

    move-result v28

    .local v28, size:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/plugin/CommandBar;->getButton(I)Lcom/htc/opensense/album/plugin/CommandBarButton;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v30

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_2

    add-int/lit8 v11, v11, 0x1

    .line 1332
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1334
    :cond_3
    const/16 v30, 0x1

    move/from16 v0, v30

    if-lt v11, v0, :cond_0

    const/16 v30, 0x3

    move/from16 v0, v30

    if-gt v11, v0, :cond_0

    .line 1336
    const/16 v30, 0x4

    move/from16 v0, v30

    new-array v0, v0, [[I

    move-object/from16 v19, v0

    const/16 v30, 0x0

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, -0x1

    aput v33, v31, v32

    aput-object v31, v19, v30

    const/16 v30, 0x1

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x2

    aput v33, v31, v32

    aput-object v31, v19, v30

    const/16 v30, 0x2

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    fill-array-data v31, :array_0

    aput-object v31, v19, v30

    const/16 v30, 0x3

    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    fill-array-data v31, :array_1

    aput-object v31, v19, v30

    .line 1337
    .local v19, indexTable:[[I
    aget-object v13, v19, v11

    .line 1339
    .local v13, btnIndexTable:[I
    const/16 v16, 0x0

    array-length v0, v13

    move/from16 v28, v0

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_0

    .line 1341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    move-object/from16 v30, v0

    aget v31, v13, v16

    invoke-virtual/range {v30 .. v31}, Lcom/htc/opensense/album/plugin/CommandBar;->getButton(I)Lcom/htc/opensense/album/plugin/CommandBarButton;

    move-result-object v12

    .line 1342
    .local v12, btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    invoke-virtual {v12}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getSubItemList()Ljava/util/List;

    move-result-object v29

    check-cast v29, Ljava/util/ArrayList;

    .line 1343
    .local v29, sublist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    if-eqz v29, :cond_4

    .line 1345
    const/16 v25, 0x0

    .local v25, nSubIndex:I
    :goto_3
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    move/from16 v1, v25

    if-le v0, v1, :cond_6

    .line 1347
    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/opensense/album/plugin/CommandBarButton;

    .line 1348
    .local v14, button:Lcom/htc/opensense/album/plugin/CommandBarButton;
    invoke-virtual {v14}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v30

    const/16 v31, 0x0

    invoke-virtual {v14}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonText()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v30

    move/from16 v3, v31

    move-object/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1345
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 1353
    .end local v14           #button:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v25           #nSubIndex:I
    :cond_4
    const/16 v30, 0x13

    invoke-virtual {v12}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_6

    .line 1355
    const/16 v30, 0x0

    invoke-virtual {v12}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v31

    const/16 v32, 0x0

    invoke-virtual {v12}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonText()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move-object/from16 v4, v33

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v20

    .line 1356
    .local v20, item:Landroid/view/MenuItem;
    invoke-virtual {v12}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1357
    .local v7, bBtnIconBitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_7

    .line 1358
    new-instance v30, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1364
    :cond_5
    :goto_4
    const/16 v30, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1339
    .end local v7           #bBtnIconBitmap:Landroid/graphics/Bitmap;
    .end local v20           #item:Landroid/view/MenuItem;
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 1360
    .restart local v7       #bBtnIconBitmap:Landroid/graphics/Bitmap;
    .restart local v20       #item:Landroid/view/MenuItem;
    :cond_7
    invoke-virtual {v12}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1361
    .local v8, bBtnIconDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_5

    .line 1362
    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_4

    .line 1374
    .end local v7           #bBtnIconBitmap:Landroid/graphics/Bitmap;
    .end local v8           #bBtnIconDrawable:Landroid/graphics/drawable/Drawable;
    .end local v11           #barSize:I
    .end local v12           #btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v13           #btnIndexTable:[I
    .end local v16           #i:I
    .end local v19           #indexTable:[[I
    .end local v20           #item:Landroid/view/MenuItem;
    .end local v28           #size:I
    .end local v29           #sublist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    :cond_8
    const/16 v30, 0x0

    const/16 v31, 0x28

    const/16 v32, 0x0

    const v33, 0x7f0a0130

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v24

    .line 1375
    .local v24, menuShare:Landroid/view/SubMenu;
    const/16 v30, 0x28

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v23

    .line 1376
    .local v23, itemShare:Landroid/view/MenuItem;
    invoke-static {v15}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Share_Dark_Rest(Landroid/content/Context;)I

    move-result v30

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1377
    const/16 v30, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    .line 1380
    .local v6, activity:Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    move-object/from16 v30, v0

    const/16 v31, 0x28

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    move/from16 v2, v31

    invoke-virtual {v0, v6, v1, v2}, Lcom/htc/album/helper/ShareMenuManager;->createSocialShareDropList(Landroid/content/Context;Landroid/view/SubMenu;I)Z

    .line 1385
    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    move-object/from16 v31, v0

    const-string v32, "flag_genuine"

    const/16 v33, 0x1

    invoke-virtual/range {v31 .. v33}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    move-object/from16 v31, v0

    const-string v32, "my_live_album"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    .line 1388
    const/16 v30, 0x0

    const/16 v31, 0x2

    const/16 v32, 0x0

    const v33, 0x7f0a0131

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v22

    .line 1389
    .local v22, itemDelete:Landroid/view/MenuItem;
    invoke-static {v15}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Delete_Dark_Rest(Landroid/content/Context;)I

    move-result v30

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1390
    const/16 v30, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1396
    .end local v22           #itemDelete:Landroid/view/MenuItem;
    :cond_9
    const/16 v30, 0x0

    const/16 v31, 0x9

    const/16 v32, 0x0

    const v33, 0x7f0a0137

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    .line 1397
    .local v21, itemComment:Landroid/view/MenuItem;
    invoke-static {v15}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Note_Dark_Rest(Landroid/content/Context;)I

    move-result v30

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1398
    const/16 v30, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1403
    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    move-object/from16 v31, v0

    const-string v32, "flag_genuine"

    const/16 v33, 0x1

    invoke-virtual/range {v31 .. v33}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_a

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    move-object/from16 v31, v0

    const-string v32, "my_live_album"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_a

    .line 1406
    const/16 v30, 0x0

    const/16 v31, 0xa

    const/16 v32, 0x0

    const v33, 0x7f0a0140

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1414
    :cond_a
    const-string v30, "showCaption"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 1415
    .local v9, bShowCaption:Z
    const-string v30, "showTag"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1417
    .local v10, bShowTag:Z
    const/16 v26, 0x0

    .line 1418
    .local v26, showHideCaption:I
    if-eqz v10, :cond_b

    const v27, 0x7f0a013a

    .line 1420
    .local v27, showHideTag:I
    :goto_5
    if-eqz v10, :cond_c

    const/16 v18, 0x1e

    .line 1421
    .local v18, idshowHideTag:I
    :goto_6
    if-eqz v10, :cond_d

    const/16 v17, 0x21

    .line 1423
    .local v17, idshowHideCaption:I
    :goto_7
    sget-object v30, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/16 v31, 0x0

    aget-object v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    move-object/from16 v31, v0

    const-string v32, "service_name"

    invoke-virtual/range {v31 .. v32}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_f

    .line 1424
    if-eqz v9, :cond_e

    const v26, 0x7f0a013d

    .line 1428
    :goto_8
    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v17

    move/from16 v3, v31

    move/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1429
    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v18

    move/from16 v3, v31

    move/from16 v4, v27

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1418
    .end local v17           #idshowHideCaption:I
    .end local v18           #idshowHideTag:I
    .end local v27           #showHideTag:I
    :cond_b
    const v27, 0x7f0a0139

    goto :goto_5

    .line 1420
    .restart local v27       #showHideTag:I
    :cond_c
    const/16 v18, 0x1d

    goto :goto_6

    .line 1421
    .restart local v18       #idshowHideTag:I
    :cond_d
    const/16 v17, 0x20

    goto :goto_7

    .line 1424
    .restart local v17       #idshowHideCaption:I
    :cond_e
    const v26, 0x7f0a013c

    goto :goto_8

    .line 1426
    :cond_f
    if-eqz v9, :cond_10

    const v26, 0x7f0a013f

    :goto_9
    goto :goto_8

    :cond_10
    const v26, 0x7f0a013e

    goto :goto_9

    .line 1336
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 25
    .parameter "footer"

    .prologue
    .line 1633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 1748
    :cond_0
    :goto_0
    return-void

    .line 1636
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->clear()V

    .line 1637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 1639
    .local v3, appContext:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "opensense_pugin"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v2, :cond_0

    .line 1643
    new-instance v2, Lcom/htc/opensense/album/plugin/CommandBar;

    invoke-direct {v2}, Lcom/htc/opensense/album/plugin/CommandBar;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    .line 1644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onPrepareCommandBarButton(Lcom/htc/opensense/album/plugin/CommandBar;I)Z

    .line 1646
    const/4 v12, 0x0

    .line 1647
    .local v12, barSize:I
    const/16 v18, 0x0

    .local v18, i:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    invoke-virtual {v2}, Lcom/htc/opensense/album/plugin/CommandBar;->getSize()I

    move-result v22

    .local v22, size:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 1649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/htc/opensense/album/plugin/CommandBar;->getButton(I)Lcom/htc/opensense/album/plugin/CommandBarButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    add-int/lit8 v12, v12, 0x1

    .line 1647
    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1651
    :cond_3
    const/4 v2, 0x1

    if-lt v12, v2, :cond_4

    const/4 v2, 0x3

    if-le v12, v2, :cond_7

    .line 1653
    :cond_4
    const-string v2, "SceneOnlinePhotoFullscreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneOnlinePhotoFullscreen][onRefreshFooterBar] Plug-in button size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsFooterbarVisible:Z

    .line 1655
    const/16 v2, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->setVisibility(I)V

    .line 1662
    :goto_2
    invoke-super/range {p0 .. p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onHandleActionBarBarLayoutChange()V

    .line 1663
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsFooterbarVisible:Z

    if-eqz v2, :cond_0

    .line 1665
    const/4 v2, 0x4

    new-array v0, v2, [[I

    move-object/from16 v19, v0

    const/4 v2, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, -0x1

    aput v6, v4, v5

    aput-object v4, v19, v2

    const/4 v2, 0x1

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x2

    aput v6, v4, v5

    aput-object v4, v19, v2

    const/4 v2, 0x2

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    aput-object v4, v19, v2

    const/4 v2, 0x3

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    aput-object v4, v19, v2

    .line 1666
    .local v19, indexTable:[[I
    aget-object v14, v19, v12

    .line 1669
    .local v14, btnIndexTable:[I
    const/4 v10, 0x0

    .line 1671
    .local v10, bHasPluginShareButton:Z
    const/16 v18, 0x0

    array-length v0, v14

    move/from16 v22, v0

    :goto_3
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 1673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    aget v4, v14, v18

    invoke-virtual {v2, v4}, Lcom/htc/opensense/album/plugin/CommandBar;->getButton(I)Lcom/htc/opensense/album/plugin/CommandBarButton;

    move-result-object v13

    .line 1674
    .local v13, btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    const/4 v2, 0x0

    invoke-virtual {v13}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addEmptyButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v17

    check-cast v17, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 1676
    .local v17, footerBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    invoke-virtual {v13}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/widget/FooterButton;->setTextString(Ljava/lang/String;)V

    .line 1677
    invoke-virtual {v13}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1678
    .local v8, bBtnIconBitmap:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_8

    .line 1679
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/htc/album/modules/ui/widget/FooterButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1685
    :cond_5
    :goto_4
    invoke-virtual {v13}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getSubItemList()Ljava/util/List;

    move-result-object v24

    check-cast v24, Ljava/util/ArrayList;

    .line 1686
    .local v24, sublist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    if-eqz v24, :cond_6

    .line 1688
    invoke-virtual {v13}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v15

    .line 1690
    .local v15, buttonID:I
    const/high16 v2, 0x60a0

    if-ne v15, v2, :cond_9

    .line 1693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v2, v4, v0}, Lcom/htc/album/helper/ShareMenuManager;->createSocialPluginShareList(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/album/modules/ui/widget/FooterButton;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/htc/album/helper/ShareMenuManager;->setSharePluginButtonID(I)V

    .line 1695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/htc/album/helper/ShareMenuManager;->setPluginFooterButton(Lcom/htc/album/modules/ui/widget/FooterButton;)V

    .line 1671
    .end local v15           #buttonID:I
    :cond_6
    :goto_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 1659
    .end local v8           #bBtnIconBitmap:Landroid/graphics/Bitmap;
    .end local v10           #bHasPluginShareButton:Z
    .end local v13           #btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v14           #btnIndexTable:[I
    .end local v17           #footerBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    .end local v19           #indexTable:[[I
    .end local v24           #sublist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    :cond_7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsFooterbarVisible:Z

    .line 1660
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 1681
    .restart local v8       #bBtnIconBitmap:Landroid/graphics/Bitmap;
    .restart local v10       #bHasPluginShareButton:Z
    .restart local v13       #btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .restart local v14       #btnIndexTable:[I
    .restart local v17       #footerBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    .restart local v19       #indexTable:[[I
    :cond_8
    invoke-virtual {v13}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1682
    .local v9, bBtnIconDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_5

    .line 1683
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/htc/album/modules/ui/widget/FooterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 1700
    .end local v9           #bBtnIconDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v15       #buttonID:I
    .restart local v24       #sublist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    :cond_9
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x4

    if-le v2, v4, :cond_a

    if-nez v10, :cond_a

    .line 1704
    const/4 v10, 0x1

    .line 1705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v2, v4, v0}, Lcom/htc/album/helper/ShareMenuManager;->createSocialPluginShareList(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/album/modules/ui/widget/FooterButton;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/htc/album/helper/ShareMenuManager;->setSharePluginButtonID(I)V

    .line 1707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/htc/album/helper/ShareMenuManager;->setPluginFooterButton(Lcom/htc/album/modules/ui/widget/FooterButton;)V

    .line 1709
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/widget/FooterButton;->enableShareDataPlugin(Z)V

    goto :goto_5

    .line 1712
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Lcom/htc/album/helper/ShareMenuManager;->doCreatePluginBubble(Lcom/htc/album/modules/ui/widget/FooterButton;Ljava/util/ArrayList;)Z

    goto :goto_5

    .line 1719
    .end local v8           #bBtnIconBitmap:Landroid/graphics/Bitmap;
    .end local v10           #bHasPluginShareButton:Z
    .end local v12           #barSize:I
    .end local v13           #btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v14           #btnIndexTable:[I
    .end local v15           #buttonID:I
    .end local v17           #footerBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    .end local v18           #i:I
    .end local v19           #indexTable:[[I
    .end local v22           #size:I
    .end local v24           #sublist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    :cond_b
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v21

    check-cast v21, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 1728
    .local v21, shareBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v5, "service_name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 1729
    .local v11, bIsFacebook:Z
    if-nez v11, :cond_c

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v5, "flag_genuine"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-ne v2, v4, :cond_c

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v5, "my_live_album"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-ne v2, v4, :cond_c

    .line 1734
    const/4 v2, 0x0

    const/4 v4, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v2

    check-cast v2, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 1737
    :cond_c
    const/4 v4, 0x0

    const/16 v5, 0x9

    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Note_Dark_Rest(Landroid/content/Context;)I

    move-result v6

    const v7, 0x7f0a0137

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v16

    check-cast v16, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 1738
    .local v16, commentBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0137

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1739
    .local v23, strComment:Ljava/lang/String;
    if-eqz v16, :cond_e

    .line 1741
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentCount:I

    const/4 v4, 0x1

    if-lt v2, v4, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1742
    :cond_d
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/FooterButton;->setTextString(Ljava/lang/String;)V

    .line 1745
    :cond_e
    const/4 v2, 0x0

    const/16 v4, 0x11

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v20

    check-cast v20, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 1746
    .local v20, moreBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    if-eqz v20, :cond_0

    .line 1747
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->addMoreBubbleList(Lcom/htc/album/modules/ui/widget/FooterButton;)V

    goto/16 :goto_0

    .line 1665
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 299
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onResume()V

    .line 300
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getTileDecoder()Lcom/htc/sunny2/fullfilmview/TileDecoder;

    move-result-object v0

    .line 303
    .local v0, tileDecoder:Lcom/htc/sunny2/fullfilmview/TileDecoder;
    if-eqz v0, :cond_0

    .line 305
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->setValid(Z)V

    .line 308
    .end local v0           #tileDecoder:Lcom/htc/sunny2/fullfilmview/TileDecoder;
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->checkAccountIsAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 312
    const-string v1, "SceneOnlinePhotoFullscreen"

    const-string v2, "[HTCAlbum][SceneOnlinePhotoFullscreen][onResume] account is not available..."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onBackPressed()Z

    .line 317
    :cond_1
    return-void
.end method

.method public onScrollStateChange(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2500
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2501
    .local v5, scrollState:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    .line 2502
    .local v3, nIndex:I
    iget v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mPrevPosition:I

    if-ne v6, v3, :cond_1

    iget v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mPrevScrollState:I

    if-ne v6, v5, :cond_1

    .line 2545
    :cond_0
    :goto_0
    return-void

    .line 2504
    :cond_1
    iget v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mPrevPosition:I

    .line 2505
    .local v4, prevIndex:I
    iput v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mPrevScrollState:I

    .line 2507
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isEnabledFullScreenAndInFilmstrip()Z

    move-result v1

    .line 2508
    .local v1, bIsInFilmstripView:Z
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v6, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setInFilmstripViewMode(Z)V

    .line 2510
    if-nez v5, :cond_5

    .line 2512
    iput v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mPrevPosition:I

    .line 2514
    invoke-virtual {p0, v8}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleTag(Z)V

    .line 2515
    invoke-direct {p0, v8}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleCaption(Z)V

    .line 2517
    if-eq v4, v3, :cond_2

    .line 2519
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2520
    .local v2, bundle:Landroid/os/Bundle;
    const-string v6, "photo_detail_index"

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2521
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/16 v7, 0x4e35

    invoke-virtual {v6, v7, v2, v8}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 2526
    .end local v2           #bundle:Landroid/os/Bundle;
    :cond_2
    if-eq v5, v10, :cond_3

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    if-ne v5, v9, :cond_4

    :cond_3
    const/16 v0, 0x4f4e

    .line 2531
    .local v0, adapterScrollState:I
    :goto_1
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/4 v7, -0x1

    invoke-virtual {v6, v0, v3, v7}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setScrollState(III)V

    .line 2532
    if-nez v1, :cond_0

    .line 2533
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    goto :goto_0

    .line 2526
    .end local v0           #adapterScrollState:I
    :cond_4
    const/16 v0, 0x4f4d

    goto :goto_1

    .line 2535
    :cond_5
    if-ne v10, v5, :cond_0

    .line 2537
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->isControlBarShowing()Z

    move-result v6

    if-ne v9, v6, :cond_6

    .line 2539
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->toggleControlBarsVisibility()V

    .line 2541
    :cond_6
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideAllControlBars()V

    .line 2542
    invoke-virtual {p0, v8}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleTag(Z)V

    .line 2543
    invoke-direct {p0, v8}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleCaption(Z)V

    goto :goto_0
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    const/4 v2, 0x0

    .line 593
    const-string v0, "SceneOnlinePhotoFullscreen"

    const-string v1, "[HTCAlbum][SceneOnlinePhotoFullscreen][onSendToBackground]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->setVisibility(I)V

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mTagManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v0, v2}, Lcom/htc/album/TagUtils/TagViewManager;->showTagGroup(Z)V

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_2

    .line 599
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setVisibility(Z)V

    .line 601
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onSendToBackground(Landroid/os/Bundle;)V

    .line 602
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 12
    .parameter "bundle"

    .prologue
    .line 499
    const-string v8, "SceneOnlinePhotoFullscreen"

    const-string v9, "[HTCAlbum][SceneOnlinePhotoFullscreen][onSendToForeground]: "

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onSendToForeground(Landroid/os/Bundle;)V

    .line 502
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setUIHandler(Landroid/os/Handler;)V

    .line 503
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-nez v8, :cond_1

    .line 505
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v8}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    move-result-object v6

    .line 506
    .local v6, snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    const-string v8, "service_name"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 508
    .local v5, plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateFullPhotoListPlugin()Ljava/lang/String;

    move-result-object v1

    .line 509
    .local v1, dataplugin:Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    .line 511
    const-string v8, "user_id"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 513
    .local v4, pid:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;-><init>(Landroid/os/Handler;)V

    invoke-static {v8, v1, v9, v4}, Lcom/htc/album/SocialNetworkManager/DataPluginHelper;->createFullPhotoListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    .line 514
    const-string v8, "SceneOnlinePhotoFullscreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Create opensense data plugin "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/htc/opensense/plugin/TabPluginRemote;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ID "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const/16 v8, 0x1001

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->createFooterBar(IZ)V

    .line 516
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v8, :cond_0

    .line 518
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v8}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onShowFooterBar()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getChildCount()I

    move-result v8

    if-lez v8, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v8

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->removeView(Landroid/view/View;)V

    .line 521
    :cond_0
    invoke-virtual {v5}, Lcom/htc/opensense/plugin/TabPluginRemote;->getTabTag()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.vmm"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 522
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v8}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->disableListRecycle()V

    .line 527
    .end local v1           #dataplugin:Ljava/lang/String;
    .end local v4           #pid:Ljava/lang/String;
    .end local v5           #plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    .end local v6           #snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    :cond_1
    const/4 v9, 0x1

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v8, v10}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z

    move-result v8

    if-ne v9, v8, :cond_2

    .line 529
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v8}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->notifyUpdateDataPlugin()V

    .line 532
    :cond_2
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/4 v9, 0x4

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDownloadedHandler:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setTemplateLayout(ILcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    .line 533
    iget-boolean v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsNewAdapter:Z

    if-nez v8, :cond_3

    .line 535
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const-string v9, "index_id"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setPhotoPosition(I)V

    .line 537
    :cond_3
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsNewAdapter:Z

    .line 539
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->isNetworkConnectionActive()Z

    .line 541
    const/4 v0, 0x0

    .line 542
    .local v0, bUpdateFullPhotoInfo:Z
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    instance-of v8, v8, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v8, :cond_4

    .line 544
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    const-string v9, "showTag"

    invoke-direct {p0, v9}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onNotifyUpdateTagMode(Z)V

    .line 545
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    const-string v9, "showCaption"

    invoke-direct {p0, v9}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onNotifyUpdateCaptionMode(Z)V

    .line 546
    const/4 v0, 0x1

    .line 549
    :cond_4
    const/4 v8, 0x1

    const-string v9, "fullphoto_info_update"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-ne v8, v9, :cond_5

    .line 551
    const-string v8, "fullphoto_info_update"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 552
    const/4 v0, 0x1

    .line 555
    :cond_5
    const/4 v8, 0x1

    if-ne v8, v0, :cond_6

    .line 557
    const-string v8, "index_id"

    const/4 v9, -0x1

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 558
    .local v3, iOldIndex:I
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v8, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    .line 559
    .local v2, iNewIndex:I
    const/4 v8, -0x1

    if-eq v2, v8, :cond_6

    if-ne v3, v2, :cond_6

    .line 561
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 562
    .local v7, updateBundle:Landroid/os/Bundle;
    const-string v8, "photo_detail_index"

    invoke-virtual {v7, v8, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 564
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/16 v9, 0x4e35

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v7, v10}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 568
    .end local v2           #iNewIndex:I
    .end local v3           #iOldIndex:I
    .end local v7           #updateBundle:Landroid/os/Bundle;
    :cond_6
    const/16 v8, 0x4e47

    invoke-virtual {p0, v8}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onRemoveMessage(I)V

    .line 569
    const/16 v8, 0x4e47

    const/4 v9, 0x0

    const/16 v10, 0xbb8

    invoke-virtual {p0, v8, v9, v10}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    .line 570
    return-void

    .line 508
    .end local v0           #bUpdateFullPhotoInfo:Z
    .restart local v5       #plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    .restart local v6       #snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 292
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onStop()V

    .line 293
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->onDismissAllFragmentDialog()V

    .line 295
    :cond_0
    return-void
.end method

.method public onSyncPhotoDetail(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 2487
    const/4 v1, 0x0

    .line 2488
    .local v1, nIndex:I
    const/4 v0, 0x0

    .line 2490
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #bundle:Landroid/os/Bundle;
    check-cast v0, Landroid/os/Bundle;

    .line 2491
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v2, "photo_detail_index"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2492
    const-string v2, "SceneOnlinePhotoFullscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneOnlinePhotoFullscreen][onSyncPhotoDetail]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2494
    invoke-virtual {p0, v5}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleTag(Z)V

    .line 2495
    invoke-direct {p0, v5}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleCaption(Z)V

    .line 2496
    return-void
.end method

.method public onSyncPhotoIndex()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 2609
    const/4 v1, 0x0

    .line 2611
    .local v1, nIndex:I
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2613
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-nez v3, :cond_0

    move v2, v1

    .line 2632
    .end local v1           #nIndex:I
    .local v2, nIndex:I
    :goto_0
    return v2

    .line 2615
    .end local v2           #nIndex:I
    .restart local v1       #nIndex:I
    :cond_0
    const-string v3, "from_outside"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2617
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "index_id"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2619
    if-ne v1, v5, :cond_1

    .line 2620
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;

    invoke-virtual {v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getFocusedItem()I

    move-result v1

    .line 2622
    :cond_1
    if-ne v1, v5, :cond_2

    .line 2623
    const/4 v1, 0x0

    .line 2630
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v3, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setPhotoPosition(I)V

    move v2, v1

    .line 2632
    .end local v1           #nIndex:I
    .restart local v2       #nIndex:I
    goto :goto_0

    .line 2627
    .end local v2           #nIndex:I
    .restart local v1       #nIndex:I
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "index_id"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1
.end method

.method public onToggleTag(Z)V
    .locals 4
    .parameter "bUpdateMode"

    .prologue
    const/4 v2, 0x1

    .line 2278
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->isSecureSendToForeground()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2300
    :cond_0
    :goto_0
    return-void

    .line 2281
    :cond_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    if-eqz v1, :cond_0

    .line 2284
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v1}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onEnableTagsPlugin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2287
    :cond_2
    if-ne v2, p1, :cond_3

    .line 2289
    const-string v3, "showTag"

    const-string v1, "showTag"

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-direct {p0, v3, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->putSharedPreferencesWithBoolean(Ljava/lang/String;Z)V

    .line 2292
    :cond_3
    const-string v1, "showTag"

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getSharedPreferencesWithBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2293
    .local v0, bEnable:Z
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onUpdateTags(IZ)V

    .line 2295
    if-ne v2, p1, :cond_0

    .line 2297
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->invalidateControlBars()V

    goto :goto_0

    .line 2289
    .end local v0           #bEnable:Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 355
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunnyCore/IMediaList;)V

    .line 356
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->cancelDeleteMedias()V

    .line 358
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->release()V

    .line 359
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onDeInit()V

    .line 366
    :cond_1
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onUnbindAdapter()V

    .line 367
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1295
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1291
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onUpdateCommentCount(I)V
    .locals 2
    .parameter "nIndex"

    .prologue
    .line 2176
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v1, :cond_1

    .line 2190
    :cond_0
    :goto_0
    return-void

    .line 2178
    :cond_1
    const/4 v0, 0x0

    .line 2180
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 2183
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2188
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getCommentCount()I

    move-result v1

    iput v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentCount:I

    .line 2189
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->invalidateControlBars()V

    goto :goto_0
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 1563
    const/4 v0, 0x1

    return v0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    const-string v0, "SceneOnlinePhotoFullscreen"

    return-object v0
.end method

.method public showCommentBar(Z)V
    .locals 3
    .parameter "bIsShow"

    .prologue
    const/16 v1, 0x8

    .line 2549
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    if-nez v0, :cond_0

    .line 2567
    :goto_0
    return-void

    .line 2552
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onEnableCaptionPlugin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2554
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->setVisibility(I)V

    goto :goto_0

    .line 2557
    :cond_1
    if-eqz p1, :cond_2

    .line 2559
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->setVisibility(I)V

    .line 2565
    :goto_1
    const-string v0, "SceneOnlinePhotoFullscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneOnlinePhotoFullscreen][showCommentBar]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2563
    :cond_2
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mCommentBar:Lcom/htc/album/SocialNetwork/LiveCommentBar;

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/LiveCommentBar;->setVisibility(I)V

    goto :goto_1
.end method
