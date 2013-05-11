.class public Lcom/htc/album/AlbumMain/FragmentLandingPage;
.super Lcom/htc/app/mf/MfFragment;
.source "FragmentLandingPage.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;
.implements Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageCacheCallBack;


# static fields
.field private static final SHOWME_KEYWORD:Ljava/lang/String; = "gallery"

.field private static final SHOWME_PAK_NAME:Ljava/lang/String; = "com.htc.showme"

.field private static final SHOWME_SEARCH_NAME:Ljava/lang/String; = "com.htc.showme.ui.Search"

.field private static final TAG:Ljava/lang/String; = "FragmentLandingPage"


# instance fields
.field private TabNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;",
            ">;"
        }
    .end annotation
.end field

.field private mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

.field private mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

.field private mAdapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;

.field private mContext:Landroid/content/Context;

.field private mDLNAPlugin:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

.field private mGridview:Lcom/htc/widget/HtcGridView;

.field private mHandler:Landroid/os/Handler;

.field private mHidePlugin:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFirstItemClick:Z

.field private mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

.field private mMainView:Landroid/view/View;

.field private mOrientation:I

.field private mPluginConnectionMgr:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShowPlugin:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Lcom/htc/album/AlbumMain/LandingPageCacheThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/htc/app/mf/MfFragment;-><init>()V

    .line 67
    iput-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    .line 68
    iput-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mContext:Landroid/content/Context;

    .line 69
    iput-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mAdapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;

    .line 70
    iput-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mMainView:Landroid/view/View;

    .line 71
    iput-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mGridview:Lcom/htc/widget/HtcGridView;

    .line 72
    iput v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mOrientation:I

    .line 73
    iput v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mScreenWidth:I

    .line 74
    iput v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mScreenHeight:I

    .line 75
    iput-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    .line 76
    iput-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mHandler:Landroid/os/Handler;

    .line 77
    iput-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mDLNAPlugin:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mIsFirstItemClick:Z

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mShowPlugin:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mHidePlugin:Ljava/util/ArrayList;

    .line 82
    iput-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mPluginConnectionMgr:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

    .line 84
    iput-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mThread:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    .line 202
    new-instance v0, Lcom/htc/album/AlbumMain/FragmentLandingPage$1;

    invoke-direct {v0, p0}, Lcom/htc/album/AlbumMain/FragmentLandingPage$1;-><init>(Lcom/htc/album/AlbumMain/FragmentLandingPage;)V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 276
    new-instance v0, Lcom/htc/album/AlbumMain/FragmentLandingPage$2;

    invoke-direct {v0, p0}, Lcom/htc/album/AlbumMain/FragmentLandingPage$2;-><init>(Lcom/htc/album/AlbumMain/FragmentLandingPage;)V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    .line 597
    new-instance v0, Lcom/htc/album/AlbumMain/FragmentLandingPage$3;

    invoke-direct {v0, p0}, Lcom/htc/album/AlbumMain/FragmentLandingPage$3;-><init>(Lcom/htc/album/AlbumMain/FragmentLandingPage;)V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->TabNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/AlbumMain/FragmentLandingPage;)Lcom/htc/album/AlbumMain/AdapterLandingPage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mAdapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/AlbumMain/FragmentLandingPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mIsFirstItemClick:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/album/AlbumMain/FragmentLandingPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mIsFirstItemClick:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/album/AlbumMain/FragmentLandingPage;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/AlbumMain/FragmentLandingPage;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mShowPlugin:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/AlbumMain/FragmentLandingPage;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mHidePlugin:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/AlbumMain/FragmentLandingPage;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->notifyAdapter(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/album/AlbumMain/FragmentLandingPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->writeToCache()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/album/AlbumMain/FragmentLandingPage;)Lcom/htc/album/AlbumMain/MfMainActivityBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    return-object v0
.end method

