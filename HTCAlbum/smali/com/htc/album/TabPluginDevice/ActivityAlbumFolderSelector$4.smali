.class Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$4;
.super Ljava/lang/Object;
.source "ActivityAlbumFolderSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->onCreate(Landroid/os/Bundle;)V
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
    .line 214
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$4;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$4;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #calls: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->onConfirm()V
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$700(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)V

    .line 217
    return-void
.end method
