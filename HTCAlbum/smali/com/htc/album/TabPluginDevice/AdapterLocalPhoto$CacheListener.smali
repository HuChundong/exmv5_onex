.class Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto$CacheListener;
.super Ljava/lang/Object;
.source "AdapterLocalPhoto.java"

# interfaces
.implements Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto$CacheListener;->this$0:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto$CacheListener;-><init>(Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;)V

    return-void
.end method


# virtual methods
.method public onInkCacheReady(Lcom/htc/opensense2/album/cache/InkCacheTask;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 313
    if-nez p1, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    const/16 v0, 0x66

    invoke-virtual {p1}, Lcom/htc/opensense2/album/cache/InkCacheTask;->getCacheSet()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 319
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto$CacheListener;->this$0:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {p1}, Lcom/htc/opensense2/album/cache/InkCacheTask;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/htc/opensense2/album/cache/InkCacheTask;->getStrokeData()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->onUpdateInkData(I[B)V

    goto :goto_0

    .line 321
    :cond_2
    const/16 v0, 0x65

    invoke-virtual {p1}, Lcom/htc/opensense2/album/cache/InkCacheTask;->getCacheSet()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto$CacheListener;->this$0:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {p1}, Lcom/htc/opensense2/album/cache/InkCacheTask;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/htc/opensense2/album/cache/InkCacheTask;->getCacheBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->onUpdateInkPaint(ILandroid/graphics/Bitmap;)V

    goto :goto_0
.end method
