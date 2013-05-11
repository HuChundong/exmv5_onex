.class public Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
.super Landroid/widget/RelativeLayout;
.source "SunnyContainerView.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IContentHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IActivityLifeCycle;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayStyle;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiver;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field protected mAdapters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;",
            ">;"
        }
    .end annotation
.end field

.field protected mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

.field protected mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

.field protected mForegroundAdapter:Ljava/lang/String;

.field protected mForegroundScene:Ljava/lang/String;

.field private mFragmentHost:Lcom/htc/app/mf/MfFragment;

.field private mHandler:Landroid/os/Handler;

.field private mIsInvalidateOptionsMenu:Z

.field private mIsInvalidateOptionsMenuUponBind:Z

.field protected mLifeCycle:I

.field protected mMediaState:I

.field private mParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mRoot:Landroid/view/ViewGroup;

.field protected mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

.field protected mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

.field protected mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

.field protected mScenes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 76
    const-string v0, "SunnyContainerView"

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    .line 78
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 80
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    .line 81
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    .line 83
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    .line 85
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    .line 86
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    .line 87
    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    .line 88
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    .line 89
    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    .line 91
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundAdapter:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    .line 97
    iput v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    .line 98
    iput v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mMediaState:I

    .line 100
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 101
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenu:Z

    .line 102
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenuUponBind:Z

    .line 247
    new-instance v0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$1;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$1;-><init>(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    .line 107
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->initialize()V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    const-string v0, "SunnyContainerView"

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    .line 78
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 80
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    .line 81
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    .line 83
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    .line 85
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    .line 86
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    .line 87
    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    .line 88
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    .line 89
    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    .line 91
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundAdapter:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    .line 97
    iput v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    .line 98
    iput v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mMediaState:I

    .line 100
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 101
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenu:Z

    .line 102
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenuUponBind:Z

    .line 247
    new-instance v0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$1;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$1;-><init>(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    .line 113
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->initialize()V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    const-string v0, "SunnyContainerView"

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    .line 78
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 80
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    .line 81
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    .line 83
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    .line 85
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    .line 86
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    .line 87
    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    .line 88
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    .line 89
    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    .line 91
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundAdapter:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    .line 97
    iput v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    .line 98
    iput v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mMediaState:I

    .line 100
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 101
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenu:Z

    .line 102
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenuUponBind:Z

    .line 247
    new-instance v0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$1;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$1;-><init>(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    .line 119
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->initialize()V

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)Lcom/htc/app/mf/MfFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onFinish()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneAdapterShared(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->registerForContextMenu(Z)V

    return-void
.end method

.method private doSceneChange(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Landroid/os/Bundle;Z)V
    .locals 6
    .parameter "sceneCurrent"
    .parameter "sceneNext"
    .parameter "bundle"
    .parameter "isFoceClose"

    .prologue
    .line 711
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][doSceneChange]: Begin..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->reset()V

    .line 713
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    new-instance v1, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;-><init>(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->setChangeListener(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;)V

    .line 714
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->prepareSceneChange(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Landroid/os/Bundle;Z)Z

    .line 720
    if-nez p2, :cond_0

    .line 722
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][doSceneChange]: skip..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :goto_0
    return-void

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->refreshRenderOrder(Ljava/lang/String;)V

    .line 728
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][doSceneChange]: End..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 123
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][initialize]: "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    new-instance v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    .line 127
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 128
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 129
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v1, p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setSceneDisplayControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    .line 132
    new-instance v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    invoke-direct {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    .line 133
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    invoke-virtual {v1, p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->setSceneControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    .line 134
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->addView(Landroid/view/View;)V

    .line 135
    return-void
.end method

.method private isSceneAdapterShared(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Z
    .locals 9
    .parameter "scene"

    .prologue
    .line 735
    const/4 v0, 0x0

    .line 737
    .local v0, bResult:Z
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    .line 738
    .local v5, szSceneId:Ljava/lang/String;
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v4

    .line 739
    .local v4, szAdapterId:Ljava/lang/String;
    const/4 v3, 0x0

    .line 741
    .local v3, sceneShared:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 742
    .local v1, nCount:I
    const/4 v2, 0x0

    .local v2, nIndex:I
    :goto_0
    if-le v1, v2, :cond_2

    .line 744
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #sceneShared:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    check-cast v3, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 746
    .restart local v3       #sceneShared:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v6

    if-eq v5, v6, :cond_0

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 742
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 750
    :cond_1
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 753
    const-string v6, "SunnyContainerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SunnyContainerView][isSceneAdapterShared]: shared adapter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const/4 v0, 0x1

    .line 759
    :cond_2
    return v0
.end method

.method private onFinish()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 1679
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    .line 1680
    .local v1, mfFragment:Lcom/htc/app/mf/MfFragment;
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    .line 1681
    .local v0, activity:Landroid/app/Activity;
    instance-of v4, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;

    if-eqz v4, :cond_4

    move-object v3, v1

    .line 1683
    check-cast v3, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;

    .line 1685
    .local v3, paneControl:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableLandingPage()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1687
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/app/mf/MfFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    .line 1688
    .local v2, nBackStackCount:I
    if-lt v5, v2, :cond_1

    .line 1689
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1692
    :goto_0
    const-string v4, "SunnyContainerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SunnyContainerView][onFinish]: finishFragmentInNextPane1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    .end local v2           #nBackStackCount:I
    .end local v3           #paneControl:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;
    :cond_0
    :goto_1
    return-void

    .line 1691
    .restart local v2       #nBackStackCount:I
    .restart local v3       #paneControl:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;
    :cond_1
    invoke-virtual {v1}, Lcom/htc/app/mf/MfFragment;->finishFragmentInNextPane()V

    goto :goto_0

    .line 1697
    .end local v2           #nBackStackCount:I
    :cond_2
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;->enable2Pane()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1699
    invoke-virtual {v1}, Lcom/htc/app/mf/MfFragment;->finishSelf()V

    goto :goto_1

    .line 1703
    :cond_3
    if-eqz v0, :cond_0

    .line 1704
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 1708
    .end local v3           #paneControl:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;
    :cond_4
    if-eqz v1, :cond_6

    .line 1710
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/app/mf/MfFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    .line 1711
    .restart local v2       #nBackStackCount:I
    if-lt v5, v2, :cond_5

    .line 1712
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1715
    :goto_2
    const-string v4, "SunnyContainerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SunnyContainerView][onFinish]: finishFragmentInNextPane2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1714
    :cond_5
    invoke-virtual {v1}, Lcom/htc/app/mf/MfFragment;->finishFragmentInNextPane()V

    goto :goto_2

    .line 1717
    .end local v2           #nBackStackCount:I
    :cond_6
    if-eqz v0, :cond_0

    .line 1718
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method private registerForContextMenu(Z)V
    .locals 2
    .parameter "bRegister"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-nez v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    if-eqz p1, :cond_2

    .line 242
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    new-instance v1, Lcom/htc/sunny2/frameworks/base/widgets/SunnyContextMenu;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyContextMenu;-><init>(Lcom/htc/sunny2/frameworks/base/interfaces/IActivityEnvironmentPass;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_0

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_0
.end method

.method private setRenderResume(Z)V
    .locals 1
    .parameter "isResume"

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-eqz v0, :cond_0

    .line 1669
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 1670
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->onResume()V

    .line 1676
    :cond_0
    :goto_0
    return-void

    .line 1673
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->onPause()V

    goto :goto_0
.end method


# virtual methods
.method public activityIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 344
    const/4 v0, 0x0

    .line 347
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public activityLifeCycle()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    return v0
.end method

.method public activityReference()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public activityRoot()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public enableBroadcastReceiver()Z
    .locals 1

    .prologue
    .line 1618
    const/4 v0, 0x0

    return v0
.end method

.method public enableSunnyEnvTouchEvent(Z)V
    .locals 3
    .parameter "bEnable"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-nez v0, :cond_0

    .line 519
    :goto_0
    return-void

    .line 517
    :cond_0
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SunnyContainerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SunnyContainerView][enableSunnyEnvTouchEvent]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->enableSunnyEnvTouchEvent(Z)V

    goto :goto_0
.end method

.method public getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 5

    .prologue
    .line 1069
    const/4 v1, 0x0

    .line 1071
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    if-nez v3, :cond_0

    move-object v2, v1

    .line 1085
    .end local v1           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .local v2, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :goto_0
    return-object v2

    .line 1074
    .end local v2           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .restart local v1       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_0
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v0, :cond_3

    .line 1076
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 1077
    .restart local v1       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1074
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1080
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move-object v2, v1

    .line 1085
    .end local v1           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .restart local v2       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 1083
    .end local v2           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .restart local v1       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public getInitBackgroundCallback()Lcom/htc/sunnyCore/view/SSurfaceViewInitBackgroundCallback;
    .locals 1

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1477
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1479
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScene(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 4
    .parameter "szIdentity"

    .prologue
    const/4 v2, 0x0

    .line 1089
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move-object v1, v2

    .line 1108
    :cond_1
    :goto_0
    return-object v1

    .line 1094
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 1096
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1101
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    if-eq p1, v3, :cond_1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .end local v1           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_4
    move-object v1, v2

    .line 1108
    goto :goto_0
.end method

.method public getSceneCount()I
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public gotoPreviousScene()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 941
    const-string v3, "SunnyContainerView"

    const-string v4, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: begin"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    if-nez v3, :cond_0

    .line 944
    const-string v3, "SunnyContainerView"

    const-string v4, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: missing scene factory..."

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    :goto_0
    return-void

    .line 948
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneChangeLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 950
    const-string v3, "SunnyContainerView"

    const-string v4, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: locked..."

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 958
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->sceneChangeInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 960
    const-string v3, "SunnyContainerView"

    const-string v4, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: cancelling..."

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->cancelSceneChange()V

    goto :goto_0

    .line 969
    :cond_2
    const/4 v1, 0x0

    .line 970
    .local v1, sceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const/4 v2, 0x0

    .line 972
    .local v2, sceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getScene(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    if-nez v1, :cond_3

    .line 974
    const-string v3, "SunnyContainerView"

    const-string v4, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: no current scene..."

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 978
    :cond_3
    const-string v3, "SunnyContainerView"

    new-array v4, v10, [Ljava/lang/Object;

    const-string v5, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: "

    aput-object v5, v4, v7

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, " : "

    aput-object v5, v4, v8

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 980
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v6, v3, :cond_6

    .line 982
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getId()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 983
    .local v0, nNextId:I
    if-ltz v0, :cond_4

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #sceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .restart local v2       #sceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v2, :cond_5

    .line 985
    :cond_4
    const-string v3, "SunnyContainerView"

    const-string v4, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: no previous scene..."

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onFinish()V

    goto :goto_0

    .line 990
    :cond_5
    const-string v3, "SunnyContainerView"

    new-array v4, v10, [Ljava/lang/Object;

    const-string v5, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: "

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    aput-object v5, v4, v6

    const-string v5, " -> "

    aput-object v5, v4, v8

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 994
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->doSceneChange(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Landroid/os/Bundle;Z)V

    goto/16 :goto_0

    .line 999
    .end local v0           #nNextId:I
    :cond_6
    const-string v3, "SunnyContainerView"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: "

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    aput-object v5, v4, v6

    const-string v5, " -> "

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1000
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onFinish()V

    goto/16 :goto_0
.end method

.method public gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V
    .locals 6
    .parameter "bundle"
    .parameter "szIdentity"
    .parameter "isForceClose"

    .prologue
    .line 1009
    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoScene]: begin"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    if-nez v2, :cond_0

    .line 1012
    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoScene]: missing scene factory skip..."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    :goto_0
    return-void

    .line 1015
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1017
    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoScene]: is foreground skip..."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1020
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isDisplayControlBusy()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1022
    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoScene]: something in progress skip..."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1028
    :cond_2
    const/4 v0, 0x0

    .line 1029
    .local v0, sceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const/4 v1, 0x0

    .line 1032
    .local v1, sceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getScene(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1034
    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoScene]: no existing scene "

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    :cond_3
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getScene(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    if-nez v1, :cond_6

    .line 1040
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    invoke-interface {v2, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;->sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1042
    const-string v2, "SunnyContainerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SunnyContainerView][gotoScene]: fail to produce: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1046
    :cond_4
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->setId(I)V

    .line 1047
    invoke-interface {v1, p0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->setSceneControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    .line 1048
    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoScene]: 1"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    invoke-interface {v1, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 1050
    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoScene]: 2"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureEnterScene()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1054
    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoScene]: SunnyExceptionSuperNotCalled"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    new-instance v2, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEnterScene: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1057
    :cond_5
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1058
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->putToStage(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V

    .line 1060
    :cond_6
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "SunnyContainerView"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "[HTCAlbum][SunnyContainerView][gotoScene]: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, " -> "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1063
    :cond_7
    invoke-direct {p0, v0, v1, p1, p3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->doSceneChange(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Landroid/os/Bundle;Z)V

    .line 1064
    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoScene]: end"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenu:Z

    .line 158
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public invalidateOptionsMenuUponDataBind()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenuUponBind:Z

    .line 170
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public isDisplayControlBusy()Z
    .locals 3

    .prologue
    .line 1157
    const/4 v0, 0x0

    .line 1159
    .local v0, bResult:Z
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    if-nez v2, :cond_0

    move v1, v0

    .line 1165
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 1162
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneChangeLocked()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->sceneChangeInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1163
    :cond_1
    const/4 v0, 0x1

    :cond_2
    move v1, v0

    .line 1165
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public isInvalidateOptionsMenu()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenu:Z

    return v0
.end method

.method public isInvalidateOptionsMenuUponDataBind()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenuUponBind:Z

    return v0
.end method

.method public isSceneChangeLocked()Z
    .locals 6

    .prologue
    .line 359
    const/4 v0, 0x0

    .line 361
    .local v0, bResult:Z
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    if-nez v3, :cond_0

    move v1, v0

    .line 373
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 364
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->sceneChangeEnterLock()I

    move-result v2

    .line 365
    .local v2, nLock:I
    const/16 v3, 0x515

    if-eq v3, v2, :cond_1

    const/16 v3, 0x516

    if-ne v3, v2, :cond_2

    .line 369
    :cond_1
    const-string v3, "SunnyContainerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SunnyContainerView][isSceneChangeLocked]: locked..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const/4 v0, 0x1

    :cond_2
    move v1, v0

    .line 373
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public isSceneExist(Ljava/lang/String;)Z
    .locals 5
    .parameter "szIdentity"

    .prologue
    .line 1112
    const/4 v0, 0x0

    .line 1114
    .local v0, bResult:Z
    if-nez p1, :cond_0

    move v1, v0

    .line 1131
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 1117
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    const/4 v3, 0x0

    .line 1118
    .local v3, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const/4 v2, 0x0

    .local v2, nIndex:I
    :goto_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v2, :cond_3

    .line 1120
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    check-cast v3, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 1121
    .restart local v3       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1118
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1124
    :cond_2
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1126
    const/4 v0, 0x1

    :cond_3
    move v1, v0

    .line 1131
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public mfragmentReference()Lcom/htc/app/mf/MfFragment;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 485
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v0, :cond_0

    .line 487
    invoke-interface {v0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onActivityResult(IILandroid/content/Intent;)V

    .line 489
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 187
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 189
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 190
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 195
    const-string v1, "SunnyContainerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SunnyContainerView][onAttachedToWindow]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableHostPadding()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableSourceContentPadding(Z)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 6

    .prologue
    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, bResult:Z
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][onBackPressed]: begin..."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneChangeLocked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 385
    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][onBackPressed]: locked..."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const/4 v0, 0x1

    .line 412
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 414
    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][onBackPressed]: remove all..."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 416
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onFinish()V

    .line 418
    :cond_2
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][onBackPressed]: end..."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :cond_3
    return v0

    .line 393
    :cond_4
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->sceneChangeInProgress()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 395
    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][onBackPressed]: cancelling..."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->cancelSceneChange()V

    .line 397
    const/4 v0, 0x1

    goto :goto_0

    .line 401
    :cond_5
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    .line 402
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_1

    .line 404
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onBackPressed()Z

    move-result v0

    .line 405
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "SunnyContainerView"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "[HTCAlbum][SunnyContainerView][onBackPressed]: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, " : "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1624
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][onBroadcastMediaConnected]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    sget-object v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->MEDIA_CONNECT:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onPostInterrupt(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;Ljava/lang/Object;I)V

    .line 1627
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1633
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][onBroadcastMediaDisconnected]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    sget-object v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->MEDIA_DISCONNECT:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onPostInterrupt(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;Ljava/lang/Object;I)V

    .line 1636
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaScanFinished(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1653
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][onBroadcastMediaScanFinished]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1655
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaScanStarted(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1647
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][onBroadcastMediaScanStarted]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1643
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceiveDispatcher(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1502
    const/4 v0, 0x0

    .line 1503
    .local v0, bResult:Z
    const/4 v2, 0x0

    .line 1507
    .local v2, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-static {p2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isScannerStart(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1509
    const-string v4, "SunnyContainerView"

    const-string v5, "[HTCAlbum][SunnyContainerView][onBroadcastReceive]: onBroadcastMediaScanStarted"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1512
    .local v3, sceneList:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1514
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 1515
    .restart local v2       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-interface {v2, p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onBroadcastMediaScanStarted(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0

    .line 1518
    .end local v3           #sceneList:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;>;"
    :cond_0
    invoke-static {p2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isScannerFinish(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1520
    const-string v4, "SunnyContainerView"

    const-string v5, "[HTCAlbum][SunnyContainerView][onBroadcastReceive]: onBroadcastMediaScanFinished"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1523
    .restart local v3       #sceneList:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1525
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 1526
    .restart local v2       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-interface {v2, p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onBroadcastMediaScanFinished(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_1

    .line 1531
    .end local v3           #sceneList:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    .line 1532
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableBroadcastReceiver()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move v1, v0

    .line 1559
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_2
    return v1

    .line 1535
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_3
    invoke-static {p2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageDisconnected(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1537
    const-string v4, "SunnyContainerView"

    const-string v5, "[HTCAlbum][SunnyContainerView][onBroadcastReceive]: onBroadcastMediaDisconnected"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    const/4 v4, 0x1

    iput v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mMediaState:I

    .line 1540
    invoke-interface {v2, p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 1554
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    .line 1555
    if-nez v0, :cond_5

    if-eqz v2, :cond_5

    .line 1556
    invoke-interface {v2, p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_5
    move v1, v0

    .line 1559
    .restart local v1       #bResult:I
    goto :goto_2

    .line 1542
    .end local v1           #bResult:I
    :cond_6
    invoke-static {p2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageConnected(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1544
    iget v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mMediaState:I

    if-eqz v4, :cond_4

    .line 1546
    const-string v4, "SunnyContainerView"

    const-string v5, "[HTCAlbum][SunnyContainerView][onBroadcastReceive]: onBroadcastMediaConnected"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mMediaState:I

    .line 1549
    invoke-interface {v2, p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    goto :goto_3
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 208
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    .line 209
    .local v2, sceneForeground:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v2, :cond_1

    .line 231
    :cond_0
    return-void

    .line 212
    :cond_1
    invoke-interface {v2, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 217
    const/4 v1, 0x0

    .line 218
    .local v1, sceneBackground:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v0, :cond_0

    .line 220
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #sceneBackground:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 221
    .restart local v1       #sceneBackground:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 218
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_3
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 227
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableConfigurationChangedInBackground()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 228
    invoke-interface {v1, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onConfigurationChangedInBackground(Landroid/content/res/Configuration;)V

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 473
    const/4 v0, 0x0

    .line 474
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    .line 475
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_0

    .line 477
    invoke-interface {v1, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 480
    :cond_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 596
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][onCreate]: "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    .line 598
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 599
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v0, :cond_0

    .line 600
    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onCreate(Landroid/os/Bundle;)V

    .line 601
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 466
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v0, :cond_0

    .line 468
    invoke-interface {v0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 470
    :cond_0
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "extras"

    .prologue
    .line 1568
    const/4 v0, 0x0

    .line 1569
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    .line 1570
    .local v2, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v2, :cond_0

    move-object v1, v0

    .line 1575
    .end local v0           #dialog:Landroid/app/Dialog;
    .local v1, dialog:Landroid/app/Dialog;
    :goto_0
    return-object v1

    .line 1573
    .end local v1           #dialog:Landroid/app/Dialog;
    .restart local v0       #dialog:Landroid/app/Dialog;
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    move-object v1, v0

    .line 1575
    .end local v0           #dialog:Landroid/app/Dialog;
    .restart local v1       #dialog:Landroid/app/Dialog;
    goto :goto_0
.end method

.method public onCreateFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 2
    .parameter "id"
    .parameter "extras"

    .prologue
    .line 1592
    const/4 v0, 0x0

    .line 1593
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    .line 1594
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_0

    .line 1595
    invoke-interface {v1, p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 1597
    :cond_0
    return v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 658
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][onDestroy]: begin.."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const/4 v1, 0x5

    iput v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    .line 660
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 661
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v0, :cond_0

    .line 662
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onDestroy()V

    .line 664
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->unregisterBroadcastReceiver()V

    .line 669
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 672
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-eqz v1, :cond_1

    .line 673
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->destroy()V

    .line 675
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 676
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 677
    :cond_2
    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    .line 678
    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    .line 679
    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    .line 680
    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    .line 681
    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    .line 683
    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    .line 684
    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    .line 685
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    if-eqz v1, :cond_3

    .line 686
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->reset()V

    .line 687
    :cond_3
    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    .line 688
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    if-eqz v1, :cond_4

    .line 689
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onDestroy()V

    .line 690
    :cond_4
    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    .line 691
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][onDestroy]: end"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 184
    return-void
.end method

.method public onDismissFragmentDialog(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 1603
    const/4 v0, 0x0

    .line 1604
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    .line 1605
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_0

    .line 1606
    invoke-interface {v1, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onDismissFragmentDialog(I)Z

    move-result v0

    .line 1608
    :cond_0
    return v0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    .line 264
    const/4 v0, 0x0

    .line 266
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    .line 267
    .local v2, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v2, :cond_0

    move v1, v0

    .line 278
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 272
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureLeaveScene()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v0

    .line 273
    .restart local v1       #bResult:I
    goto :goto_0

    .line 275
    .end local v1           #bResult:I
    :cond_1
    invoke-interface {v2, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onMessage(Landroid/os/Message;)Z

    move-result v0

    move v1, v0

    .line 278
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "newIntent"

    .prologue
    .line 696
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    if-nez v0, :cond_0

    .line 701
    :goto_0
    return-void

    .line 699
    :cond_0
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][onNewIntent]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    sget-object v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->ACTIVITY_NEW_INTENT:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onPostInterrupt(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public onNotifyAnimationBegin(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V
    .locals 5
    .parameter "sceneCurrent"
    .parameter "sceneNext"

    .prologue
    .line 1229
    if-nez p2, :cond_1

    .line 1241
    :cond_0
    :goto_0
    return-void

    .line 1232
    :cond_1
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][onNotifyAnimationBegin]:..."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 1235
    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isHostScene()Z

    move-result v0

    .line 1236
    .local v0, isHostScene:Z
    const-string v1, "SunnyContainerView"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "[HTCAlbum][SunnyContainerView][doSceneChange]: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, " host: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, " padding: "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableHostPadding()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1239
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableHostPadding()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableSourceContentPadding(Z)V

    goto :goto_0
.end method

.method public onNotifyAnimationCancel()V
    .locals 2

    .prologue
    .line 1223
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][onNotifyAnimationCancel]:..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    return-void
.end method

.method public onNotifyAnimationEnd()V
    .locals 2

    .prologue
    .line 1246
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][onNotifyAnimationEnd]:..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    return-void
.end method

.method public onNotifyAnimationReady()V
    .locals 2

    .prologue
    .line 1216
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][onNotifyAnimationReady]:..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateAnimationReady()V

    .line 1218
    return-void
.end method

.method public onNotifyErrorResult(Ljava/lang/Object;)V
    .locals 5
    .parameter "object"

    .prologue
    .line 1142
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 1143
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v0, :cond_1

    .line 1145
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][onNotifyErrorResult]: exit 1"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    :cond_0
    :goto_0
    return-void

    .line 1148
    :cond_1
    const-string v1, "SunnyContainerView"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "[HTCAlbum][SunnyContainerView][onNotifyErrorResult]: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, " : "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1149
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneErrorHost;

    if-eqz v1, :cond_0

    .line 1151
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][onNotifyErrorResult]: onReportSceneErrorCheck..."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneErrorHost;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneErrorHost;->onReportSceneErrorCheck(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 454
    const/4 v0, 0x0

    .line 455
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    .line 456
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_0

    .line 458
    invoke-interface {v1, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 461
    :cond_0
    return v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 637
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][onPause]: "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setRenderResume(Z)V

    .line 639
    const/4 v1, 0x3

    iput v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    .line 640
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 641
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v0, :cond_0

    .line 642
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onPause()V

    .line 643
    :cond_0
    return-void
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 286
    :cond_0
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)Z
    .locals 2
    .parameter "id"
    .parameter "dialog"
    .parameter "extras"

    .prologue
    .line 1581
    const/4 v0, 0x0

    .line 1582
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    .line 1583
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_0

    .line 1584
    invoke-interface {v1, p1, p2, p3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)Z

    move-result v0

    .line 1586
    :cond_0
    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    .line 425
    const/4 v0, 0x0

    .line 427
    .local v0, bResult:Z
    const/4 v2, 0x0

    .line 429
    .local v2, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    iget-boolean v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenuUponBind:Z

    if-eqz v3, :cond_0

    .line 431
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->getNextScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    if-nez v2, :cond_2

    move v1, v0

    .line 450
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 436
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->sceneChangeInProgress()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v0

    .line 437
    .restart local v1       #bResult:I
    goto :goto_0

    .line 439
    .end local v1           #bResult:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    if-nez v2, :cond_2

    move v1, v0

    .line 440
    .restart local v1       #bResult:I
    goto :goto_0

    .line 442
    .end local v1           #bResult:I
    :cond_2
    invoke-interface {v2, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 443
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureOnPrepareOptionsMenu()Z

    move-result v3

    if-nez v3, :cond_3

    .line 445
    new-instance v3, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepareOptionsMenu: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v3

    .line 448
    :cond_3
    iput-boolean v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenu:Z

    .line 449
    iput-boolean v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenuUponBind:Z

    move v1, v0

    .line 450
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public onRemoveMessage(I)V
    .locals 1
    .parameter "nMessageID"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 293
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 617
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][onResume]: "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-direct {p0, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setRenderResume(Z)V

    .line 619
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    .line 620
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 622
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setFocusable(Z)V

    .line 623
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->requestFocus()Z

    .line 625
    if-eqz v0, :cond_0

    .line 627
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onResume()V

    .line 629
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneErrorHost;

    if-eqz v1, :cond_0

    .line 630
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onTriggerErrorReport()V

    .line 632
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 607
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][onStart]: "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    .line 609
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 610
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v0, :cond_0

    .line 611
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onStart()V

    .line 612
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 648
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][onStop]: "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const/4 v1, 0x4

    iput v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    .line 650
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 651
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v0, :cond_0

    .line 652
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onStop()V

    .line 653
    :cond_0
    return-void
.end method

.method public registerBroadcastReceiver()V
    .locals 1

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    instance-of v0, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;

    if-eqz v0, :cond_0

    .line 1489
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;->registerBroadcastReceiver()V

    .line 1490
    :cond_0
    return-void
.end method

.method public removeAllScene()Z
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 763
    const/4 v0, 0x0

    .line 768
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isDisplayControlBusy()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 770
    const-string v6, "SunnyContainerView"

    const-string v7, "[HTCAlbum][SunnyContainerView][removeAllScene]: something in progress..."

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    sget-object v7, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->REMOVE_ALL_SCENE:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    invoke-virtual {v6, v7, v10, v11}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onPostInterrupt(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;Ljava/lang/Object;I)V

    .line 828
    .end local v0           #bResult:Z
    :goto_0
    return v0

    .line 775
    .restart local v0       #bResult:Z
    :cond_0
    const/4 v2, 0x0

    .line 776
    .local v2, sceneAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    const/4 v3, 0x0

    .line 778
    .local v3, sceneToRemove:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const/4 v5, 0x0

    .line 779
    .local v5, szSceneId:Ljava/lang/String;
    const/4 v4, 0x0

    .line 783
    .local v4, szAdapterId:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 784
    .local v1, iteratorSceneList:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 789
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #sceneToRemove:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    check-cast v3, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 790
    .restart local v3       #sceneToRemove:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    .line 791
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v4

    .line 792
    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "SunnyContainerView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][SunnyContainerView][removeAllScene]: scene to remove: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    :cond_1
    invoke-direct {p0, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneAdapterShared(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 805
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onDestroyAdapter()V

    .line 806
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureOnDestroyAdapter()Z

    move-result v7

    if-nez v7, :cond_2

    .line 808
    new-instance v6, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDestroyAdapter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v6

    .line 810
    :cond_2
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "SunnyContainerView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][SunnyContainerView][removeAllScene]: destroy adapter: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    :cond_3
    invoke-virtual {p0, v5, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeScene(Ljava/lang/String;Z)V

    .line 818
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto/16 :goto_1

    .line 821
    :cond_4
    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string v7, "SunnyContainerView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][SunnyContainerView][removeAllScene]: adapters: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    :cond_5
    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_6

    const-string v7, "SunnyContainerView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][SunnyContainerView][removeAllScene]: scenes: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :cond_6
    iput-object v10, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    .line 824
    iput-object v10, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundAdapter:Ljava/lang/String;

    .line 826
    invoke-virtual {p0, v11}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->set3DGlobalBackground(I)V

    move v0, v6

    .line 828
    goto/16 :goto_0
.end method

.method public removeScene(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Z)V
    .locals 1
    .parameter "scene"
    .parameter "isForceClose"

    .prologue
    .line 835
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 839
    :cond_0
    :goto_0
    return-void

    .line 838
    :cond_1
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeScene(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public removeScene(Ljava/lang/String;Z)V
    .locals 8
    .parameter "szIdentity"
    .parameter "isForceClose"

    .prologue
    const/4 v7, 0x0

    .line 844
    if-nez p1, :cond_1

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 847
    :cond_1
    const/4 v3, 0x0

    .line 848
    .local v3, szSceneIdentity:Ljava/lang/String;
    const/4 v2, 0x0

    .line 849
    .local v2, sceneToRemove:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 850
    .local v1, sceneList:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 852
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #sceneToRemove:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 854
    .restart local v2       #sceneToRemove:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    if-eq p1, v4, :cond_2

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 857
    :cond_2
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    .line 863
    :cond_3
    if-eqz v2, :cond_0

    .line 866
    sget-boolean v4, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "SunnyContainerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SunnyContainerView][removeScene]: removing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    :cond_4
    if-eqz p2, :cond_d

    .line 871
    :try_start_0
    sget-boolean v4, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "SunnyContainerView"

    const-string v5, "[HTCAlbum][SunnyContainerView][removeScene]: onSendToBackground... "

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    :cond_5
    const/16 v4, 0x8

    invoke-interface {v2, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureTo(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 874
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onSendToBackground(Landroid/os/Bundle;)V

    .line 875
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureSendToBackground()Z

    move-result v4

    if-nez v4, :cond_b

    .line 877
    new-instance v4, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSendToBackground: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    :catch_0
    move-exception v0

    .line 899
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "SunnyContainerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SunnyContainerView][removeScene]: error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    invoke-interface {v2, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->setAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;)V

    .line 903
    invoke-interface {v2, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->setSceneControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    .line 904
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-eqz v4, :cond_7

    .line 905
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v4, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->removeFromStage(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V

    .line 906
    :cond_7
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 908
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    if-eq p1, v4, :cond_8

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 910
    :cond_8
    iput-object v7, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    .line 911
    iput-object v7, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundAdapter:Ljava/lang/String;

    .line 913
    :cond_9
    sget-boolean v4, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "SunnyContainerView"

    const-string v5, "[HTCAlbum][SunnyContainerView][removeScene]: removed... "

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 860
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 880
    :cond_b
    :try_start_1
    sget-boolean v4, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v4, :cond_c

    const-string v4, "SunnyContainerView"

    const-string v5, "[HTCAlbum][SunnyContainerView][removeScene]: onUnbindAdapter... "

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    :cond_c
    const/16 v4, 0x10

    invoke-interface {v2, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureTo(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 883
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onUnbindAdapter()V

    .line 884
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureUnbindAdapter()Z

    move-result v4

    if-nez v4, :cond_d

    .line 886
    new-instance v4, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onUnbindAdapter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v4

    .line 890
    :cond_d
    sget-boolean v4, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v4, :cond_e

    const-string v4, "SunnyContainerView"

    const-string v5, "[HTCAlbum][SunnyContainerView][removeScene]: onLeaveScene... "

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    :cond_e
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onLeaveScene()V

    .line 892
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureLeaveScene()Z

    move-result v4

    if-nez v4, :cond_6

    .line 894
    new-instance v4, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLeaveScene: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public sceneAdapter(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 2
    .parameter "szIdentity"

    .prologue
    .line 530
    const/4 v0, 0x0

    .line 532
    .local v0, adapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    if-eqz p1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #adapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    check-cast v0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 537
    .restart local v0       #adapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    :cond_0
    return-object v0
.end method

.method public bridge synthetic sceneAdapter(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->sceneAdapter(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v0

    return-object v0
.end method

.method public set3DGlobalBackground(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-eqz v0, :cond_0

    .line 1663
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->set3DGlobalBackground(I)V

    .line 1665
    :cond_0
    return-void
.end method

.method public setActivityReference(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    .line 144
    return-void
.end method

.method public setContentHost(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "viewRoot"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 305
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][setContentHost]: set parent..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 309
    :cond_0
    return-void
.end method

.method public setDisplayLevel(I)V
    .locals 1
    .parameter "nLevel"

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;->setDisplayLevel(I)V

    .line 1265
    return-void
.end method

.method public setDisplayStyle(I)V
    .locals 1
    .parameter "nStyle"

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;->setDisplayStyle(I)V

    .line 1259
    return-void
.end method

.method public setEnableInitBackground(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-eqz v0, :cond_0

    .line 1735
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setEnableInitBackground(Z)V

    .line 1737
    :cond_0
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 259
    return-void
.end method

.method public setInitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "backgroundDrawable"

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-eqz v0, :cond_0

    .line 1727
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setInitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1729
    :cond_0
    return-void
.end method

.method public setInitBackgroundResource(I)V
    .locals 1
    .parameter "backgroundResid"

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-eqz v0, :cond_0

    .line 1722
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setInitBackgroundResource(I)V

    .line 1724
    :cond_0
    return-void
.end method

.method public setMfFragmentReference(Lcom/htc/app/mf/MfFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    .line 149
    return-void
.end method

.method public setNewAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;)V
    .locals 7
    .parameter "scene"
    .parameter "adapter"

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 544
    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 546
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][setNewAdapter]: no adapter identity1..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :goto_0
    return-void

    .line 549
    :cond_0
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 551
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][setNewAdapter]: no adapter identity2..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 559
    :cond_1
    const/4 v0, 0x5

    iget v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    if-ne v0, v1, :cond_2

    .line 561
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][setNewAdapter]: content already destroyed..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    goto :goto_0

    .line 567
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->sceneChangeInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    .line 569
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][setNewAdapter]: no scene change skip..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 572
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 574
    const-string v0, "SunnyContainerView"

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "[HTCAlbum][SunnyContainerView][setNewAdapter]: duplicate: "

    aput-object v2, v1, v3

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, " : "

    aput-object v2, v1, v5

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 578
    :cond_4
    const-string v0, "SunnyContainerView"

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "[HTCAlbum][SunnyContainerView][setNewAdapter]: "

    aput-object v2, v1, v3

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, " : "

    aput-object v2, v1, v5

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateAdapterReady()V

    goto/16 :goto_0
.end method

.method public setPaneConfig(ZZ)V
    .locals 1
    .parameter "bEnable2Pane"
    .parameter "bIsPaneLeft"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setPaneConfig(ZZ)V

    .line 139
    return-void
.end method

.method public setSceneFactory(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;)V
    .locals 0
    .parameter "sunnySceneFactory"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    .line 179
    return-void
.end method

.method public startScene(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .parameter "bundle"
    .parameter "szIdentity"

    .prologue
    .line 927
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 928
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][startScene]: end"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    return-void
.end method

.method public startScene(Landroid/os/Bundle;Ljava/lang/String;Z)V
    .locals 2
    .parameter "bundle"
    .parameter "szIdentity"
    .parameter "disableEntryAnim"

    .prologue
    .line 933
    if-eqz p3, :cond_0

    .line 934
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->disableAnimation()V

    .line 936
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 937
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][startScene]: end"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    return-void
.end method

.method public sunnyContext()Lcom/htc/sunnyCore/SunnyContext;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getSunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v0

    return-object v0
.end method

.method public sunnyHandler()I
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getSunnyEnvironmentHandler()I

    move-result v0

    return v0
.end method

.method public sunnyHost()Landroid/view/ViewGroup;
    .locals 0

    .prologue
    .line 505
    return-object p0
.end method

.method public unregisterBroadcastReceiver()V
    .locals 1

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    instance-of v0, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;

    if-eqz v0, :cond_0

    .line 1496
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;->unregisterBroadcastReceiver()V

    .line 1497
    :cond_0
    return-void
.end method

.method public updateSceneDepth(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;)V
    .locals 10
    .parameter "depth"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1169
    const/4 v1, 0x0

    .line 1171
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_5

    .line 1173
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 1174
    .restart local v1       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1171
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1180
    :cond_1
    sget-object v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;->INCREMENT:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;

    if-ne v2, p1, :cond_3

    .line 1182
    const-string v2, "SunnyContainerView"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "[HTCAlbum][SunnyContainerView][updateSceneDepth]: INCREMENT: "

    aput-object v4, v3, v5

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, ":"

    aput-object v4, v3, v7

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getDepth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1184
    const/16 v2, -0x64

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getDepth()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 1186
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->incrementDepth()V

    .line 1187
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onNotifyDepthIncremented()V

    .line 1189
    :cond_2
    const-string v2, "SunnyContainerView"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "[HTCAlbum][SunnyContainerView][updateSceneDepth]: INCREMENT: "

    aput-object v4, v3, v5

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, ":"

    aput-object v4, v3, v7

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getDepth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1192
    :cond_3
    sget-object v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;->DECREMENT:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;

    if-ne v2, p1, :cond_0

    .line 1194
    const-string v2, "SunnyContainerView"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "[HTCAlbum][SunnyContainerView][updateSceneDepth]: DECREMENT: "

    aput-object v4, v3, v5

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, ":"

    aput-object v4, v3, v7

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getDepth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1196
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getDepth()I

    move-result v2

    if-gtz v2, :cond_4

    .line 1198
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->decrementDepth()V

    .line 1199
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onNotifyDepthDecremented()V

    .line 1201
    :cond_4
    const-string v2, "SunnyContainerView"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "[HTCAlbum][SunnyContainerView][updateSceneDepth]: DECREMENT: "

    aput-object v4, v3, v5

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, ":"

    aput-object v4, v3, v7

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getDepth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1205
    :cond_5
    return-void
.end method
