.class final Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;
.super Lcom/htc/opensense2/album/util/ImageManager$BaseCancelable;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense2/album/util/ImageManager$Image;->saveImageContents(Landroid/graphics/Bitmap;[BIZLandroid/database/Cursor;)Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SaveImageContentsCancelable"
.end annotation


# instance fields
.field mCurrentCancelable:Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;

.field final synthetic this$1:Lcom/htc/opensense2/album/util/ImageManager$Image;

.field final synthetic val$cursor:Landroid/database/Cursor;

.field final synthetic val$image:Landroid/graphics/Bitmap;

.field final synthetic val$jpegData:[B


# direct methods
.method constructor <init>(Lcom/htc/opensense2/album/util/ImageManager$Image;Landroid/graphics/Bitmap;[BLandroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2947
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->this$1:Lcom/htc/opensense2/album/util/ImageManager$Image;

    iput-object p2, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->val$image:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->val$jpegData:[B

    iput-object p4, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->val$cursor:Landroid/database/Cursor;

    iget-object v0, p1, Lcom/htc/opensense2/album/util/ImageManager$Image;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    invoke-direct {p0, v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseCancelable;-><init>(Lcom/htc/opensense2/album/util/ImageManager;)V

    .line 2945
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->mCurrentCancelable:Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;

    .line 2948
    return-void
.end method


# virtual methods
.method public doCancelWork()Z
    .locals 1

    .prologue
    .line 2951
    monitor-enter p0

    .line 2952
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->mCurrentCancelable:Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;

    if-eqz v0, :cond_0

    .line 2953
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->mCurrentCancelable:Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;->cancel()Z

    .line 2954
    :cond_0
    monitor-exit p0

    .line 2955
    const/4 v0, 0x1

    return v0

    .line 2954
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get()Z
    .locals 14

    .prologue
    .line 2961
    const/4 v4, 0x0

    .line 2963
    .local v4, thumbnail:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 2964
    .local v3, thumbData:[B
    const/4 v6, 0x7

    :try_start_0
    new-array v2, v6, [J

    .line 2965
    .local v2, t:[J
    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    aput-wide v7, v2, v6

    .line 2967
    iget-object v6, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->this$1:Lcom/htc/opensense2/album/util/ImageManager$Image;

    iget-object v6, v6, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    iget-object v7, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->this$1:Lcom/htc/opensense2/album/util/ImageManager$Image;

    iget-wide v7, v7, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mId:J

    invoke-virtual {v6, v7, v8}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->contentUri(J)Landroid/net/Uri;

    move-result-object v5

    .line 2968
    .local v5, uri:Landroid/net/Uri;
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3
    .catch Lcom/htc/opensense2/album/util/ImageManager$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2969
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->checkCanceled()V

    .line 2970
    iget-object v6, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->this$1:Lcom/htc/opensense2/album/util/ImageManager$Image;

    iget-object v7, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->val$image:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->val$jpegData:[B

    invoke-virtual {v6, v7, v8, v5}, Lcom/htc/opensense2/album/util/ImageManager$Image;->compressImageToFile(Landroid/graphics/Bitmap;[BLandroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->mCurrentCancelable:Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;

    .line 2971
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2973
    :try_start_2
    iget-object v6, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->mCurrentCancelable:Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;->get()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Lcom/htc/opensense2/album/util/ImageManager$CanceledException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v6

    if-nez v6, :cond_0

    .line 2974
    const/4 v6, 0x0

    .line 3076
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->acknowledgeCancel()V

    .end local v2           #t:[J
    .end local v5           #uri:Landroid/net/Uri;
    :goto_0
    return v6

    .line 2971
    .restart local v2       #t:[J
    .restart local v5       #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Lcom/htc/opensense2/album/util/ImageManager$CanceledException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3072
    .end local v2           #t:[J
    .end local v5           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 3073
    .local v0, ex:Lcom/htc/opensense2/album/util/ImageManager$CanceledException;
    :try_start_5
    const-string v6, "ImageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got canceled... need to cleanup, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 3074
    const/4 v6, 0x0

    .line 3076
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->acknowledgeCancel()V

    goto :goto_0

    .line 2976
    .end local v0           #ex:Lcom/htc/opensense2/album/util/ImageManager$CanceledException;
    .restart local v2       #t:[J
    .restart local v5       #uri:Landroid/net/Uri;
    :cond_0
    const/4 v6, 0x1

    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    aput-wide v7, v2, v6

    .line 2980
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Lcom/htc/opensense2/album/util/ImageManager$CanceledException; {:try_start_6 .. :try_end_6} :catch_0

    .line 2981
    :try_start_7
    iget-object v7, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->val$cursor:Landroid/database/Cursor;

    monitor-enter v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2982
    :try_start_8
    iget-object v6, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->val$cursor:Landroid/database/Cursor;

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2983
    iget-object v6, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->val$cursor:Landroid/database/Cursor;

    const/4 v8, 0x2

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2984
    .local v1, filePath:Ljava/lang/String;
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 3009
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 3018
    :try_start_a
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->checkCanceled()V

    .line 3020
    const/4 v6, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    aput-wide v7, v2, v6

    .line 3065
    iget-object v6, p0, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->this$1:Lcom/htc/opensense2/album/util/ImageManager$Image;

    iget-object v6, v6, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v6, v5}, Lcom/htc/opensense2/album/util/ImageManager;->forceSync(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 3067
    const/4 v6, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    aput-wide v7, v2, v6

    .line 3069
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "ImageManager"

    const-string v7, "get Timing data %d %d %d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    aget-wide v10, v2, v10

    const/4 v12, 0x0

    aget-wide v12, v2, v12

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x2

    aget-wide v10, v2, v10

    const/4 v12, 0x1

    aget-wide v12, v2, v12

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x3

    aget-wide v10, v2, v10

    const/4 v12, 0x2

    aget-wide v12, v2, v12

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Lcom/htc/opensense2/album/util/ImageManager$CanceledException; {:try_start_a .. :try_end_a} :catch_0

    .line 3071
    :cond_1
    const/4 v6, 0x1

    .line 3076
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->acknowledgeCancel()V

    goto/16 :goto_0

    .line 2984
    .end local v1           #filePath:Ljava/lang/String;
    :catchall_1
    move-exception v6

    :try_start_b
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v6

    .line 3009
    :catchall_2
    move-exception v6

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3
    .catch Lcom/htc/opensense2/album/util/ImageManager$CanceledException; {:try_start_d .. :try_end_d} :catch_0

    .line 3076
    .end local v2           #t:[J
    .end local v5           #uri:Landroid/net/Uri;
    :catchall_3
    move-exception v6

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$Image$1SaveImageContentsCancelable;->acknowledgeCancel()V

    throw v6
.end method
