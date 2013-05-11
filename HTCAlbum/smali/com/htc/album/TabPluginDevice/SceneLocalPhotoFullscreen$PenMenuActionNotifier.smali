.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$PenMenuActionNotifier;
.super Ljava/lang/Object;
.source "SceneLocalPhotoFullscreen.java"

# interfaces
.implements Lcom/htc/album/PaintManager/Interface/IPenMenuActionNotify;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PenMenuActionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 4492
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$PenMenuActionNotifier;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4492
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$PenMenuActionNotifier;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    return-void
.end method


# virtual methods
.method public onClearAll(I)V
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 4498
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$PenMenuActionNotifier;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onUpdatePaintTextLayer(I)V

    .line 4499
    return-void
.end method

.method public onReDo(I)V
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 4510
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$PenMenuActionNotifier;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onUpdatePaintTextLayer(I)V

    .line 4511
    return-void
.end method

.method public onUnDo(I)V
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 4504
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$PenMenuActionNotifier;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onUpdatePaintTextLayer(I)V

    .line 4505
    return-void
.end method
