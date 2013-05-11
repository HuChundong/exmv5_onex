.class public Lcom/htc/album/ObjectWriter/AlbumCacher;
.super Ljava/lang/Object;
.source "AlbumCacher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;
    }
.end annotation


# static fields
.field public static final CACHE_ACTIVEUSER:Ljava/lang/String; = ".auser"

.field public static final CACHE_ACTIVEUSER_ID:I = 0x3

.field public static final CACHE_CAR_EVENT:Ljava/lang/String; = "car_event"

.field public static final CACHE_CAR_EVENT_ID:I = 0x7

.field public static final CACHE_CAR_LOCAL:Ljava/lang/String; = "car_local"

.field public static final CACHE_CAR_LOCAL_ID:I = 0x6

.field public static final CACHE_EVENT:Ljava/lang/String; = "event"

.field public static final CACHE_EVENT_ID:I = 0x1

.field public static final CACHE_LAND:Ljava/lang/String; = "land_show"

.field public static final CACHE_LAND_HIDE:Ljava/lang/String; = "land_hide"

.field public static final CACHE_LAND_ID:I = 0x2

.field public static final CACHE_LOCAL:Ljava/lang/String; = "local"

.field public static final CACHE_LOCAL_ID:I = 0x0

.field public static final CACHE_PICKER_EVENT:Ljava/lang/String; = "picker_event"

.field public static final CACHE_PICKER_EVENT_ID:I = 0x5

.field public static final CACHE_PICKER_LOCAL:Ljava/lang/String; = "picker_local"

.field public static final CACHE_PICKER_LOCAL_ID:I = 0x4

.field public static final EXTENSION_CACHEALBUMLIST:Ljava/lang/String; = ".alist"

.field public static final EXTENSION_CACHEALBUMLIST_ID:I = 0xb

.field public static final EXTENSION_CACHECOMMENTHEADER:Ljava/lang/String; = ".cpheader"

.field public static final EXTENSION_CACHECOMMENTHEADER_ID:I = 0x12

.field public static final EXTENSION_CACHECOMMENTLIST:Ljava/lang/String; = ".cplist"

.field public static final EXTENSION_CACHECOMMENTLIST_ID:I = 0x11

.field public static final EXTENSION_CACHEFOLDERFILTERLIST:Ljava/lang/String; = ".fflist"

.field public static final EXTENSION_CACHEFOLDERFILTERLIST_ID:I = 0x9

.field public static final EXTENSION_CACHEFOLDERLIST:Ljava/lang/String; = ".flist"

.field public static final EXTENSION_CACHEFOLDERLIST_ID:I = 0x8

.field public static final EXTENSION_CACHEFRIENDLIST:Ljava/lang/String; = ".clist"

.field public static final EXTENSION_CACHEFRIENDLIST_ID:I = 0xa

.field public static final EXTENSION_CACHELANDINGPAGE:Ljava/lang/String; = ".landlist"

.field public static final EXTENSION_CACHELANDINGPAGE_ID:I = 0x10

.field public static final EXTENSION_CACHEPHOTOLIST:Ljava/lang/String; = ".plist"

.field public static final EXTENSION_CACHEPHOTOLIST_ID:I = 0xc

.field public static final EXTENSION_CACHEPOMLIST:Ljava/lang/String; = ".pomlist"

.field public static final EXTENSION_CACHEPOMLIST_ID:I = 0xf

.field public static final EXTENSION_CACHERECENTLIST:Ljava/lang/String; = ".ruplist"

.field public static final EXTENSION_CACHERECENTLIST_ID:I = 0xd

.field public static final EXTENSION_CACHERECENTVLIST:Ljava/lang/String; = ".ruvlist"

.field public static final EXTENSION_CACHERECENTVLIST_ID:I = 0xe

.field private static final LOG_TAG:Ljava/lang/String; = "AlbumCacher"

.field public static final MAX_CARMODE_CACHE_SIZE:I = 0xc

.field public static final MAX_EVENT_CACHE_SIZE:I = 0x18

.field public static final UID_TYPE_IMAGES:Ljava/lang/String; = "images"

