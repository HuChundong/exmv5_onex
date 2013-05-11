.class public Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;
.super Lcom/htc/album/modules/collection/CollectionManager;
.source "SmartFolderManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/modules/collection/CollectionManager",
        "<",
        "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONUTS_PER_EVENT:I = 0x64

.field public static final EVENT_NO_LIMITS:I = -0x1

.field public static final KEY_EVENT_LIMITS:Ljava/lang/String; = "key_event_limits"

.field public static final KEY_LOAD_EVENTS:Ljava/lang/String; = "key_load_events"

.field public static final KEY_LOAD_EVENTS_ONLY:Ljava/lang/String; = "key_load_events_only"

.field public static final KEY_NO_RES_DISPLAYNAME:Ljava/lang/String; = "key_no_res_displayname"

.field public static final KEY_QUERY_COMPLETED:Ljava/lang/String; = "key_query_completed"

.field public static final LOG_TAG:Ljava/lang/String; = "SmartFolderManager"


# instance fields
.field protected mEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mSmartType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/album/modules/collection/CollectionManager;-><init>()V

    .line 45
    const-string v0, "com.htc.HTCAlbum.SMART_TIME_DAY"

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->mSmartType:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->mEventList:Ljava/util/ArrayList;

    return-void
.end method

.method public static getImageWhere(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "filter"

    .prologue
    .line 159
    const/4 v2, 0x1

    invoke-static {v2, p0}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getSupportedMediaFormatWhereClause(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, defaultWhere:Ljava/lang/String;
    const-string v1, "(media_type = 1"

    .line 163
    .local v1, where:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    return-object v1
.end method

.method private getLimits(Landroid/os/Bundle;)I
    .locals 3
    .parameter "extras"

    .prologue
    const/4 v1, -0x1

    .line 187
    if-eqz p1, :cond_0

    const-string v2, "key_event_limits"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 188
    .local v0, limits:I
    :goto_0
    if-lez v0, :cond_1

    mul-int/lit8 v0, v0, 0x64

    .line 189
    :goto_1
    return v0

    .end local v0           #limits:I
    :cond_0
    move v0, v1

    .line 187
    goto :goto_0

    .restart local v0       #limits:I
    :cond_1
    move v0, v1

    .line 188
    goto :goto_1
.end method

.method public static getVideoWhere(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "filter"

    .prologue
    .line 173
    const/16 v2, 0x10

    invoke-static {v2, p0}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getSupportedMediaFormatWhereClause(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, defaultWhere:Ljava/lang/String;
    const-string v1, "(media_type = 3"

    .line 177
    .local v1, where:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    return-object v1
.end method


# virtual methods
.method protected addLocalCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IJDDJ)V
    .locals 15
    .parameter
    .parameter "context"
    .parameter "sourceType"
    .parameter "collectionType"
    .parameter "bucketId"
    .parameter "displayName"
    .parameter "itemPath"
    .parameter "itemTime"
    .parameter "mimeType"
    .parameter "degree"
    .parameter "fileSize"
    .parameter "lat"
    .parameter "lng"
    .parameter "rowId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "IJDDJ)V"
        }
    .end annotation

    .prologue
    .line 394
    .local p1, collections:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 395
    .local v4, collection:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    if-nez v4, :cond_0

    .line 397
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->doCreateCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    move-result-object v4

    .line 398
    const/4 v9, 0x0

    move-wide/from16 v5, p8

    move-wide/from16 v7, p8

    move-wide/from16 v10, p14

    move-wide/from16 v12, p16

    invoke-virtual/range {v4 .. v13}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setRange(JJLjava/lang/String;DD)V

    .line 399
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    :cond_0
    const/4 v7, 0x0

    move-wide/from16 v5, p8

    move-wide/from16 v8, p14

    move-wide/from16 v10, p16

    invoke-virtual/range {v4 .. v11}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->inRange(JLjava/lang/String;DD)Z

    move/from16 v5, p3

    move-object/from16 v6, p7

    move-wide/from16 v7, p8

    move-object/from16 v9, p10

    move/from16 v10, p11

    move-wide/from16 v11, p12

    move-wide/from16 v13, p18

    .line 403
    invoke-virtual/range {v4 .. v14}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->updateItemInfo(ILjava/lang/String;JLjava/lang/String;IJJ)V

    .line 405
    return-void
.end method

.method protected addSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IJDDLjava/lang/String;)V
    .locals 17
    .parameter
    .parameter "context"
    .parameter "sourceType"
    .parameter "collectionType"
    .parameter "bucketId"
    .parameter "displayName"
    .parameter "itemPath"
    .parameter "itemTime"
    .parameter "mimeType"
    .parameter "degree"
    .parameter "fileSize"
    .parameter "lat"
    .parameter "lng"
    .parameter "eventId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "IJDD",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 413
    .local p1, collections:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    const/16 v16, 0x0

    .line 415
    .local v16, smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 416
    .local v15, size:I
    if-lez v15, :cond_2

    .line 419
    add-int/lit8 v14, v15, -0x1

    .local v14, i:I
    :goto_0
    if-ltz v14, :cond_2

    .line 421
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 422
    .local v2, timeC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    if-eqz v2, :cond_1

    instance-of v4, v2, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;

    if-eqz v4, :cond_1

    move-wide/from16 v3, p8

    move-object/from16 v5, p18

    move-wide/from16 v6, p14

    move-wide/from16 v8, p16

    invoke-virtual/range {v2 .. v9}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->inRange(JLjava/lang/String;DD)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 425
    move-object v3, v2

    .line 431
    .end local v2           #timeC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    .end local v14           #i:I
    .end local v16           #smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    .local v3, smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    :goto_1
    if-nez v3, :cond_0

    .line 433
    const-string v4, "com.htc.HTCAlbum.SMART_TIME_LOCATION"

    const-string v5, ""

    const-string v6, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->doCreateCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    move-result-object v3

    move-wide/from16 v4, p8

    move-wide/from16 v6, p8

    move-object/from16 v8, p18

    move-wide/from16 v9, p14

    move-wide/from16 v11, p16

    .line 434
    invoke-virtual/range {v3 .. v12}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setRange(JJLjava/lang/String;DD)V

    .line 435
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_0
    const-wide/16 v12, -0x1

    move/from16 v4, p3

    move-object/from16 v5, p7

    move-wide/from16 v6, p8

    move-object/from16 v8, p10

    move/from16 v9, p11

    move-wide/from16 v10, p12

    invoke-virtual/range {v3 .. v13}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->updateItemInfo(ILjava/lang/String;JLjava/lang/String;IJJ)V

    .line 439
    return-void

    .line 419
    .end local v3           #smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    .restart local v2       #timeC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    .restart local v14       #i:I
    .restart local v16       #smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    :cond_1
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    .end local v2           #timeC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    .end local v14           #i:I
    :cond_2
    move-object/from16 v3, v16

    .end local v16           #smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    .restart local v3       #smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    goto :goto_1
