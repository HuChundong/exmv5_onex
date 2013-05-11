.class Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$5;
.super Landroid/os/Handler;
.source "ActivityAlbumFolderSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)V
    .locals 0
    .parameter

    .prologue
    .line 1461
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$5;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$5;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->onMessageHandler(Landroid/os/Message;)V

    .line 1466
    return-void
.end method
