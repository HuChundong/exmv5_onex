.class Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$3;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoFullscreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->onZoomEndIRT()V
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
    .line 992
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$3;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 995
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$3;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onToggleTag(Z)V

    .line 996
    return-void
.end method
