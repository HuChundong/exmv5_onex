.class Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoFullscreen.java"

# interfaces
.implements Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteListener"
.end annotation


# instance fields
.field private mIsCanceled:Z

.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;


# direct methods
.method private constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V
    .locals 1
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;->mIsCanceled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;->mIsCanceled:Z

    return v0
.end method


# virtual methods
.method public onDeleteCancel()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;->mIsCanceled:Z

    .line 184
    return-void
.end method

.method public onDeleteEnd(Z)V
    .locals 5
    .parameter "isDeleteAll"

    .prologue
    .line 147
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$100(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 148
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 149
    const-string v3, "SceneOnlinePhotoFullscreen"

    const-string v4, "Activity is null"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$200(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v1

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    .line 153
    .local v1, adapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;
    move v2, p1

    .line 154
    .local v2, fIsDeleteAll:Z
    new-instance v3, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener$1;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;Lcom/htc/album/SocialNetwork/LivePhotoAdapter;Z)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onDeleteStart()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public onDismissDeleteAll()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method
