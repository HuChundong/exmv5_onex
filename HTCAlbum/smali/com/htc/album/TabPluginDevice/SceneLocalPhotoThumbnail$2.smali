.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$2;
.super Ljava/lang/Object;
.source "SceneLocalPhotoThumbnail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onBindAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V
    .locals 0
    .parameter

    .prologue
    .line 656
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$2;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$2;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->invalidateControlBarsWithoutThreadCheck()V
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V

    .line 660
    return-void
.end method
