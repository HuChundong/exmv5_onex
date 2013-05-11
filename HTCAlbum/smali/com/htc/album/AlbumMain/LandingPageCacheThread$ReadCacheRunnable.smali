.class Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;
.super Ljava/lang/Object;
.source "LandingPageCacheThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/AlbumMain/LandingPageCacheThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadCacheRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;


# direct methods
.method private constructor <init>(Lcom/htc/album/AlbumMain/LandingPageCacheThread;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/AlbumMain/LandingPageCacheThread;Lcom/htc/album/AlbumMain/LandingPageCacheThread$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;-><init>(Lcom/htc/album/AlbumMain/LandingPageCacheThread;)V

    return-void
.end method

.method private defaultHideCache(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, dbList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v0, hideList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    return-object v0
.end method

.method private hideListErrorHandle(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 318
    .local p1, hideList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    new-instance v0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    new-instance v1, Lcom/htc/album/TabPluginDevice/TabPluginDevice;

    iget-object v2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    #getter for: Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->access$500(Lcom/htc/album/AlbumMain/LandingPageCacheThread;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/album/TabPluginDevice/TabPluginDevice;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;-><init>(Lcom/htc/opensense/plugin/TabPlugin;)V

    .line 320
    .local v0, myPhone:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 324
    :cond_0
    return-void
.end method

.method private showListErrorHandle(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, tmpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    const/4 v8, 0x0

    .line 328
    if-nez p1, :cond_0

    .line 330
    new-instance p1, Ljava/util/ArrayList;

    .end local p1           #tmpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .restart local p1       #tmpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 334
    .local v4, num:I
    new-instance v3, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    new-instance v6, Lcom/htc/album/TabPluginDevice/TabPluginDevice;

    iget-object v7, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    #getter for: Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->access$500(Lcom/htc/album/AlbumMain/LandingPageCacheThread;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/album/TabPluginDevice/TabPluginDevice;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v6}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;-><init>(Lcom/htc/opensense/plugin/TabPlugin;)V

    .line 336
    .local v3, myphone:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;
    if-nez v4, :cond_2

    .line 338
    invoke-virtual {p1, v8, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 373
    :cond_1
    :goto_0
    return-object p1

    .line 342
    :cond_2
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    .line 344
    .local v1, itemPos:I
    if-eqz v1, :cond_1

    .line 348
    const/4 v6, -0x1

    if-ne v1, v6, :cond_3

    .line 350
    invoke-virtual {p1, v8, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 354
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v2, listToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    .line 358
    .local v5, plugin:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;
    if-eqz v5, :cond_4

    .line 363
    const-string v6, "com.htc.album-com.htc.album.TabPluginDevice.TabPluginDevice"

    invoke-virtual {v5}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getTabTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 365
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 368
    .end local v5           #plugin:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;
    :cond_5
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 369
    invoke-virtual {p1, v8, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private updateListData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, dbList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    .local p2, newshowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    .local p3, hideList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    .local p4, dlnaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 282
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    .line 284
    .local v1, plugin:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;
    if-eqz v1, :cond_0

    .line 289
    const-string v2, "com.htc.album-com.htc.album.TabPluginDLNA.TabPluginDLNA"

    invoke-virtual {v1}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getTabTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v1           #plugin:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;
    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 297
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 298
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 300
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 301
    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 172
    const/4 v3, 0x0

    .line 173
    .local v3, CacheList:Ljava/util/List;,"Ljava/util/List<+Lcom/htc/album/ObjectWriter/ObjectFormatter;>;"
    const/4 v6, 0x0

    .line 175
    .local v6, SendFromCache:Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    move-object/from16 v22, v0

    const-string v23, "land_show"

    #calls: Lcom/htc/album/AlbumMain/LandingPageCacheThread;->isCacheExit(Ljava/lang/String;)Z
    invoke-static/range {v22 .. v23}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->access$100(Lcom/htc/album/AlbumMain/LandingPageCacheThread;Ljava/lang/String;)Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    move-object/from16 v22, v0

    const-string v23, "land_show"

    #calls: Lcom/htc/album/AlbumMain/LandingPageCacheThread;->readFromFileCache(Ljava/lang/String;)Ljava/util/List;
    invoke-static/range {v22 .. v23}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->access$200(Lcom/htc/album/AlbumMain/LandingPageCacheThread;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 179
    :cond_0
    check-cast v3, Ljava/util/ArrayList;

    .end local v3           #CacheList:Ljava/util/List;,"Ljava/util/List<+Lcom/htc/album/ObjectWriter/ObjectFormatter;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;->showListErrorHandle(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v21

    .line 181
    .local v21, showList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    new-instance v6, Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;

    .end local v6           #SendFromCache:Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v21

    invoke-direct {v6, v0, v1, v2}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;-><init>(Lcom/htc/album/AlbumMain/LandingPageCacheThread;ILjava/util/ArrayList;)V

    .line 182
    .restart local v6       #SendFromCache:Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mHandler:Landroid/os/Handler;
    invoke-static/range {v22 .. v22}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->access$300(Lcom/htc/album/AlbumMain/LandingPageCacheThread;)Landroid/os/Handler;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    move-object/from16 v22, v0

    #calls: Lcom/htc/album/AlbumMain/LandingPageCacheThread;->readFromDB()Ljava/util/List;
    invoke-static/range {v22 .. v22}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->access$400(Lcom/htc/album/AlbumMain/LandingPageCacheThread;)Ljava/util/List;

    move-result-object v4

    .local v4, DBFile:Ljava/util/List;,"Ljava/util/List<+Lcom/htc/album/ObjectWriter/ObjectFormatter;>;"
    move-object v9, v4

    .line 187
    check-cast v9, Ljava/util/ArrayList;

    .line 188
    .local v9, dbList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-nez v22, :cond_2

    .line 190
    sget-boolean v22, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v22, :cond_1

    const-string v22, "LandingPageCacheThread"

    const-string v23, "[LandingPageCacheThread][ReadCacheRunnable]: DB result is 0 , add Myphone"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_1
    new-instance v22, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    new-instance v23, Lcom/htc/album/TabPluginDevice/TabPluginDevice;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mContext:Landroid/content/Context;
    invoke-static/range {v24 .. v24}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->access$500(Lcom/htc/album/AlbumMain/LandingPageCacheThread;)Landroid/content/Context;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/htc/album/TabPluginDevice/TabPluginDevice;-><init>(Landroid/content/Context;)V

    invoke-direct/range {v22 .. v23}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;-><init>(Lcom/htc/opensense/plugin/TabPlugin;)V

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_2
    const/4 v13, 0x0

    .line 197
    .local v13, hideList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    move-object/from16 v22, v0

    const-string v23, "land_hide"

    #calls: Lcom/htc/album/AlbumMain/LandingPageCacheThread;->isCacheExit(Ljava/lang/String;)Z
    invoke-static/range {v22 .. v23}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->access$100(Lcom/htc/album/AlbumMain/LandingPageCacheThread;Ljava/lang/String;)Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    move-object/from16 v22, v0

    const-string v23, "land_hide"

    #calls: Lcom/htc/album/AlbumMain/LandingPageCacheThread;->readFromFileCache(Ljava/lang/String;)Ljava/util/List;
    invoke-static/range {v22 .. v23}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->access$200(Lcom/htc/album/AlbumMain/LandingPageCacheThread;Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 201
    .local v12, hideCacheList:Ljava/util/List;,"Ljava/util/List<+Lcom/htc/album/ObjectWriter/ObjectFormatter;>;"
    if-nez v12, :cond_5

    .line 203
    new-instance v13, Ljava/util/ArrayList;

    .end local v13           #hideList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .end local v12           #hideCacheList:Ljava/util/List;,"Ljava/util/List<+Lcom/htc/album/ObjectWriter/ObjectFormatter;>;"
    .restart local v13       #hideList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    :goto_0
    const/4 v7, 0x0

    .line 219
    .local v7, SendFromFinal:Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 220
    .local v17, newShowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v10, dlnaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v11, finalShowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v9, v1, v13, v10}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;->updateListData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 225
    new-instance v5, Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v5, v0, v1, v10}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;-><init>(Lcom/htc/album/AlbumMain/LandingPageCacheThread;ILjava/util/ArrayList;)V

    .line 226
    .local v5, SendForDLNA:Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mHandler:Landroid/os/Handler;
    invoke-static/range {v22 .. v22}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->access$300(Lcom/htc/album/AlbumMain/LandingPageCacheThread;)Landroid/os/Handler;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    new-instance v8, Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v8, v0, v1, v13}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;-><init>(Lcom/htc/album/AlbumMain/LandingPageCacheThread;ILjava/util/ArrayList;)V

    .line 229
    .local v8, SendFromHideCache:Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mHandler:Landroid/os/Handler;
    invoke-static/range {v22 .. v22}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->access$300(Lcom/htc/album/AlbumMain/LandingPageCacheThread;)Landroid/os/Handler;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    const/16 v19, 0x0

    .line 232
    .local v19, noChangeCount:I
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 234
    .local v18, newShowNum:I
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    .line 236
    .local v20, oldPlugin:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;
    if-eqz v20, :cond_3

    .line 241
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    .line 243
    .local v16, newPlugin:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;
    if-eqz v16, :cond_4

    .line 248
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 250
    add-int/lit8 v19, v19, 0x1

    .line 251
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v5           #SendForDLNA:Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;
    .end local v7           #SendFromFinal:Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;
    .end local v8           #SendFromHideCache:Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;
    .end local v10           #dlnaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    .end local v11           #finalShowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #newPlugin:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;
    .end local v17           #newShowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    .end local v18           #newShowNum:I
    .end local v19           #noChangeCount:I
    .end local v20           #oldPlugin:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;
    .restart local v12       #hideCacheList:Ljava/util/List;,"Ljava/util/List<+Lcom/htc/album/ObjectWriter/ObjectFormatter;>;"
    :cond_5
    move-object v13, v12

    .line 207
    check-cast v13, Ljava/util/ArrayList;

    .line 208
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;->hideListErrorHandle(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 213
    .end local v12           #hideCacheList:Ljava/util/List;,"Ljava/util/List<+Lcom/htc/album/ObjectWriter/ObjectFormatter;>;"
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;->defaultHideCache(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v13

    goto/16 :goto_0

    .line 257
    .restart local v5       #SendForDLNA:Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;
    .restart local v7       #SendFromFinal:Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;
    .restart local v8       #SendFromHideCache:Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;
    .restart local v10       #dlnaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    .restart local v11       #finalShowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    .restart local v17       #newShowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    .restart local v18       #newShowNum:I
    .restart local v19       #noChangeCount:I
    :cond_7
    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 259
    new-instance v7, Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;

    .end local v7           #SendFromFinal:Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v17

    invoke-direct {v7, v0, v1, v2}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;-><init>(Lcom/htc/album/AlbumMain/LandingPageCacheThread;ILjava/util/ArrayList;)V

    .line 265
    .restart local v7       #SendFromFinal:Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mHandler:Landroid/os/Handler;
    invoke-static/range {v22 .. v22}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->access$300(Lcom/htc/album/AlbumMain/LandingPageCacheThread;)Landroid/os/Handler;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 267
    return-void

    .line 263
    :cond_8
    new-instance v7, Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;

    .end local v7           #SendFromFinal:Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v7, v0, v1, v11}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;-><init>(Lcom/htc/album/AlbumMain/LandingPageCacheThread;ILjava/util/ArrayList;)V

    .restart local v7       #SendFromFinal:Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;
    goto :goto_2
.end method
