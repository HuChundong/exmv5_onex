.class Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$GridImageDownloadedHandler;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoThumbnail.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridImageDownloadedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;


# direct methods
.method private constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$GridImageDownloadedHandler;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$GridImageDownloadedHandler;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)V

    return-void
.end method


# virtual methods
.method public onImageDownloaded(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$GridImageDownloadedHandler;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->access$600(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunnyCore/view/SView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$GridImageDownloadedHandler;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->access$700(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunnyCore/view/SView;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyPreparatorMediaDataChange(II)V

    .line 215
    :cond_0
    return-void
.end method
