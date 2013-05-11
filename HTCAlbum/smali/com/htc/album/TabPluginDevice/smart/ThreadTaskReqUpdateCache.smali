.class public Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;
.super Lcom/htc/sunny2/common/SimpleThreadTask;
.source "ThreadTaskReqUpdateCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sunny2/common/SimpleThreadTask",
        "<",
        "Landroid/os/Bundle;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ThreadTaskReqUpdateCache"

.field public static final REQUEST_UPDATE_CACHE:I = 0x1

.field public static final REQUEST_UPDATE_CACHE_BY_LOCATION:I = 0x2


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mIsCancelled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/htc/sunny2/common/SimpleThreadTask;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->mContext:Landroid/content/Context;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->mIsCancelled:Z

    .line 25
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method private final isCollectionChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 21
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, cacheCollections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    .local p2, newCollections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    const/4 v2, 0x1

    .line 112
    .local v2, bIsChanged:Z
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 114
    :cond_0
    const-string v17, "ThreadTaskReqUpdateCache"

    const-string v18, "[HTCAlbum][ThreadTaskReqUpdateCache][isCollectionChanged]: list is null"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 208
    .end local v2           #bIsChanged:Z
    .local v3, bIsChanged:I
    :goto_0
    return v3

    .line 118
    .end local v3           #bIsChanged:I
    .restart local v2       #bIsChanged:Z
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 119
    .local v11, iCachedCount:I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 120
    .local v13, iQueriedCount:I
    if-eqz v11, :cond_2

    if-nez v13, :cond_3

    .line 122
    :cond_2
    const-string v17, "ThreadTaskReqUpdateCache"

    const-string v18, "[HTCAlbum][ThreadTaskReqUpdateCache][isCollectionChanged]: list is empty"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 123
    .restart local v3       #bIsChanged:I
    goto :goto_0

    .line 125
    .end local v3           #bIsChanged:I
    :cond_3
    if-eq v11, v13, :cond_4

    const/16 v17, 0x18

    move/from16 v0, v17

    if-gt v13, v0, :cond_4

    .line 127
    const-string v17, "ThreadTaskReqUpdateCache"

    const-string v18, "[HTCAlbum][ThreadTaskReqUpdateCache][isCollectionChanged]: size differs"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 128
    .restart local v3       #bIsChanged:I
    goto :goto_0

    .line 131
    .end local v3           #bIsChanged:I
    :cond_4
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 132
    .local v8, currentSet:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 134
    .local v4, cache:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getTime()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 137
    .end local v4           #cache:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    :cond_5
    const/16 v17, 0x18

    move/from16 v0, v17

    if-ge v13, v0, :cond_6

    move v12, v13

    .line 138
    .local v12, iDifferCount:I
    :goto_2
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    if-ge v9, v12, :cond_13

    .line 140
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 141
    .local v16, queriedSC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    invoke-virtual/range {v16 .. v16}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getTime()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 143
    .local v7, cachedSC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    if-nez v7, :cond_7

    .line 145
    const-string v17, "ThreadTaskReqUpdateCache"

    const-string v18, "[HTCAlbum][ThreadTaskReqUpdateCache][isCollectionChanged]: collection item differs"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 146
    .restart local v3       #bIsChanged:I
    goto :goto_0

    .line 137
    .end local v3           #bIsChanged:I
    .end local v7           #cachedSC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    .end local v9           #i:I
    .end local v12           #iDifferCount:I
    .end local v16           #queriedSC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    :cond_6
    const/16 v12, 0x18

    goto :goto_2

    .line 149
    .restart local v7       #cachedSC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    .restart local v9       #i:I
    .restart local v12       #iDifferCount:I
    .restart local v16       #queriedSC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    :cond_7
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLatitude:D

    move-wide/from16 v17, v0

    iget-wide v0, v7, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLatitude:D

    move-wide/from16 v19, v0

    cmpl-double v17, v17, v19

    if-nez v17, :cond_8

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLongitude:D

    move-wide/from16 v17, v0

    iget-wide v0, v7, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLongitude:D

    move-wide/from16 v19, v0

    cmpl-double v17, v17, v19

    if-eqz v17, :cond_9

    .line 151
    :cond_8
    const-string v17, "ThreadTaskReqUpdateCache"

    const-string v18, "[HTCAlbum][ThreadTaskReqUpdateCache][isCollectionChanged]: location differs"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 152
    .restart local v3       #bIsChanged:I
    goto/16 :goto_0

    .line 154
    .end local v3           #bIsChanged:I
    :cond_9
    invoke-virtual/range {v16 .. v16}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getPhotoCount()I

    move-result v17

    invoke-virtual {v7}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getPhotoCount()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    .line 156
    const-string v17, "ThreadTaskReqUpdateCache"

    const-string v18, "[HTCAlbum][ThreadTaskReqUpdateCache][isCollectionChanged]: count differs"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 157
    .restart local v3       #bIsChanged:I
    goto/16 :goto_0

    .line 159
    .end local v3           #bIsChanged:I
    :cond_a
    invoke-virtual/range {v16 .. v16}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getSupportedMediaTypes()I

    move-result v17

    invoke-virtual {v7}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getSupportedMediaTypes()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_b

    .line 161
    const-string v17, "ThreadTaskReqUpdateCache"

    const-string v18, "[HTCAlbum][ThreadTaskReqUpdateCache][isCollectionChanged]: Media Type changed!!"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 162
    .restart local v3       #bIsChanged:I
    goto/16 :goto_0

    .line 165
    .end local v3           #bIsChanged:I
    :cond_b
    invoke-virtual/range {v16 .. v16}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getCoverImage()Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v15

    .line 166
    .local v15, queriedImage:Lcom/htc/album/modules/collection/SimpleImage;
    invoke-virtual {v7}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getCoverImage()Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v6

    .line 167
    .local v6, cachedImage:Lcom/htc/album/modules/collection/SimpleImage;
    if-eqz v15, :cond_d

    if-eqz v6, :cond_d

    .line 169
    iget-wide v0, v15, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    move-wide/from16 v17, v0

    iget-wide v0, v6, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    move-wide/from16 v19, v0

    cmp-long v17, v17, v19

    if-eqz v17, :cond_c

    .line 171
    const-string v17, "ThreadTaskReqUpdateCache"

    const-string v18, "[HTCAlbum][ThreadTaskReqUpdateCache][isCollectionChanged]: item time differs"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 172
    .restart local v3       #bIsChanged:I
    goto/16 :goto_0

    .line 174
    .end local v3           #bIsChanged:I
    :cond_c
    iget v0, v15, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    move/from16 v17, v0

    iget v0, v6, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    .line 176
    const-string v17, "ThreadTaskReqUpdateCache"

    const-string v18, "[HTCAlbum][ThreadTaskReqUpdateCache][isCollectionChanged]: item degree of rotation differs"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 177
    .restart local v3       #bIsChanged:I
    goto/16 :goto_0

    .line 180
    .end local v3           #bIsChanged:I
    :cond_d
    if-nez v15, :cond_e

    if-nez v6, :cond_f

    :cond_e
    if-eqz v15, :cond_10

    if-nez v6, :cond_10

    .line 182
    :cond_f
    const-string v17, "ThreadTaskReqUpdateCache"

    const-string v18, "[HTCAlbum][ThreadTaskReqUpdateCache][isCollectionChanged]: cover image differs"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 183
    .restart local v3       #bIsChanged:I
    goto/16 :goto_0

    .line 186
    .end local v3           #bIsChanged:I
    :cond_10
    invoke-virtual/range {v16 .. v16}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v14

    .line 187
    .local v14, queriedDisplayName:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 188
    .local v5, cacheDisplayName:Ljava/lang/String;
    if-eqz v14, :cond_11

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_11

    .line 190
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_12

    .line 192
    const-string v17, "ThreadTaskReqUpdateCache"

    const-string v18, "[HTCAlbum][ThreadTaskReqUpdateCache][isCollectionChanged] 1: name differs"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 193
    .restart local v3       #bIsChanged:I
    goto/16 :goto_0

    .line 196
    .end local v3           #bIsChanged:I
    :cond_11
    if-eqz v5, :cond_12

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_12

    .line 198
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_12

    .line 200
    const-string v17, "ThreadTaskReqUpdateCache"

    const-string v18, "[HTCAlbum][ThreadTaskReqUpdateCache][isCollectionChanged] 2: name differs"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 201
    .restart local v3       #bIsChanged:I
    goto/16 :goto_0

    .line 138
    .end local v3           #bIsChanged:I
    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 206
    .end local v5           #cacheDisplayName:Ljava/lang/String;
    .end local v6           #cachedImage:Lcom/htc/album/modules/collection/SimpleImage;
    .end local v7           #cachedSC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    .end local v14           #queriedDisplayName:Ljava/lang/String;
    .end local v15           #queriedImage:Lcom/htc/album/modules/collection/SimpleImage;
    .end local v16           #queriedSC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    :cond_13
    const/4 v2, 0x0

    move v3, v2

    .line 208
    .restart local v3       #bIsChanged:I
    goto/16 :goto_0
