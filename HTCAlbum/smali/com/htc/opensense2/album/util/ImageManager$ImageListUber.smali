.class public Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/util/ImageManager$IImageList;
.implements Lcom/htc/sunnyCore/IMediaList;
.implements Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageListUber"
.end annotation


# instance fields
.field private mAccessThread:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private mCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            ">;"
        }
    .end annotation
.end field

.field private mDrmImageCount:I

.field private mDrmNonSetAsImageCount:I

.field private mDrmNonSetAsVideoCount:I

.field private mDrmNonShareImageCount:I

.field private mDrmNonShareVideoCount:I

.field private mDrmVideoCount:I

.field private mImageCount:I

.field mIsPartialLoading:Z

.field private mNotifyPartialLoad:Z

.field private mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

.field mSkipCounts:[I

.field mSkipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSubList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/util/ImageManager$IImageList;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoCount:I

.field final synthetic this$0:Lcom/htc/opensense2/album/util/ImageManager;


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;[Lcom/htc/opensense2/album/util/ImageManager$IImageList;I)V
    .locals 20
    .parameter
    .parameter "sublist"
    .parameter "sort"

    .prologue
    .line 6294
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6277
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mIsPartialLoading:Z

    .line 6278
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mNotifyPartialLoad:Z

    .line 6286
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSkipList:Ljava/util/ArrayList;

    .line 6287
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSkipCounts:[I

    .line 6295
    const-wide/16 v7, 0x0

    .local v7, makeListTime:J
    const-wide/16 v10, 0x0

    .local v10, sortTime:J
    const-wide/16 v14, 0x0

    .line 6296
    .local v14, t1:J
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    .line 6297
    move-object/from16 v3, p2

    .local v3, arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v3, v4

    .line 6298
    .local v6, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6297
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6302
    .end local v6           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_0
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    .line 6303
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    .line 6304
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    .line 6305
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareImageCount:I

    .line 6306
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareVideoCount:I

    .line 6307
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonSetAsImageCount:I

    .line 6308
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonSetAsVideoCount:I

    .line 6309
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    .line 6310
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    .line 6311
    move-object/from16 v3, p2

    array-length v5, v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_6

    aget-object v6, v3, v4

    .line 6312
    .restart local v6       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 6313
    instance-of v0, v6, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 6315
    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v2

    .local v2, allCount:I
    move-object/from16 v16, v6

    .line 6316
    check-cast v16, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;

    invoke-virtual/range {v16 .. v16}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->getSharableCount()I

    move-result v9

    .line 6317
    .local v9, shareCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareImageCount:I

    move/from16 v16, v0

    sub-int v17, v2, v9

    add-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareImageCount:I

    .line 6318
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    move/from16 v16, v0

    add-int v16, v16, v2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    .line 6319
    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    move-object/from16 v16, v6

    .line 6320
    check-cast v16, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;

    invoke-virtual/range {v16 .. v16}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->getSetAsCount()I

    move-result v16

    sub-int v16, v2, v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonSetAsImageCount:I

    .line 6338
    .end local v2           #allCount:I
    .end local v9           #shareCount:I
    :cond_1
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v14

    add-long v7, v7, v16

    .line 6339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 6341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImages(Ljava/util/List;)V

    .line 6343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v14

    add-long v10, v10, v16

    .line 6345
    const-string v16, "ImageManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[ImageListUber] makeListTime = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v14

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6311
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 6323
    :cond_2
    instance-of v0, v6, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 6325
    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v2

    .restart local v2       #allCount:I
    move-object/from16 v16, v6

    .line 6326
    check-cast v16, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    invoke-virtual/range {v16 .. v16}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->getSharableCount()I

    move-result v9

    .line 6327
    .restart local v9       #shareCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareVideoCount:I

    move/from16 v16, v0

    sub-int v17, v2, v9

    add-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareVideoCount:I

    .line 6328
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    move/from16 v16, v0

    add-int v16, v16, v2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    .line 6329
    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    move-object/from16 v16, v6

    .line 6330
    check-cast v16, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    invoke-virtual/range {v16 .. v16}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->getSetAsCount()I

    move-result v16

    sub-int v16, v2, v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonSetAsVideoCount:I

    goto/16 :goto_2

    .line 6333
    .end local v2           #allCount:I
    .end local v9           #shareCount:I
    :cond_3
    instance-of v0, v6, Lcom/htc/opensense2/album/util/ImageManager$ImageList;

    move/from16 v16, v0

    if-nez v16, :cond_4

    instance-of v0, v6, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 6334
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    move/from16 v16, v0

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v17

    add-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    goto/16 :goto_2

    .line 6335
    :cond_5
    instance-of v0, v6, Lcom/htc/opensense2/album/util/ImageManager$VideoList;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 6336
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    move/from16 v16, v0

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v17

    add-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    goto/16 :goto_2

    .line 6347
    .end local v6           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 6349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 6350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v12, v16, v14

    .line 6351
    .local v12, sortTime2:J
    const-string v16, "ImageManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "makeListTime = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "ms, traversal time = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "ms, sortTime = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "ms ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "p)"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6353
    sget-boolean v16, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v16, :cond_7

    .line 6354
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mAccessThread:Ljava/util/ArrayList;

    .line 6356
    :cond_7
    return-void
.end method

.method private checkThreadUssage()[Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 6375
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 6376
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Thread;

    .line 6377
    .local v0, threads:[Ljava/lang/Thread;
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mAccessThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0           #threads:[Ljava/lang/Thread;
    check-cast v0, [Ljava/lang/Thread;

    .line 6382
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerAccessThread()V
    .locals 2

    .prologue
    .line 6359
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 6360
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 6361
    .local v0, t:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mAccessThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6362
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mAccessThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6365
    .end local v0           #t:Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method private replacePartialImageList(Ljava/util/ArrayList;Lcom/htc/opensense2/album/util/ImageManager$IImageList;II)V
    .locals 5
    .parameter
    .parameter "list"
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            ">;",
            "Lcom/htc/opensense2/album/util/ImageManager$IImageList;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 6398
    .local p1, newCacheList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    if-nez p1, :cond_0

    .line 6399
    new-instance p1, Ljava/util/ArrayList;

    .end local p1           #newCacheList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 6402
    .restart local p1       #newCacheList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    :cond_0
    move v0, p3

    .local v0, i:I
    :goto_0
    add-int v3, p3, p4

    if-ge v0, v3, :cond_2

    .line 6403
    invoke-interface {p2, v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    .line 6404
    .local v2, tmp_image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v2, :cond_1

    .line 6405
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6402
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6408
    .end local v2           #tmp_image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 6410
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    monitor-enter v4

    .line 6411
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    .line 6412
    .local v1, tmpCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    .line 6413
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6414
    monitor-exit v4

    .line 6415
    return-void

    .line 6414
    .end local v1           #tmpCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private unRegisterAccessThread()V
    .locals 2

    .prologue
    .line 6368
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 6369
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 6370
    .local v0, t:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mAccessThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6372
    .end local v0           #t:Ljava/lang/Thread;
    :cond_0
    return-void
.end method


# virtual methods
.method addExpandBurstImages(ILcom/htc/opensense2/album/util/ImageManager$IImageList;)V
    .locals 8
    .parameter "index"
    .parameter "list"

    .prologue
    const/4 v6, 0x1

    .line 6850
    if-eqz p2, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getCount()I

    move-result v4

    if-gt v4, p1, :cond_1

    .line 6879
    :cond_0
    :goto_0
    return-void

    .line 6852
    :cond_1
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->registerAccessThread()V

    .line 6854
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6855
    .local v3, tmpImageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    invoke-interface {p2, v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImages(Ljava/util/List;)V

    .line 6857
    const/4 v0, 0x0

    .line 6858
    .local v0, bestImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 6859
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v4

    if-ne v6, v4, :cond_2

    .line 6860
    move-object v0, v2

    goto :goto_1

    .line 6863
    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_3
    if-eqz v0, :cond_4

    .line 6864
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6867
    :cond_4
    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    monitor-enter v5

    .line 6868
    :try_start_0
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6869
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v4, p1, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v4

    if-ne v6, v4, :cond_5

    .line 6870
    iget v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    .line 6875
    :goto_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6877
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 6878
    const/4 v3, 0x0

    .line 6879
    goto :goto_0

    .line 6873
    :cond_5
    :try_start_1
    const-string v4, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[addExpandBurstImages] fail to add list:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 6875
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public cancelDeleting()V
    .locals 2

    .prologue
    .line 6734
    const-string v0, "ImageManager"

    const-string v1, "[CANCEL_DELETE]cancelDeleting has been called"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6735
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    const/4 v1, 0x1

    #setter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager;->access$1902(Lcom/htc/opensense2/album/util/ImageManager;Z)Z

    .line 6736
    return-void
.end method

.method public closeCursor()V
    .locals 6

    .prologue
    .line 6519
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->unRegisterAccessThread()V

    .line 6525
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 6526
    .local v3, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v3, :cond_1

    .line 6527
    array-length v0, v3

    .line 6528
    .local v0, length:I
    const/4 v1, -0x1

    .line 6529
    .local v1, pos:I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_1

    .line 6530
    aget-object v2, v3, v1

    .line 6531
    .local v2, sub:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    goto :goto_0

    .line 6534
    .end local v0           #length:I
    .end local v1           #pos:I
    .end local v2           #sub:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 6535
    return-void
.end method

.method public commitChanges()V
    .locals 5

    .prologue
    .line 6501
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 6502
    .local v2, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v1, v2

    .line 6503
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 6504
    aget-object v3, v2, v0

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->commitChanges()V

    .line 6503
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6505
    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 6

    .prologue
    .line 6508
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 6509
    .local v3, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v0, v3

    .line 6510
    .local v0, length:I
    const/4 v1, -0x1

    .line 6511
    .local v1, pos:I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_1

    .line 6512
    aget-object v2, v3, v1

    .line 6513
    .local v2, sub:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->deactivate()V

    goto :goto_0

    .line 6515
    .end local v2           #sub:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_1
    return-void
.end method

.method public getCanSetAsImageCount()I
    .locals 2

    .prologue
    .line 6483
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonSetAsImageCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCanSetAsVideoCount()I
    .locals 2

    .prologue
    .line 6487
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonSetAsVideoCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 6545
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    if-nez v0, :cond_0

    .line 6546
    const/4 v0, 0x0

    .line 6549
    :goto_0
    return v0

    .line 6548
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    monitor-enter v1

    .line 6549
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 6550
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDrmContentCount()I
    .locals 2

    .prologue
    .line 6479
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 4
    .parameter "index"

    .prologue
    .line 6555
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->registerAccessThread()V

    .line 6557
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    monitor-enter v1

    .line 6560
    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 6562
    :cond_0
    const-string v0, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range max is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6563
    const/4 v0, 0x0

    monitor-exit v1

    .line 6568
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    monitor-exit v1

    goto :goto_0

    .line 6569
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getImageCount()I
    .locals 1

    .prologue
    .line 6492
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    return v0
.end method

.method public getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 5
    .parameter "filePath"

    .prologue
    .line 6700
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 6701
    .local v2, subList:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 6702
    aget-object v3, v2, v0

    invoke-interface {v3, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    .line 6703
    .local v1, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v1, :cond_0

    .line 6706
    .end local v1           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :goto_1
    return-object v1

    .line 6701
    .restart local v1       #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6706
    .end local v1           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 5
    .parameter "uri"

    .prologue
    .line 6690
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 6691
    .local v2, subList:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 6692
    aget-object v3, v2, v0

    invoke-interface {v3, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    .line 6693
    .local v1, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v1, :cond_0

    .line 6696
    .end local v1           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :goto_1
    return-object v1

    .line 6691
    .restart local v1       #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6696
    .end local v1           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    goto :goto_1
.end method

.method public getImages(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6573
    .local p1, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    if-nez p1, :cond_0

    .line 6580
    :goto_0
    return-void

    .line 6576
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    monitor-enter v1

    .line 6578
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6579
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItem(I)Lcom/htc/sunnyCore/IMediaData;
    .locals 1
    .parameter "itemIndex"

    .prologue
    .line 6840
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/IMediaData;

    return-object v0
.end method

.method public getNonDrmImageCount()I
    .locals 2

    .prologue
    .line 6464
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getNonDrmVideoCount()I
    .locals 2

    .prologue
    .line 6467
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSharableImageCount()I
    .locals 2

    .prologue
    .line 6471
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareImageCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSharableVideoCount()I
    .locals 2

    .prologue
    .line 6475
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareVideoCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getVideoCount()I
    .locals 1

    .prologue
    .line 6495
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    return v0
.end method

.method public isPartialLoading()Z
    .locals 1

    .prologue
    .line 6386
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mIsPartialLoading:Z

    return v0
.end method

.method public isReleased()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 6538
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    new-array v3, v1, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 6539
    .local v0, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-nez v0, :cond_0

    .line 6540
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->isReleased()Z

    move-result v1

    goto :goto_0
.end method

.method public modifySkipCountForDeletedImage(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 6731
    return-void
.end method

.method public onPartialListBuilt(Lcom/htc/opensense2/album/util/ImageManager$IImageList;)V
    .locals 3
    .parameter "list"

    .prologue
    const/4 v2, 0x0

    .line 6418
    instance-of v0, p1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    if-nez v0, :cond_0

    .line 6430
    :goto_0
    return-void

    .line 6420
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->replacePartialImageList(Ljava/util/ArrayList;Lcom/htc/opensense2/album/util/ImageManager$IImageList;II)V

    .line 6422
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

    if-eqz v0, :cond_1

    .line 6423
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

    invoke-interface {v0, p0}, Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;->onPartialListBuilt(Lcom/htc/opensense2/album/util/ImageManager$IImageList;)V

    .line 6424
    iput-boolean v2, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mNotifyPartialLoad:Z

    .line 6425
    iput-boolean v2, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mIsPartialLoading:Z

    goto :goto_0

    .line 6428
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mNotifyPartialLoad:Z

    goto :goto_0
.end method

.method public onPartialListBuilt(Lcom/htc/opensense2/album/util/ImageManager$IImageList;II)V
    .locals 10
    .parameter "list"
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 6433
    instance-of v6, p1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    if-nez v6, :cond_0

    .line 6460
    :goto_0
    return-void

    .line 6435
    :cond_0
    const/4 v3, 0x0

    .line 6436
    .local v3, oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    monitor-enter v9

    .line 6437
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6438
    .end local v3           #oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    .local v4, oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6440
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6441
    .local v2, newCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 6442
    .local v1, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v5

    .line 6443
    .local v5, parentlist:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eq v5, p1, :cond_2

    if-nez v5, :cond_3

    :cond_2
    move v6, v8

    :goto_2
    if-nez v6, :cond_1

    .line 6444
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6438
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v2           #newCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    .end local v4           #oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    .end local v5           #parentlist:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .restart local v3       #oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    :catchall_0
    move-exception v6

    :goto_3
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .end local v3           #oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v2       #newCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    .restart local v4       #oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    .restart local v5       #parentlist:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_3
    move v6, v7

    .line 6443
    goto :goto_2

    .line 6447
    .end local v1           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v5           #parentlist:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 6448
    const/4 v3, 0x0

    .line 6450
    .end local v4           #oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    .restart local v3       #oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->replacePartialImageList(Ljava/util/ArrayList;Lcom/htc/opensense2/album/util/ImageManager$IImageList;II)V

    .line 6452
    iget-object v6, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

    if-eqz v6, :cond_5

    .line 6453
    iget-object v6, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

    iget-object v8, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v6, p0, v7, v8}, Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;->onPartialListBuilt(Lcom/htc/opensense2/album/util/ImageManager$IImageList;II)V

    .line 6454
    iput-boolean v7, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mNotifyPartialLoad:Z

    .line 6455
    iput-boolean v7, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mIsPartialLoading:Z

    goto :goto_0

    .line 6458
    :cond_5
    iput-boolean v8, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mNotifyPartialLoad:Z

    goto :goto_0

    .line 6438
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #newCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    .end local v3           #oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    .restart local v4       #oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    .restart local v3       #oldCache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    goto :goto_3
.end method

.method removeExpandBurstImages(Lcom/htc/opensense2/album/util/ImageManager$IImageList;)V
    .locals 8
    .parameter "list"

    .prologue
    const/4 v7, 0x1

    .line 6888
    if-nez p1, :cond_0

    .line 6917
    :goto_0
    return-void

    .line 6890
    :cond_0
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->registerAccessThread()V

    .line 6892
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6893
    .local v3, tmpImageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    invoke-interface {p1, v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImages(Ljava/util/List;)V

    .line 6895
    const/4 v0, 0x0

    .line 6896
    .local v0, bestImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 6897
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v4

    if-ne v7, v4, :cond_1

    .line 6898
    move-object v0, v2

    goto :goto_1

    .line 6901
    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_2
    if-eqz v0, :cond_4

    .line 6902
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6908
    :goto_2
    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    monitor-enter v5

    .line 6909
    :try_start_0
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6910
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v4

    if-ne v7, v4, :cond_3

    .line 6911
    iget v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v6

    sub-int/2addr v4, v6

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    .line 6913
    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6915
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 6916
    const/4 v3, 0x0

    .line 6917
    goto :goto_0

    .line 6905
    :cond_4
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[removeExpandBurstImages] fail to remove list:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 6913
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public resetCancelDelete()V
    .locals 2

    .prologue
    .line 6748
    const-string v0, "ImageManager"

    const-string v1, "[CANCEL_DELETE]resetCancelDelete has been called"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6749
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    const/4 v1, 0x0

    #setter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager;->access$1902(Lcom/htc/opensense2/album/util/ImageManager;Z)Z

    .line 6750
    return-void
.end method

.method public setPartialLoadListener(Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 6390
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

    .line 6391
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mNotifyPartialLoad:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6392
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, p0, v2, v1}, Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;->onPartialListBuilt(Lcom/htc/opensense2/album/util/ImageManager$IImageList;II)V

    .line 6393
    iput-boolean v2, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mNotifyPartialLoad:Z

    .line 6395
    :cond_0
    return-void
.end method

.method public startRequery()Z
    .locals 14

    .prologue
    const/4 v10, 0x0

    .line 6753
    iget-object v11, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v11}, Lcom/htc/opensense2/album/util/ImageManager;->access$1900(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 6754
    const-string v11, "ImageManager"

    const-string v12, "cancel_delete is true 1"

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6832
    :goto_0
    return v10

    .line 6758
    :cond_0
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->registerAccessThread()V

    .line 6760
    const-wide/16 v2, 0x0

    .local v2, makeListTime:J
    const-wide/16 v4, 0x0

    .local v4, sortTime:J
    const-wide/16 v8, 0x0

    .line 6762
    .local v8, t1:J
    iput v10, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    .line 6763
    iput v10, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    .line 6764
    iput v10, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    .line 6765
    iput v10, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    .line 6767
    iget-object v11, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    monitor-enter v11

    .line 6768
    :try_start_0
    iget-object v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 6770
    iget-object v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 6771
    .local v1, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    iget-object v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v12}, Lcom/htc/opensense2/album/util/ImageManager;->access$1900(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 6772
    const-string v12, "ImageManager"

    const-string v13, "cancel_delete is true 2"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6773
    monitor-exit v11

    goto :goto_0

    .line 6828
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 6775
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_1
    :try_start_1
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->startRequery()Z

    .line 6776
    iget-object v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v12}, Lcom/htc/opensense2/album/util/ImageManager;->access$1900(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 6777
    const-string v12, "ImageManager"

    const-string v13, "cancel_delete is true 3"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6778
    monitor-exit v11

    goto :goto_0

    .line 6780
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 6781
    instance-of v12, v1, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;

    if-eqz v12, :cond_4

    .line 6782
    iget v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v13

    add-int/2addr v12, v13

    iput v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    .line 6783
    iget v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v13

    add-int/2addr v12, v13

    iput v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    .line 6802
    :cond_3
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    add-long/2addr v2, v12

    .line 6803
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 6804
    iget-object v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v12}, Lcom/htc/opensense2/album/util/ImageManager;->access$1900(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 6805
    const-string v12, "ImageManager"

    const-string v13, "cancel_delete is true 4"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6806
    monitor-exit v11

    goto/16 :goto_0

    .line 6785
    :cond_4
    instance-of v12, v1, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    if-eqz v12, :cond_5

    .line 6786
    iget v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v13

    add-int/2addr v12, v13

    iput v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    .line 6787
    iget v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v13

    add-int/2addr v12, v13

    iput v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    goto :goto_2

    .line 6789
    :cond_5
    instance-of v12, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageList;

    if-nez v12, :cond_6

    instance-of v12, v1, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    if-eqz v12, :cond_7

    .line 6790
    :cond_6
    iget v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v13

    add-int/2addr v12, v13

    iput v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    goto :goto_2

    .line 6791
    :cond_7
    instance-of v12, v1, Lcom/htc/opensense2/album/util/ImageManager$VideoList;

    if-eqz v12, :cond_3

    .line 6792
    iget v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v13

    add-int/2addr v12, v13

    iput v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    goto :goto_2

    .line 6818
    :cond_8
    iget-object v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v1, v12}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImages(Ljava/util/List;)V

    .line 6820
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    add-long/2addr v4, v12

    goto/16 :goto_1

    .line 6822
    .end local v1           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 6823
    iget-object v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v12}, Lcom/htc/opensense2/album/util/ImageManager;->access$1900(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 6824
    const-string v12, "ImageManager"

    const-string v13, "cancel_delete is true 5"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6825
    monitor-exit v11

    goto/16 :goto_0

    .line 6827
    :cond_a
    iget-object v10, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 6828
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6829
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v6, v10, v8

    .line 6830
    .local v6, sortTime2:J
    const-string v10, "ImageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[requery]makeListTime= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms, traversal time= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms, sortTime= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "p)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6832
    const/4 v10, 0x1

    goto/16 :goto_0
.end method
