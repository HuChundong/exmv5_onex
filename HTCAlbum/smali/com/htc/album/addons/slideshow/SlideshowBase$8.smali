.class Lcom/htc/album/addons/slideshow/SlideshowBase$8;
.super Ljava/lang/Object;
.source "SlideshowBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/slideshow/SlideshowBase;->updateControlBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/SlideshowBase;)V
    .locals 0
    .parameter

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$8;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1013
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$8;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    iput-boolean v1, v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsControlShowing:Z

    .line 1014
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$8;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    iput-boolean v1, v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mWasControlShowing:Z

    .line 1015
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][updateControlBar]run + , mIsControlShowing =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$8;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    iget-boolean v2, v2, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsControlShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$8;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    #getter for: Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->access$100(Lcom/htc/album/addons/slideshow/SlideshowBase;)Lcom/htc/album/modules/ui/ControlBarManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$8;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    #getter for: Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->access$200(Lcom/htc/album/addons/slideshow/SlideshowBase;)Lcom/htc/album/modules/ui/ControlBarManager;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->hideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 1026
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$8;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$8;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$8;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1028
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$8;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 1030
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$8;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$8;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1032
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$8;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideShowController;->hide()V

    .line 1034
    :cond_2
    sget-object v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][updateControlBar]run - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    return-void
.end method