.end method


# virtual methods
.method protected doInBackground(Landroid/os/Bundle;)Ljava/lang/Integer;
    .locals 8
    .parameter "params"

    .prologue
    const/4 v7, 0x1

    .line 37
    const-string v4, "ThreadTaskReqUpdateCache"

    const-string v5, "[HTCAlbum][ThreadTaskReqUpdateCache][doInBackground]: +"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v4, "updateFlag"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 40
    .local v3, nUpdateFlag:I
    const-string v4, "ThreadTaskReqUpdateCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ThreadTaskReqUpdateCache][doInBackground]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v4, "listA"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 43
    .local v1, listA:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    const-string v4, "listB"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 45
    .local v2, listB:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    const/4 v0, 0x0

    .line 46
    .local v0, bIsNeedUpdate:Z
    packed-switch v3, :pswitch_data_0

    .line 59
    const-string v4, "ThreadTaskReqUpdateCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ThreadTaskReqUpdateCache][doInBackground]: unknow flag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :goto_0
    const-string v4, "ThreadTaskReqUpdateCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ThreadTaskReqUpdateCache][doInBackground]: need update to cache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-boolean v4, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->mIsCancelled:Z

    if-nez v4, :cond_0

    if-ne v7, v0, :cond_0

    .line 66
    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->onWriteCache(Ljava/util/ArrayList;)V

    .line 69
    :cond_0
    const-string v4, "ThreadTaskReqUpdateCache"

    const-string v5, "[HTCAlbum][ThreadTaskReqUpdateCache][doInBackground]: -"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 50
    :pswitch_0
    invoke-direct {p0, v2, v1}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->isCollectionChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    .line 51
    goto :goto_0

    .line 55
    :pswitch_1
    const/4 v0, 0x1

    .line 56
    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    check-cast p1, Landroid/os/Bundle;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->doInBackground(Landroid/os/Bundle;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->mIsCancelled:Z

    .line 87
    const-string v0, "ThreadTaskReqUpdateCache"

    const-string v1, "[HTCAlbum][ThreadTaskReqUpdateCache][onCancelled]: update cancelled..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->onCancelled(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 92
    if-nez p1, :cond_1

    .line 94
    const-string v0, "ThreadTaskReqUpdateCache"

    const-string v1, "[HTCAlbum][ThreadTaskReqUpdateCache][onPostExecute]: result is null"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 100
    const-string v0, "ThreadTaskReqUpdateCache"

    const-string v1, "[HTCAlbum][ThreadTaskReqUpdateCache][onPostExecute]: no update requested..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 104
    const-string v0, "ThreadTaskReqUpdateCache"

    const-string v1, "[HTCAlbum][ThreadTaskReqUpdateCache][onPostExecute]: update done..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute(Landroid/os/Bundle;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 32
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    check-cast p1, Landroid/os/Bundle;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->onPreExecute(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onWriteCache(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->mContext:Landroid/content/Context;

    const-string v1, "local"

    const-string v2, "event"

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/16 v6, 0x18

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lcom/htc/album/ObjectWriter/AlbumCacher;->writeCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;III)V

    .line 82
    return-void
.end method
