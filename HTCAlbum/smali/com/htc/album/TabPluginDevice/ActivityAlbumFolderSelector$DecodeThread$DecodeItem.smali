.class Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread$DecodeItem;
.super Ljava/lang/Object;
.source "ActivityAlbumFolderSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeItem"
.end annotation


# instance fields
.field collection:Lcom/htc/album/TabPluginDevice/AlbumCollection;

.field position:I

.field final synthetic this$1:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;ILcom/htc/album/TabPluginDevice/AlbumCollection;)V
    .locals 0
    .parameter
    .parameter "position"
    .parameter "collection"

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread$DecodeItem;->this$1:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1057
    iput p2, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread$DecodeItem;->position:I

    .line 1058
    iput-object p3, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread$DecodeItem;->collection:Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 1059
    return-void
.end method
