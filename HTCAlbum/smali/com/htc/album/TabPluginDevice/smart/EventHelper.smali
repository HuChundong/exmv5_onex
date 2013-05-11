.class public Lcom/htc/album/TabPluginDevice/smart/EventHelper;
.super Ljava/lang/Object;
.source "EventHelper.java"


# static fields
.field public static final E6:D = 1000000.0

.field public static EVENT_COLLECTIONS:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation
.end field

.field public static EVENT_IDS:[Ljava/lang/String; = null

.field public static final FACTOR_LATITUDE:D = 0.09

.field public static final FACTOR_LONGITUDE:D = 0.09

.field public static final FACTOR_LONGITUDES:[D = null

.field public static final FACTOR_TIME:J = 0x36ee80L

.field public static final FACTOR_TIME_2_HOURS:J = 0x6ddd00L

.field public static final FACTOR_TIME_8_HOURS:J = 0x1b77400L

.field public static final FACTOR_TIME_HALF:J = 0x1b7740L

.field public static final LOG_TAG:Ljava/lang/String; = "EventHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    const/16 v0, 0x9

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->FACTOR_LONGITUDES:[D

    .line 65
    sput-object v1, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    .line 66
    sput-object v1, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_IDS:[Ljava/lang/String;

    return-void

    .line 48
    nop

    :array_0
    .array-data 0x8
        0xat 0xd7t 0xa3t 0x70t 0x3dt 0xat 0xb7t 0x3ft
        0xb2t 0x9dt 0xeft 0xa7t 0xc6t 0x4bt 0xb7t 0x3ft
        0xfat 0x7et 0x6at 0xbct 0x74t 0x93t 0xb8t 0x3ft
        0x39t 0xb4t 0xc8t 0x76t 0xbet 0x9ft 0xbat 0x3ft
        0xc1t 0xcat 0xa1t 0x45t 0xb6t 0xf3t 0xbdt 0x3ft
        0xect 0x51t 0xb8t 0x1et 0x85t 0xebt 0xc1t 0x3ft
        0xat 0xd7t 0xa3t 0x70t 0x3dt 0xat 0xc7t 0x3ft
        0xa2t 0x45t 0xb6t 0xf3t 0xfdt 0xd4t 0xd0t 0x3ft
        0xfat 0x7et 0x6at 0xbct 0x74t 0x93t 0xe0t 0x3ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final genEventId(Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 21
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, collections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-gtz v18, :cond_2

    .line 71
    :cond_0
    const/4 v6, 0x0

    .line 129
    :cond_1
    :goto_0
    return-object v6

    .line 73
    :cond_2
    invoke-virtual/range {p0 .. p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 74
    .local v5, eventC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    if-nez v5, :cond_3

    .line 75
    const/4 v6, 0x0

    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getEventId()Ljava/lang/String;

    move-result-object v6

    .line 78
    .local v6, eventId:Ljava/lang/String;
    if-nez v6, :cond_1

    .line 81
    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getTime()J

    move-result-wide v14

    .line 82
    .local v14, time:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 83
    .local v2, calendar:Ljava/util/Calendar;
    invoke-virtual {v2, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 84
    const/16 v18, 0xb

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 87
    .local v7, hour:I
    const/16 v19, 0xb

    rem-int/lit8 v18, v7, 0x2

    if-nez v18, :cond_5

    const/16 v18, 0x2

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 89
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .line 90
    .local v17, year:I
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    add-int/lit8 v11, v18, 0x1

    .line 91
    .local v11, month:I
    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 92
    .local v3, day:I
    const/16 v18, 0xb

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 95
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v18, 0xa

    move/from16 v0, v18

    if-ge v11, v0, :cond_6

    const-string v18, "0"

    :goto_2
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, majorId:Ljava/lang/String;
    const/16 v10, 0x64

    .line 98
    .local v10, minorId:I
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 101
    .local v12, size:I
    :goto_3
    const/16 v16, 0x1

    .line 102
    .local v16, unique:Z
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, event:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 104
    const/4 v8, 0x0

    .local v8, i:I
    :goto_4
    if-ge v8, v12, :cond_8

    .line 106
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 107
    .local v13, smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    instance-of v0, v13, Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;

    move/from16 v18, v0

    if-nez v18, :cond_4

    instance-of v0, v13, Lcom/htc/album/TabPluginDevice/smart/SmartLocalCollection;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 104
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 87
    .end local v3           #day:I
    .end local v4           #event:Ljava/lang/String;
    .end local v8           #i:I
    .end local v9           #majorId:Ljava/lang/String;
    .end local v10           #minorId:I
    .end local v11           #month:I
    .end local v12           #size:I
    .end local v13           #smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    .end local v16           #unique:Z
    .end local v17           #year:I
    :cond_5
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 95
    .restart local v3       #day:I
    .restart local v11       #month:I
    .restart local v17       #year:I
    :cond_6
    const-string v18, ""

    goto :goto_2

    .line 110
    .restart local v4       #event:Ljava/lang/String;
    .restart local v8       #i:I
    .restart local v9       #majorId:Ljava/lang/String;
    .restart local v10       #minorId:I
    .restart local v12       #size:I
    .restart local v13       #smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    .restart local v16       #unique:Z
    :cond_7
    invoke-virtual {v13}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getEventId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 112
    const/16 v16, 0x0

    .line 117
    .end local v13           #smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    :cond_8
    if-nez v16, :cond_9

    .line 119
    add-int/lit8 v10, v10, 0x1

    .line 120
    goto :goto_3

    .line 126
    :cond_9
    const-string v18, "EventHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[genEventId] eventId = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v5, v6}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setEventId(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static final getContentUri(I)Landroid/net/Uri;
    .locals 2
    .parameter "version"

    .prologue
    .line 331
    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 332
    .local v0, fileTable:Landroid/net/Uri;
    return-object v0
.end method

.method public static final getEventCoverPath(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "version"
    .parameter "eventId"

    .prologue
    const/4 v1, 0x0

    .line 232
    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-object v1

    .line 235
    :cond_1
    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 236
    .local v0, smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static final getEventDayOfYear(ILjava/lang/String;)I
    .locals 3
    .parameter "version"
    .parameter "eventId"

    .prologue
    const/4 v1, 0x0

    .line 319
    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 326
    :cond_0
    :goto_0
    return v1

    .line 322
    :cond_1
    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 323
    .local v0, smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDayOfYear()I

    move-result v1

    goto :goto_0
.end method

.method public static final getEventFileSize(ILjava/lang/String;)J
    .locals 4
    .parameter "version"
    .parameter "eventId"

    .prologue
    const-wide/16 v1, 0x0

    .line 268
    sget-object v3, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-wide v1

    .line 271
    :cond_1
    sget-object v3, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 272
    .local v0, smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getSize()J

    move-result-wide v1

    goto :goto_0
.end method

.method public static final getEventLastModifyTime(ILjava/lang/String;)J
    .locals 4
    .parameter "version"
    .parameter "eventId"

    .prologue
    const-wide/16 v1, 0x0

    .line 256
    sget-object v3, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-wide v1

    .line 259
    :cond_1
    sget-object v3, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 260
    .local v0, smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDateModified()J

    move-result-wide v1

    goto :goto_0
.end method

.method public static final getEventList(ILandroid/content/Context;Landroid/os/Bundle;)[Ljava/lang/String;
    .locals 9
    .parameter "version"
    .parameter "context"
    .parameter "extras"

    .prologue
    .line 199
    new-instance v3, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;

    invoke-direct {v3}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;-><init>()V

    .line 200
    .local v3, folderManager:Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;
    if-nez p2, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 201
    .local v0, bundle:Landroid/os/Bundle;
    :goto_0
    const-string v7, "key_no_res_displayname"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 202
    const-string v7, "MimeTypeFilter"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, filter:Ljava/lang/String;
    const/16 v7, 0x11

    invoke-virtual {v3, p1, v7, v2, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->getCollectionList(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v1

    .line 204
    .local v1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 206
    .local v5, size:I
    new-array v7, v5, [Ljava/lang/String;

    sput-object v7, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_IDS:[Ljava/lang/String;

    .line 207
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v5}, Ljava/util/HashMap;-><init>(I)V

    sput-object v7, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    .line 208
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v5, :cond_1

    .line 210
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 211
    .local v6, smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    sget-object v7, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_IDS:[Ljava/lang/String;

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getBucketId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    .line 212
    sget-object v7, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getBucketId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    .end local v2           #filter:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #size:I
    .end local v6           #smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    :cond_0
    move-object v0, p2

    .line 200
    goto :goto_0

    .line 215
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v1       #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    .restart local v2       #filter:Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v5       #size:I
    :cond_1
    sget-object v7, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_IDS:[Ljava/lang/String;

    return-object v7
.end method

.method public static final getEventList(ILandroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "version"
    .parameter "context"
    .parameter "filter"

    .prologue
    .line 192
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 193
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "MimeTypeFilter"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {p0, p1, v0}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->getEventList(ILandroid/content/Context;Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final getEventMimeType(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "version"
    .parameter "eventId"

    .prologue
    const/4 v1, 0x0

    .line 244
    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-object v1

    .line 247
    :cond_1
    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 248
    .local v0, smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getMediaMimeType()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static final getEventMonth(ILjava/lang/String;)I
    .locals 3
    .parameter "version"
    .parameter "eventId"

    .prologue
    const/4 v1, 0x0

    .line 307
    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 314
    :cond_0
    :goto_0
    return v1

    .line 310
    :cond_1
    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 311
    .local v0, smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getMonth()I

    move-result v1

    goto :goto_0
.end method

.method public static final getEventRotate(ILjava/lang/String;)I
    .locals 3
    .parameter "version"
    .parameter "eventId"

    .prologue
    const/4 v1, 0x0

    .line 280
    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 287
    :cond_0
    :goto_0
    return v1

    .line 283
    :cond_1
    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 284
    .local v0, smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDegreesRotated()I

    move-result v1

    goto :goto_0
.end method

.method public static final getEventThumbnailSize(I[I)Z
    .locals 6
    .parameter "version"
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 438
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_1

    .line 440
    :cond_0
    const-string v4, "EventHelper"

    const-string v5, "[HTCAlbum][EventHelper][getEventThumbnailSize]: skip 1..."

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :goto_0
    return v3

    .line 447
    :cond_1
    const/4 v0, 0x3

    .line 448
    .local v0, NEXT:I
    array-length v5, p1

    sub-int v1, v5, v0

    .line 450
    .local v1, nCount:I
    rem-int v5, v1, v0

    if-eqz v5, :cond_2

    .line 452
    const-string v4, "EventHelper"

    const-string v5, "[HTCAlbum][EventHelper][getEventThumbnailSize]: skip 2..."

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :cond_2
    const/4 v2, 0x0

    .local v2, nIndex:I
    :goto_1
    if-lt v1, v2, :cond_5

    .line 457
    aget v3, p1, v2

    if-ne v4, v3, :cond_4

    .line 459
    add-int/lit8 v3, v2, 0x1

    sget v5, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;->GRID_THUMBNAIL_DIMENSION_W:I

    aput v5, p1, v3

    .line 460
    add-int/lit8 v3, v2, 0x2

    sget v5, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;->GRID_THUMBNAIL_DIMENSION_H:I

    aput v5, p1, v3

    .line 455
    :cond_3
    :goto_2
    add-int/2addr v2, v0

    goto :goto_1

    .line 462
    :cond_4
    const/4 v3, 0x2

    aget v5, p1, v2

    if-ne v3, v5, :cond_3

    .line 464
    add-int/lit8 v3, v2, 0x1

    sget v5, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->GRID_THUMBNAIL_DIMENSION_W:I

    aput v5, p1, v3

    .line 465
    add-int/lit8 v3, v2, 0x2

    sget v5, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->GRID_THUMBNAIL_DIMENSION_H:I

    aput v5, p1, v3

    goto :goto_2

    :cond_5
    move v3, v4

    .line 468
    goto :goto_0
.end method

.method public static final getEventThumbnailType(I[I)Z
    .locals 12
    .parameter "version"
    .parameter "data"

    .prologue
    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 472
    if-eqz p1, :cond_0

    array-length v10, p1

    if-nez v10, :cond_1

    .line 474
    :cond_0
    const-string v9, "EventHelper"

    const-string v10, "[HTCAlbum][EventHelper][getEventThumbnailType]: skip 1..."

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :goto_0
    return v8

    .line 482
    :cond_1
    const/4 v0, 0x4

    .line 483
    .local v0, NEXT:I
    const/4 v1, 0x3

    .line 484
    .local v1, OUT_INDEX:I
    array-length v10, p1

    sub-int v4, v10, v0

    .line 486
    .local v4, nCount:I
    rem-int v10, v4, v0

    if-eqz v10, :cond_2

    .line 488
    const-string v9, "EventHelper"

    const-string v10, "[HTCAlbum][EventHelper][getEventThumbnailType]: skip 2..."

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 491
    :cond_2
    const/4 v7, 0x0

    .line 492
    .local v7, nSameFocusCount:I
    const/4 v6, 0x0

    .line 493
    .local v6, nIndexPrev:I
    const/4 v3, 0x0

    .line 494
    .local v3, collectionPrev:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    const/4 v2, 0x0

    .line 496
    .local v2, collection:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    const/4 v5, 0x0

    .local v5, nIndex:I
    :goto_1
    if-lt v4, v5, :cond_6

    .line 498
    new-instance v2, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .end local v2           #collection:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    invoke-direct {v2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;-><init>()V

    .line 499
    .restart local v2       #collection:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    aget v8, p1, v5

    iput v8, v2, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mYear:I

    .line 500
    add-int/lit8 v8, v5, 0x1

    aget v8, p1, v8

    iput v8, v2, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mMonth:I

    .line 501
    add-int/lit8 v8, v5, 0x2

    aget v8, p1, v8

    iput v8, v2, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mDayOfYear:I

    .line 506
    if-eqz v3, :cond_3

    invoke-static {v3, v2}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->isSameDay(Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 508
    :cond_3
    const/4 v7, 0x1

    .line 509
    add-int v8, v5, v1

    aput v11, p1, v8

    .line 528
    :goto_2
    move v6, v5

    .line 529
    move-object v3, v2

    .line 496
    add-int/2addr v5, v0

    goto :goto_1

    .line 513
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 517
    rem-int/lit8 v8, v7, 0x2

    if-nez v8, :cond_5

    .line 519
    add-int v8, v5, v1

    aput v9, p1, v8

    .line 520
    add-int v8, v6, v1

    aput v9, p1, v8

    goto :goto_2

    .line 524
    :cond_5
    add-int v8, v5, v1

    aput v11, p1, v8

    goto :goto_2

    :cond_6
    move v8, v9

    .line 533
    goto :goto_0
.end method

.method public static final getEventTypeById(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "version"
    .parameter "eventId"

    .prologue
    const/4 v1, 0x0

    .line 220
    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-object v1

    .line 223
    :cond_1
    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 224
    .local v0, smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getFolderType()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static final getEventYear(ILjava/lang/String;)I
    .locals 3
    .parameter "version"
    .parameter "eventId"

    .prologue
    const/4 v1, 0x0

    .line 294
    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 301
    :cond_0
    :goto_0
    return v1

    .line 297
    :cond_1
    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 298
    .local v0, smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getYear()I

    move-result v1

    goto :goto_0
.end method

.method public static getMaxLatitude(D)D
    .locals 2
    .parameter "lat"

    .prologue
    .line 410
    const-wide v0, 0x3fb70a3d70a3d70aL

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public static getMaxLongitude(DD)D
    .locals 7
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 415
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4024

    div-double/2addr v3, v5

    double-to-int v0, v3

    .line 416
    .local v0, latV:I
    const/16 v3, 0x8

    if-lt v0, v3, :cond_0

    .line 417
    const/16 v0, 0x8

    .line 418
    :cond_0
    sget-object v3, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->FACTOR_LONGITUDES:[D

    aget-wide v1, v3, v0

    .line 419
    .local v1, longitude:D
    add-double v3, p2, v1

    return-wide v3
.end method

.method public static getMinLatitude(D)D
    .locals 2
    .parameter "lat"

    .prologue
    .line 424
    const-wide v0, 0x3fb70a3d70a3d70aL

    sub-double v0, p0, v0

    return-wide v0
.end method

.method public static getMinLongitude(DD)D
    .locals 7
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 429
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4024

    div-double/2addr v3, v5

    double-to-int v0, v3

    .line 430
    .local v0, latV:I
    const/16 v3, 0x8

    if-lt v0, v3, :cond_0

    .line 431
    const/16 v0, 0x8

    .line 432
    :cond_0
    sget-object v3, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->FACTOR_LONGITUDES:[D

    aget-wide v1, v3, v0

    .line 433
    .local v1, longitude:D
    sub-double v3, p2, v1

    return-wide v3
.end method

.method public static final getProjection(I)[Ljava/lang/String;
    .locals 1
    .parameter "version"

    .prologue
    .line 337
    sget-object v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->SC_IMAGES_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public static final getSingleEventWhereArgs(ILjava/lang/String;Z)[Ljava/lang/String;
    .locals 3
    .parameter "version"
    .parameter "bucketId"
    .parameter "appendDefault"

    .prologue
    const/4 v1, 0x0

    .line 370
    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-object v1

    .line 373
    :cond_1
    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 374
    .local v0, smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    if-eqz v0, :cond_0

    .line 375
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getQueryWhereParams(IZ)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static final getSingleEventWhereClause(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "version"
    .parameter "bucketId"
    .parameter "filter"
    .parameter "appendDefault"

    .prologue
    const/4 v1, 0x0

    .line 358
    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-object v1

    .line 361
    :cond_1
    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 362
    .local v0, smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    if-eqz v0, :cond_0

    .line 363
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getQueryWhere(IZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static final getSortOrder(I)Ljava/lang/String;
    .locals 1
    .parameter "version"

    .prologue
    .line 382
    const-string v0, "datetaken DESC, date_modified DESC"

    return-object v0
.end method

.method public static final getTimeRange(ILjava/lang/String;)[J
    .locals 2
    .parameter "version"
    .parameter "bucketId"

    .prologue
    const/4 v1, 0x0

    .line 396
    sget-object v0, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 399
    :cond_0
    return-object v1
.end method

.method public static final getWhereArgs(I)[Ljava/lang/String;
    .locals 1
    .parameter "version"

    .prologue
    .line 353
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final getWhereClause(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "version"
    .parameter "filter"

    .prologue
    .line 342
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getSupportedMediaFormatWhereClause(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, where:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(( media_type = 1 AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) OR ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "media_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    return-object v0
.end method

.method public static final handleRetrievedAddress(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Ljava/lang/String;)V
    .locals 13
    .parameter "sceneControl"
    .parameter "adapter"
    .parameter "sceneId"

    .prologue
    .line 595
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v11

    if-eqz v11, :cond_0

    if-nez p1, :cond_1

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    .line 599
    .local v1, collection:Lcom/htc/album/modules/collection/Collection;
    invoke-interface {p0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v3

    .line 600
    .local v3, fragment:Lcom/htc/app/mf/MfFragment;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 603
    instance-of v11, v1, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;

    if-eqz v11, :cond_0

    instance-of v11, v3, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    if-eqz v11, :cond_0

    move-object v0, v3

    .line 606
    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    .line 607
    .local v0, addressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;
    invoke-interface {v0, p2}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->getAddressResultMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v9

    .line 608
    .local v9, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/AddressFinderService/interfaces/AddressData;>;"
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v11

    if-lez v11, :cond_0

    move-object v10, v1

    .line 611
    check-cast v10, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;

    .line 612
    .local v10, smartC:Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getLatitude()D

    move-result-wide v5

    .line 613
    .local v5, latitude:D
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getLongitude()D

    move-result-wide v7

    .line 614
    .local v7, longitude:D
    invoke-static {v5, v6, v7, v8}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->getLocationKey(DD)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 615
    .local v4, key:Ljava/lang/Long;
    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/AddressFinderService/interfaces/AddressData;

    .line 616
    .local v2, data:Lcom/htc/AddressFinderService/interfaces/AddressData;
    if-eqz v2, :cond_0

    .line 619
    invoke-virtual {v2}, Lcom/htc/AddressFinderService/interfaces/AddressData;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->setLocation(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v2}, Lcom/htc/AddressFinderService/interfaces/AddressData;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->setLanguage(Ljava/lang/String;)V

    .line 621
    invoke-interface {p0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public static final isEventType(ILjava/lang/String;)Z
    .locals 1
    .parameter "version"
    .parameter "folderType"

    .prologue
    .line 165
    if-eqz p1, :cond_0

    const-string v0, "com.htc.HTCAlbum.SMART_TIME_LOCATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    :cond_0
    const/4 v0, 0x0

    .line 168
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameDay(Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;)Z
    .locals 4
    .parameter "collectionPrev"
    .parameter "collectionCurrent"

    .prologue
    .line 537
    const/4 v0, 0x0

    .line 539
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->isSeparable()Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    .line 552
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 542
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getYear()I

    move-result v2

    invoke-virtual {p1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getYear()I

    move-result v3

    if-eq v2, v3, :cond_1

    move v1, v0

    .line 543
    .restart local v1       #bResult:I
    goto :goto_0

    .line 545
    .end local v1           #bResult:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getMonth()I

    move-result v2

    invoke-virtual {p1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getMonth()I

    move-result v3

    if-eq v2, v3, :cond_2

    move v1, v0

    .line 546
    .restart local v1       #bResult:I
    goto :goto_0

    .line 548
    .end local v1           #bResult:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDayOfYear()I

    move-result v2

    invoke-virtual {p1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDayOfYear()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v1, v0

    .line 549
    .restart local v1       #bResult:I
    goto :goto_0

    .line 551
    .end local v1           #bResult:I
    :cond_3
    const/4 v0, 0x1

    move v1, v0

    .line 552
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public static isSameMonth(Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;)Z
    .locals 4
    .parameter "collectionPrev"
    .parameter "collectionCurrent"

    .prologue
    .line 628
    const/4 v0, 0x0

    .line 630
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getYear()I

    move-result v2

    invoke-virtual {p1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getYear()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v1, v0

    .line 641
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 635
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getMonth()I

    move-result v2

    invoke-virtual {p1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getMonth()I

    move-result v3

    if-eq v2, v3, :cond_1

    move v1, v0

    .line 638
    .restart local v1       #bResult:I
    goto :goto_0

    .line 640
    .end local v1           #bResult:I
    :cond_1
    const/4 v0, 0x1

    move v1, v0

    .line 641
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public static isValidateLatLng(DD)Z
    .locals 5
    .parameter "lat"
    .parameter "lng"

    .prologue
    const-wide v3, 0x406fe00000000000L

    const-wide/16 v1, 0x0

    .line 404
    cmpl-double v0, p0, v3

    if-eqz v0, :cond_0

    cmpl-double v0, p2, v3

    if-eqz v0, :cond_0

    cmpl-double v0, p0, v1

    if-eqz v0, :cond_0

    cmpl-double v0, p2, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final queryEventId(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "resolver"
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 134
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-object v3

    .line 137
    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "v_folder"

    aput-object v0, v2, v1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 138
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 141
    const/4 v7, 0x0

    .line 145
    .local v7, eventId:Ljava/lang/String;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 156
    :cond_2
    if-eqz v6, :cond_3

    .line 157
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move-object v3, v7

    .line 160
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 156
    if-eqz v6, :cond_3

    .line 157
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 156
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 157
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static final resetEvents(I)V
    .locals 2
    .parameter "version"

    .prologue
    const/4 v1, 0x0

    .line 387
    sget-object v0, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 388
    sget-object v0, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 389
    :cond_0
    sput-object v1, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_COLLECTIONS:Ljava/util/HashMap;

    .line 391
    sput-object v1, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->EVENT_IDS:[Ljava/lang/String;

    .line 392
    return-void
.end method

.method public static final retrieveAddress(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)V
    .locals 16
    .parameter "sceneControl"
    .parameter "adapter"
    .parameter "bEnableNetworkAccessWarning"

    .prologue
    .line 557
    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v14

    if-eqz v14, :cond_0

    if-nez p1, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v2

    .line 561
    .local v2, collection:Lcom/htc/album/modules/collection/Collection;
    invoke-interface/range {p0 .. p0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v4

    .line 562
    .local v4, fragment:Lcom/htc/app/mf/MfFragment;
    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 565
    instance-of v14, v2, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;

    if-eqz v14, :cond_0

    instance-of v14, v4, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    if-eqz v14, :cond_0

    move-object v13, v2

    .line 568
    check-cast v13, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;

    .line 569
    .local v13, smartC:Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;
    invoke-virtual {v13}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getLatitude()D

    move-result-wide v7

    .line 570
    .local v7, latitude:D
    invoke-virtual {v13}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getLongitude()D

    move-result-wide v11

    .line 571
    .local v11, longitude:D
    invoke-static {v7, v8, v11, v12}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->isValidateLatLng(DD)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 573
    invoke-virtual {v13}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getLocation()Ljava/lang/String;

    move-result-object v10

    .line 574
    .local v10, location:Ljava/lang/String;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_2

    const/4 v5, 0x1

    .line 575
    .local v5, isValidateLocation:Z
    :goto_1
    if-nez v5, :cond_0

    .line 577
    new-instance v3, Lcom/htc/AddressFinderService/interfaces/AddressData;

    invoke-direct {v3}, Lcom/htc/AddressFinderService/interfaces/AddressData;-><init>()V

    .line 578
    .local v3, data:Lcom/htc/AddressFinderService/interfaces/AddressData;
    invoke-virtual {v3, v7, v8}, Lcom/htc/AddressFinderService/interfaces/AddressData;->setLatitude(D)V

    .line 579
    invoke-virtual {v3, v11, v12}, Lcom/htc/AddressFinderService/interfaces/AddressData;->setLongitude(D)V

    .line 580
    invoke-static {v7, v8, v11, v12}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->getLocationKey(DD)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 581
    .local v6, key:Ljava/lang/Long;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 582
    .local v9, list:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/AddressFinderService/interfaces/AddressData;>;"
    invoke-virtual {v9, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v4

    .line 583
    check-cast v1, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    .line 585
    .local v1, addressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;
    move/from16 v0, p2

    invoke-interface {v1, v0}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->setEnableNetworkAccessWarning(Z)V

    .line 586
    const/4 v14, 0x1

    invoke-interface {v1, v9, v14}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->setAddressLookUpSource(Ljava/util/HashMap;I)V

    .line 587
    invoke-virtual {v4}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->getAutoRetrievePref(Landroid/content/Context;)Z

    move-result v14

    invoke-interface {v1, v14}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->addressLookup(Z)V

    goto :goto_0

    .line 574
    .end local v1           #addressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;
    .end local v3           #data:Lcom/htc/AddressFinderService/interfaces/AddressData;
    .end local v5           #isValidateLocation:Z
    .end local v6           #key:Ljava/lang/Long;
    .end local v9           #list:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/AddressFinderService/interfaces/AddressData;>;"
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static final updateEventIds(ILandroid/content/Context;Landroid/os/Bundle;)Z
    .locals 9
    .parameter "version"
    .parameter "context"
    .parameter "extras"

    .prologue
    const/4 v7, 0x1

    .line 173
    if-nez p2, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 174
    .local v0, bundle:Landroid/os/Bundle;
    :goto_0
    const-string v8, "key_no_res_displayname"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 175
    const-string v8, "key_load_events_only"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 176
    const-string v8, "MimeTypeFilter"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, filter:Ljava/lang/String;
    new-instance v3, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;

    invoke-direct {v3}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;-><init>()V

    .line 179
    .local v3, folderManager:Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;
    const/16 v8, 0x11

    invoke-virtual {v3, p1, v8, v2, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->getCollectionList(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v1

    .line 181
    .local v1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    const/4 v6, 0x0

    .line 182
    .local v6, updateTotal:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 184
    .local v5, smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->updateEventIds()I

    move-result v8

    add-int/2addr v6, v8

    goto :goto_1

    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    .end local v2           #filter:Ljava/lang/String;
    .end local v3           #folderManager:Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    .end local v6           #updateTotal:I
    :cond_0
    move-object v0, p2

    .line 173
    goto :goto_0

    .line 187
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v1       #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    .restart local v2       #filter:Ljava/lang/String;
    .restart local v3       #folderManager:Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #updateTotal:I
    :cond_1
    if-lez v6, :cond_2

    :goto_2
    return v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method
