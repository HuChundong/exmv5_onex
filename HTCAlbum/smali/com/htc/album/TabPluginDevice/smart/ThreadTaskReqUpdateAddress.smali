.class public final Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;
.super Lcom/htc/sunny2/common/SimpleThreadTask;
.source "ThreadTaskReqUpdateAddress.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sunny2/common/SimpleThreadTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
        ">;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "ThreadTaskReqUpdateAddress"


# instance fields
.field private mListA:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mRequest:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderRequest;

.field private mUpdateList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/AddressFinderService/interfaces/AddressData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDevice/smart/IAddressFinderRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Lcom/htc/sunny2/common/SimpleThreadTask;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->mRequest:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderRequest;

    .line 16
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->mListA:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->mUpdateList:Ljava/util/HashMap;

    .line 22
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->mRequest:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderRequest;

    .line 23
    return-void
.end method

.method private doUpdateUnavailableAddress(Ljava/util/ArrayList;)V
    .locals 20
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
    .line 68
    .local p1, eventCollections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    const-string v17, "ThreadTaskReqUpdateAddress"

    const-string v18, "[HTCAlbum][ThreadTaskReqUpdateAddress][doUpdateUnavailableAddress]: ..."

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-gtz v17, :cond_1

    .line 71
    :cond_0
    const-string v17, "ThreadTaskReqUpdateAddress"

    const-string v18, "[HTCAlbum][ThreadTaskReqUpdateAddress][doUpdateUnavailableAddress]: skip..."

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    .line 76
    .local v14, strDefaultLanguage:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 78
    .local v10, eventSC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getLatitude()D

    move-result-wide v4

    .line 79
    .local v4, dEventLatitude:D
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getLongitude()D

    move-result-wide v6

    .line 80
    .local v6, dEventLongitude:D
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getTime()J

    move-result-wide v8

    .line 81
    .local v8, dEventTime:J
    invoke-static {v4, v5, v6, v7}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->isValidateLatLng(DD)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 84
    const/4 v3, 0x1

    .line 85
    .local v3, bIsNeedUpdate:Z
    iget-object v0, v10, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 86
    .local v16, strEventLocation:Ljava/lang/String;
    iget-object v15, v10, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLanguage:Ljava/lang/String;

    .line 88
    .local v15, strEventLanguage:Ljava/lang/String;
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    if-eqz v16, :cond_3

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    :cond_3
    const/4 v3, 0x1

    .line 90
    :goto_2
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_2

    .line 92
    new-instance v2, Lcom/htc/AddressFinderService/interfaces/AddressData;

    invoke-direct {v2}, Lcom/htc/AddressFinderService/interfaces/AddressData;-><init>()V

    .line 93
    .local v2, addressData:Lcom/htc/AddressFinderService/interfaces/AddressData;
    invoke-virtual {v2, v4, v5}, Lcom/htc/AddressFinderService/interfaces/AddressData;->setLatitude(D)V

    .line 94
    invoke-virtual {v2, v6, v7}, Lcom/htc/AddressFinderService/interfaces/AddressData;->setLongitude(D)V

    .line 95
    invoke-virtual {v2, v8, v9}, Lcom/htc/AddressFinderService/interfaces/AddressData;->setTime(J)V

    .line 97
    invoke-static {v4, v5, v6, v7}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->getLocationKey(DD)J

    move-result-wide v12

    .line 98
    .local v12, key:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->mUpdateList:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 88
    .end local v2           #addressData:Lcom/htc/AddressFinderService/interfaces/AddressData;
    .end local v12           #key:J
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 101
    .end local v3           #bIsNeedUpdate:Z
    .end local v4           #dEventLatitude:D
    .end local v6           #dEventLongitude:D
    .end local v8           #dEventTime:J
    .end local v10           #eventSC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    .end local v15           #strEventLanguage:Ljava/lang/String;
    .end local v16           #strEventLocation:Ljava/lang/String;
    :cond_5
    const-string v17, "ThreadTaskReqUpdateAddress"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[HTCAlbum][ThreadTaskReqUpdateAddress][doUpdateUnavailableAddress]: need update count: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->mUpdateList:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected doInBackground(Ljava/util/ArrayList;)Ljava/lang/Integer;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, collection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    const-string v0, "ThreadTaskReqUpdateAddress"

    const-string v1, "[HTCAlbum][ThreadTaskReqUpdateAddress][doInBackground]: +"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->mListA:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->doUpdateUnavailableAddress(Ljava/util/ArrayList;)V

    .line 38
    const-string v0, "ThreadTaskReqUpdateAddress"

    const-string v1, "[HTCAlbum][ThreadTaskReqUpdateAddress][doInBackground]: -"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->doInBackground(Ljava/util/ArrayList;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 46
    const-string v0, "ThreadTaskReqUpdateAddress"

    const-string v1, "[HTCAlbum][ThreadTaskReqUpdateAddress][onCancelled]: ..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->onCancelled(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->mRequest:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderRequest;

    if-nez v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->mUpdateList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->mRequest:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderRequest;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->mUpdateList:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderRequest;->setAddressDataMap(Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "ThreadTaskReqUpdateAddress"

    const-string v1, "[HTCAlbum][ThreadTaskReqUpdateAddress][onPostExecute]: requestUpdateAddressInfo..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->mRequest:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderRequest;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderRequest;->requestUpdateAddressInfo(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->onPreExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPreExecute(Ljava/util/ArrayList;)V
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
    .line 28
    .local p1, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    const-string v0, "ThreadTaskReqUpdateAddress"

    const-string v1, "[HTCAlbum][ThreadTaskReqUpdateAddress][onPreExecute]:... "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->mListA:Ljava/util/ArrayList;

    .line 30
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->mUpdateList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 31
    return-void
.end method
