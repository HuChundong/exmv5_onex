.class public Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$filmstripViewScrollChangeListener;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoFullscreen.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullFilmView$OnFilmstripViewScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "filmstripViewScrollChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;


# direct methods
.method protected constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1179
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$filmstripViewScrollChangeListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilmstripViewScrollStarts()V
    .locals 4

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$filmstripViewScrollChangeListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    const/16 v1, 0x4f4f

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    .line 1188
    return-void
.end method

.method public onFilmstripViewScrollStops()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1195
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$filmstripViewScrollChangeListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    const/16 v1, 0x4f4f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    .line 1196
    return-void
.end method
