.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FileOperationListener$1;
.super Ljava/lang/Object;
.source "SceneLocalPhotoFullscreen.java"

# interfaces
.implements Lcom/htc/album/helper/CollectionRequeryTask$CollectionRequeryCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FileOperationListener;->onFileOperationEnd(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FileOperationListener;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FileOperationListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1948
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FileOperationListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FileOperationListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 0

    .prologue
    .line 1953
    return-void
.end method

.method public onEnd()V
    .locals 1

    .prologue
    .line 1957
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FileOperationListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FileOperationListener;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FileOperationListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->notifyDataSetChanged()V

    .line 1958
    return-void
.end method
