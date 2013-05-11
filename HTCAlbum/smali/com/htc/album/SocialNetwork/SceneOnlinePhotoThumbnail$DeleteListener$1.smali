.class Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$1;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoThumbnail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->onDeleteEnd(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;

.field final synthetic val$adapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

.field final synthetic val$fIsDeleteAll:Z


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;Lcom/htc/album/SocialNetwork/LivePhotoAdapter;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2352
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$1;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;

    iput-object p2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$1;->val$adapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iput-boolean p3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$1;->val$fIsDeleteAll:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2356
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$1;->val$adapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    if-nez v0, :cond_0

    .line 2358
    const-string v0, "SceneOnlinePhotoThumbnail"

    const-string v1, "[HTCAlbum][SceneOnlinePhotoThumbnail][onDeleteEnd]: exit 2... "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2373
    :goto_0
    return-void

    .line 2362
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$1;->val$fIsDeleteAll:Z

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$1;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;

    #getter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->mIsCanceled:Z
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->access$1500(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2363
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$1;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    #setter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsDeleteAll:Z
    invoke-static {v0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->access$1602(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;Z)Z

    .line 2366
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$1;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setPickerMode(I)V

    .line 2367
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$1;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;

    #getter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->mIsDeleteStart:Z
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->access$1700(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;)Z

    move-result v0

    if-ne v2, v0, :cond_2

    .line 2369
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$1;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    iput-boolean v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mTriggerDeleteAnim:Z

    .line 2370
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$1;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    #calls: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onRefresh(Z)V
    invoke-static {v0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->access$1800(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;Z)V

    .line 2372
    :cond_2
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$1;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->access$1900(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    goto :goto_0
.end method
