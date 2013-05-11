.class Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto$1;
.super Ljava/lang/Object;
.source "AdapterLocalPhoto.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->onPartialListBuilt(Lcom/htc/opensense2/album/util/ImageManager$IImageList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto$1;->this$0:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto$1;->this$0:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mNotifyPartialLoadBuilt:Z
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->access$002(Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)Z

    .line 278
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto$1;->this$0:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->notifyDataSetChanged()V

    .line 279
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto$1;->this$0:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mNotifyPartialLoadBuilt:Z
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->access$002(Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)Z

    .line 280
    return-void
.end method
