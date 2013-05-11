.class public Lcom/htc/album/TabPluginDevice/smart/SmartEventManager;
.super Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;
.source "SmartEventManager.java"


# instance fields
.field private mEventCollections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection;",
            ">;"
        }
    .end annotation
.end field

.field where:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartEventManager;->mEventCollections:Landroid/util/SparseArray;

    .line 44
    const-string v0, "allDay = 0 AND dtstart is not null AND dtend is not null AND availability = 0 AND eventStatus != 2 AND deleted <> 1"

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartEventManager;->where:Ljava/lang/String;

    return-void
.end method

.method private loadCalendarEvents(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 22
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p2, collectionList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 56
    .local v17, startTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 57
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection;->PROJECTION_CALENDAR_EVENT:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TabPluginDevice/smart/SmartEventManager;->where:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "dtstart DESC, eventTimezone DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 62
    .local v12, cursor:Landroid/database/Cursor;
    if-nez v12, :cond_0

    .line 64
    const-string v19, "SmartFolderManager"

    const-string v20, "[loadCalendarEvents] null cursor"

    invoke-static/range {v19 .. v20}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void

    .line 68
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartEventManager;->mEventCollections:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 69
    new-instance v19, Landroid/util/SparseArray;

    invoke-direct/range {v19 .. v19}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDevice/smart/SmartEventManager;->mEventCollections:Landroid/util/SparseArray;

    .line 70
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartEventManager;->mEventCollections:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->clear()V

    .line 74
    :goto_1
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v19

    if-eqz v19, :cond_5

    sget-boolean v19, Lcom/htc/album/TabPluginDevice/smart/SmartEventManager;->CANCEL_LOADING:Z

    if-nez v19, :cond_5

    .line 76
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 77
    .local v4, eventID:I
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, title:Ljava/lang/String;
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 79
    .local v11, location:Ljava/lang/String;
    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 80
    .local v10, timeZone:Ljava/lang/String;
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 81
    .local v6, timeStart:J
    const/16 v19, 0x5

    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 82
    .local v8, timeEnd:J
    const/16 v19, 0x6

    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 84
    .local v13, duration:Ljava/lang/String;
    new-instance v3, Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection;-><init>(Landroid/content/Context;)V

    .line 85
    .local v3, collection:Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection;
    invoke-virtual/range {v3 .. v11}, Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection;->setEvent(ILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v19, "SmartFolderManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[loadCalendarEvents] Calendar updated!! Title = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", Event Id = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartEventManager;->mEventCollections:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 90
    .end local v3           #collection:Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection;
    .end local v4           #eventID:I
    .end local v5           #title:Ljava/lang/String;
    .end local v6           #timeStart:J
    .end local v8           #timeEnd:J
    .end local v10           #timeZone:Ljava/lang/String;
    .end local v11           #location:Ljava/lang/String;
    .end local v13           #duration:Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 92
    .local v16, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v19, "SmartFolderManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[loadCalendarEvents] Exception = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    if-eqz v12, :cond_2

    .line 94
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :cond_2
    const/4 v12, 0x0

    .line 99
    if-eqz v12, :cond_3

    .line 101
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 104
    .end local v16           #ex:Ljava/lang/Exception;
    :cond_3
    :goto_2
    const/4 v12, 0x0

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v14, v19, v17

    .line 108
    .local v14, endTime:J
    const-string v19, "SmartFolderManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[loadCalendarEvents] query --, total "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " collections, time used "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 99
    .end local v14           #endTime:J
    :catchall_0
    move-exception v19

    if-eqz v12, :cond_4

    .line 101
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 104
    :cond_4
    const/4 v12, 0x0

    .line 99
    throw v19

    :cond_5
    if-eqz v12, :cond_3

    .line 101
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method


# virtual methods
.method protected onPostLoadCollectioinList(Landroid/content/Context;Ljava/util/HashMap;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter "requestedSources"
    .parameter "filter"
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
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, collectionList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    return-void
.end method

.method protected onPreLoadCollectioinList(Landroid/content/Context;Ljava/util/HashMap;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter "requestedSources"
    .parameter "filter"
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
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, collectionList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    invoke-direct {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/smart/SmartEventManager;->loadCalendarEvents(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 32
    return-void
.end method
