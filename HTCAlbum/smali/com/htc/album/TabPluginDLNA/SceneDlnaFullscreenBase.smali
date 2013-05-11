.class public abstract Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;
.super Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;
.source "SceneDlnaFullscreenBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$1;,
        Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;,
        Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner;,
        Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripViewScrollStateChangedListener;,
        Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$ViewScrollStateChangedListener;,
        Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem",
        "<",
        "Lcom/htc/sunny2/fullfilmview/FullFilmView;",
        ">;"
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

.field private mOnItemClickListener:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;

.field private mOrientationHasChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;-><init>()V

    .line 23
    const-class v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->LOG_TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mOrientationHasChanged:Z

    .line 26
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    .line 27
    new-instance v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$1;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mOnItemClickListener:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;

    .line 508
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mOrientationHasChanged:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mOrientationHasChanged:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->isHitIndicator(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method private isHitIndicator(II)Z
    .locals 10
    .parameter "posX"
    .parameter "posY"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 425
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v6

    div-int/lit8 v5, v6, 0x5

    .line 426
    .local v5, wSection:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v6

    div-int/lit8 v0, v6, 0x5

    .line 427
    .local v0, hSection:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v6

    iget v6, v6, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    float-to-int v4, v6

    .line 428
    .local v4, top:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v6

    iget v6, v6, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    float-to-int v3, v6

    .line 430
    .local v3, left:I
    sub-int v6, p1, v3

    mul-int/lit8 v9, v5, 0x2

    sub-int/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v5, :cond_0

    move v1, v7

    .line 431
    .local v1, hitX:Z
    :goto_0
    sub-int v6, p2, v4

    mul-int/lit8 v9, v0, 0x2

    sub-int/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v0, :cond_1

    move v2, v7

    .line 433
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

    .line 430
    goto :goto_0

    .restart local v1       #hitX:Z
    :cond_1
    move v2, v8

    .line 431
    goto :goto_1

    .restart local v2       #hitY:Z
    :cond_2
    move v7, v8

    .line 433
    goto :goto_2
.end method


# virtual methods
.method protected defaultControlBarOn()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public enableFullScreen()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method protected getDLNAOutputIndex()I
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public onBubbleDismissed()V
    .locals 3

    .prologue
    .line 471
    const/16 v0, 0x4e3c

    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onPostMessage(ILjava/lang/Object;I)V

    .line 472
    return-void
.end method

.method public onBubblePopped()V
    .locals 1

    .prologue
    .line 461
    const/16 v0, 0x4e3c

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onRemoveMessage(I)V

    .line 462
    return-void
.end method

.method public onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 39
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->LOG_TAG:Ljava/lang/String;

    const-string v8, "[HTCAlbum][SceneDlnaFullscreenBase][onCreateScene] + "

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 41
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 42
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Activity is null"

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v6

    .line 64
    :goto_0
    return-object v3

    .line 45
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 46
    .local v1, context:Landroid/content/Context;
    new-instance v2, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v7

    invoke-direct {v2, v1, v7}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    .line 47
    .local v2, fsvi:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
    new-instance v4, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v7

    invoke-direct {v4, v1, v7}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    .line 48
    .local v4, fvci:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    new-instance v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v7

    invoke-direct {v3, v1, v7, v2, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V

    .line 49
    .local v3, fullfilmview:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    new-instance v7, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-direct {v7, v1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    .line 50
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v5, inValue:Landroid/os/Bundle;
    const-string v7, "TEXTURE_MAX_COUNT"

    const/4 v8, 0x7

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    const-string v7, "FULL_FILM_FLAG"

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v7, v1, v5}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 55
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v7, v3}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunnyCore/Preparator$UpdateListener;)V

    .line 56
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v3, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPreparation(Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;)V

    .line 57
    new-instance v7, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;

    invoke-direct {v7, p0, v6}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$1;)V

    invoke-virtual {v3, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPanZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    .line 58
    new-instance v7, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$ViewScrollStateChangedListener;

    invoke-direct {v7, p0, v6}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$ViewScrollStateChangedListener;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$1;)V

    invoke-virtual {v3, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnScrollListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;)V

    .line 59
    new-instance v7, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripViewScrollStateChangedListener;

    invoke-direct {v7, p0, v6}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripViewScrollStateChangedListener;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$1;)V

    invoke-virtual {v3, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnFilmstripViewScrollChangeListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnFilmstripViewScrollChangeListener;)V

    .line 60
    new-instance v7, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner;

    invoke-direct {v7, p0, v6}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$1;)V

    invoke-virtual {v3, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemSelectedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;)V

    .line 61
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mOnItemClickListener:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;

    invoke-virtual {v3, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemClickListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;)V

    .line 63
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][SceneDlnaFullscreenBase][onCreateScene] - "

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunnyCore/view/SView;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v0

    return-object v0
.end method

.method protected onFilmstripViewScrollStateChanged(I)V
    .locals 0
    .parameter "scrollState"

    .prologue
    .line 338
    return-void
.end method

.method protected onItemSelected(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->toggleControlBars()V

    .line 477
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 444
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 450
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onMessage(Landroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    .line 447
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->hideControlBars()V

    .line 448
    const/4 v0, 0x1

    goto :goto_0

    .line 444
    nop

    :pswitch_data_0
    .packed-switch 0x4e3c
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 492
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 494
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->isInvalidateOptionsMenu()Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onItemSelected(I)V

    .line 498
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onScrollStateChange(I)V
    .locals 1
    .parameter "scrollState"

    .prologue
    .line 325
    if-nez p1, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->hideControlBars()V

    goto :goto_0
.end method

.method protected toggleControlBars()V
    .locals 3

    .prologue
    const/16 v2, 0x4e3c

    .line 481
    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onRemoveMessage(I)V

    .line 483
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->isControlBarShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    const/4 v0, 0x0

    const/16 v1, 0x1388

    invoke-virtual {p0, v2, v0, v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onPostMessage(ILjava/lang/Object;I)V

    .line 486
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->toggleControlBarsVisibility()V

    .line 487
    return-void
.end method