.end method

.method protected doCreateCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    .locals 1
    .parameter "context"
    .parameter "type"
    .parameter "bucketId"
    .parameter "displayName"

    .prologue
    .line 77
    const-string v0, "com.htc.HTCAlbum.SMART_LOCAL_FOLDER"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.htc.HTCAlbum.SMART_ALL_DOWNLOADS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartLocalCollection;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/album/TabPluginDevice/smart/SmartLocalCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_0
    return-object v0

    .line 82
    :cond_1
    const-string v0, "com.htc.HTCAlbum.SMART_TIME_LOCATION"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;

    invoke-direct {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 86
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doCreateCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/modules/collection/Collection;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->doCreateCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    move-result-object v0

    return-object v0
.end method

.method protected doLoadDataFromCursor(Landroid/content/Context;Ljava/util/HashMap;ILandroid/database/Cursor;Landroid/os/Bundle;)V
    .locals 49
    .parameter "context"
    .parameter
    .parameter "sourceType"
    .parameter "cursor"
    .parameter "extras"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;I",
            "Landroid/database/Cursor;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 300
    .local p2, collectionList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    if-eqz p5, :cond_3

    const-string v2, "key_no_res_displayname"

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v47

    .line 301
    .local v47, noResName:Z
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->getLimits(Landroid/os/Bundle;)I

    move-result v46

    .line 302
    .local v46, limits:I
    const/16 v43, 0x0

    .line 304
    .local v43, count:I
    :goto_1
    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_d

    sget-boolean v2, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->CANCEL_LOADING:Z

    if-nez v2, :cond_d

    .line 307
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 309
    .local v9, filePath:Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 310
    .local v10, time:J
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-gtz v2, :cond_1

    .line 313
    const/4 v2, 0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 315
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-gtz v2, :cond_0

    .line 316
    const/4 v2, 0x2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 317
    :cond_0
    const-wide/16 v2, 0x3e8

    mul-long/2addr v10, v2

    .line 321
    :cond_1
    const/4 v2, 0x3

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 323
    .local v12, mimeType:Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 326
    .local v34, fileSize:J
    const/4 v2, 0x6

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 329
    .local v27, bucketId:Ljava/lang/String;
    const/4 v2, 0x7

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 331
    .local v8, displayName:Ljava/lang/String;
    const/16 v2, 0xe

    move/from16 v0, p3

    if-eq v0, v2, :cond_2

    const/16 v2, 0xe0

    move/from16 v0, p3

    if-ne v0, v2, :cond_5

    .line 333
    :cond_2
    const/16 v2, 0x8

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 334
    .local v20, rowId:J
    if-eqz v47, :cond_4

    const-string v8, ""

    .line 335
    :goto_2
    const-string v6, "com.htc.HTCAlbum.SMART_ALL_DOWNLOADS"

    const-string v7, "com.htc.HTCAlbum.SMART_ALL_DOWNLOADS"

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v21}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->addLocalCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IJDDJ)V

    goto :goto_1

    .line 300
    .end local v8           #displayName:Ljava/lang/String;
    .end local v9           #filePath:Ljava/lang/String;
    .end local v10           #time:J
    .end local v12           #mimeType:Ljava/lang/String;
    .end local v20           #rowId:J
    .end local v27           #bucketId:Ljava/lang/String;
    .end local v34           #fileSize:J
    .end local v43           #count:I
    .end local v46           #limits:I
    .end local v47           #noResName:Z
    :cond_3
    const/16 v47, 0x0

    goto/16 :goto_0

    .line 334
    .restart local v8       #displayName:Ljava/lang/String;
    .restart local v9       #filePath:Ljava/lang/String;
    .restart local v10       #time:J
    .restart local v12       #mimeType:Ljava/lang/String;
    .restart local v20       #rowId:J
    .restart local v27       #bucketId:Ljava/lang/String;
    .restart local v34       #fileSize:J
    .restart local v43       #count:I
    .restart local v46       #limits:I
    .restart local v47       #noResName:Z
    :cond_4
    const-string v8, "com.htc.HTCAlbum.SMART_ALL_DOWNLOADS"

    goto :goto_2

    .line 341
    .end local v20           #rowId:J
    :cond_5
    const/16 v2, 0xb

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 342
    .local v25, mediaType:I
    const/4 v2, 0x3

    move/from16 v0, v25

    if-ne v0, v2, :cond_6

    const/16 v25, 0x10

    .line 346
    :goto_3
    const/4 v2, 0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_7

    const/16 v2, 0x8

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 348
    .local v33, degree:I
    :goto_4
    const/16 v2, 0x9

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v36

    .line 349
    .local v36, latitude:D
    const/16 v2, 0xa

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v38

    .line 351
    .local v38, longitude:D
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v48

    .line 352
    .local v48, path:Ljava/lang/String;
    invoke-static/range {v48 .. v48}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileInCameraShots(Ljava/lang/String;)Z

    move-result v45

    .line 353
    .local v45, inCameraShots:Z
    if-nez v45, :cond_8

    invoke-static/range {v48 .. v48}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileInAllDownloads(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v44, 0x1

    .line 355
    .local v44, inAllDownloads:Z
    :goto_5
    if-eqz v44, :cond_a

    .line 357
    if-eqz v47, :cond_9

    const-string v8, ""

    .line 358
    :goto_6
    const-string v26, "com.htc.HTCAlbum.SMART_ALL_DOWNLOADS"

    const-string v27, "com.htc.HTCAlbum.SMART_ALL_DOWNLOADS"

    .end local v27           #bucketId:Ljava/lang/String;
    const-wide/16 v40, -0x1

    move-object/from16 v22, p0

    move-object/from16 v23, p2

    move-object/from16 v24, p1

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    move-wide/from16 v30, v10

    move-object/from16 v32, v12

    invoke-virtual/range {v22 .. v41}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->addLocalCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IJDDJ)V

    .line 378
    :goto_7
    add-int/lit8 v43, v43, 0x1

    .line 379
    goto/16 :goto_1

    .line 342
    .end local v33           #degree:I
    .end local v36           #latitude:D
    .end local v38           #longitude:D
    .end local v44           #inAllDownloads:Z
    .end local v45           #inCameraShots:Z
    .end local v48           #path:Ljava/lang/String;
    .restart local v27       #bucketId:Ljava/lang/String;
    :cond_6
    const/16 v25, 0x1

    goto :goto_3

    .line 346
    :cond_7
    const/16 v33, 0x0

    goto :goto_4

    .line 353
    .restart local v33       #degree:I
    .restart local v36       #latitude:D
    .restart local v38       #longitude:D
    .restart local v45       #inCameraShots:Z
    .restart local v48       #path:Ljava/lang/String;
    :cond_8
    const/16 v44, 0x0

    goto :goto_5

    .line 357
    .restart local v44       #inAllDownloads:Z
    :cond_9
    const-string v8, "com.htc.HTCAlbum.SMART_ALL_DOWNLOADS"

    goto :goto_6

    .line 362
    :cond_a
    if-nez v45, :cond_c

    .line 364
    if-eqz v47, :cond_b

    const-string v8, ""

    .line 365
    :cond_b
    const-string v26, "com.htc.HTCAlbum.SMART_LOCAL_FOLDER"

    const-wide/16 v40, -0x1

    move-object/from16 v22, p0

    move-object/from16 v23, p2

    move-object/from16 v24, p1

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    move-wide/from16 v30, v10

    move-object/from16 v32, v12

    invoke-virtual/range {v22 .. v41}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->addLocalCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IJDDJ)V

    goto :goto_7

    .line 371
    :cond_c
    const/16 v2, 0xc

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 373
    .local v40, eventId:Ljava/lang/String;
    const-string v26, "com.htc.HTCAlbum.SMART_TIME_LOCATION"

    move-object/from16 v22, p0

    move-object/from16 v23, p2

    move-object/from16 v24, p1

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    move-wide/from16 v30, v10

    move-object/from16 v32, v12

    invoke-virtual/range {v22 .. v40}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->addSmartCollection(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IJDDLjava/lang/String;)V

    goto :goto_7

    .line 381
    .end local v8           #displayName:Ljava/lang/String;
    .end local v9           #filePath:Ljava/lang/String;
    .end local v10           #time:J
    .end local v12           #mimeType:Ljava/lang/String;
    .end local v25           #mediaType:I
    .end local v27           #bucketId:Ljava/lang/String;
    .end local v33           #degree:I
    .end local v34           #fileSize:J
    .end local v36           #latitude:D
    .end local v38           #longitude:D
    .end local v40           #eventId:Ljava/lang/String;
    .end local v44           #inAllDownloads:Z
    .end local v45           #inCameraShots:Z
    .end local v48           #path:Ljava/lang/String;
    :cond_d
    const/16 v2, 0xe

    move/from16 v0, p3

    if-eq v0, v2, :cond_f

    const/16 v2, 0xe0

    move/from16 v0, p3

    if-eq v0, v2, :cond_f

    .line 383
    if-ltz v46, :cond_e

    move/from16 v0, v43

    move/from16 v1, v46

    if-ge v0, v1, :cond_10

    :cond_e
    const/16 v42, 0x1

    .line 384
    .local v42, completed:Z
    :goto_8
    const-string v2, "key_query_completed"

    move-object/from16 v0, p5

    move/from16 v1, v42

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 386
    .end local v42           #completed:Z
    :cond_f
    return-void

    .line 383
    :cond_10
    const/16 v42, 0x0

    goto :goto_8
