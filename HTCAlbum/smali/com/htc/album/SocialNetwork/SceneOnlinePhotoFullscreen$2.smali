.class Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$2;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoFullscreen.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onOpenSenseControlButtonClick(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1953
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$2;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    iput-object p2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$2;->val$list:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V
    .locals 7
    .parameter "dialog"
    .parameter "adapter"
    .parameter "position"

    .prologue
    .line 1956
    invoke-virtual {p2, p3}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->getName(I)Ljava/lang/String;

    move-result-object v3

    .line 1957
    .local v3, srcName:Ljava/lang/String;
    const-string v4, "SceneOnlinePhotoFullscreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SceneOnlinePhotoFullscreen][onOpenSenseControlButtonClick] srcName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1958
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 1960
    :cond_0
    const-string v4, "SceneOnlinePhotoFullscreen"

    const-string v5, "[HTCAlbum][SceneOnlinePhotoFullscreen][onOpenSenseControlButtonClick] srcName is null..."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    :cond_1
    :goto_0
    return-void

    .line 1964
    :cond_2
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$2;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1965
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1967
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$2;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/plugin/CommandBarButton;

    .line 1968
    .local v0, cBarButton:Lcom/htc/opensense/album/plugin/CommandBarButton;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1970
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$2;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;
    invoke-static {v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$3700(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v5, v6}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onCommandBarButtonSelected(Lcom/htc/opensense/album/plugin/CommandBarButton;ILjava/lang/String;)Z

    goto :goto_0

    .line 1965
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
