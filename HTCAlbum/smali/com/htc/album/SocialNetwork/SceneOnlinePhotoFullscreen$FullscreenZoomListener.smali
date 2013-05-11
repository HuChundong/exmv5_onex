.class public Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoFullscreen.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
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

.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;


# direct methods
.method protected constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 890
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 892
    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mIsZooming:Z

    .line 893
    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mIsPanning:Z

    .line 894
    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mIsAligning:Z

    .line 895
    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mIsFlinging:Z

    .line 897
    iput v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mItemIndex:I

    .line 898
    iput v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mLeft:I

    .line 899
    iput v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mTop:I

    .line 900
    iput v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mWidth:I

    .line 901
    iput v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mHeight:I

    .line 902
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mZoomFactor:F

    .line 904
    iput v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mIndex:I

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 890
    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mIndex:I

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 890
    iput p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mIndex:I

    return p1
.end method


# virtual methods
.method public onAlignBeginIRT()V
    .locals 2

    .prologue
    .line 1036
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mIsAligning:Z

    .line 1039
    const-string v0, "SceneOnlinePhotoFullscreen"

    const-string v1, "[HtcAlbum][FullscreenZoomListener][onAlignBeginIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->onAnimationBeginIRT()V

    .line 1042
    return-void
.end method

.method public onAlignEndIRT()V
    .locals 2

    .prologue
    .line 1045
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mIsAligning:Z

    .line 1048
    const-string v0, "SceneOnlinePhotoFullscreen"

    const-string v1, "[HtcAlbum][FullscreenZoomListener][onAlignEndIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->onAnimationEndIRT()V

    .line 1051
    return-void
.end method

.method public onAnimationBeginIRT()V
    .locals 2

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$2200(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$2300(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1144
    :cond_0
    :goto_0
    return-void

    .line 1129
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$2400(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$5;

    invoke-direct {v1, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$5;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onAnimationEndIRT()V
    .locals 2

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$2500(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$2600(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1163
    :cond_0
    :goto_0
    return-void

    .line 1152
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$2700(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$6;

    invoke-direct {v1, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$6;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onEnterImageIRT(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 915
    const-string v1, "SceneOnlinePhotoFullscreen"

    const-string v2, "[HtcAlbum][SceneOnlinePhotoFullscreen][onEnterImageIRT] + "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    move v0, p1

    .line 918
    .local v0, nIndex:I
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$800(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$900(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 934
    :cond_0
    :goto_0
    return-void

    .line 922
    :cond_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$1100(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$1;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 929
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    iget-object v1, v1, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    iget-object v1, v1, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    instance-of v1, v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    if-eqz v1, :cond_2

    .line 931
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    iget-object v1, v1, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->resetStopHQDecodeSincePurge()V

    .line 933
    :cond_2
    const-string v1, "SceneOnlinePhotoFullscreen"

    const-string v2, "[HtcAlbum][SceneOnlinePhotoFullscreen][onEnterImageIRT] - "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFlingBeginIRT()V
    .locals 2

    .prologue
    .line 1105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mIsFlinging:Z

    .line 1108
    const-string v0, "SceneOnlinePhotoFullscreen"

    const-string v1, "[HtcAlbum][FullscreenZoomListener][onFlingBeginIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->onAnimationBeginIRT()V

    .line 1111
    return-void
.end method

.method public onFlingEndIRT()V
    .locals 2

    .prologue
    .line 1115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mIsFlinging:Z

    .line 1118
    const-string v0, "SceneOnlinePhotoFullscreen"

    const-string v1, "[HtcAlbum][FullscreenZoomListener][onFlingEndIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->onAnimationEndIRT()V

    .line 1121
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
    .line 1061
    const-string v0, "SceneOnlinePhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneOnlinePhotoFullscreen][FullscreenZoomListener][onImageBoundsUpdateIRT] + "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    iget-boolean v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOrientationHasChanged:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mItemIndex:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mLeft:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mTop:I

    if-ne v0, p3, :cond_1

    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mWidth:I

    if-ne v0, p4, :cond_1

    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mHeight:I

    if-ne v0, p5, :cond_1

    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mZoomFactor:F

    cmpl-float v0, v0, p6

    if-nez v0, :cond_1

    .line 1064
    const-string v0, "SceneOnlinePhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneOnlinePhotoFullscreen][FullscreenZoomListener][onImageBoundsUpdateIRT] - returned "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    :cond_0
    :goto_0
    return-void

    .line 1067
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOrientationHasChanged:Z

    .line 1068
    iput p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mItemIndex:I

    .line 1069
    iput p2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mLeft:I

    .line 1070
    iput p3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mTop:I

    .line 1071
    iput p4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mWidth:I

    .line 1072
    iput p5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mHeight:I

    .line 1073
    iput p6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mZoomFactor:F

    .line 1075
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$1500(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$1600(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$2100(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$4;

    invoke-direct {v1, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$4;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1099
    const-string v0, "SceneOnlinePhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneOnlinePhotoFullscreen][FullscreenZoomListener][onImageBoundsUpdateIRT] - "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLeaveImageIRT()V
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #calls: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideControlBars()V
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$1200(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V

    .line 946
    return-void
.end method

.method public onPanBeginIRT()V
    .locals 2

    .prologue
    .line 1009
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mIsPanning:Z

    .line 1012
    const-string v0, "SceneOnlinePhotoFullscreen"

    const-string v1, "[HtcAlbum][FullscreenZoomListener][onPanBeginIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->onAnimationBeginIRT()V

    .line 1015
    return-void
.end method

.method public onPanEndIRT()V
    .locals 2

    .prologue
    .line 1026
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mIsPanning:Z

    .line 1029
    const-string v0, "SceneOnlinePhotoFullscreen"

    const-string v1, "[HtcAlbum][FullscreenZoomListener][onPanEndIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->onAnimationEndIRT()V

    .line 1032
    return-void
.end method

.method public onZoomBeginIRT()V
    .locals 2

    .prologue
    .line 957
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #calls: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideControlBars()V
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$1300(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V

    .line 959
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mIsZooming:Z

    .line 962
    const-string v0, "SceneOnlinePhotoFullscreen"

    const-string v1, "[HtcAlbum][FullscreenZoomListener][onZoomBeginIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->onAnimationBeginIRT()V

    .line 966
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$2;

    invoke-direct {v1, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$2;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 974
    return-void
.end method

.method public onZoomEndIRT()V
    .locals 2

    .prologue
    .line 985
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mIsZooming:Z

    .line 988
    const-string v0, "SceneOnlinePhotoFullscreen"

    const-string v1, "[HtcAlbum][FullscreenZoomListener][onZoomEndIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->onAnimationEndIRT()V

    .line 991
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$3;

    invoke-direct {v1, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$3;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 998
    return-void
.end method
