.class public Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoFullscreen.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FullscreenImageDownloadedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;


# direct methods
.method protected constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1441
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageDownloaded(I)V
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    .line 1445
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/sunny2/scene/GalleryBaseScene;->mIsBound:Z
    invoke-static {v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$3200(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1457
    :goto_0
    return-void

    .line 1447
    :cond_0
    const/4 v0, 0x0

    .line 1448
    .local v0, bIsFullSize:Z
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;
    invoke-static {v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$3300(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunnyCore/view/SView;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    #calls: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->isPhotoFullSize(I)Z
    invoke-static {v2, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$1800(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;I)Z

    move-result v0

    if-ne v4, v0, :cond_1

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;
    invoke-static {v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$3400(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunnyCore/view/SView;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1450
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleTag(Z)V

    .line 1453
    :cond_1
    const-string v1, "SceneOnlinePhotoFullscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneOnlinePhotoFullscreen][onImageDownloaded]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenImageDownloadedHandler;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;
    invoke-static {v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$3500(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunnyCore/view/SView;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1, p1, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onMediaItemRefreshIHT(II)V

    goto :goto_0
.end method