.end method

.method protected doOrderCollections(Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, inputCL:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->mEventList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->mEventList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 149
    .local v1, firstEvent:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setTimeRangeExtended(Z)V

    .line 151
    .end local v1           #firstEvent:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->mEventList:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 152
    .local v0, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 153
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 154
    return-object v0
.end method

.method public getCollectionList(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 13
    .parameter "context"
    .parameter "requestedSources"
    .parameter "filter"
    .parameter "extras"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 94
    .local v11, timeStart:J
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 95
    .local v2, tempList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->mEventList:Ljava/util/ArrayList;

    .line 97
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    const/4 v7, 0x1

    .line 98
    .local v7, requestImage:Z
    :goto_0
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_3

    const/4 v8, 0x1

    .line 100
    .local v8, requestVideo:Z
    :goto_1
    const-string v0, "SmartFolderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getCollectionList] requestedSources = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", requestImage = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", requestVideo = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    if-eqz v7, :cond_4

    if-eqz v8, :cond_4

    .line 105
    const/16 v3, 0x11

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->loadCollectionFromSource(Landroid/content/Context;Ljava/util/HashMap;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 122
    :goto_2
    and-int/lit8 v0, p2, 0xe

    if-eqz v0, :cond_0

    .line 124
    const/16 v3, 0xe

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->loadCollectionFromSource(Landroid/content/Context;Ljava/util/HashMap;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 127
    :cond_0
    and-int/lit16 v0, p2, 0xe0

    if-eqz v0, :cond_1

    .line 129
    const/16 v3, 0xe0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->loadCollectionFromSource(Landroid/content/Context;Ljava/util/HashMap;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 132
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->doOrderCollections(Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v6

    .line 134
    .local v6, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->mEventList:Ljava/util/ArrayList;

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 138
    .local v9, timeEnd:J
    const-string v0, "SmartFolderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getCollectionList] Time cost: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v3, v9, v11

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-object v6

    .line 97
    .end local v6           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    .end local v7           #requestImage:Z
    .end local v8           #requestVideo:Z
    .end local v9           #timeEnd:J
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 98
    .restart local v7       #requestImage:Z
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 107
    .restart local v8       #requestVideo:Z
    :cond_4
    if-eqz v7, :cond_5

    .line 110
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->loadCollectionFromSource(Landroid/content/Context;Ljava/util/HashMap;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 112
    :cond_5
    if-eqz v8, :cond_6

    .line 115
    const/16 v3, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->loadCollectionFromSource(Landroid/content/Context;Ljava/util/HashMap;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 119
    :cond_6
    const-string v0, "SmartFolderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getCollectionList] undefine requestedSources = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected getCursor(Landroid/content/ContentResolver;ILjava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;
    .locals 23
    .parameter "resolver"
    .parameter "sourceType"
    .parameter "filter"
    .parameter "extras"

    .prologue
    .line 195
    const/4 v14, 0x0

    .line 198
    .local v14, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v5, ""

    .line 199
    .local v5, where:Ljava/lang/String;
    const/4 v3, 0x0

    .line 200
    .local v3, targetUri:Landroid/net/Uri;
    const/16 v21, 0x0

    .line 202
    .local v21, queryDRM:Z
    sparse-switch p2, :sswitch_data_0

    .line 235
    const-string v2, "SmartFolderManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Undefine sourceType = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v2, 0x0

    .line 291
    .end local v3           #targetUri:Landroid/net/Uri;
    .end local v5           #where:Ljava/lang/String;
    .end local v21           #queryDRM:Z
    :goto_0
    return-object v2

    .line 206
    .restart local v3       #targetUri:Landroid/net/Uri;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v21       #queryDRM:Z
    :sswitch_0
    invoke-static/range {p3 .. p3}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->getImageWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 207
    .local v17, imageWhere:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->getVideoWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 208
    .local v22, videoWhere:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " OR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 240
    .end local v17           #imageWhere:Ljava/lang/String;
    .end local v22           #videoWhere:Ljava/lang/String;
    :goto_1
    const-string v15, ""

    .line 241
    .local v15, eventWhere:Ljava/lang/String;
    if-eqz p4, :cond_3

    const-string v2, "key_load_events"

    const/4 v4, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 242
    .local v19, loadEvents:Z
    :goto_2
    if-eqz p4, :cond_4

    const-string v2, "key_load_events_only"

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 243
    .local v20, loadEventsOnly:Z
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->getLimits(Landroid/os/Bundle;)I

    move-result v18

    .line 245
    .local v18, limits:I
    if-nez v21, :cond_7

    .line 247
    if-eqz v20, :cond_5

    .line 249
    sget-object v15, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_CAMERA_STANDARD_WHERE:Ljava/lang/String;

    .line 256
    :cond_0
    :goto_4
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 261
    :cond_1
    :goto_5
    const-string v7, "datetaken DESC, date_modified DESC"

    .line 262
    .local v7, sortOrder:Ljava/lang/String;
    if-lez v18, :cond_2

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " LIMIT "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 265
    :cond_2
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 266
    sget-object v4, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->SC_IMAGES_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .end local v3           #targetUri:Landroid/net/Uri;
    .end local v5           #where:Ljava/lang/String;
    .end local v7           #sortOrder:Ljava/lang/String;
    .end local v15           #eventWhere:Ljava/lang/String;
    .end local v18           #limits:I
    .end local v19           #loadEvents:Z
    .end local v20           #loadEventsOnly:Z
    .end local v21           #queryDRM:Z
    :goto_6
    move-object v2, v14

    .line 291
    goto/16 :goto_0

    .line 213
    .restart local v3       #targetUri:Landroid/net/Uri;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v21       #queryDRM:Z
    :sswitch_1
    invoke-static/range {p3 .. p3}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->getImageWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 214
    goto :goto_1

    .line 218
    :sswitch_2
    invoke-static/range {p3 .. p3}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->getVideoWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 219
    goto/16 :goto_1

    .line 223
    :sswitch_3
    sget-object v3, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    .line 224
    const/16 v21, 0x1

    .line 225
    goto/16 :goto_1

    .line 229
    :sswitch_4
    sget-object v3, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    .line 230
    const/16 v21, 0x1

    .line 231
    goto/16 :goto_1

    .line 241
    .restart local v15       #eventWhere:Ljava/lang/String;
    :cond_3
    const/16 v19, 0x1

    goto/16 :goto_2

    .line 242
    .restart local v19       #loadEvents:Z
    :cond_4
    const/16 v20, 0x0

    goto :goto_3

    .line 251
    .restart local v18       #limits:I
    .restart local v20       #loadEventsOnly:Z
    :cond_5
    if-nez v19, :cond_0

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NOT "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SQL_CAMERA_STANDARD_WHERE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_4

    .line 258
    :cond_6
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 259
    move-object v5, v15

    goto :goto_5

    .line 273
    :cond_7
    if-eqz v20, :cond_8

    .line 274
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 276
    :cond_8
    sget-object v10, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->SC_DRM_IMAGES_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "date_added DESC"

    move-object/from16 v8, p1

    move-object v9, v3

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    goto :goto_6

    .line 283
    .end local v3           #targetUri:Landroid/net/Uri;
    .end local v5           #where:Ljava/lang/String;
    .end local v15           #eventWhere:Ljava/lang/String;
    .end local v18           #limits:I
    .end local v19           #loadEvents:Z
    .end local v20           #loadEventsOnly:Z
    .end local v21           #queryDRM:Z
    :catch_0
    move-exception v16

    .line 285
    .local v16, ex:Ljava/lang/Exception;
    const-string v2, "SmartFolderManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getCursor] Exception = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    if-eqz v14, :cond_9

    .line 287
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 288
    :cond_9
    const/4 v14, 0x0

    goto :goto_6

    .line 202
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xe -> :sswitch_3
        0x10 -> :sswitch_2
        0x11 -> :sswitch_0
        0xe0 -> :sswitch_4
    .end sparse-switch
.end method

.method public getSmartType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->mSmartType:Ljava/lang/String;

    return-object v0
.end method

.method public setSmartType(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->mSmartType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0

    .line 54
    :cond_0
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->mSmartType:Ljava/lang/String;

    .line 55
    const/4 v0, 0x1

    goto :goto_0
.end method
