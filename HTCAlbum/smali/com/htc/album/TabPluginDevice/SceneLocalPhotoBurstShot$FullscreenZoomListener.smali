.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;
.super Ljava/lang/Object;
.source "SceneLocalPhotoBurstShot.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullscreenZoomListener"
.end annotation


# instance fields
.field private mHeight:I

.field private mIndex:I

.field private mIsAligning:Z

.field private mIsFlinging:Z

.field private mIsPanning:Z

.field private mIsZooming:Z

.field private mItemIndex:I

.field private mLeft:I

.field private mTop:I

.field private mWidth:I

.field private mZoomFactor:F

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 1330
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1332
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mIsZooming:Z

    .line 1333
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mIsPanning:Z

    .line 1334
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mIsAligning:Z

    .line 1335
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mIsFlinging:Z

    .line 1337
    iput v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mItemIndex:I

    .line 1338
    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mLeft:I

    .line 1339
    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mTop:I

    .line 1340
    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mWidth:I

    .line 1341
    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mHeight:I

    .line 1342
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mZoomFactor:F

    .line 1344
    iput v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1330
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1330
    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mIndex:I

    return v0
.end method

.method static synthetic access$2002(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1330
    iput p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mIndex:I

    return p1
.end method


# virtual methods
.method public onAlignBeginIRT()V
    .locals 2

    .prologue
    .line 1470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mIsAligning:Z

    .line 1473
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DEBUG:Z
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$1700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HtcAlbum][FullscreenZoomListener][onAlignBeginIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->onAnimationBeginIRT()V

    .line 1476
    return-void
.end method

.method public onAlignEndIRT()V
    .locals 2

    .prologue
    .line 1480
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mIsAligning:Z

    .line 1483
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DEBUG:Z
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$1700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HtcAlbum][FullscreenZoomListener][onAlignEndIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->onAnimationEndIRT()V

    .line 1486
    return-void
.end method

.method public onAnimationBeginIRT()V
    .locals 2

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$2800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$2900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1576
    :cond_0
    :goto_0
    return-void

    .line 1561
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$3000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener$3;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener$3;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onAnimationEndIRT()V
    .locals 2

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$3100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$3200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1595
    :cond_0
    :goto_0
    return-void

    .line 1584
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$3300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener$4;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener$4;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onEnterImageIRT(I)V
    .locals 5
    .parameter "itemIndex"

    .prologue
    .line 1359
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DEBUG:Z
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$1700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "[HtcAlbum][SceneLocalPhotoBurstShot][onEnterImageIRT] + "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    :cond_0
    move v0, p1

    .line 1362
    .local v0, nIndex:I
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$1800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$1900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1382
    :cond_1
    :goto_0
    return-void

    .line 1366
    :cond_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$2100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1373
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$2200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$2200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    if-eqz v1, :cond_3

    .line 1375
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$2200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->resetStopHQDecodeSincePurge()V

    .line 1377
    :cond_3
    sget-boolean v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->IS_FULLHD_OR_HIGHER:Z

    if-eqz v1, :cond_4

    .line 1379
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    const/16 v2, 0x4e4d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 1381
    :cond_4
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DEBUG:Z
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$1700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "[HtcAlbum][SceneLocalPhotoBurstShot][onEnterImageIRT] - "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFlingBeginIRT()V
    .locals 2

    .prologue
    .line 1537
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mIsFlinging:Z

    .line 1540
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HtcAlbum][FullscreenZoomListener][onFlingBeginIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->onAnimationBeginIRT()V

    .line 1543
    return-void
.end method

.method public onFlingEndIRT()V
    .locals 2

    .prologue
    .line 1547
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mIsFlinging:Z

    .line 1550
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HtcAlbum][FullscreenZoomListener][onFlingEndIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->onAnimationEndIRT()V

    .line 1553
    return-void
.end method

.method public onImageBoundsUpdateIRT(IIIIIF)V
    .locals 2
    .parameter "itemIndex"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "zoomFactor"

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DEBUG:Z
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$1700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HtcAlbum][SceneLocalPhotoBurstShot][FullscreenZoomListener][onImageBoundsUpdateIRT] + "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOrientationHasChanged:Z
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$2300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mItemIndex:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mLeft:I

    if-ne v0, p2, :cond_2

    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mTop:I

    if-ne v0, p3, :cond_2

    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mWidth:I

    if-ne v0, p4, :cond_2

    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mHeight:I

    if-ne v0, p5, :cond_2

    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mZoomFactor:F

    cmpl-float v0, v0, p6

    if-nez v0, :cond_2

    .line 1503
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HtcAlbum][SceneLocalPhotoBurstShot][FullscreenZoomListener][onImageBoundsUpdateIRT] - returned "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    :cond_1
    :goto_0
    return-void

    .line 1506
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    const/4 v1, 0x0

    #setter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOrientationHasChanged:Z
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$2302(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Z)Z

    .line 1507
    iput p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mItemIndex:I

    .line 1508
    iput p2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mLeft:I

    .line 1509
    iput p3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mTop:I

    .line 1510
    iput p4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mWidth:I

    .line 1511
    iput p5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mHeight:I

    .line 1512
    iput p6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mZoomFactor:F

    .line 1514
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$2400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$2500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1518
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$2700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener$2;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener$2;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1532
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DEBUG:Z
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$1700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HtcAlbum][SceneLocalPhotoBurstShot][FullscreenZoomListener][onImageBoundsUpdateIRT] - "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLeaveImageIRT()V
    .locals 4

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    const/16 v1, 0x4e48

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onRemoveMessage(I)V

    .line 1394
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    const/16 v1, 0x4e3c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 1395
    return-void
.end method

.method public onPanBeginIRT()V
    .locals 2

    .prologue
    .line 1443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mIsPanning:Z

    .line 1446
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HtcAlbum][FullscreenZoomListener][onPanBeginIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->onAnimationBeginIRT()V

    .line 1449
    return-void
.end method

.method public onPanEndIRT()V
    .locals 2

    .prologue
    .line 1460
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mIsPanning:Z

    .line 1463
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HtcAlbum][FullscreenZoomListener][onPanEndIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->onAnimationEndIRT()V

    .line 1466
    return-void
.end method

.method public onZoomBeginIRT()V
    .locals 4

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    const/16 v1, 0x4e48

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onRemoveMessage(I)V

    .line 1407
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    const/16 v1, 0x4e3c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 1409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mIsZooming:Z

    .line 1412
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HtcAlbum][FullscreenZoomListener][onZoomBeginIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->onAnimationBeginIRT()V

    .line 1415
    return-void
.end method

.method public onZoomEndIRT()V
    .locals 2

    .prologue
    .line 1426
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mIsZooming:Z

    .line 1429
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HtcAlbum][FullscreenZoomListener][onZoomEndIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->onAnimationEndIRT()V

    .line 1432
    return-void
.end method

.method public resetCurrentIndex()V
    .locals 1

    .prologue
    .line 1347
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->mIndex:I

    .line 1348
    return-void
.end method
