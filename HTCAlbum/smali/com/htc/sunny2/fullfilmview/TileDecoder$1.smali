.class Lcom/htc/sunny2/fullfilmview/TileDecoder$1;
.super Landroid/os/Handler;
.source "TileDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/fullfilmview/TileDecoder;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/TileDecoder;

.field final synthetic val$options:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/fullfilmview/TileDecoder;Landroid/os/Looper;Landroid/graphics/BitmapFactory$Options;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->this$0:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    iput-object p3, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->val$options:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x100

    .line 119
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 208
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 122
    :pswitch_0
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->this$0:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    #getter for: Lcom/htc/sunny2/fullfilmview/TileDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->access$000(Lcom/htc/sunny2/fullfilmview/TileDecoder;)Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object v5

    const-wide/16 v6, 0x1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/PriorityBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;

    .line 124
    .local v0, DI:Lcom/htc/sunny2/fullfilmview/TileDecodeItem;
    if-nez v0, :cond_1

    .line 126
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->this$0:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    #getter for: Lcom/htc/sunny2/fullfilmview/TileDecoder;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->access$100(Lcom/htc/sunny2/fullfilmview/TileDecoder;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "[HTCAlbum][TileDecoder][handleMessage][DECODE_IMAGE]DI is null"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    .end local v0           #DI:Lcom/htc/sunny2/fullfilmview/TileDecodeItem;
    :catch_0
    move-exception v2

    .line 214
    .local v2, e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->this$0:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    #getter for: Lcom/htc/sunny2/fullfilmview/TileDecoder;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->access$100(Lcom/htc/sunny2/fullfilmview/TileDecoder;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "[HTCAlbum][TileDecoder][handleMessage]exception"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #DI:Lcom/htc/sunny2/fullfilmview/TileDecodeItem;
    :cond_1
    const/4 v1, 0x0

    .line 133
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :try_start_1
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->val$options:Landroid/graphics/BitmapFactory$Options;

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 134
    iget v5, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->rightBorder:I

    iget v6, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->leftBorder:I

    sub-int/2addr v5, v6

    iget v6, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->level:I

    shr-int v4, v5, v6

    .line 135
    .local v4, widthToDecode:I
    iget v5, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->bottomBorder:I

    iget v6, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->topBorder:I

    sub-int/2addr v5, v6

    iget v6, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->level:I

    shr-int v3, v5, v6

    .line 137
    .local v3, heightToDecode:I
    if-ne v4, v9, :cond_2

    if-ne v3, v9, :cond_2

    .line 139
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->this$0:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    #getter for: Lcom/htc/sunny2/fullfilmview/TileDecoder;->bitmapsCreatedForReuseQueue:I
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->access$200(Lcom/htc/sunny2/fullfilmview/TileDecoder;)I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_3

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->this$0:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    #getter for: Lcom/htc/sunny2/fullfilmview/TileDecoder;->bitmapReuseQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->access$300(Lcom/htc/sunny2/fullfilmview/TileDecoder;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ArrayBlockingQueue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 141
    const/16 v5, 0x100

    const/16 v6, 0x100

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 142
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->this$0:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->access$208(Lcom/htc/sunny2/fullfilmview/TileDecoder;)I

    .line 148
    :goto_1
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->val$options:Landroid/graphics/BitmapFactory$Options;

    iput-object v1, v5, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 151
    :cond_2
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->this$0:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    #getter for: Lcom/htc/sunny2/fullfilmview/TileDecoder;->quitFlag:Z
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->access$400(Lcom/htc/sunny2/fullfilmview/TileDecoder;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 153
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->val$options:Landroid/graphics/BitmapFactory$Options;

    iget-object v5, v5, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 155
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->val$options:Landroid/graphics/BitmapFactory$Options;

    iget-object v5, v5, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 146
    :cond_3
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->this$0:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    #getter for: Lcom/htc/sunny2/fullfilmview/TileDecoder;->bitmapReuseQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->access$300(Lcom/htc/sunny2/fullfilmview/TileDecoder;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v5

    const-wide/16 v6, 0x1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/ArrayBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    check-cast v1, Landroid/graphics/Bitmap;

    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 160
    :cond_4
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->val$options:Landroid/graphics/BitmapFactory$Options;

    iget v6, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->level:I

    shl-int v6, v10, v6

    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 162
    invoke-static {}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->access$500()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 164
    :try_start_2
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->this$0:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    #getter for: Lcom/htc/sunny2/fullfilmview/TileDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->access$600(Lcom/htc/sunny2/fullfilmview/TileDecoder;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 167
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->this$0:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    #getter for: Lcom/htc/sunny2/fullfilmview/TileDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->access$600(Lcom/htc/sunny2/fullfilmview/TileDecoder;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v5

    new-instance v7, Landroid/graphics/Rect;

    iget v8, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->leftBorder:I

    iget v9, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->topBorder:I

    iget v10, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->rightBorder:I

    iget v11, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->bottomBorder:I

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->val$options:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v5, v7, v8}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->bitmap:Landroid/graphics/Bitmap;

    .line 169
    :cond_5
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    :try_start_3
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->val$options:Landroid/graphics/BitmapFactory$Options;

    iget-object v5, v5, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iget-object v6, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->bitmap:Landroid/graphics/Bitmap;

    if-ne v5, v6, :cond_6

    .line 173
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->isBitmapReused:Z

    .line 185
    :goto_2
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->this$0:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    #getter for: Lcom/htc/sunny2/fullfilmview/TileDecoder;->mCallback:Lcom/htc/sunny2/fullfilmview/TileDecoder$TileDecodeCompleteListener;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->access$700(Lcom/htc/sunny2/fullfilmview/TileDecoder;)Lcom/htc/sunny2/fullfilmview/TileDecoder$TileDecodeCompleteListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 187
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->this$0:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    #getter for: Lcom/htc/sunny2/fullfilmview/TileDecoder;->mCallback:Lcom/htc/sunny2/fullfilmview/TileDecoder$TileDecodeCompleteListener;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->access$700(Lcom/htc/sunny2/fullfilmview/TileDecoder;)Lcom/htc/sunny2/fullfilmview/TileDecoder$TileDecodeCompleteListener;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/htc/sunny2/fullfilmview/TileDecoder$TileDecodeCompleteListener;->onTileDecodeComplete(Lcom/htc/sunny2/fullfilmview/TileDecodeItem;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 169
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5

    .line 177
    :cond_6
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/htc/sunny2/fullfilmview/TileDecodeItem;->isBitmapReused:Z

    .line 178
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->val$options:Landroid/graphics/BitmapFactory$Options;

    iget-object v5, v5, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_7

    .line 180
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->this$0:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->val$options:Landroid/graphics/BitmapFactory$Options;

    iget-object v6, v6, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->addReuseBitmap(Landroid/graphics/Bitmap;)V

    .line 182
    :cond_7
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->val$options:Landroid/graphics/BitmapFactory$Options;

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 191
    .end local v0           #DI:Lcom/htc/sunny2/fullfilmview/TileDecodeItem;
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #heightToDecode:I
    .end local v4           #widthToDecode:I
    :pswitch_1
    invoke-static {}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->access$500()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 193
    :try_start_6
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->this$0:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    #getter for: Lcom/htc/sunny2/fullfilmview/TileDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->access$600(Lcom/htc/sunny2/fullfilmview/TileDecoder;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 195
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->this$0:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    #getter for: Lcom/htc/sunny2/fullfilmview/TileDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->access$600(Lcom/htc/sunny2/fullfilmview/TileDecoder;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 196
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->this$0:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    const/4 v7, 0x0

    #setter for: Lcom/htc/sunny2/fullfilmview/TileDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    invoke-static {v5, v7}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->access$602(Lcom/htc/sunny2/fullfilmview/TileDecoder;Landroid/graphics/BitmapRegionDecoder;)Landroid/graphics/BitmapRegionDecoder;

    .line 198
    :cond_8
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 199
    :try_start_7
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->this$0:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    const/4 v6, 0x0

    #setter for: Lcom/htc/sunny2/fullfilmview/TileDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;
    invoke-static {v5, v6}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->access$002(Lcom/htc/sunny2/fullfilmview/TileDecoder;Ljava/util/concurrent/PriorityBlockingQueue;)Ljava/util/concurrent/PriorityBlockingQueue;

    .line 200
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->this$0:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    #getter for: Lcom/htc/sunny2/fullfilmview/TileDecoder;->bitmapReuseQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->access$300(Lcom/htc/sunny2/fullfilmview/TileDecoder;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 202
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->this$0:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    #getter for: Lcom/htc/sunny2/fullfilmview/TileDecoder;->bitmapReuseQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->access$300(Lcom/htc/sunny2/fullfilmview/TileDecoder;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 203
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->this$0:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    const/4 v6, 0x0

    #setter for: Lcom/htc/sunny2/fullfilmview/TileDecoder;->bitmapReuseQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    invoke-static {v5, v6}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->access$302(Lcom/htc/sunny2/fullfilmview/TileDecoder;Ljava/util/concurrent/ArrayBlockingQueue;)Ljava/util/concurrent/ArrayBlockingQueue;

    .line 205
    :cond_9
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/TileDecoder$1;->this$0:Lcom/htc/sunny2/fullfilmview/TileDecoder;

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->quit()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 198
    :catchall_1
    move-exception v5

    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0xc350
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
