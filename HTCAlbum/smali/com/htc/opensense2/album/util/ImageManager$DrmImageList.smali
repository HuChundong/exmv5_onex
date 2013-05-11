.class Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;
.super Lcom/htc/opensense2/album/util/ImageManager$ImageList;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/util/ImageManager$IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrmImageList"
.end annotation


# instance fields
.field final INDEX_BUCKET_NAME:I

.field final INDEX_DATA:I

.field final INDEX_DATE_ADDED:I

.field final INDEX_DELIVERY_TYPE:I

.field final INDEX_DISPLAYNAME:I

.field final INDEX_EXISTENCE:I

.field final INDEX_ID:I

.field final INDEX_MIME_TYPE:I

.field final INDEX_SIZE:I

.field final INDEX_TITLE:I

.field mIncludeTypes:I

.field mSetAsCount:I

.field mSharableCount:I

.field final synthetic this$0:Lcom/htc/opensense2/album/util/ImageManager;

.field tmpCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;ILjava/lang/String;Z)V
    .locals 13
    .parameter
    .parameter "ctx"
    .parameter "cr"
    .parameter "imageUri"
    .parameter "sort"
    .parameter "bucketId"
    .parameter "includeType"
    .parameter "where"
    .parameter "isFavorite"

    .prologue
    .line 4198
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    .line 4199
    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v1 .. v12}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 4179
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$900()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_ID:I

    .line 4180
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$900()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "_data"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_DATA:I

    .line 4181
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$900()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "_size"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_SIZE:I

    .line 4182
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$900()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "_display_name"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_DISPLAYNAME:I

    .line 4183
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$900()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "mime_type"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_MIME_TYPE:I

    .line 4184
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$900()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_TITLE:I

    .line 4185
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$900()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "date_added"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_DATE_ADDED:I

    .line 4186
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$900()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "bucket_display_name"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_BUCKET_NAME:I

    .line 4187
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$900()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "existence"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_EXISTENCE:I

    .line 4188
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$900()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "delivery_type"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_DELIVERY_TYPE:I

    .line 4193
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mSharableCount:I

    .line 4194
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mSetAsCount:I

    .line 4195
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mIncludeTypes:I

    .line 4200
    move/from16 v0, p7

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mIncludeTypes:I

    .line 4201
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->getDrmShareCount()V

    .line 4202
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->getDrmSetAsCount()V

    .line 4203
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->createDrmOwnCursor()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    .line 4205
    return-void
.end method

.method private sortOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4442
    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mSort:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v0, " ASC"

    .line 4443
    .local v0, ascending:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "date_added"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4442
    .end local v0           #ascending:Ljava/lang/String;
    :cond_0
    const-string v0, " DESC"

    goto :goto_0
.end method


