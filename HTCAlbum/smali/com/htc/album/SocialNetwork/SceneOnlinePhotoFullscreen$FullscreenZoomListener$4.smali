.class Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$4;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoFullscreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->onImageBoundsUpdateIRT(IIIIIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$4;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1083
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$4;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$4;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$1700(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunnyCore/view/SView;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    #calls: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->isPhotoFullSize(I)Z
    invoke-static {v1, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$1800(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$4;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$1900(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunnyCore/view/SView;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$4;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    invoke-virtual {v0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleTag(Z)V

    .line 1086
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$4;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #calls: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleCaption(Z)V
    invoke-static {v0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$2000(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Z)V

    .line 1097
    :cond_0
    return-void
.end method
