.class public Lcom/htc/album/UploadEditor/SceneSourceLive$FullscreenImageDownloadedHandler;
.super Ljava/lang/Object;
.source "SceneSourceLive.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/UploadEditor/SceneSourceLive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FullscreenImageDownloadedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/UploadEditor/SceneSourceLive;


# direct methods
.method protected constructor <init>(Lcom/htc/album/UploadEditor/SceneSourceLive;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLive$FullscreenImageDownloadedHandler;,"Lcom/htc/album/UploadEditor/SceneSourceLive<TVIEW;>.FullscreenImageDownloadedHandler;"
    iput-object p1, p0, Lcom/htc/album/UploadEditor/SceneSourceLive$FullscreenImageDownloadedHandler;->this$0:Lcom/htc/album/UploadEditor/SceneSourceLive;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageDownloaded(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 77
    .local p0, this:Lcom/htc/album/UploadEditor/SceneSourceLive$FullscreenImageDownloadedHandler;,"Lcom/htc/album/UploadEditor/SceneSourceLive<TVIEW;>.FullscreenImageDownloadedHandler;"
    const-string v0, "SceneSourceLive"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneSourceLive][onImageDownloaded]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLive$FullscreenImageDownloadedHandler;->this$0:Lcom/htc/album/UploadEditor/SceneSourceLive;

    #getter for: Lcom/htc/album/UploadEditor/SceneSourceLive;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v0}, Lcom/htc/album/UploadEditor/SceneSourceLive;->access$000(Lcom/htc/album/UploadEditor/SceneSourceLive;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->notifyMediaDataChange(I)V

    .line 79
    return-void
.end method