.method private isHVGA()Z
    .locals 3

    .prologue
    .line 540
    iget v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mScreenWidth:I

    iget v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mScreenHeight:I

    if-le v1, v2, :cond_0

    iget v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mScreenWidth:I

    .line 541
    .local v0, length:I
    :goto_0
    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 540
    .end local v0           #length:I
    :cond_0
    iget v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mScreenHeight:I

    goto :goto_0

    .line 541
    .restart local v0       #length:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isPackageInstalled()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 470
    const/4 v2, 0x0

    .line 471
    .local v2, result:Z
    iget-object v3, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 475
    .local v1, pm:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 477
    :try_start_0
    const-string v3, "com.htc.showme"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    const/4 v2, 0x1

    .line 485
    :cond_0
    :goto_0
    return v2

    .line 481
    :catch_0
    move-exception v0

    .line 483
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "FragmentLandingPage"

    const-string v4, "Package %s is not installed"

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "com.htc.showme"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private launchShowMe()V
    .locals 4

    .prologue
    .line 490
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.htc.showme"

    const-string v3, "com.htc.showme.ui.Search"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 492
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-virtual {v1, v0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->startActivity(Landroid/content/Intent;)V

    .line 494
    return-void
.end method

.method private layoutSetting()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 509
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mOrientation:I

    .line 510
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 511
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-virtual {v1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 512
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mScreenWidth:I

    .line 513
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mScreenHeight:I

    .line 515
    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mGridview:Lcom/htc/widget/HtcGridView;

    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->ACTION_BAR_HEIGHT_DIMEN:I

    invoke-virtual {v1, v3, v2, v3, v3}, Lcom/htc/widget/HtcGridView;->setPadding(IIII)V

    .line 517
    iget v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 519
    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mGridview:Lcom/htc/widget/HtcGridView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcGridView;->setNumColumns(I)V

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    iget v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 523
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->isHVGA()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 525
    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mGridview:Lcom/htc/widget/HtcGridView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcGridView;->setNumColumns(I)V

    goto :goto_0

    .line 529
    :cond_2
    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mGridview:Lcom/htc/widget/HtcGridView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcGridView;->setNumColumns(I)V

    goto :goto_0

    .line 534
    :cond_3
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FragmentLandingPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][FragmentLandingPage][layoutSetting]: Unknown orientation change. mOrientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyAdapter(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 591
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mAdapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 593
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mAdapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;

    invoke-virtual {v0, p1}, Lcom/htc/album/AlbumMain/AdapterLandingPage;->setAdapterList(Ljava/util/List;)V

    .line 595
    :cond_0
    return-void
.end method

.method private writeToCache()V
    .locals 3

    .prologue
    .line 582
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mThread:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mThread:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mHidePlugin:Ljava/util/ArrayList;

    const-string v2, "land_hide"

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->writeToTabPluginFileCache(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mThread:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mShowPlugin:Ljava/util/ArrayList;

    const-string v2, "land_show"

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->writeToTabPluginFileCache(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 587
    :cond_0
    return-void
.end method


# virtual methods
.method public enable2Pane()Z
    .locals 1

    .prologue
    .line 687
    const/4 v0, 0x0

    return v0
.end method

.method public fullscreenMode(Z)V
    .locals 2
    .parameter "bEnable"

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 705
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;

    if-eqz v1, :cond_0

    .line 707
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;->fullscreenMode(Z)V

    .line 713
    :goto_0
    return-void

    .line 711
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_0
    invoke-static {v0, p1}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->showFullscreen(Landroid/app/Activity;Z)V

    goto :goto_0
.end method

.method public getAdapter()Lcom/htc/album/AlbumMain/AdapterLandingPage;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mAdapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "FragmentLandingPage"

    return-object v0
.end method

.method protected launchPluginFragment(Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V
    .locals 12
    .parameter "plugin"
    .parameter "intent"

    .prologue
    .line 328
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 329
    .local v2, bundleArg:Landroid/os/Bundle;
    iget-object v9, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a00d1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 330
    .local v7, strDLNA:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v8

    .line 332
    .local v8, strPlugin:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 334
    iget-object v9, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-virtual {v9}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 335
    .local v0, actTop:Landroid/app/Activity;
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    .line 336
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 338
    .local v4, dlnaIntent:Landroid/content/Intent;
    if-eqz v4, :cond_1

    .line 340
    const/4 v1, 0x0

    .line 341
    .local v1, bundle:Landroid/os/Bundle;
    const-string v9, "browse_info"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 343
    const-string v9, "browse_info"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 344
    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 368
    .end local v0           #actTop:Landroid/app/Activity;
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #dlnaIntent:Landroid/content/Intent;
    :cond_1
    :goto_0
    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "FragmentLandingPage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][FragmentLandingPage][launchPluginFragment]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_2
    iget-object v9, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    if-eqz v9, :cond_4

    .line 372
    iget-object v9, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-virtual {v9}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 374
    .local v5, intentActivity:Landroid/content/Intent;
    if-eqz v5, :cond_3

    .line 376
    const-string v9, "from_outside"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 378
    :cond_3
    iget-object v9, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v10

    sget v11, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {v9, v10, v2, v11}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->startFragmentAndStackUp(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 380
    .end local v5           #intentActivity:Landroid/content/Intent;
    :cond_4
    return-void

    .line 350
    :cond_5
    const/4 v3, 0x0

    .line 351
    .local v3, bundleSocial:Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 352
    .local v6, intenteSocial:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v5

    .line 354
    .restart local v5       #intentActivity:Landroid/content/Intent;
    if-eqz v5, :cond_1

    .line 356
    const-string v9, "social_bundle"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 357
    if-eqz v3, :cond_1

    .line 359
    const-string v9, "social_intent"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    .end local v6           #intenteSocial:Landroid/content/Intent;
    check-cast v6, Landroid/content/Intent;

    .line 360
    .restart local v6       #intenteSocial:Landroid/content/Intent;
    if-eqz v6, :cond_1

    .line 362
    const-string v9, "social_intent"

    invoke-virtual {v2, v9, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 363
    iget-object v9, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mPluginConnectionMgr:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

    invoke-virtual {v9, p1, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->connectTo(Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/htc/app/mf/MfFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 164
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setDropdownListEnabled(ZLcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;)V

    .line 165
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setPrimaryText(I)V

    .line 166
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 611
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "FragmentLandingPage"

    const-string v4, "[HTCAlbum][FragmentLandingPage][onActivityResult] + "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 668
    :cond_1
    :goto_0
    return-void

    .line 617
    :pswitch_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 619
    iget-object v3, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mAdapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;

    if-eqz v3, :cond_1

    .line 623
    iget-object v3, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mAdapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/album/AlbumMain/AdapterLandingPage;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    .line 625
    .local v2, tmp:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;
    if-eqz v2, :cond_1

    .line 630
    const/4 v0, 0x0

    .line 631
    .local v0, action:Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 633
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 636
    :cond_2
    const-string v3, "com.htc.album.action.VIEW_CONTINUOUS_SHOT_FROM_CAMERA"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 638
    iget-object v3, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-virtual {v3, p3}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setIntent(Landroid/content/Intent;)V

    .line 663
    :goto_1
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->finishSelf()V

    .line 664
    iget-object v3, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-virtual {v2}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    sget v6, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->startFragment(Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 642
    :cond_3
    iget-object v3, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-virtual {v3}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 643
    .local v1, intent:Landroid/content/Intent;
    if-nez v1, :cond_4

    .line 645
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 648
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_4
    const-string v3, "com.htc.album.action.VIEW_PANORAMA_SHOTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 650
    const-string v3, "com.htc.album.action.VIEW_PANORAMA_SHOTS"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    :goto_2
    const-string v3, "goFinish"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 661
    iget-object v3, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-virtual {v3, v1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 652
    :cond_5
    const-string v3, "com.htc.album.action.VIEW_BURST_SHOTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 654
    const-string v3, "com.htc.album.action.VIEW_BURST_SHOTS"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 658
    :cond_6
    const-string v3, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 613
    nop

    :pswitch_data_0
    .packed-switch 0x1390
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressedOverride()Z
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-virtual {v0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->finish()V

    .line 682
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 498
    invoke-super {p0, p1}, Lcom/htc/app/mf/MfFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 500
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->layoutSetting()V

    .line 501
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mAdapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mAdapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;

    invoke-virtual {v0}, Lcom/htc/album/AlbumMain/AdapterLandingPage;->notifyDataSetChanged()V

    .line 505
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/htc/app/mf/MfFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v0

    check-cast v0, Lcom/htc/album/AlbumMain/MfMainActivityBase;

    check-cast v0, Lcom/htc/album/AlbumMain/MfMainActivityBase;

    iput-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    .line 96
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    iget-object v0, v0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    iput-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    .line 97
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-virtual {v0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mHandler:Landroid/os/Handler;

    .line 98
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-virtual {v0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mContext:Landroid/content/Context;

    .line 99
    invoke-static {}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->instance()Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mPluginConnectionMgr:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

    .line 101
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Lcom/htc/album/AlbumMain/AdapterLandingPage;

    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/album/AlbumMain/AdapterLandingPage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mAdapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;

    .line 105
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    const-string v1, "thread"

    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mContext:Landroid/content/Context;

    const-string v4, "local"

    const/16 v5, 0x10

    const/4 v6, 0x1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;-><init>(Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;IILcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageCacheCallBack;)V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mThread:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    .line 110
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mThread:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    invoke-virtual {v0}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->start()V

    .line 111
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mThread:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    invoke-virtual {v0}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->readFromTabPluginFileCache()V

    .line 114
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 118
    invoke-super {p0, p1, p2, p3}, Lcom/htc/app/mf/MfFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 120
    const v2, 0x7f030028

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mMainView:Landroid/view/View;

    .line 121
    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mMainView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getGlanceBackground(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 123
    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mMainView:Landroid/view/View;

    const v3, 0x7f090050

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcGridView;

    iput-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mGridview:Lcom/htc/widget/HtcGridView;

    .line 124
    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mAdapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mGridview:Lcom/htc/widget/HtcGridView;

    iget-object v3, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mAdapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 131
    .local v1, c:Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mGridview:Lcom/htc/widget/HtcGridView;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcGridView;->draw(Landroid/graphics/Canvas;)V

    .line 133
    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mGridview:Lcom/htc/widget/HtcGridView;

    iget-object v3, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcGridView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 134
    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mGridview:Lcom/htc/widget/HtcGridView;

    iget-object v3, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcGridView;->setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V

    .line 135
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->layoutSetting()V

    .line 137
    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mMainView:Landroid/view/View;

    return-object v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 384
    invoke-super {p0}, Lcom/htc/app/mf/MfFragment;->onDestroy()V

    .line 386
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mThread:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mThread:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    invoke-virtual {v0}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->quit()Z

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mShowPlugin:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 392
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mHidePlugin:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 394
    iput-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mAdapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;

    .line 395
    iput-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    .line 396
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    .line 422
    iget-object v5, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    if-eqz v5, :cond_0

    if-nez p1, :cond_1

    .line 465
    :cond_0
    :goto_0
    return v4

    .line 427
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 465
    :cond_2
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 432
    :sswitch_0
    iget-object v5, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-static {v5, v4}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoCamera(Landroid/app/Activity;Z)V

    goto :goto_1

    .line 437
    :sswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 439
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mHidePlugin:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->TabNameComparator:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 440
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v3, tmp:Ljava/util/ArrayList;
    iget-object v4, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mHidePlugin:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    const-string v4, "listData"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 444
    iget-object v4, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    const-string v5, "com.htc.album.AlbumMain.AddShortCutActivity"

    sget v6, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {v4, v5, v0, v6}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->startFragmentAndStackUp(Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_1

    .line 449
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v3           #tmp:Ljava/util/ArrayList;
    :sswitch_2
    iget-object v4, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mDLNAPlugin:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    if-eqz v4, :cond_2

    .line 451
    iget-object v4, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mDLNAPlugin:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    invoke-virtual {v4}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getTabPlugin()Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v2

    .line 452
    .local v2, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    if-eqz v2, :cond_2

    .line 454
    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v1

    .line 455
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2, v1}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->launchPluginFragment(Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V

    goto :goto_1

    .line 462
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->launchShowMe()V

    goto :goto_1

    .line 427
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7f0a019e -> :sswitch_2
        0x7f0a019f -> :sswitch_1
        0x7f0a01a0 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPrepareFullscreenMode()V
    .locals 0

    .prologue
    .line 717
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 8
    .parameter "menu"

    .prologue
    const v7, 0x7f0a01a0

    const v6, 0x7f0a019f

    const v5, 0x7f0a019e

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 400
    invoke-super {p0, p1}, Lcom/htc/app/mf/MfFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 401
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 403
    const/4 v1, 0x3

    const v2, 0x7f0a012d

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 404
    .local v0, itemOutput:Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Camera_Dark_Rest(Landroid/content/Context;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 405
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 407
    invoke-interface {p1, v3, v6, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 409
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isInternalStorageStateError()Z

    move-result v1

    if-nez v1, :cond_0

    .line 411
    const/4 v1, 0x1

    invoke-interface {p1, v3, v5, v1, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 414
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->isPackageInstalled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 416
    invoke-interface {p1, v3, v7, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 418
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 170
    invoke-super {p0}, Lcom/htc/app/mf/MfFragment;->onResume()V

    .line 171
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mIsFirstItemClick:Z

    .line 172
    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-virtual {v2, v4}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setVisibility(I)V

    .line 173
    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setSecondaryText(Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-virtual {v2, v4}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setBackUpEnabled(Z)V

    .line 175
    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-virtual {v2, v4}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->enableHTCLandscape(Z)V

    .line 176
    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setProgressVisibility(I)V

    .line 178
    const/4 v0, 0x0

    .line 180
    .local v0, adapterCount:I
    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mAdapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mAdapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;

    invoke-virtual {v2}, Lcom/htc/album/AlbumMain/AdapterLandingPage;->getCount()I

    move-result v0

    .line 185
    :cond_0
    if-eqz v0, :cond_1

    .line 187
    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-virtual {v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->invalidateOptionsMenu()V

    .line 190
    :cond_1
    sget-object v2, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mAddTabPlug:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    if-eqz v2, :cond_2

    .line 192
    sget-object v1, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mAddTabPlug:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    .line 193
    .local v1, plugin:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mAddTabPlug:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    .line 194
    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mShowPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mHidePlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 196
    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mShowPlugin:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->notifyAdapter(Ljava/util/ArrayList;)V

    .line 197
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->writeToCache()V

    .line 199
    .end local v1           #plugin:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;
    :cond_2
    invoke-virtual {p0, v4}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->fullscreenMode(Z)V

    .line 200
    return-void
.end method

.method public paneRight()Z
    .locals 1

    .prologue
    .line 692
    const/4 v0, 0x0

    return v0
.end method

.method public readEnd(ILjava/util/ArrayList;)V
    .locals 3
    .parameter "from"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 549
    .local p2, returnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    if-nez p1, :cond_1

    .line 551
    iput-object p2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mShowPlugin:Ljava/util/ArrayList;

    .line 552
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mShowPlugin:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->notifyAdapter(Ljava/util/ArrayList;)V

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 556
    iput-object p2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mHidePlugin:Ljava/util/ArrayList;

    .line 557
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mThread:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mHidePlugin:Ljava/util/ArrayList;

    const-string v2, "land_hide"

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->writeToTabPluginFileCache(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    .line 559
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 561
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    iput-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mDLNAPlugin:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    goto :goto_0

    .line 566
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 568
    iput-object p2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mShowPlugin:Ljava/util/ArrayList;

    .line 569
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mShowPlugin:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->notifyAdapter(Ljava/util/ArrayList;)V

    .line 570
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mThread:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mShowPlugin:Ljava/util/ArrayList;

    const-string v2, "land_show"

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->writeToTabPluginFileCache(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    .line 574
    :cond_4
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentLandingPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][FragmentLandingPage][readEnd] warning fromId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", returnList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mGridview:Lcom/htc/widget/HtcGridView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcGridView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 153
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mGridview:Lcom/htc/widget/HtcGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridView;->setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V

    .line 158
    return-void
.end method
