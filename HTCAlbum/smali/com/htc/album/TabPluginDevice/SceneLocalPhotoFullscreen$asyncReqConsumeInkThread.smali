.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$asyncReqConsumeInkThread;
.super Landroid/os/AsyncTask;
.source "SceneLocalPhotoFullscreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "asyncReqConsumeInkThread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 4514
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$asyncReqConsumeInkThread;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4514
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$asyncReqConsumeInkThread;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .parameter "arg0"

    .prologue
    .line 4523
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HTCAlbum][SceneLocalPhotoFullScreen][asyncReqConsumeInkThread]: doInBackground "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4524
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$asyncReqConsumeInkThread;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$10000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$asyncReqConsumeInkThread;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$9900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunnyCore/view/SView;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->notifyDataChangedAt(I)V

    .line 4525
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$asyncReqConsumeInkThread;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$10100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->releaseInkCacheManager()V

    .line 4526
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HTCAlbum][SceneLocalPhotoFullScreen][asyncReqConsumeInkThread]: doInBackground end "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4527
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4514
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$asyncReqConsumeInkThread;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 4531
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$asyncReqConsumeInkThread;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    const/16 v1, 0x2731

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    .line 4532
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4538
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$asyncReqConsumeInkThread;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPostBack()V

    .line 4541
    :goto_0
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HTCAlbum][SceneLocalPhotoFullScreen][asyncReqConsumeInkThread]: onPostExecute "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4542
    return-void

    .line 4534
    :pswitch_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$asyncReqConsumeInkThread;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPostBackPressed()V

    goto :goto_0

    .line 4532
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 4514
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$asyncReqConsumeInkThread;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 4518
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HTCAlbum][SceneLocalPhotoFullScreen][asyncReqConsumeInkThread]: onPreExecute "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4519
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$asyncReqConsumeInkThread;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    const/16 v1, 0x2730

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    .line 4520
    return-void
.end method
