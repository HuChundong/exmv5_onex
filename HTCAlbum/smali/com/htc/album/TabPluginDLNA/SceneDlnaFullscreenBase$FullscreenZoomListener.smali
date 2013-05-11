.class Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;
.super Ljava/lang/Object;
.source "SceneDlnaFullscreenBase.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;
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

.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 66
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->mIsZooming:Z

    .line 69
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->mIsPanning:Z

    .line 70
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->mIsAligning:Z

    .line 71
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->mIsFlinging:Z

    .line 73
    iput v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->mItemIndex:I

    .line 74
    iput v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->mLeft:I

    .line 75
    iput v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->mTop:I

    .line 76
    iput v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->mWidth:I

    .line 77
    iput v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->mHeight:I

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->mZoomFactor:F

    .line 80
    iput v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->mIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)V

    return-void
.end method


# virtual methods
.method public onAlignBeginIRT()V
    .locals 2

    .prologue
    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->mIsAligning:Z

    .line 202
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$500(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HtcAlbum][SceneDlnaFullscreenBase][onAlignBeginIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->onAnimationBeginIRT()V

    .line 205
    return-void
.end method

.method public onAlignEndIRT()V
    .locals 2

    .prologue
    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->mIsAligning:Z

    .line 211
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$500(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HtcAlbum][SceneDlnaFullscreenBase][onAlignEndIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->onAnimationEndIRT()V

    .line 214
    return-void
.end method

.method public onAnimationBeginIRT()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$1600(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$1700(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$1800(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener$3;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener$3;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onAnimationEndIRT()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$1900(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$2000(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$2100(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener$4;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener$4;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onEnterImageIRT(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 91
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$500(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[HtcAlbum][SceneDlnaFullscreenBase][onEnterImageIRT] + "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    move v0, p1

    .line 94
    .local v0, nIndex:I
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$600(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$700(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$1000(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener$1;

    invoke-direct {v2, p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener$1;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 110
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$1100(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$1100(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    if-eqz v1, :cond_2

    .line 112
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$1100(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->resetStopHQDecodeSincePurge()V

    .line 114
    :cond_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$500(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[HtcAlbum][SceneDlnaFullscreenBase][onEnterImageIRT] - "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFlingBeginIRT()V
    .locals 2

    .prologue
    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->mIsFlinging:Z

    .line 264
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$500(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HtcAlbum][SceneDlnaFullscreenBase][onFlingBeginIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->onAnimationBeginIRT()V

    .line 267
    return-void
.end method

.method public onFlingEndIRT()V
    .locals 2

    .prologue
    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->mIsFlinging:Z

    .line 274
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$500(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HtcAlbum][SceneDlnaFullscreenBase][onFlingEndIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->onAnimationEndIRT()V

    .line 277
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
    .line 224
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$500(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HtcAlbum][SceneDlnaFullscreenBase][FullscreenZoomListener][onImageBoundsUpdateIRT] + "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mOrientationHasChanged:Z
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$1200(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->mItemIndex:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->mLeft:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->mTop:I

    if-ne v0, p3, :cond_1

    iget v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->mWidth:I

    if-ne v0, p4, :cond_1

    iget v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->mHeight:I

    if-ne v0, p5, :cond_1

    iget v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->mZoomFactor:F

    cmpl-float v0, v0, p6

    if-nez v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$500(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HtcAlbum][SceneDlnaFullscreenBase][FullscreenZoomListener][onImageBoundsUpdateIRT] - returned "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    const/4 v1, 0x0

    #setter for: Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mOrientationHasChanged:Z
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$1202(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;Z)Z

    .line 231
    iput p1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->mItemIndex:I

    .line 232
    iput p2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->mLeft:I

    .line 233
    iput p3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->mTop:I

    .line 234
    iput p4, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->mWidth:I

    .line 235
    iput p5, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->mHeight:I

    .line 236
    iput p6, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->mZoomFactor:F

    .line 238
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$1300(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$1400(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$1500(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener$2;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener$2;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 256
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$500(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HtcAlbum][SceneDlnaFullscreenBase][FullscreenZoomListener][onImageBoundsUpdateIRT] - "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLeaveImageIRT()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onPanBeginIRT()V
    .locals 2

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->mIsPanning:Z

    .line 175
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$500(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HtcAlbum][SceneDlnaFullscreenBase][onPanBeginIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->onAnimationBeginIRT()V

    .line 178
    return-void
.end method

.method public onPanEndIRT()V
    .locals 2

    .prologue
    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->mIsPanning:Z

    .line 192
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$500(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HtcAlbum][SceneDlnaFullscreenBase][onPanEndIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->onAnimationEndIRT()V

    .line 195
    return-void
.end method

.method public onZoomBeginIRT()V
    .locals 2

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->mIsZooming:Z

    .line 141
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$500(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HtcAlbum][SceneDlnaFullscreenBase][onZoomBeginIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->onAnimationBeginIRT()V

    .line 144
    return-void
.end method

.method public onZoomEndIRT()V
    .locals 2

    .prologue
    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->mIsZooming:Z

    .line 158
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$500(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HtcAlbum][SceneDlnaFullscreenBase][onZoomEndIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;->onAnimationEndIRT()V

    .line 161
    return-void
.end method
