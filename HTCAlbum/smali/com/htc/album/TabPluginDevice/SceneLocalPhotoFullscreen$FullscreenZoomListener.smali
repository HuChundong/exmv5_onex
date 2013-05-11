.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;
.super Ljava/lang/Object;
.source "SceneLocalPhotoFullscreen.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;
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

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 3006
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3008
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mIsZooming:Z

    .line 3009
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mIsPanning:Z

    .line 3010
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mIsAligning:Z

    .line 3011
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mIsFlinging:Z

    .line 3013
    iput v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mItemIndex:I

    .line 3014
    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mLeft:I

    .line 3015
    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mTop:I

    .line 3016
    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mWidth:I

    .line 3017
    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mHeight:I

    .line 3018
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mZoomFactor:F

    .line 3020
    iput v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3006
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3006
    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mIndex:I

    return v0
.end method

.method static synthetic access$4902(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3006
    iput p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mIndex:I

    return p1
.end method


# virtual methods
.method public onAlignBeginIRT()V
    .locals 1

    .prologue
    .line 3172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mIsAligning:Z

    .line 3176
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->onAnimationBeginIRT()V

    .line 3178
    return-void
.end method

.method public onAlignEndIRT()V
    .locals 1

    .prologue
    .line 3182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mIsAligning:Z

    .line 3186
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->onAnimationEndIRT()V

    .line 3188
    return-void
.end method

.method public onAnimationBeginIRT()V
    .locals 2

    .prologue
    .line 3259
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$6800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$6900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3278
    :cond_0
    :goto_0
    return-void

    .line 3263
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$7000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener$5;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener$5;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onAnimationEndIRT()V
    .locals 2

    .prologue
    .line 3282
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$7100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$7200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3297
    :cond_0
    :goto_0
    return-void

    .line 3286
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$7300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener$6;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener$6;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onEnterImageIRT(I)V
    .locals 5
    .parameter "itemIndex"

    .prologue
    .line 3037
    move v0, p1

    .line 3038
    .local v0, nIndex:I
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$4700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$4800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3058
    :cond_0
    :goto_0
    return-void

    .line 3042
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$5000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3049
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$5100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$5100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    if-eqz v1, :cond_2

    .line 3051
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$5100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->resetStopHQDecodeSincePurge()V

    .line 3053
    :cond_2
    sget-boolean v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->IS_FULLHD_OR_HIGHER:Z

    if-eqz v1, :cond_0

    .line 3055
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    const/16 v2, 0x4e4d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onFlingBeginIRT()V
    .locals 2

    .prologue
    .line 3239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mIsFlinging:Z

    .line 3242
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][FullscreenZoomListener][onFlingBeginIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3243
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->onAnimationBeginIRT()V

    .line 3245
    return-void
.end method

.method public onFlingEndIRT()V
    .locals 2

    .prologue
    .line 3249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mIsFlinging:Z

    .line 3252
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][FullscreenZoomListener][onFlingEndIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3253
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->onAnimationEndIRT()V

    .line 3255
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
    .line 3200
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOrientationHasChanged:Z
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$6400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mItemIndex:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mLeft:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mTop:I

    if-ne v0, p3, :cond_1

    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mWidth:I

    if-ne v0, p4, :cond_1

    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mHeight:I

    if-ne v0, p5, :cond_1

    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mZoomFactor:F

    cmpl-float v0, v0, p6

    if-nez v0, :cond_1

    .line 3205
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullScreen][FullscreenZoomListener][onImageBoundsUpdateIRT] - returned "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3235
    :cond_0
    :goto_0
    return-void

    .line 3208
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    const/4 v1, 0x0

    #setter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOrientationHasChanged:Z
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$6402(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)Z

    .line 3209
    iput p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mItemIndex:I

    .line 3210
    iput p2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mLeft:I

    .line 3211
    iput p3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mTop:I

    .line 3212
    iput p4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mWidth:I

    .line 3213
    iput p5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mHeight:I

    .line 3214
    iput p6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mZoomFactor:F

    .line 3216
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$6500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$6600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3220
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$6700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener$4;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener$4;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onLeaveImageIRT()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3069
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #setter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmDecoded:Z
    invoke-static {v0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$5202(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)Z

    .line 3071
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$5300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$5400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3087
    :cond_0
    :goto_0
    return-void

    .line 3076
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$5700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener$2;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener$2;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3085
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    const/4 v1, 0x1

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmFileNameBar(ZZ)V
    invoke-static {v0, v2, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$5800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;ZZ)V

    .line 3086
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showContinuousShotIndicator(Z)V
    invoke-static {v0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$5900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)V

    goto :goto_0
.end method

.method public onPanBeginIRT()V
    .locals 2

    .prologue
    .line 3145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mIsPanning:Z

    .line 3148
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][FullscreenZoomListener][onPanBeginIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3149
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->onAnimationBeginIRT()V

    .line 3151
    return-void
.end method

.method public onPanEndIRT()V
    .locals 2

    .prologue
    .line 3162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mIsPanning:Z

    .line 3165
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][FullscreenZoomListener][onPanEndIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3166
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->onAnimationEndIRT()V

    .line 3168
    return-void
.end method

.method public onZoomBeginIRT()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3098
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showContinuousShotIndicator(Z)V
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$5900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)V

    .line 3099
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setEnableControlBarAnimation(Z)V
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$6000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)V

    .line 3100
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->hideControlBars()V
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$6100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    .line 3101
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener$3;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener$3;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3109
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$6200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunnyCore/view/SView;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->hideDRMIndicator()V

    .line 3110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mIsZooming:Z

    .line 3113
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][FullscreenZoomListener][onZoomBeginIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3114
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->onAnimationBeginIRT()V

    .line 3116
    return-void
.end method

.method public onZoomEndIRT()V
    .locals 2

    .prologue
    .line 3127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mIsZooming:Z

    .line 3130
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][FullscreenZoomListener][onZoomEndIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3131
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->onAnimationEndIRT()V

    .line 3133
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    const/4 v1, 0x1

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setEnableControlBarAnimation(Z)V
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$6300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)V

    .line 3134
    return-void
.end method

.method public resetCurrentIndex()V
    .locals 1

    .prologue
    .line 3023
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;->mIndex:I

    .line 3024
    return-void
.end method