.field public static final UID_TYPE_MIXED:Ljava/lang/String; = "mixed"

.field public static final UID_TYPE_VIDEOS:Ljava/lang/String; = "videos"

.field protected static getCacheType:[Ljava/lang/String;

.field private static mCacheThread:Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "local"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "event"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "land_show"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ".auser"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "picker_local"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "picker_event"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "car_local"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "car_event"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ".flist"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ".fflist"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ".clist"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, ".alist"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, ".plist"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, ".ruplist"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, ".ruvlist"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, ".pomlist"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, ".landlist"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, ".cplist"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, ".cpheader"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/ObjectWriter/AlbumCacher;->getCacheType:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 441
    return-void
.end method

.method public static final cancelThread()V
    .locals 1

    .prologue
    .line 435
    sget-object v0, Lcom/htc/album/ObjectWriter/AlbumCacher;->mCacheThread:Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/album/ObjectWriter/AlbumCacher;->mCacheThread:Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;

    invoke-virtual {v0}, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    sget-object v0, Lcom/htc/album/ObjectWriter/AlbumCacher;->mCacheThread:Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;

    invoke-virtual {v0}, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->cancel()V

    .line 437
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/album/ObjectWriter/AlbumCacher;->mCacheThread:Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;

    .line 439
    :cond_0
    return-void
.end method

.method private static getFileCacheName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "szService"
    .parameter "szUID"
    .parameter "szExtension"

    .prologue
    .line 483
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 484
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/htc/album/ObjectWriter/AlbumCacher;->getCacheType:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 485
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getListObjectFormatterInstance(II)Ljava/util/List;
    .locals 7
    .parameter "size"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/album/ObjectWriter/ObjectFormatter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 309
    .local v2, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/ObjectWriter/ObjectFormatter;>;"
    packed-switch p1, :pswitch_data_0

    .line 336
    const-string v5, "AlbumCacher"

    const-string v6, "[AlbumCacher][getListObjectFormatterInstance] Undefine type, can\'t get instance"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const/4 v2, 0x0

    .line 341
    :cond_0
    :pswitch_0
    return-object v2

    .line 312
    :pswitch_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 313
    new-instance v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;-><init>()V

    .line 314
    .local v0, ac:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    .end local v0           #ac:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .end local v1           #i:I
    :pswitch_2
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    if-ge v1, p0, :cond_0

    .line 319
    new-instance v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-direct {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>()V

    .line 320
    .local v4, wp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 330
    .end local v1           #i:I
    .end local v4           #wp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :pswitch_3
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, p0, :cond_0

    .line 331
    new-instance v3, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    invoke-direct {v3}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;-><init>()V

    .line 332
    .local v3, tp:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static final getLocalFolderFilterCache(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x9

    .line 129
    const/4 v0, 0x0

    .line 131
    .local v0, filter:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    const-string v3, "local"

    const-string v4, "local"

    invoke-static {p0, v3, v4, v6}, Lcom/htc/album/ObjectWriter/AlbumCacher;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 138
    .local v1, hidden:Z
    if-nez v1, :cond_0

    .line 155
    :goto_0
    return-object v2

    .line 141
    :cond_0
    const-string v3, "local"

    const-string v4, "local"

    const/4 v5, 0x1

    invoke-static {p0, v3, v4, v6, v5}, Lcom/htc/album/ObjectWriter/AlbumCacher;->readCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .end local v0           #filter:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 149
    .restart local v0       #filter:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    if-nez v0, :cond_1

    .line 151
    const-string v3, "AlbumCacher"

    const-string v4, "[HTCAlbum][AlbumCacher][getLocalFolderFilterCache]: null list error..."

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 155
    goto :goto_0
.end method

.method public static isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 9
    .parameter "context"
    .parameter "szService"
    .parameter "szUID"
    .parameter "szExtension"

    .prologue
    .line 100
    const/4 v0, 0x1

    .line 101
    .local v0, bResult:Z
    const/4 v3, 0x0

    .line 102
    .local v3, fileIS:Ljava/io/FileInputStream;
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v1, v0

    .line 125
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 105
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/htc/album/ObjectWriter/AlbumCacher;->getFileCacheName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, szFileName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 115
    :goto_1
    if-eqz v3, :cond_2

    .line 118
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    const/4 v3, 0x0

    .line 124
    :cond_2
    :goto_2
    const-string v5, "AlbumCacher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][AlbumCacher][isFileCacheExist]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 125
    .restart local v1       #bResult:I
    goto :goto_0

    .line 110
    .end local v1           #bResult:I
    :catch_0
    move-exception v2

    .line 112
    .local v2, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 113
    const-string v5, "AlbumCacher"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "[HTCAlbum][AlbumCacher][isFileCacheExist] FileNotFoundException: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v7, 0x2

    const-string v8, " is not exist..."

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 120
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 121
    .local v2, e:Ljava/io/IOException;
    const-string v5, "AlbumCacher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][AlbumCacher][isFileCacheExist] IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static declared-synchronized readCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 23
    .parameter "context"
    .parameter "szService"
    .parameter "szUID"
    .parameter "szExtension"
    .parameter "version"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<+",
            "Lcom/htc/album/ObjectWriter/ObjectFormatter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    const-class v18, Lcom/htc/album/ObjectWriter/AlbumCacher;

    monitor-enter v18

    const/4 v4, 0x0

    .line 228
    .local v4, fileIS:Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 229
    .local v8, in:Ljava/io/BufferedReader;
    const/4 v13, 0x0

    .line 230
    .local v13, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/ObjectWriter/ObjectFormatter;>;"
    :try_start_0
    const-string v17, "AlbumCacher"

    const-string v19, "[HTCAlbum][AlbumCacher][readCache]: Begin"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 233
    :cond_0
    const/16 v17, 0x0

    .line 303
    :goto_0
    monitor-exit v18

    return-object v17

    .line 235
    :cond_1
    :try_start_1
    invoke-static/range {p1 .. p3}, Lcom/htc/album/ObjectWriter/AlbumCacher;->getFileCacheName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v15

    .line 239
    .local v15, szFileName:Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 240
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 241
    .end local v8           #in:Ljava/io/BufferedReader;
    .local v9, in:Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 244
    .local v6, header:Ljava/lang/String;
    if-eqz v6, :cond_2

    const-string v17, "VERSION:"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 245
    :cond_2
    const-string v17, "AlbumCacher"

    const-string v19, "[HTCAlbum][AlbumCacher][readCache]: Wrong Header"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const/16 v17, 0x0

    move-object v8, v9

    .end local v9           #in:Ljava/io/BufferedReader;
    .restart local v8       #in:Ljava/io/BufferedReader;
    goto :goto_0

    .line 249
    .end local v8           #in:Ljava/io/BufferedReader;
    .restart local v9       #in:Ljava/io/BufferedReader;
    :cond_3
    const/16 v17, 0x8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 251
    .local v5, fileVer:I
    move/from16 v2, p4

    .line 252
    .local v2, currentVer:I
    const/4 v10, 0x0

    .line 253
    .local v10, isVersionChange:Z
    if-ge v5, v2, :cond_4

    .line 254
    const/4 v10, 0x1

    .line 255
    const-string v17, "AlbumCacher"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[HTCAlbum][AlbumCacher][readCache]: Version Change "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    :cond_4
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v11, listContent:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v16, ""

    .line 261
    .local v16, temp:Ljava/lang/String;
    :goto_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_7

    .line 262
    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 279
    .end local v2           #currentVer:I
    .end local v5           #fileVer:I
    .end local v6           #header:Ljava/lang/String;
    .end local v10           #isVersionChange:Z
    .end local v11           #listContent:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v16           #temp:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v8, v9

    .line 281
    .end local v9           #in:Ljava/io/BufferedReader;
    .local v3, e:Ljava/lang/Exception;
    .restart local v8       #in:Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    const-string v17, "AlbumCacher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][AlbumCacher][readCache] Exception: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 282
    const/4 v13, 0x0

    .line 284
    .end local v3           #e:Ljava/lang/Exception;
    :goto_3
    if-eqz v8, :cond_5

    .line 287
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 288
    const/4 v8, 0x0

    .line 293
    :cond_5
    :goto_4
    if-eqz v4, :cond_6

    .line 296
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 297
    const/4 v4, 0x0

    .line 302
    :cond_6
    :goto_5
    :try_start_7
    const-string v17, "AlbumCacher"

    const-string v19, "[HTCAlbum][AlbumCacher][readCache]: End"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v17, v13

    .line 303
    goto/16 :goto_0

    .line 264
    .end local v8           #in:Ljava/io/BufferedReader;
    .restart local v2       #currentVer:I
    .restart local v5       #fileVer:I
    .restart local v6       #header:Ljava/lang/String;
    .restart local v9       #in:Ljava/io/BufferedReader;
    .restart local v10       #isVersionChange:Z
    .restart local v11       #listContent:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16       #temp:Ljava/lang/String;
    :cond_7
    :try_start_8
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    .line 265
    .local v14, size:I
    move/from16 v0, p3

    invoke-static {v14, v0}, Lcom/htc/album/ObjectWriter/AlbumCacher;->getListObjectFormatterInstance(II)Ljava/util/List;

    move-result-object v13

    .line 266
    if-eqz v13, :cond_9

    .line 267
    const/4 v7, 0x0

    .local v7, i:I
    :goto_6
    if-ge v7, v14, :cond_8

    .line 268
    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/album/ObjectWriter/ObjectFormatter;

    .line 269
    .local v12, listMember:Lcom/htc/album/ObjectWriter/ObjectFormatter;
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v12, v10, v2, v5, v0}, Lcom/htc/album/ObjectWriter/ObjectFormatter;->readFrom(ZIILjava/lang/String;)V

    .line 267
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 271
    .end local v12           #listMember:Lcom/htc/album/ObjectWriter/ObjectFormatter;
    :cond_8
    const-string v17, "AlbumCacher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][AlbumCacher][readCache]: Successful: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .end local v7           #i:I
    :cond_9
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 275
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 276
    const/4 v8, 0x0

    .line 277
    .end local v9           #in:Ljava/io/BufferedReader;
    .restart local v8       #in:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    goto :goto_3

    .line 289
    .end local v2           #currentVer:I
    .end local v5           #fileVer:I
    .end local v6           #header:Ljava/lang/String;
    .end local v10           #isVersionChange:Z
    .end local v11           #listContent:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v14           #size:I
    .end local v16           #temp:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 290
    .local v3, e:Ljava/io/IOException;
    :try_start_9
    const-string v17, "AlbumCacher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][AlbumCacher][readCache] IOException 1: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .line 227
    .end local v3           #e:Ljava/io/IOException;
    .end local v15           #szFileName:Ljava/lang/String;
    :catchall_0
    move-exception v17

    :goto_7
    monitor-exit v18

    throw v17

    .line 298
    .restart local v15       #szFileName:Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 299
    .restart local v3       #e:Ljava/io/IOException;
    :try_start_a
    const-string v17, "AlbumCacher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][AlbumCacher][readCache] IOException 2: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_5

    .line 279
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    goto/16 :goto_2

    .line 227
    .end local v8           #in:Ljava/io/BufferedReader;
    .restart local v9       #in:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v17

    move-object v8, v9

    .end local v9           #in:Ljava/io/BufferedReader;
    .restart local v8       #in:Ljava/io/BufferedReader;
    goto :goto_7
.end method

.method public static declared-synchronized readEventCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 30
    .parameter "context"
    .parameter "szService"
    .parameter "szUID"
    .parameter "szExtension"
    .parameter "version"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    const-class v24, Lcom/htc/album/ObjectWriter/AlbumCacher;

    monitor-enter v24

    const/4 v13, 0x0

    .line 351
    .local v13, isVersionChange:Z
    const/4 v11, 0x0

    .line 352
    .local v11, in:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 353
    .local v4, abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v20

    .line 356
    .local v20, timeStart:J
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v5, v4

    .line 417
    .end local v4           #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    .local v5, abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    :goto_0
    monitor-exit v24

    return-object v5

    .line 359
    .end local v5           #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    .restart local v4       #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    :cond_1
    :try_start_1
    invoke-static/range {p1 .. p3}, Lcom/htc/album/ObjectWriter/AlbumCacher;->getFileCacheName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v17

    .line 363
    .local v17, szFileName:Ljava/lang/String;
    :try_start_2
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 364
    .end local v11           #in:Ljava/io/BufferedReader;
    .local v12, in:Ljava/io/BufferedReader;
    :try_start_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v6, content:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 367
    .local v9, header:Ljava/lang/String;
    :goto_1
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v22

    .local v22, tmp:Ljava/lang/String;
    if-eqz v22, :cond_3

    .line 368
    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 403
    .end local v6           #content:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #header:Ljava/lang/String;
    .end local v22           #tmp:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v11, v12

    .line 405
    .end local v12           #in:Ljava/io/BufferedReader;
    .local v7, e:Ljava/lang/Exception;
    .restart local v11       #in:Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    const-string v23, "AlbumCacher"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "[HTCAlbum][AlbumCacher][readEventCache] Exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 407
    .end local v7           #e:Ljava/lang/Exception;
    :goto_3
    if-eqz v11, :cond_2

    .line 410
    :try_start_5
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 411
    const/4 v11, 0x0

    .line 416
    :cond_2
    :goto_4
    :try_start_6
    const-string v23, "AlbumCacher"

    const-string v25, "[HTCAlbum][AlbumCacher][readEventCache]: End"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v5, v4

    .line 417
    .end local v4           #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    .restart local v5       #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    goto :goto_0

    .line 370
    .end local v5           #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    .end local v11           #in:Ljava/io/BufferedReader;
    .restart local v4       #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    .restart local v6       #content:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9       #header:Ljava/lang/String;
    .restart local v12       #in:Ljava/io/BufferedReader;
    .restart local v22       #tmp:Ljava/lang/String;
    :cond_3
    :try_start_7
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 371
    const/4 v11, 0x0

    .line 374
    .end local v12           #in:Ljava/io/BufferedReader;
    .restart local v11       #in:Ljava/io/BufferedReader;
    if-eqz v9, :cond_4

    :try_start_8
    const-string v23, "VERSION:"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_5

    .line 375
    :cond_4
    const-string v23, "AlbumCacher"

    const-string v25, "[HTCAlbum][AlbumCacher][readEventCache]: Wrong Header"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v4

    .line 376
    .end local v4           #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    .restart local v5       #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    goto/16 :goto_0

    .line 379
    .end local v5           #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    .restart local v4       #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    :cond_5
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 381
    .local v8, fileVer:I
    move/from16 v0, p4

    if-eq v8, v0, :cond_6

    .line 382
    const/4 v13, 0x1

    .line 383
    const-string v23, "AlbumCacher"

    const-string v25, "[HTCAlbum][AlbumCacher][readEventCache]: Version Change"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 388
    .end local v4           #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    .restart local v5       #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    :try_start_9
    new-instance v14, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;-><init>(Landroid/content/Context;)V

    .line 389
    .local v14, listMember:Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 390
    .local v15, nCount:I
    const-string v23, "AlbumCacher"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "[HTCAlbum][AlbumCacher][readEventCache]: read Objs: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const/4 v10, 0x0

    .local v10, i:I
    :goto_5
    if-ge v10, v15, :cond_7

    .line 393
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v14, v13, v0, v8, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->readFrom(ZIILjava/lang/String;)V

    .line 394
    invoke-virtual {v14}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getFolderType()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v14}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getBucketId()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v14}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lcom/htc/album/helper/CollectionMaker;->makeCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v16

    check-cast v16, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;

    .line 397
    .local v16, smartC:Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->clone(Lcom/htc/album/modules/collection/Collection;)V

    .line 398
    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 400
    .end local v16           #smartC:Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 401
    .local v18, timeEnd:J
    const-string v23, "AlbumCacher"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "[HTCAlbum][AlbumCacher][readEventCache]: Successful: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", time : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sub-long v28, v18, v20

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move-object v4, v5

    .line 406
    .end local v5           #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    .restart local v4       #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    goto/16 :goto_3

    .line 412
    .end local v6           #content:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #fileVer:I
    .end local v9           #header:Ljava/lang/String;
    .end local v10           #i:I
    .end local v14           #listMember:Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;
    .end local v15           #nCount:I
    .end local v18           #timeEnd:J
    .end local v22           #tmp:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 413
    .local v7, e:Ljava/io/IOException;
    :try_start_a
    const-string v23, "AlbumCacher"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "[HTCAlbum][AlbumCacher][readEventCache]: IOException: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_4

    .line 347
    .end local v7           #e:Ljava/io/IOException;
    .end local v17           #szFileName:Ljava/lang/String;
    .end local v20           #timeStart:J
    :catchall_0
    move-exception v23

    :goto_6
    monitor-exit v24

    throw v23

    .line 403
    .restart local v17       #szFileName:Ljava/lang/String;
    .restart local v20       #timeStart:J
    :catch_2
    move-exception v7

    goto/16 :goto_2

    .end local v4           #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    .restart local v5       #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    .restart local v6       #content:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8       #fileVer:I
    .restart local v9       #header:Ljava/lang/String;
    .restart local v22       #tmp:Ljava/lang/String;
    :catch_3
    move-exception v7

    move-object v4, v5

    .end local v5           #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    .restart local v4       #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    goto/16 :goto_2

    .line 347
    .end local v6           #content:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #fileVer:I
    .end local v9           #header:Ljava/lang/String;
    .end local v11           #in:Ljava/io/BufferedReader;
    .end local v22           #tmp:Ljava/lang/String;
    .restart local v12       #in:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v23

    move-object v11, v12

    .end local v12           #in:Ljava/io/BufferedReader;
    .restart local v11       #in:Ljava/io/BufferedReader;
    goto :goto_6

    .end local v4           #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    .restart local v5       #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    .restart local v6       #content:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8       #fileVer:I
    .restart local v9       #header:Ljava/lang/String;
    .restart local v22       #tmp:Ljava/lang/String;
    :catchall_2
    move-exception v23

    move-object v4, v5

    .end local v5           #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    .restart local v4       #abmList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    goto :goto_6
