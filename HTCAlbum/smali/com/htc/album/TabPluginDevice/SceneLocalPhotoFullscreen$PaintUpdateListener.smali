.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$PaintUpdateListener;
.super Ljava/lang/Object;
.source "SceneLocalPhotoFullscreen.java"

# interfaces
.implements Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PaintUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 4474
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$PaintUpdateListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4474
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$PaintUpdateListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .locals 0

    .prologue
    .line 4480
    return-void
.end method

.method public onUpdatePaint(I)V
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 4489
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$PaintUpdateListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPaintDataReady(I)V

    .line 4490
    return-void
.end method

.method public onUpdateStroke(I)V
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 4485
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$PaintUpdateListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onStrokeDataReady(I)V

    .line 4486
    return-void
.end method
