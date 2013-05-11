.class public Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;
.super Ljava/lang/Object;
.source "EventLayoutHandler.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "EventLayoutHandler"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventPrototype:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSyncing:Z

.field private mLayoutHeightLand:I

.field private mLayoutHeightPort:I

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mRowCountLand:I

.field private mRowCountPort:I

.field private mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mContext:Landroid/content/Context;

    .line 29
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mList:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mEventPrototype:Ljava/util/HashMap;

    .line 33
    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountPort:I

    .line 34
    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountLand:I

    .line 35
    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightPort:I

    .line 36
    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightLand:I

    .line 37
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mIsSyncing:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V
    .locals 2
    .parameter "context"
    .parameter "sunnyContext"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mContext:Landroid/content/Context;

    .line 29
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mList:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mEventPrototype:Ljava/util/HashMap;

    .line 33
    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountPort:I

    .line 34
    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountLand:I

    .line 35
    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightPort:I

    .line 36
    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightLand:I

    .line 37
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mIsSyncing:Z

    .line 44
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    .line 46
    return-void
.end method

.method private isPrepared()Z
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, bResult:Z
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    if-nez v2, :cond_1

    :cond_0
    move v1, v0

    .line 84
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 83
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_1
    const/4 v0, 0x1

    move v1, v0

    .line 84
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method private isSameMonth(Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;)Z
    .locals 1
    .parameter "collectionPrev"
    .parameter "collectionCurrent"

    .prologue
    .line 402
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->isSeparable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    const/4 v0, 0x1

    .line 405
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->isSameMonth(Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;)Z

    move-result v0

    goto :goto_0
.end method

