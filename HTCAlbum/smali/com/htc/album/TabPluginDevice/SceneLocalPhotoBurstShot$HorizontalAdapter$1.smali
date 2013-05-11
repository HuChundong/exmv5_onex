.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter$1;
.super Ljava/lang/Object;
.source "SceneLocalPhotoBurstShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->onTaskEnd(Landroid/os/Bundle;Lcom/htc/sunnyCore/common/IterationTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

.field final synthetic val$oriTask:Lcom/htc/sunny2/common/IterationDecodeTask;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;Lcom/htc/sunny2/common/IterationDecodeTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3253
    .local p0, this:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter$1;,"Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter.1;"
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter$1;->val$oriTask:Lcom/htc/sunny2/common/IterationDecodeTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 3256
    .local p0, this:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter$1;,"Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter.1;"
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter$1;->val$oriTask:Lcom/htc/sunny2/common/IterationDecodeTask;

    invoke-virtual {v5}, Lcom/htc/sunny2/common/IterationDecodeTask;->getTaskIndex()I

    move-result v2

    .line 3257
    .local v2, idx:I
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter$1;->val$oriTask:Lcom/htc/sunny2/common/IterationDecodeTask;

    invoke-virtual {v5}, Lcom/htc/sunny2/common/IterationDecodeTask;->getCacheItem()Lcom/htc/sunny2/common/CacheItem;

    move-result-object v5

    iget-object v0, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 3259
    .local v0, bmp:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mBitmapCache:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->access$5500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lt v2, v5, :cond_1

    .line 3260
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mBitmapCache:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->access$5500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;)Landroid/util/SparseArray;

    move-result-object v5

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v2, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3266
    :goto_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mListView2:Lcom/htc/widget/HtcAbsListView2;
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->access$5600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;)Lcom/htc/widget/HtcAbsListView2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAbsListView2;->getFirstVisiblePosition()I

    move-result v1

    .line 3267
    .local v1, f:I
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mListView2:Lcom/htc/widget/HtcAbsListView2;
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->access$5600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;)Lcom/htc/widget/HtcAbsListView2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAbsListView2;->getLastVisiblePosition()I

    move-result v4

    .line 3268
    .local v4, l:I
    if-gt v1, v2, :cond_0

    if-gt v2, v4, :cond_0

    .line 3269
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mListView2:Lcom/htc/widget/HtcAbsListView2;
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->access$5600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;)Lcom/htc/widget/HtcAbsListView2;

    move-result-object v5

    sub-int v6, v2, v1

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f090010

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 3270
    .local v3, imageView:Landroid/widget/ImageView;
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3272
    .end local v3           #imageView:Landroid/widget/ImageView;
    :cond_0
    return-void

    .line 3263
    .end local v1           #f:I
    .end local v4           #l:I
    :cond_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mBitmapCache:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->access$5500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;)Landroid/util/SparseArray;

    move-result-object v5

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method
