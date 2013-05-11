.class Landroid/media/MediaPluginDLNA$RendererListener;
.super Landroid/media/medialinkhd/HtcDLNARendererStatusListener;
.source "MediaPluginDLNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPluginDLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RendererListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPluginDLNA;


# direct methods
.method private constructor <init>(Landroid/media/MediaPluginDLNA;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Landroid/media/MediaPluginDLNA$RendererListener;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-direct {p0}, Landroid/media/medialinkhd/HtcDLNARendererStatusListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 281
    invoke-direct {p0, p1}, Landroid/media/MediaPluginDLNA$RendererListener;-><init>(Landroid/media/MediaPluginDLNA;)V

    return-void
.end method


# virtual methods
.method public onConnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "uniqueID"
    .parameter "rendererName"

    .prologue
    .line 284
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HtcDLNARendererStatusListener::onConnected uniqueID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rendererName ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$RendererListener;->this$0:Landroid/media/MediaPluginDLNA;

    #setter for: Landroid/media/MediaPluginDLNA;->mDmrID:Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/media/MediaPluginDLNA;->access$1402(Landroid/media/MediaPluginDLNA;Ljava/lang/String;)Ljava/lang/String;

    .line 286
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$RendererListener;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->eventHandler:Landroid/media/MediaPluginDLNA$EventHandler;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$1500(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPluginDLNA$RendererListener;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->eventHandler:Landroid/media/MediaPluginDLNA$EventHandler;
    invoke-static {v1}, Landroid/media/MediaPluginDLNA;->access$1500(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA$EventHandler;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaPluginDLNA$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 287
    return-void
.end method
