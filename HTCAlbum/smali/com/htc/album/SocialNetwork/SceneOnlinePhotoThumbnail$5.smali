.class Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$5;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoThumbnail.java"

# interfaces
.implements Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onSyncList(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)V
    .locals 0
    .parameter

    .prologue
    .line 1808
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$5;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1815
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$5;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    #setter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCurrentPickerMode:I
    invoke-static {v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->access$1202(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;I)I

    .line 1816
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$5;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setPickerMode(I)V

    .line 1817
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$5;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    iput-boolean v1, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mIsDeleteAnimation:Z

    .line 1818
    const-string v0, "SceneOnlinePhotoThumbnail"

    const-string v1, "[HTCAlbum][SceneOnlinePhotoThumbnail][onSyncList]: onAnimationEnd..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .prologue
    .line 1811
    const-string v0, "SceneOnlinePhotoThumbnail"

    const-string v1, "[HTCAlbum][SceneOnlinePhotoThumbnail][onSyncList]: onAnimationStart..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    return-void
.end method
