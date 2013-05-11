.class Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;
.super Ljava/lang/Thread;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

.field final synthetic val$this$0:Lcom/htc/opensense2/album/util/ImageManager;


# direct methods
.method constructor <init>(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;Lcom/htc/opensense2/album/util/ImageManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5907
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    iput-object p2, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->val$this$0:Lcom/htc/opensense2/album/util/ImageManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 5910
    invoke-virtual {p0, v12}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->setPriority(I)V

    .line 5913
    const-wide/16 v9, 0x8fc

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5919
    :goto_0
    :try_start_1
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    const/4 v10, 0x0

    #setter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsNotify:Z
    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1102(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;Z)Z

    .line 5921
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #calls: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->updateImageCountByQuery()I
    invoke-static {v9}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1200(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)I

    .line 5923
    const/4 v7, 0x0

    .line 5924
    .local v7, replaceAll:Z
    const/4 v5, 0x0

    .line 5925
    .local v5, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    iget v9, v9, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    const/16 v10, 0x65

    if-ge v9, v10, :cond_6

    .line 5927
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mGoDestroyList:Ljava/util/List;
    invoke-static {v9}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1300(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Ljava/util/List;

    move-result-object v9

    if-nez v9, :cond_0

    .line 5928
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0x8

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v10}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    #setter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mGoDestroyList:Ljava/util/List;
    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1302(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;Ljava/util/List;)Ljava/util/List;

    .line 5930
    :cond_0
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;
    invoke-static {v9}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1400(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 5931
    .local v8, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    move-object v0, v8

    .local v0, arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .line 5932
    .local v6, partialList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v6, :cond_1

    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mGoDestroyList:Ljava/util/List;
    invoke-static {v9}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1300(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5931
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5935
    .end local v6           #partialList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_2
    const/4 v7, 0x1

    .line 5937
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    const/4 v10, 0x0

    #calls: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->createMiddleImageList(Z)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1500(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;Z)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v5

    .line 5939
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;
    invoke-static {v9}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1400(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Ljava/util/List;

    move-result-object v10

    monitor-enter v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5940
    :try_start_2
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;
    invoke-static {v9}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1400(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 5941
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;
    invoke-static {v9}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1400(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5942
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    const/4 v11, 0x1

    #setter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mStatus:I
    invoke-static {v9, v11}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1602(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;I)I

    .line 5943
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5944
    :try_start_3
    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_3

    const-string v9, "ImageManager"

    const-string v10, "[HTCAlbum][ImageManager][PartialImageList]: drop partial lists and create one image list"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5957
    .end local v0           #arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v8           #sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_3
    :goto_2
    const/4 v1, 0x0

    .line 5958
    .local v1, callback:Z
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mLocker:Ljava/lang/Object;
    invoke-static {v9}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1700(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 5959
    :try_start_4
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;
    invoke-static {v9}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1800(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

    move-result-object v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsNotify:Z
    invoke-static {v9}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1100(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 5960
    const/4 v1, 0x1

    .line 5961
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    const/4 v11, 0x1

    #setter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsNotify:Z
    invoke-static {v9, v11}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1102(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;Z)Z

    .line 5963
    :cond_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 5965
    if-ne v12, v1, :cond_5

    .line 5966
    if-ne v7, v12, :cond_7

    .line 5967
    :try_start_5
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;
    invoke-static {v9}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1800(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    invoke-interface {v9, v10}, Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;->onPartialListBuilt(Lcom/htc/opensense2/album/util/ImageManager$IImageList;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 5978
    .end local v1           #callback:Z
    .end local v5           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v7           #replaceAll:Z
    :cond_5
    :goto_3
    return-void

    .line 5943
    .restart local v0       #arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .restart local v7       #replaceAll:Z
    .restart local v8       #sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :catchall_0
    move-exception v9

    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v9
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 5974
    .end local v0           #arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v7           #replaceAll:Z
    .end local v8           #sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :catch_0
    move-exception v2

    .line 5976
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "ImageManager"

    const-string v10, "[HTCAlbum][ImageManager][PartialImageList]: run: fail"

    invoke-static {v9, v10, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 5947
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v5       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .restart local v7       #replaceAll:Z
    :cond_6
    const/4 v7, 0x0

    .line 5949
    :try_start_8
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    const/4 v10, 0x1

    #calls: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->createMiddleImageList(Z)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1500(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;Z)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v5

    .line 5950
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;
    invoke-static {v9}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1400(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Ljava/util/List;

    move-result-object v10

    monitor-enter v10
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 5951
    :try_start_9
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;
    invoke-static {v9}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1400(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Ljava/util/List;

    move-result-object v9

    const/4 v11, 0x1

    invoke-interface {v9, v11, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5952
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    const/4 v11, 0x3

    #setter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mStatus:I
    invoke-static {v9, v11}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1602(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;I)I

    .line 5953
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 5954
    :try_start_a
    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_3

    const-string v9, "ImageManager"

    const-string v10, "[HTCAlbum][ImageManager][PartialImageList]: create middle image list"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_2

    .line 5953
    :catchall_1
    move-exception v9

    :try_start_b
    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v9
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 5963
    .restart local v1       #callback:Z
    :catchall_2
    move-exception v9

    :try_start_d
    monitor-exit v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v9

    .line 5970
    :cond_7
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;
    invoke-static {v9}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1800(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    iget-object v11, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    iget v11, v11, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialCount:I

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v12

    invoke-interface {v9, v10, v11, v12}, Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;->onPartialListBuilt(Lcom/htc/opensense2/album/util/ImageManager$IImageList;II)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    goto :goto_3

    .line 5915
    .end local v1           #callback:Z
    .end local v5           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v7           #replaceAll:Z
    :catch_1
    move-exception v9

    goto/16 :goto_0
.end method
