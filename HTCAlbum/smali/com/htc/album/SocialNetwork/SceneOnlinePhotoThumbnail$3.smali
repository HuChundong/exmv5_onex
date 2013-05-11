.class Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$3;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoThumbnail.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->showShareDialog()V
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
    .line 910
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$3;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

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
    .line 913
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$3;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    #calls: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onShare(I)V
    invoke-static {v0, p3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->access$900(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;I)V

    .line 914
    return-void
.end method