.end method

.method public static final updateCache(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 1
    .parameter "cxt"
    .parameter "bundle"
    .parameter "mediaType"

    .prologue
    .line 427
    invoke-static {}, Lcom/htc/album/ObjectWriter/AlbumCacher;->cancelThread()V

    .line 429
    new-instance v0, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;-><init>(Landroid/content/Context;Landroid/os/Bundle;I)V

    sput-object v0, Lcom/htc/album/ObjectWriter/AlbumCacher;->mCacheThread:Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;

    .line 430
    sget-object v0, Lcom/htc/album/ObjectWriter/AlbumCacher;->mCacheThread:Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;

    invoke-virtual {v0}, Lcom/htc/album/ObjectWriter/AlbumCacher$ThreadCacheUpdate;->start()V

    .line 431
    return-void
.end method

.method public static declared-synchronized writeCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;II)V
    .locals 8
    .parameter "context"
    .parameter "szService"
    .parameter "szUID"
    .parameter
    .parameter "szExtension"
    .parameter "version"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lcom/htc/album/ObjectWriter/ObjectFormatter;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p3, objList:Ljava/util/List;,"Ljava/util/List<+Lcom/htc/album/ObjectWriter/ObjectFormatter;>;"
    const-class v7, Lcom/htc/album/ObjectWriter/AlbumCacher;

    monitor-enter v7

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    :try_start_0
    invoke-static/range {v0 .. v6}, Lcom/htc/album/ObjectWriter/AlbumCacher;->writeCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit v7

    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized writeCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;III)V
    .locals 12
    .parameter "context"
    .parameter "szService"
    .parameter "szUID"
    .parameter
    .parameter "szExtension"
    .parameter "version"
    .parameter "limits"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lcom/htc/album/ObjectWriter/ObjectFormatter;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p3, objList:Ljava/util/List;,"Ljava/util/List<+Lcom/htc/album/ObjectWriter/ObjectFormatter;>;"
    const-class v8, Lcom/htc/album/ObjectWriter/AlbumCacher;

    monitor-enter v8

    :try_start_0
    const-string v7, "AlbumCacher"

    const-string v9, "[HTCAlbum][AlbumCacher][writeCache]: Begin"

    invoke-static {v7, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 216
    :cond_0
    :goto_0
    monitor-exit v8

    return-void

    .line 170
    :cond_1
    const/4 v2, 0x0

    .line 171
    .local v2, fileOS:Ljava/io/FileOutputStream;
    :try_start_1
    move/from16 v0, p4

    invoke-static {p1, p2, v0}, Lcom/htc/album/ObjectWriter/AlbumCacher;->getFileCacheName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 175
    .local v6, szFileName:Ljava/lang/String;
    const/4 v7, 0x1

    :try_start_2
    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 177
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v9, "VERSION:"

    invoke-direct {v7, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 179
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    .line 180
    .local v3, nCount:I
    if-lez p6, :cond_2

    move/from16 v0, p6

    if-ge v0, v3, :cond_2

    .line 182
    move/from16 v3, p6

    .line 185
    :cond_2
    const/4 v5, 0x0

    .line 186
    .local v5, subObject:Lcom/htc/album/ObjectWriter/ObjectFormatter;
    const/4 v4, 0x0

    .local v4, nIndex:I
    :goto_1
    if-le v3, v4, :cond_5

    .line 188
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #subObject:Lcom/htc/album/ObjectWriter/ObjectFormatter;
    check-cast v5, Lcom/htc/album/ObjectWriter/ObjectFormatter;

    .line 189
    .restart local v5       #subObject:Lcom/htc/album/ObjectWriter/ObjectFormatter;
    if-nez v5, :cond_3

    .line 191
    const-string v7, "AlbumCacher"

    const-string v9, "[HTCAlbum][AlbumCacher][writeCache]: Null object"

    invoke-static {v7, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 194
    :cond_3
    const/16 v7, 0xa

    invoke-virtual {v2, v7}, Ljava/io/FileOutputStream;->write(I)V

    .line 195
    invoke-interface {v5}, Lcom/htc/album/ObjectWriter/ObjectFormatter;->toFormatedString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 202
    .end local v3           #nCount:I
    .end local v4           #nIndex:I
    .end local v5           #subObject:Lcom/htc/album/ObjectWriter/ObjectFormatter;
    :catch_0
    move-exception v1

    .line 204
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    const-string v7, "AlbumCacher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][AlbumCacher][writeCache] Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 206
    .end local v1           #e:Ljava/lang/Exception;
    :goto_3
    if-eqz v2, :cond_4

    .line 209
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 210
    const/4 v2, 0x0

    .line 215
    :cond_4
    :goto_4
    :try_start_5
    const-string v7, "AlbumCacher"

    const-string v9, "[HTCAlbum][AlbumCacher][writeCache]: End"

    invoke-static {v7, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 166
    .end local v2           #fileOS:Ljava/io/FileOutputStream;
    .end local v6           #szFileName:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 198
    .restart local v2       #fileOS:Ljava/io/FileOutputStream;
    .restart local v3       #nCount:I
    .restart local v4       #nIndex:I
    .restart local v5       #subObject:Lcom/htc/album/ObjectWriter/ObjectFormatter;
    .restart local v6       #szFileName:Ljava/lang/String;
    :cond_5
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 199
    const/4 v2, 0x0

    .line 200
    const-string v7, "AlbumCacher"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "[HTCAlbum][AlbumCacher][writeCache]: Successful: "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    const/4 v10, 0x2

    const-string v11, ", conut: "

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v9}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    .line 211
    .end local v3           #nCount:I
    .end local v4           #nIndex:I
    .end local v5           #subObject:Lcom/htc/album/ObjectWriter/ObjectFormatter;
    :catch_1
    move-exception v1

    .line 212
    .local v1, e:Ljava/io/IOException;
    :try_start_7
    const-string v7, "AlbumCacher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][AlbumCacher][writeCache] IOException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4
.end method
