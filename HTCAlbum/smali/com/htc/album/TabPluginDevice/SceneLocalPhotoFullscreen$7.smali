.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$7;
.super Ljava/lang/Object;
.source "SceneLocalPhotoFullscreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onDeleteContinuousShot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 2473
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$7;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2476
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$7;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->doDeleteContinuousShot()V
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    .line 2477
    return-void
.end method
