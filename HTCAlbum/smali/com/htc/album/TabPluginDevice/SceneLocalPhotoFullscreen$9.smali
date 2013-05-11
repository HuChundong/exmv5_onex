.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;
.super Ljava/lang/Object;
.source "SceneLocalPhotoFullscreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onEnterImageIHT(II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$index:I

.field final synthetic val$shouldSetIndex:Z


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Landroid/app/Activity;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2843
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->val$activity:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->val$shouldSetIndex:Z

    iput p4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->val$index:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2846
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mEnablePaintView:Z
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnablePaintView()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2878
    :cond_0
    :goto_0
    return-void

    .line 2849
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/PaintManager/HtcPaintManager;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2850
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    new-instance v2, Lcom/htc/album/PaintManager/HtcPaintManager;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/htc/album/PaintManager/HtcPaintManager;-><init>(Landroid/app/Activity;)V

    #setter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;
    invoke-static {v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3802(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/PaintManager/HtcPaintManager;)Lcom/htc/album/PaintManager/HtcPaintManager;

    .line 2851
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2852
    .local v0, viewGroup:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/PaintManager/HtcPaintManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/HtcPaintManager;->getPaintLayout()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2854
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/PaintManager/HtcPaintManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setPaintManager(Lcom/htc/album/PaintManager/HtcPaintManager;)V

    .line 2857
    .end local v0           #viewGroup:Landroid/view/ViewGroup;
    :cond_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsPaintInitialized:Z
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$4000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2859
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/PaintManager/HtcPaintManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/HtcPaintManager;->onCreate()V

    .line 2860
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/PaintManager/HtcPaintManager;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$4100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2, v1}, Lcom/htc/album/PaintManager/HtcPaintManager;->bindList(Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;)V

    .line 2861
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/PaintManager/HtcPaintManager;

    move-result-object v1

    new-instance v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$PaintUpdateListener;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-direct {v2, v3, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$PaintUpdateListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    invoke-virtual {v1, v2}, Lcom/htc/album/PaintManager/HtcPaintManager;->setPaintUpdateListener(Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;)V

    .line 2862
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/PaintManager/HtcPaintManager;

    move-result-object v1

    new-instance v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$PaintDrawListener;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-direct {v2, v3, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$PaintDrawListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    invoke-virtual {v1, v2}, Lcom/htc/album/PaintManager/HtcPaintManager;->setPaintDrawListener(Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;)V

    .line 2863
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/PaintManager/HtcPaintManager;

    move-result-object v1

    new-instance v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$PenMenuActionNotifier;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-direct {v2, v3, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$PenMenuActionNotifier;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    invoke-virtual {v1, v2}, Lcom/htc/album/PaintManager/HtcPaintManager;->setPenMenuActionNotify(Lcom/htc/album/PaintManager/Interface/IPenMenuActionNotify;)V

    .line 2864
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsAnimateDispatcherSetListener:Z
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$4500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2865
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$4600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    move-result-object v1

    new-instance v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageAnimationListener;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-direct {v2, v3, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageAnimationListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    invoke-virtual {v1, v2}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->setListener(Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;)V

    .line 2867
    :cond_3
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->val$activity:Landroid/app/Activity;

    invoke-static {v1, v4, v5}, Lcom/htc/album/PaintManager/HtcPaintManager;->disableSketcher(Landroid/app/Activity;Landroid/view/Window;Z)V

    .line 2868
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/PaintManager/HtcPaintManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v5}, Lcom/htc/album/PaintManager/HtcPaintManager;->enablePaintView(Landroid/app/Activity;Z)V

    .line 2869
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPaintControl:Lcom/htc/album/PaintManager/HtcPaintManager;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/PaintManager/HtcPaintManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v5}, Lcom/htc/album/PaintManager/HtcPaintManager;->enablePenMenu(Landroid/app/Activity;Z)V

    .line 2870
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #setter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsPaintInitialized:Z
    invoke-static {v1, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$4002(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)Z

    .line 2873
    :cond_4
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->val$shouldSetIndex:Z

    if-eqz v1, :cond_0

    .line 2875
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$4600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->val$index:I

    invoke-virtual {v1, v2}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->setIndex(I)V

    .line 2876
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    iget v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;->val$index:I

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onEnterImage(I)V

    goto/16 :goto_0
.end method
