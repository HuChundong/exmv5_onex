.class Lcom/htc/sunny2/scene/GalleryBaseScene$1;
.super Ljava/lang/Object;
.source "GalleryBaseScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/scene/GalleryBaseScene;->onDestroyAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/scene/GalleryBaseScene;

.field final synthetic val$leaveAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

.field final synthetic val$leaveView:Lcom/htc/sunnyCore/view/SView;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/scene/GalleryBaseScene;Lcom/htc/sunnyCore/view/SView;Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene$1;,"Lcom/htc/sunny2/scene/GalleryBaseScene.1;"
    iput-object p1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene$1;->this$0:Lcom/htc/sunny2/scene/GalleryBaseScene;

    iput-object p2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene$1;->val$leaveView:Lcom/htc/sunnyCore/view/SView;

    iput-object p3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene$1;->val$leaveAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 177
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene$1;,"Lcom/htc/sunny2/scene/GalleryBaseScene.1;"
    const-string v0, "GalleryBaseScene"

    const-string v1, "[HTCAlbum][GalleryBaseScene][onDestroyAdapter]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene$1;->val$leaveView:Lcom/htc/sunnyCore/view/SView;

    instance-of v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene$1;->val$leaveView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->checkSetMediaListComplete_block()V

    .line 185
    :cond_0
    :goto_0
    const-string v0, "GalleryBaseScene"

    const-string v1, "[HTCAlbum][GalleryBaseScene][onDestroyAdapter]: onUnloadData"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene$1;->val$leaveAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene$1;->val$leaveAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onUnloadData()V

    .line 189
    :cond_1
    return-void

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene$1;->val$leaveView:Lcom/htc/sunnyCore/view/SView;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene$1;->val$leaveView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->checkSetMediaListComplete_block()V

    goto :goto_0
.end method