.method private setupEventLandLayout(Ljava/util/ArrayList;)V
    .locals 10
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
    .line 359
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    const/4 v0, 0x0

    .line 360
    .local v0, collection:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 362
    .local v2, nCount:I
    const/4 v3, -0x1

    .line 363
    .local v3, nFirstIndex4Land:I
    const/4 v5, 0x4

    .line 364
    .local v5, nQuota4Land:I
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->horizontalSpacing(Landroid/content/res/Configuration;)I

    move-result v1

    .line 365
    .local v1, horizontalSpaceHeight:I
    const-string v8, "EventLayoutHandler"

    const-string v9, "[HTCAlbum][EventLayoutHandler][setupEventLandLayout]: begin..."

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const/4 v4, 0x0

    .local v4, nIndex:I
    :goto_0
    if-le v2, v4, :cond_5

    .line 368
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #collection:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 369
    .restart local v0       #collection:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getIdentifier()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v7

    .line 370
    .local v7, prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
    invoke-interface {v7}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;->getRowQuota()I

    move-result v6

    .line 371
    .local v6, nRowQuota:I
    const/4 v8, -0x1

    if-eq v8, v3, :cond_0

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->isSeparable()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 373
    :cond_0
    move v3, v4

    .line 374
    iget v8, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountLand:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountLand:I

    .line 375
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->isSeparable()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 376
    iget v8, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightLand:I

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v9

    invoke-interface {v9}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;->getHeight()I

    move-result v9

    add-int/2addr v9, v1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightLand:I

    .line 386
    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setRowFirstItemIndex4Land(I)V

    .line 389
    sub-int/2addr v5, v6

    .line 390
    if-lez v5, :cond_2

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->isSeparable()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 392
    :cond_2
    const/4 v3, -0x1

    .line 393
    const/4 v5, 0x4

    .line 366
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 378
    :cond_4
    iget v8, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightLand:I

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v9

    invoke-interface {v9}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;->getHeight()I

    move-result v9

    add-int/2addr v9, v1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightLand:I

    goto :goto_1

    .line 398
    .end local v6           #nRowQuota:I
    .end local v7           #prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
    :cond_5
    const-string v8, "EventLayoutHandler"

    const-string v9, "[HTCAlbum][EventLayoutHandler][setupEventLandLayout]: end..."

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method private setupEventPortLayout(Ljava/util/ArrayList;)V
    .locals 17
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
    .line 277
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    invoke-static {}, Lcom/htc/opensense2/album/util/DateTimeManager;->resetEventDateFormater()V

    .line 278
    invoke-static {}, Lcom/htc/opensense2/album/util/DateTimeManager;->resetEventMonthFormater()V

    .line 280
    const/4 v12, 0x0

    .line 281
    .local v12, collectionPrev:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    const/4 v11, 0x0

    .line 282
    .local v11, collection:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    const/4 v15, 0x0

    .line 283
    .local v15, nSameFocusCount:I
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->verticalSpacing(Landroid/content/res/Configuration;)I

    move-result v16

    .line 285
    .local v16, verticalSpaceHeight:I
    const/4 v14, 0x0

    .line 286
    .local v14, nIndex:I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 289
    .local v13, itr:Ljava/util/Iterator;
    :goto_0
    :try_start_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 291
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    move-object v11, v0

    .line 292
    invoke-virtual {v11, v14}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setIndex(I)V

    .line 297
    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->isSameMonth(Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 299
    :cond_0
    new-instance v1, Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;-><init>(Landroid/content/Context;)V

    .line 300
    .local v1, separator:Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;
    invoke-virtual {v1, v14}, Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;->setIndex(I)V

    .line 301
    invoke-virtual {v11}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getTime()J

    move-result-wide v2

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getTime()J

    move-result-wide v4

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;->setRange(JJLjava/lang/String;DD)V

    .line 302
    invoke-virtual {v1, v14}, Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;->setRowFirstItemIndex4Port(I)V

    .line 303
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 304
    move-object v11, v1

    .line 306
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountPort:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountPort:I

    .line 307
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightPort:I

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;->getHeight()I

    move-result v3

    add-int v3, v3, v16

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightPort:I

    .line 350
    .end local v1           #separator:Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;
    :goto_1
    add-int/lit8 v14, v14, 0x1

    .line 351
    move-object v12, v11

    goto :goto_0

    .line 316
    :cond_1
    invoke-static {v12, v11}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->isSameDay(Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 318
    const/4 v15, 0x1

    .line 319
    const/4 v2, 0x2

    invoke-virtual {v11, v2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setPrototypeIdentifier(I)V

    .line 320
    invoke-virtual {v11, v14}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setRowFirstItemIndex4Port(I)V

    .line 321
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountPort:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountPort:I

    .line 322
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightPort:I

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;->getHeight()I

    move-result v3

    add-int v3, v3, v16

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightPort:I

    goto :goto_1

    .line 354
    :catch_0
    move-exception v2

    .line 356
    :cond_2
    return-void

    .line 328
    :cond_3
    add-int/lit8 v15, v15, 0x1

    .line 332
    rem-int/lit8 v2, v15, 0x2

    if-nez v2, :cond_4

    .line 334
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setPrototypeIdentifier(I)V

    .line 336
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setPrototypeIdentifier(I)V

    .line 337
    invoke-virtual {v12}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getIndex()I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setRowFirstItemIndex4Port(I)V

    goto :goto_1

    .line 342
    :cond_4
    const/4 v2, 0x2

    invoke-virtual {v11, v2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setPrototypeIdentifier(I)V

    .line 343
    invoke-virtual {v11, v14}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setRowFirstItemIndex4Port(I)V

    .line 344
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountPort:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountPort:I

    .line 345
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightPort:I

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;->getHeight()I

    move-result v3

    add-int v3, v3, v16

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightPort:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public findColumnCount(I)I
    .locals 1
    .parameter "nOrientation"

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public findLargestItemPrototype()Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v0

    return-object v0
.end method

.method public findLeastItemQuota()I
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method public findMaxItemQuota()I
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x2

    return v0
.end method

.method public findMaxRowQuota(I)I
    .locals 1
    .parameter "nOrientation"

    .prologue
    .line 185
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 186
    const/4 v0, 0x2

    .line 188
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public findRowCount(I)I
    .locals 2
    .parameter "nOrientation"

    .prologue
    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, nRowCount:I
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 247
    iget v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountPort:I

    .line 251
    :goto_0
    return v0

    .line 249
    :cond_0
    iget v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountLand:I

    goto :goto_0
.end method

.method public findRowFirstItemIndex(II)I
    .locals 6
    .parameter "nOrientation"
    .parameter "nIndex"

    .prologue
    .line 168
    const/4 v2, 0x0

    .line 169
    .local v2, nFirstIndex:I
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 170
    .local v1, nCount:I
    if-le v1, p2, :cond_0

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mIsSyncing:Z

    if-ne v4, v5, :cond_1

    :cond_0
    move v3, v2

    .line 181
    .end local v2           #nFirstIndex:I
    .local v3, nFirstIndex:I
    :goto_0
    return v3

    .line 173
    .end local v3           #nFirstIndex:I
    .restart local v2       #nFirstIndex:I
    :cond_1
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 174
    .local v0, collection:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    if-nez v0, :cond_2

    move v3, v2

    .line 175
    .end local v2           #nFirstIndex:I
    .restart local v3       #nFirstIndex:I
    goto :goto_0

    .line 177
    .end local v3           #nFirstIndex:I
    .restart local v2       #nFirstIndex:I
    :cond_2
    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getRowFirstItemIndex(I)I

    move-result v2

    move v3, v2

    .line 181
    .end local v2           #nFirstIndex:I
    .restart local v3       #nFirstIndex:I
    goto :goto_0
.end method

.method public findSmallestItemPrototype()Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v0

    return-object v0
.end method

.method public getFactoryIdentifiers(I)I
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 145
    .local v0, nIdentifier:I
    packed-switch p1, :pswitch_data_0

    .line 157
    :goto_0
    return v0

    .line 148
    :pswitch_0
    const/4 v0, 0x1

    .line 149
    goto :goto_0

    .line 151
    :pswitch_1
    const/4 v0, 0x2

    .line 152
    goto :goto_0

    .line 154
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getFactorySize()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x3

    return v0
.end method

.method public getLayoutHeight(I)I
    .locals 2
    .parameter "nOrientation"

    .prologue
    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, nHeight:I
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 264
    iget v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightPort:I

    .line 268
    :goto_0
    return v0

    .line 266
    :cond_0
    iget v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightLand:I

    goto :goto_0
.end method

.method public getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
    .locals 4
    .parameter "id"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->isPrepared()Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    const/4 v0, 0x0

    .line 119
    :cond_0
    :goto_0
    return-object v0

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mEventPrototype:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    .line 97
    .local v0, prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 115
    const-string v1, "EventLayoutHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][EventLayoutHandler][getPrototype]: unknown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :pswitch_0
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridItemEventSmall;

    .end local v0           #prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;->spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridItemEventSmall;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    .line 104
    .restart local v0       #prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mEventPrototype:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 107
    :pswitch_1
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridItemEventLarge;

    .end local v0           #prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridItemEventLarge;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    .line 108
    .restart local v0       #prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mEventPrototype:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 111
    :pswitch_2
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;

    .end local v0           #prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;->spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    .line 112
    .restart local v0       #prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mEventPrototype:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic getPrototype(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v0

    return-object v0
.end method

.method public getPrototypeByIndex(I)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
    .locals 6
    .parameter "nIndex"

    .prologue
    .line 126
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 127
    .local v1, nCount:I
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->isPrepared()Z

    move-result v4

    if-eqz v4, :cond_0

    if-le v1, p1, :cond_0

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mIsSyncing:Z

    if-ne v4, v5, :cond_1

    .line 128
    :cond_0
    const/4 v3, 0x0

    .line 133
    :goto_0
    return-object v3

    .line 130
    :cond_1
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 131
    .local v0, collection:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getIdentifier()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 132
    .local v2, nIdentifier:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v3

    .line 133
    .local v3, prototype:Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
    goto :goto_0
.end method

.method public bridge synthetic getPrototypeByIndex(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getPrototypeByIndex(I)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v0

    return-object v0
.end method

.method public getSeparableIndicator(I)J
    .locals 9
    .parameter "nIndex"

    .prologue
    .line 227
    const-wide/16 v2, 0x0

    .line 229
    .local v2, lTime:J
    const/4 v0, 0x0

    .line 230
    .local v0, bResult:Z
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 231
    .local v6, nCount:I
    if-ltz p1, :cond_0

    if-le v6, p1, :cond_0

    const/4 v7, 0x1

    iget-boolean v8, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mIsSyncing:Z

    if-ne v7, v8, :cond_1

    :cond_0
    move-wide v4, v2

    .line 239
    .end local v2           #lTime:J
    .local v4, lTime:J
    :goto_0
    return-wide v4

    .line 234
    .end local v4           #lTime:J
    .restart local v2       #lTime:J
    :cond_1
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 236
    .local v1, collection:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    if-eqz v1, :cond_2

    .line 237
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getTime()J

    move-result-wide v2

    :cond_2
    move-wide v4, v2

    .line 239
    .end local v2           #lTime:J
    .restart local v4       #lTime:J
    goto :goto_0
.end method

.method public isSeparable(I)Z
    .locals 6
    .parameter "nIndex"

    .prologue
    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, bResult:Z
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 212
    .local v3, nCount:I
    if-ltz p1, :cond_0

    if-le v3, p1, :cond_0

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mIsSyncing:Z

    if-ne v4, v5, :cond_1

    :cond_0
    move v1, v0

    .line 221
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 215
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_1
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 216
    .local v2, collection:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    if-nez v2, :cond_2

    move v1, v0

    .line 217
    .restart local v1       #bResult:I
    goto :goto_0

    .line 219
    .end local v1           #bResult:I
    :cond_2
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->isSeparable()Z

    move-result v0

    move v1, v0

    .line 221
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public onRelayout(Ljava/util/ArrayList;)V
    .locals 2
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
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    const/4 v1, 0x0

    .line 54
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountPort:I

    .line 58
    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mRowCountLand:I

    .line 59
    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightPort:I

    .line 60
    iput v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mLayoutHeightLand:I

    .line 61
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->setupEventPortLayout(Ljava/util/ArrayList;)V

    .line 62
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->setupEventLandLayout(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onSynclist(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 66
    .local p1, srcList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    const-string v0, "EventLayoutHandler"

    const-string v1, "[HTCAlbum][EventLayoutHandler][onSynclist]: begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mIsSyncing:Z

    .line 71
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 72
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mIsSyncing:Z

    .line 74
    const-string v0, "EventLayoutHandler"

    const-string v1, "[HTCAlbum][EventLayoutHandler][onSynclist]: end"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public releaseLayoutResource()V
    .locals 9

    .prologue
    .line 409
    const/4 v4, 0x0

    .line 410
    .local v4, item:Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mEventPrototype:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 411
    .local v3, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 412
    .local v5, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;>;>;"
    const/4 v2, 0x0

    .line 415
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;>;"
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 417
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 418
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-object v4, v0

    if-eqz v4, :cond_0

    .line 419
    invoke-interface {v4}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 422
    :catch_0
    move-exception v1

    .line 425
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "EventLayoutHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][EventLayoutHandler][releaseLayoutResource]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public setContext(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V
    .locals 0
    .parameter "context"
    .parameter "sunnyContext"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    .line 51
    return-void
.end method