# virtual methods
.method public checkThumbnail(Lcom/htc/opensense2/album/util/ImageManager$BaseImage;Landroid/database/Cursor;I)J
    .locals 2
    .parameter "existingImage"
    .parameter "c"
    .parameter "i"

    .prologue
    .line 4346
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected createCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 4337
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createDrmOwnCursor()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 4341
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$900()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->whereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->sortOrder()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getDrmSetAsCount()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x3

    .line 4252
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 4254
    .local v6, queryArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "(existence=?"

    .line 4255
    .local v3, wheweClause:Ljava/lang/String;
    const-string v0, "exist"

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4256
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBucketId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and bucket_id=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4258
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBucketId:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4261
    :cond_0
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mIsFavorite:Z

    if-eqz v0, :cond_1

    .line 4262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and favorite=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4263
    const-string v0, "1"

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4266
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and delivery_type=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4267
    const-string v0, "1"

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4270
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drm query statement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4271
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 4272
    .local v4, whereClauseArgs:[Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4273
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_2

    .line 4274
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "existence"

    aput-object v8, v2, v7

    const/4 v7, 0x1

    const-string v8, "delivery_type"

    aput-object v8, v2, v7

    const/4 v7, 0x2

    const-string v8, "favorite"

    aput-object v8, v2, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->tmpCursor:Landroid/database/Cursor;

    .line 4277
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->tmpCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 4278
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->tmpCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mSetAsCount:I

    .line 4279
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->tmpCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4280
    iput-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->tmpCursor:Landroid/database/Cursor;

    .line 4282
    :cond_3
    return-void
.end method

.method public getDrmShareCount()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x3

    .line 4218
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 4220
    .local v6, queryArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "(existence=?"

    .line 4221
    .local v3, wheweClause:Ljava/lang/String;
    const-string v0, "exist"

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4222
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBucketId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and bucket_id=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4224
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBucketId:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4227
    :cond_0
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mIsFavorite:Z

    if-eqz v0, :cond_1

    .line 4228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and favorite=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4229
    const-string v0, "1"

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4232
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and delivery_type=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4233
    const-string v0, "3"

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4236
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drm query statement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4237
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 4238
    .local v4, whereClauseArgs:[Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4239
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_2

    .line 4240
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "existence"

    aput-object v8, v2, v7

    const/4 v7, 0x1

    const-string v8, "delivery_type"

    aput-object v8, v2, v7

    const/4 v7, 0x2

    const-string v8, "favorite"

    aput-object v8, v2, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->tmpCursor:Landroid/database/Cursor;

    .line 4243
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->tmpCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 4244
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->tmpCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mSharableCount:I

    .line 4245
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->tmpCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4246
    iput-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->tmpCursor:Landroid/database/Cursor;

    .line 4248
    :cond_3
    return-void
.end method

.method public getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 14
    .parameter "i"

    .prologue
    .line 4351
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v10

    .line 4352
    .local v10, c:Landroid/database/Cursor;
    if-nez v10, :cond_0

    const/4 v12, 0x0

    .line 4375
    :goto_0
    return-object v12

    .line 4353
    :cond_0
    monitor-enter v10

    .line 4356
    :try_start_0
    invoke-interface {v10, p1}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 4360
    .local v13, moved:Z
    if-eqz v13, :cond_2

    .line 4362
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 4363
    .local v1, id:J
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 4364
    .local v12, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v12, :cond_1

    .line 4365
    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v6, p0

    move v9, p1

    invoke-virtual/range {v0 .. v9}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->make(JJLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$IImageList;JI)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v12

    .line 4366
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4368
    :cond_1
    :try_start_2
    monitor-exit v10

    goto :goto_0

    .line 4377
    .end local v1           #id:J
    .end local v12           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v13           #moved:Z
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 4357
    :catch_0
    move-exception v11

    .line 4358
    .local v11, ex:Ljava/lang/Exception;
    const/4 v12, 0x0

    :try_start_3
    monitor-exit v10

    goto :goto_0

    .line 4369
    .end local v11           #ex:Ljava/lang/Exception;
    .restart local v13       #moved:Z
    :catch_1
    move-exception v11

    .line 4370
    .restart local v11       #ex:Ljava/lang/Exception;
    const-string v0, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got this exception trying to create image object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4371
    const/4 v12, 0x0

    monitor-exit v10

    goto :goto_0

    .line 4374
    .end local v11           #ex:Ljava/lang/Exception;
    :cond_2
    const-string v0, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to moveTo to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; count is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4375
    const/4 v12, 0x0

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public getImages(Ljava/util/List;)V
    .locals 14
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
    .line 4381
    .local p1, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    if-nez p1, :cond_1

    .line 4411
    :cond_0
    :goto_0
    return-void

    .line 4385
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v10

    .line 4386
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 4390
    monitor-enter v10

    .line 4391
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 4393
    .local v13, totalCount:I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4394
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v13, :cond_3

    .line 4396
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 4397
    .local v1, id:J
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 4398
    .local v12, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v12, :cond_2

    .line 4399
    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v6, p0

    invoke-virtual/range {v0 .. v9}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->make(JJLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$IImageList;JI)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v12

    .line 4400
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4403
    :cond_2
    invoke-interface {p1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4408
    .end local v1           #id:J
    .end local v12           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :goto_2
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 4394
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 4404
    :catch_0
    move-exception v11

    .line 4405
    .local v11, ex:Ljava/lang/Exception;
    const-string v0, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getImages] got this exception trying to create image object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4410
    .end local v9           #i:I
    .end local v11           #ex:Ljava/lang/Exception;
    .end local v13           #totalCount:I
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .restart local v9       #i:I
    .restart local v13       #totalCount:I
    :cond_3
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public getSetAsCount()I
    .locals 1

    .prologue
    .line 4212
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mSetAsCount:I

    return v0
.end method

.method public getSharableCount()I
    .locals 1

    .prologue
    .line 4208
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mSharableCount:I

    return v0
.end method

.method protected indexBucketName()I
    .locals 1

    .prologue
    .line 4437
    const/4 v0, -0x1

    return v0
.end method

.method protected indexData()I
    .locals 1

    .prologue
    .line 4424
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_DATA:I

    return v0
.end method

.method protected indexDateAdded()I
    .locals 1

    .prologue
    .line 4435
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_DATE_ADDED:I

    return v0
.end method

.method protected indexDateModified()I
    .locals 1

    .prologue
    .line 4436
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDateTaken()I
    .locals 1

    .prologue
    .line 4420
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDeliveryType()I
    .locals 1

    .prologue
    .line 4438
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_DELIVERY_TYPE:I

    return v0
.end method

.method protected indexDescription()I
    .locals 1

    .prologue
    .line 4421
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDisplayName()I
    .locals 1

    .prologue
    .line 4431
    const/4 v0, -0x1

    return v0
.end method

.method protected indexId()I
    .locals 1

    .prologue
    .line 4423
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_ID:I

    return v0
.end method

.method protected indexLatitude()I
    .locals 1

    .prologue
    .line 4425
    const/4 v0, -0x1

    return v0
.end method

.method protected indexLongitude()I
    .locals 1

    .prologue
    .line 4426
    const/4 v0, -0x1

    return v0
.end method

.method protected indexMimeType()I
    .locals 1

    .prologue
    .line 4422
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_MIME_TYPE:I

    return v0
.end method

.method protected indexMiniThumbId()I
    .locals 1

    .prologue
    .line 4427
    const/4 v0, -0x1

    return v0
.end method

.method protected indexOrientation()I
    .locals 1

    .prologue
    .line 4419
    const/4 v0, -0x1

    return v0
.end method

.method protected indexPicasaWeb()I
    .locals 1

    .prologue
    .line 4428
    const/4 v0, -0x1

    return v0
.end method

.method protected indexPrivate()I
    .locals 1

    .prologue
    .line 4429
    const/4 v0, -0x1

    return v0
.end method

.method protected indexThumbId()I
    .locals 1

    .prologue
    .line 4432
    const/4 v0, -0x1

    return v0
.end method

.method protected indexTitle()I
    .locals 1

    .prologue
    .line 4430
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_TITLE:I

    return v0
.end method

.method protected make(JJLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$IImageList;JI)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 8
    .parameter "id"
    .parameter "miniThumbId"
    .parameter "cr"
    .parameter "list"
    .parameter "timestamp"
    .parameter "index"

    .prologue
    .line 4415
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    move-wide v2, p1

    move-object v6, p0

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;-><init>(Lcom/htc/opensense2/album/util/ImageManager;JLandroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;I)V

    return-object v0
.end method

.method protected requery()V
    .locals 4

    .prologue
    .line 4450
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 4451
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 4452
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 4453
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    move-result v0

    .line 4454
    .local v0, result:Z
    const-string v1, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DrmImageList cursor requery result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4458
    .end local v0           #result:Z
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursorDeactivated:Z

    .line 4459
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->getDrmShareCount()V

    .line 4460
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->getDrmSetAsCount()V

    .line 4461
    return-void

    .line 4456
    :cond_1
    const-string v1, "ImageManager"

    const-string v2, "DrmImageList cursor is NULL"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected whereClause()Ljava/lang/String;
    .locals 5

    .prologue
    .line 4286
    const-string v0, "(existence=?"

    .line 4287
    .local v0, query:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBucketId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and bucket_id=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4291
    :cond_0
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mIncludeTypes:I

    and-int/lit8 v2, v2, 0xe

    const/16 v3, 0xe

    if-eq v2, v3, :cond_4

    .line 4292
    const/4 v1, 0x0

    .line 4293
    .local v1, temp:Ljava/lang/String;
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mIncludeTypes:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 4294
    const-string v1, "delivery_type= \'1\'"

    .line 4296
    :cond_1
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mIncludeTypes:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 4297
    if-nez v1, :cond_6

    .line 4298
    const-string v1, "delivery_type= \'2\'"

    .line 4303
    :cond_2
    :goto_0
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mIncludeTypes:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 4304
    if-nez v1, :cond_7

    .line 4305
    const-string v1, "delivery_type= \'3\'"

    .line 4310
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4314
    .end local v1           #temp:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mWhereStatement:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 4315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mWhereStatement:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4317
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4318
    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drm query statement "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4320
    return-object v0

    .line 4300
    .restart local v1       #temp:Ljava/lang/String;
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "delivery_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "= \'2\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4307
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "delivery_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "= \'3\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method protected whereClauseArgs()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 4324
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4325
    .local v1, queryArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "exist"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4326
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBucketId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4327
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mBucketId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4330
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 4331
    .local v0, args:[Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4332
    return-object v0
.end method
