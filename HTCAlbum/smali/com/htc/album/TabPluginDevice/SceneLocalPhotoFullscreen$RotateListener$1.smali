.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener$1;
.super Ljava/lang/Object;
.source "SceneLocalPhotoFullscreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;->onRotateFinish(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;

.field final synthetic val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

.field final synthetic val$rotated_pos:I


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4043
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;

    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener$1;->val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iput p3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener$1;->val$rotated_pos:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4047
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$9300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$9400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4058
    :cond_0
    :goto_0
    return-void

    .line 4050
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$9500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4053
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$9600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunnyCore/view/SView;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 4055
    .local v0, pos:I
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener$1;->val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->notifyDataChangedAt(I)V

    .line 4057
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    iget v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener$1;->val$rotated_pos:I

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onImageRotated(I)V

    goto :goto_0
.end method
