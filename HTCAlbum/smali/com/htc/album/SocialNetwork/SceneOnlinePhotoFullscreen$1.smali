.class Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$1;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoFullscreen.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->showShareDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1864
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$1;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V
    .locals 1
    .parameter "dialog"
    .parameter "adapter"
    .parameter "position"

    .prologue
    .line 1867
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$1;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #calls: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onShare(I)V
    invoke-static {v0, p3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$3600(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;I)V

    .line 1868
    return-void
.end method
