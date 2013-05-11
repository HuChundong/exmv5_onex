.class Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;
.super Ljava/lang/Object;
.source "SceneDlnaFullscreenBase.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)V
    .locals 0
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 508
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/sunnyCore/view/SView;I)V
    .locals 7
    .parameter "parent"
    .parameter "position"

    .prologue
    .line 521
    const/4 v3, 0x0

    .line 522
    .local v3, posX:I
    const/4 v4, 0x0

    .line 524
    .local v4, posY:I
    check-cast p1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getItemClickInfo()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    move-result-object v5

    iget-object v1, v5, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->motionEvent:Landroid/view/MotionEvent;

    .line 525
    .local v1, me:Landroid/view/MotionEvent;
    if-eqz v1, :cond_0

    .line 527
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 528
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 531
    :cond_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #calls: Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->isHitIndicator(II)Z
    invoke-static {v5, v3, v4}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$2400(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;II)Z

    move-result v0

    .line 533
    .local v0, bIndicatorClicked:Z
    move v2, p2

    .line 534
    .local v2, nIndex:I
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v5}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$2500(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v5}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$2600(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 536
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v5}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->access$2700(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener$1;

    invoke-direct {v6, p0, v2}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener$1;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;I)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 546
    :cond_1
    return-void
.end method
