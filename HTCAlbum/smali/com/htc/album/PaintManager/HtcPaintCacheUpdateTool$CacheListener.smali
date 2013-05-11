.class Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool$CacheListener;
.super Ljava/lang/Object;
.source "HtcPaintCacheUpdateTool.java"

# interfaces
.implements Lcom/htc/opensense2/album/cache/InkCacheManager$InkCacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;


# direct methods
.method private constructor <init>(Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool$CacheListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool$CacheListener;-><init>(Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;)V

    return-void
.end method


# virtual methods
.method public onInkCacheReady(Lcom/htc/opensense2/album/cache/InkCacheTask;)V
    .locals 7
    .parameter "task"

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 109
    if-nez p1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    const/16 v0, 0x65

    invoke-virtual {p1}, Lcom/htc/opensense2/album/cache/InkCacheTask;->getCacheSet()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 114
    const-string v0, "HtcPaintCacheUpdateTool"

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "[HTCAlbum][HtcPaintCacheUpdateTool][onInkCacheReady]: "

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/htc/opensense2/album/cache/InkCacheTask;->getPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, " : "

    aput-object v2, v1, v5

    const-string v2, "CACHE_SET_INK_PNG"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool$CacheListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;

    invoke-virtual {p1}, Lcom/htc/opensense2/album/cache/InkCacheTask;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/htc/opensense2/album/cache/InkCacheTask;->getCacheBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->onUpdateCachedPaint(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 117
    :cond_2
    const/16 v0, 0x66

    invoke-virtual {p1}, Lcom/htc/opensense2/album/cache/InkCacheTask;->getCacheSet()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 119
    const-string v0, "HtcPaintCacheUpdateTool"

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "[HTCAlbum][HtcPaintCacheUpdateTool][onInkCacheReady]: "

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/htc/opensense2/album/cache/InkCacheTask;->getPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, " : "

    aput-object v2, v1, v5

    const-string v2, "CACHE_SET_INK_STROKE"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool$CacheListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;

    invoke-virtual {p1}, Lcom/htc/opensense2/album/cache/InkCacheTask;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/htc/opensense2/album/cache/InkCacheTask;->getStrokeData()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->onUpdateInkData(I[B)V

    goto :goto_0
.end method
