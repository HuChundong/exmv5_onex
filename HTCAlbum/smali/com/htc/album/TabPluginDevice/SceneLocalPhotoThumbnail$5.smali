.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5;
.super Lcom/htc/sunnyCore/RenderThreadEvent;
.source "SceneLocalPhotoThumbnail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onNotifyUpdateComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2425
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 2433
    return-void
.end method

.method public onProcessEventIRT()V
    .locals 1

    .prologue
    .line 2429
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onProcessRenderEventIRT()V
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$1000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V

    .line 2430
    return-void
.end method
