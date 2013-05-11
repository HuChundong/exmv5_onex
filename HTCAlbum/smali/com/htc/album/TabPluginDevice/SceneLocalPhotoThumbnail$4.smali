.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$4;
.super Ljava/lang/Object;
.source "SceneLocalPhotoThumbnail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDeleteContinuousShot(Landroid/view/MenuItem;)V
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
    .line 2141
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$4;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$4;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->doDeleteContinuousShot()V
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V

    .line 2145
    return-void
.end method
