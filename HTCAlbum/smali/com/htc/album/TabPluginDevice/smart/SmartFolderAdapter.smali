.class public Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;
.super Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;
.source "SmartFolderAdapter.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;
.implements Landroid/widget/SectionIndexer;
.implements Lcom/htc/album/TabPluginDevice/smart/IAddressFinderRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$1;,
        Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$EventObserver;,
        Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTimeComparator;,
        Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;
    }
.end annotation


# static fields
.field public static final FLAG_REQUEST_LOAD_EVENTS:I = 0x4

.field public static final LOG_TAG:Ljava/lang/String; = "SmartFolderAdapter"

.field public static final STATE_LOAD_FOLDERS:I = 0x2


# instance fields
.field private mAdapterReleased:Z

.field private mCountToUpdate:I

.field protected mFSIndexCollections:[I

.field private mFSSeparatorlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;",
            ">;"
        }
    .end annotation
.end field

.field protected mFSTimeSections:[Ljava/lang/String;

.field private mFolderManager:Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;

.field private mIsEnableUpdateCache:Z

.field private mIsNeedUpdateGeocode:Z

.field private mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

.field protected mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mListCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mListHidden:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mListNoSeparator:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedForceWriteFileCache:Z

.field protected mNeedUpdateFSArrays:Z

.field protected mNewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mNewListCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mNewListNoSeparator:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mOldList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mOldListCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mOldListNoSeparator:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mShowSeperator:Z

.field private mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

.field private mThreadReqUpdateAddress:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;

.field private mThreadReqUpdateCache:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/SunnyContext;Landroid/app/Activity;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .locals 4
    .parameter "sunnyContext"
    .parameter "activity"
    .parameter "handler"
    .parameter "mediaTypes"
    .parameter "extras"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;-><init>(Landroid/app/Activity;Landroid/os/Handler;ILandroid/os/Bundle;)V

    .line 54
    iput v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mCountToUpdate:I

    .line 56
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFolderManager:Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;

    .line 57
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    .line 58
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListNoSeparator:Ljava/util/ArrayList;

    .line 59
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListCache:Ljava/util/ArrayList;

    .line 60
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListHidden:Ljava/util/ArrayList;

    .line 61
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    .line 62
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mIsEnableUpdateCache:Z

    .line 63
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mAdapterReleased:Z

    .line 64
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSSeparatorlList:Ljava/util/ArrayList;

    .line 65
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNeedUpdateFSArrays:Z

    .line 66
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSTimeSections:[Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSIndexCollections:[I

    .line 68
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mIsNeedUpdateGeocode:Z

    .line 69
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNeedForceWriteFileCache:Z

    .line 71
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateCache:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;

    .line 72
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateAddress:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;

    .line 73
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mShowSeperator:Z

    .line 162
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewList:Ljava/util/ArrayList;

    .line 163
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldList:Ljava/util/ArrayList;

    .line 165
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListNoSeparator:Ljava/util/ArrayList;

    .line 166
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldListNoSeparator:Ljava/util/ArrayList;

    .line 168
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListCache:Ljava/util/ArrayList;

    .line 169
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldListCache:Ljava/util/ArrayList;

    .line 936
    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    .line 80
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    .line 81
    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFolderManager:Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;

    .line 82
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->setContext(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    .line 83
    const-string v0, "key_show_event_seperator"

    invoke-virtual {p5, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mShowSeperator:Z

    .line 84
    return-void
.end method

.method private doMergeEventsWithFileCache(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 35
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
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 394
    .local p1, cacheCollectionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    .local p2, eventCollectionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    const/16 v22, 0x0

    .line 395
    .local v22, newCacheList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    const/4 v5, 0x0

    .line 397
    .local v5, cacheAddressMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-gtz v31, :cond_3

    .line 399
    :cond_0
    new-instance v22, Ljava/util/ArrayList;

    .end local v22           #newCacheList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .restart local v22       #newCacheList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5           #cacheAddressMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 402
    .restart local v5       #cacheAddressMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    const-string v31, "SmartFolderAdapter"

    const-string v32, "[HTCAlbum][SmartFolderAdapter][doMergeEventsWithFileCache]: no cahce..."

    invoke-static/range {v31 .. v32}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-gtz v31, :cond_6

    .line 438
    :cond_2
    const-string v31, "SmartFolderAdapter"

    const-string v32, "[HTCAlbum][SmartFolderAdapter][doMergeEventsWithFileCache]: no event..."

    invoke-static/range {v31 .. v32}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :goto_1
    return-object v22

    .line 409
    :cond_3
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v23, removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    new-instance v22, Ljava/util/ArrayList;

    .end local v22           #newCacheList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 411
    .restart local v22       #newCacheList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5           #cacheAddressMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 412
    .restart local v5       #cacheAddressMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 414
    .local v6, cacheC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getFolderType()Ljava/lang/String;

    move-result-object v28

    .line 415
    .local v28, type:Ljava/lang/String;
    const-string v31, "com.htc.HTCAlbum.SMART_TIME_LOCATION"

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_4

    .line 417
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getLatitude()D

    move-result-wide v13

    .line 420
    .local v13, dLatitude:D
    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getLongitude()D

    move-result-wide v15

    .line 421
    .local v15, dLongitude:D
    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getLocation()Ljava/lang/String;

    move-result-object v27

    .line 422
    .local v27, strLocation:Ljava/lang/String;
    const/16 v31, 0x1

    invoke-static/range {v13 .. v16}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->isValidateLatLng(DD)Z

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_4

    if-eqz v27, :cond_4

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v31

    if-lez v31, :cond_4

    .line 424
    invoke-static/range {v13 .. v16}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->getLocationKey(DD)J

    move-result-wide v20

    .line 425
    .local v20, key:J
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 430
    .end local v6           #cacheC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    .end local v13           #dLatitude:D
    .end local v15           #dLongitude:D
    .end local v20           #key:J
    .end local v27           #strLocation:Ljava/lang/String;
    .end local v28           #type:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_1

    .line 432
    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 442
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v23           #removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v26

    .line 443
    .local v26, strDefaultLanguage:Ljava/lang/String;
    new-instance v30, Ljava/util/HashMap;

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v31

    invoke-direct/range {v30 .. v31}, Ljava/util/HashMap;-><init>(I)V

    .line 444
    .local v30, updateList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/AddressFinderService/interfaces/AddressData;>;"
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v19

    .line 445
    .local v19, iAddressMapSize:I
    const/16 v29, 0x0

    .line 446
    .local v29, updateCount:I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18       #i$:Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_d

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 448
    .local v17, eventC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    invoke-virtual/range {v17 .. v17}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getLatitude()D

    move-result-wide v7

    .line 449
    .local v7, dEventLatitude:D
    invoke-virtual/range {v17 .. v17}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getLongitude()D

    move-result-wide v9

    .line 450
    .local v9, dEventLongitude:D
    invoke-virtual/range {v17 .. v17}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getTime()J

    move-result-wide v11

    .line 451
    .local v11, dEventTime:J
    invoke-static {v7, v8, v9, v10}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->isValidateLatLng(DD)Z

    move-result v31

    if-eqz v31, :cond_7

    .line 454
    const/4 v4, 0x1

    .line 455
    .local v4, bIsNeedUpdate:Z
    const/4 v6, 0x0

    .line 456
    .restart local v6       #cacheC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    invoke-static {v7, v8, v9, v10}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->getLocationKey(DD)J

    move-result-wide v20

    .line 457
    .restart local v20       #key:J
    if-lez v19, :cond_8

    .line 459
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #cacheC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    check-cast v6, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 461
    .restart local v6       #cacheC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    if-eqz v6, :cond_8

    .line 463
    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getLocation()Ljava/lang/String;

    move-result-object v25

    .line 464
    .local v25, strCacheLocation:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getLanguage()Ljava/lang/String;

    move-result-object v24

    .line 465
    .local v24, strCacheLanguage:Ljava/lang/String;
    const/4 v3, 0x0

    .line 467
    .local v3, bHasLanguageChanged:Z
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_9

    const/4 v3, 0x1

    .line 468
    :goto_4
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_a

    .line 470
    const/16 v31, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setLocation(Ljava/lang/String;)V

    .line 471
    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setLanguage(Ljava/lang/String;)V

    .line 473
    const/4 v4, 0x1

    .line 486
    .end local v3           #bHasLanguageChanged:Z
    .end local v24           #strCacheLanguage:Ljava/lang/String;
    .end local v25           #strCacheLocation:Ljava/lang/String;
    :cond_8
    :goto_5
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v0, v4, :cond_7

    .line 488
    new-instance v2, Lcom/htc/AddressFinderService/interfaces/AddressData;

    invoke-direct {v2}, Lcom/htc/AddressFinderService/interfaces/AddressData;-><init>()V

    .line 489
    .local v2, addressData:Lcom/htc/AddressFinderService/interfaces/AddressData;
    invoke-virtual {v2, v7, v8}, Lcom/htc/AddressFinderService/interfaces/AddressData;->setLatitude(D)V

    .line 490
    invoke-virtual {v2, v9, v10}, Lcom/htc/AddressFinderService/interfaces/AddressData;->setLongitude(D)V

    .line 491
    invoke-virtual {v2, v11, v12}, Lcom/htc/AddressFinderService/interfaces/AddressData;->setTime(J)V

    .line 492
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    add-int/lit8 v29, v29, 0x1

    goto :goto_3

    .line 467
    .end local v2           #addressData:Lcom/htc/AddressFinderService/interfaces/AddressData;
    .restart local v3       #bHasLanguageChanged:Z
    .restart local v24       #strCacheLanguage:Ljava/lang/String;
    .restart local v25       #strCacheLocation:Ljava/lang/String;
    :cond_9
    const/4 v3, 0x0

    goto :goto_4

    .line 477
    :cond_a
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setLocation(Ljava/lang/String;)V

    .line 478
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->setLanguage(Ljava/lang/String;)V

    .line 480
    if-eqz v25, :cond_b

    const/16 v31, 0x1

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->isEmpty()Z

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_c

    :cond_b
    const/4 v4, 0x1

    :goto_6
    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    goto :goto_6

    .line 496
    .end local v3           #bHasLanguageChanged:Z
    .end local v4           #bIsNeedUpdate:Z
    .end local v6           #cacheC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    .end local v7           #dEventLatitude:D
    .end local v9           #dEventLongitude:D
    .end local v11           #dEventTime:J
    .end local v17           #eventC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    .end local v20           #key:J
    .end local v24           #strCacheLanguage:Ljava/lang/String;
    .end local v25           #strCacheLocation:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 497
    const-string v31, "SmartFolderAdapter"

    const/16 v32, 0x6

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const-string v34, "[HTCAlbum][SmartFolderAdapter][doMergeEventsWithFileCache]: Current lanuage: "

    aput-object v34, v32, v33

    const/16 v33, 0x1

    aput-object v26, v32, v33

    const/16 v33, 0x2

    const-string v34, ", need update size: "

    aput-object v34, v32, v33

    const/16 v33, 0x3

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x4

    const-string v34, " with address: "

    aput-object v34, v32, v33

    const/16 v33, 0x5

    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->size()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 499
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->setAddressDataMap(Ljava/util/HashMap;)Z

    goto/16 :goto_1
.end method

.method private doMergeSmartLocalWithFileCache(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
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
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    .local p1, cacheCollectionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    .local p2, folderCollectionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_2

    :cond_0
    move-object v0, p2

    .line 389
    :cond_1
    :goto_0
    return-object v0

    .line 373
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v3, removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 375
    .local v0, cacheList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 377
    .local v1, folderC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getFolderType()Ljava/lang/String;

    move-result-object v4

    .line 378
    .local v4, type:Ljava/lang/String;
    const-string v5, "com.htc.HTCAlbum.SMART_LOCAL_FOLDER"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "com.htc.HTCAlbum.SMART_ALL_DOWNLOADS"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 381
    :cond_4
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 385
    .end local v1           #folderC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    .end local v4           #type:Ljava/lang/String;
    :cond_5
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 386
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 387
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private isAdapterItemChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 12
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
    .line 533
    .local p1, listPrev:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    .local p2, listNew:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    const/4 v0, 0x0

    .line 534
    .local v0, bResult:Z
    if-nez p1, :cond_1

    .line 536
    const/4 v0, 0x1

    .line 537
    const-string v8, "SmartFolderAdapter"

    const-string v9, "[HTCAlbum][SmartFolderAdapter][isAdapterItemChanged]: initializing..."

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :cond_0
    :goto_0
    return v0

    .line 541
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 542
    .local v4, nCountPrev:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 543
    .local v3, nCountNew:I
    if-eq v4, v3, :cond_2

    .line 545
    const/4 v0, 0x1

    .line 546
    const-string v8, "SmartFolderAdapter"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "[HTCAlbum][SmartFolderAdapter][isAdapterItemChanged]: count changed: "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, ":"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 550
    :cond_2
    const/4 v2, 0x0

    .line 551
    .local v2, itemPrev:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    const/4 v1, 0x0

    .line 553
    .local v1, itemNew:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    const/4 v7, 0x0

    .line 554
    .local v7, szItemPrev:Ljava/lang/String;
    const/4 v6, 0x0

    .line 555
    .local v6, szItemNew:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, nIndex:I
    :goto_1
    if-le v3, v5, :cond_0

    .line 557
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #itemPrev:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    check-cast v2, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 558
    .restart local v2       #itemPrev:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #itemNew:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    check-cast v1, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 559
    .restart local v1       #itemNew:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->isSeparable()Z

    move-result v8

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->isSeparable()Z

    move-result v9

    if-eq v8, v9, :cond_3

    .line 561
    const/4 v0, 0x1

    .line 562
    const-string v8, "SmartFolderAdapter"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "[HTCAlbum][SmartFolderAdapter][isAdapterItemChanged]: "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, " separable changed..."

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 565
    :cond_3
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->isSeparable()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 567
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDateName()Ljava/lang/String;

    move-result-object v7

    .line 568
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDateName()Ljava/lang/String;

    move-result-object v6

    .line 569
    if-eqz v7, :cond_4

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    if-eqz v6, :cond_10

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 571
    :cond_5
    const/4 v0, 0x1

    .line 572
    const-string v8, "SmartFolderAdapter"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "[HTCAlbum][SmartFolderAdapter][isAdapterItemChanged]: "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, " date name changed..."

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 578
    :cond_6
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v7

    .line 579
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v6

    .line 580
    if-eqz v7, :cond_7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_7
    if-eqz v6, :cond_9

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 582
    :cond_8
    const/4 v0, 0x1

    .line 583
    const-string v8, "SmartFolderAdapter"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "[HTCAlbum][SmartFolderAdapter][isAdapterItemChanged]: "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, " cover changed..."

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 586
    :cond_9
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    .line 587
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 588
    if-eqz v7, :cond_a

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_a
    if-eqz v6, :cond_c

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 590
    :cond_b
    const/4 v0, 0x1

    .line 591
    const-string v8, "SmartFolderAdapter"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "[HTCAlbum][SmartFolderAdapter][isAdapterItemChanged]: "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, " display name changed..."

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 595
    :cond_c
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDateName()Ljava/lang/String;

    move-result-object v7

    .line 596
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getDateName()Ljava/lang/String;

    move-result-object v6

    .line 597
    if-eqz v7, :cond_d

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    :cond_d
    if-eqz v6, :cond_f

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 599
    :cond_e
    const/4 v0, 0x1

    .line 600
    const-string v8, "SmartFolderAdapter"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "[HTCAlbum][SmartFolderAdapter][isAdapterItemChanged]: "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, " date name changed..."

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 603
    :cond_f
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getOrientation()I

    move-result v8

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getOrientation()I

    move-result v9

    if-eq v8, v9, :cond_10

    .line 605
    const/4 v0, 0x1

    .line 606
    const-string v8, "SmartFolderAdapter"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "[HTCAlbum][SmartFolderAdapter][isAdapterItemChanged]: "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, " orientation changed..."

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 555
    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1
.end method

.method private isValidEventUpdateRequest(Z)Z
    .locals 9
    .parameter "bForceUpdate"

    .prologue
    const/4 v8, 0x1

    .line 1225
    const/4 v2, 0x1

    .line 1226
    .local v2, bResult:Z
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v4

    .line 1227
    .local v4, sceneHost:Lcom/htc/app/mf/MfFragment;
    instance-of v5, v4, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    if-eqz v5, :cond_2

    move-object v0, v4

    .line 1229
    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    .line 1230
    .local v0, addressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;
    const/4 v1, 0x0

    .line 1231
    .local v1, bIsFinderSearchInProgress:Z
    if-eqz v0, :cond_0

    .line 1232
    invoke-interface {v0}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->isFinderSearchInProgress()Z

    move-result v1

    .line 1234
    :cond_0
    const-string v5, "SmartFolderAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][SmartFolderAdapter][isValidEventUpdateRequest]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    if-ne v8, p1, :cond_1

    .line 1238
    instance-of v5, v4, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

    if-eqz v5, :cond_1

    move-object v3, v4

    .line 1240
    check-cast v3, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

    .line 1241
    .local v3, messageHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
    const/16 v5, 0x13a5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v5, v6, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;->onPostMessage(ILjava/lang/Object;I)V

    .line 1244
    .end local v3           #messageHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
    :cond_1
    if-ne v8, v1, :cond_2

    .line 1246
    const/4 v2, 0x0

    .line 1249
    .end local v0           #addressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;
    .end local v1           #bIsFinderSearchInProgress:Z
    :cond_2
    return v2
.end method

.method private removeHiddenFoldersInBackground(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 506
    .local p1, hiddenList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    .local p2, collections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 512
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 513
    .local v5, remove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 514
    .local v3, hiddenMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 516
    .local v2, hiddenAlbum:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, bucketId:Ljava/lang/String;
    const-string v6, "com.htc.HTCAlbum.ALL_DOWNLOADS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 518
    const-string v0, "com.htc.HTCAlbum.SMART_ALL_DOWNLOADS"

    .line 519
    :cond_2
    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 522
    .end local v0           #bucketId:Ljava/lang/String;
    .end local v2           #hiddenAlbum:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 524
    .local v1, collection:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getBucketId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 526
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 529
    .end local v1           #collection:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    :cond_5
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method


# virtual methods
.method public enableCacheUpdate(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mIsEnableUpdateCache:Z

    .line 139
    return-void
.end method

.method public findColumnCount(I)I
    .locals 1
    .parameter "nOrientation"

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->findColumnCount(I)I

    move-result v0

    return v0
.end method

.method public findLargestItemPrototype()Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->findLargestItemPrototype()Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v0

    return-object v0
.end method

.method public findLeastItemQuota()I
    .locals 1

    .prologue
    .line 984
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->findLeastItemQuota()I

    move-result v0

    return v0
.end method

.method public findMaxItemQuota()I
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->findMaxItemQuota()I

    move-result v0

    return v0
.end method

.method public findMaxRowQuota(I)I
    .locals 1
    .parameter "nOrientation"

    .prologue
    .line 976
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->findMaxRowQuota(I)I

    move-result v0

    return v0
.end method

.method public findRowCount(I)I
    .locals 1
    .parameter "nOrientation"

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->findRowCount(I)I

    move-result v0

    return v0
.end method

.method public findRowFirstItemIndex(II)I
    .locals 1
    .parameter "nOrientation"
    .parameter "nIndex"

    .prologue
    .line 972
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->findRowFirstItemIndex(II)I

    move-result v0

    return v0
.end method

.method public findSmallestItemPrototype()Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->findSmallestItemPrototype()Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v0

    return-object v0
.end method

.method public genEventId(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 1282
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1283
    :cond_0
    const/4 v0, 0x0

    .line 1286
    :goto_0
    return-object v0

    .line 1285
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->genEventId(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v0

    .line 1286
    .local v0, eventId:Ljava/lang/String;
    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 91
    .local v0, nCount:I
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 94
    :cond_0
    return v0
.end method

.method public getFactoryIdentifiers(I)I
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 959
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getFactoryIdentifiers(I)I

    move-result v0

    return v0
.end method

.method public getFactorySize()I
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getFactorySize()I

    move-result v0

    return v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-string v0, "SmartFolderAdapter"

    return-object v0
.end method

.method public getIndexFromLatLong(Lcom/htc/AddressFinderService/interfaces/AddressData;)Ljava/util/ArrayList;
    .locals 10
    .parameter "addressData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/AddressFinderService/interfaces/AddressData;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1097
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1098
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    if-eqz p1, :cond_2

    .line 1099
    invoke-virtual {p1}, Lcom/htc/AddressFinderService/interfaces/AddressData;->getLatitude()D

    move-result-wide v1

    .line 1100
    .local v1, latitude:D
    invoke-virtual {p1}, Lcom/htc/AddressFinderService/interfaces/AddressData;->getLongitude()D

    move-result-wide v3

    .line 1101
    .local v3, longitude:D
    invoke-static {v1, v2, v3, v4}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->isValidateLatLng(DD)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1102
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1103
    .local v6, size:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v6, :cond_2

    .line 1104
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 1105
    .local v7, smartT:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    if-nez v7, :cond_1

    .line 1103
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1108
    :cond_1
    iget-wide v8, v7, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLatitude:D

    cmpl-double v8, v8, v1

    if-nez v8, :cond_0

    iget-wide v8, v7, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLongitude:D

    cmpl-double v8, v8, v3

    if-nez v8, :cond_0

    .line 1109
    invoke-virtual {p1}, Lcom/htc/AddressFinderService/interfaces/AddressData;->getAddress()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLocation:Ljava/lang/String;

    .line 1110
    invoke-virtual {p1}, Lcom/htc/AddressFinderService/interfaces/AddressData;->getLanguage()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->mLanguage:Ljava/lang/String;

    .line 1111
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1117
    .end local v0           #index:I
    .end local v1           #latitude:D
    .end local v3           #longitude:D
    .end local v6           #size:I
    .end local v7           #smartT:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 1119
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNeedForceWriteFileCache:Z

    .line 1121
    :cond_3
    return-object v5
.end method

.method public getItem(I)Lcom/htc/sunnyCore/IMediaData;
    .locals 7
    .parameter "itemIndex"

    .prologue
    .line 101
    const/4 v2, 0x0

    .line 102
    .local v2, mediaData:Lcom/htc/sunnyCore/IMediaData;
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 106
    :try_start_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/sunnyCore/IMediaData;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_0
    :goto_0
    return-object v2

    .line 108
    :catch_0
    move-exception v1

    .line 110
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SmartFolderAdapter"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "[SmartFolderAdapter][getItem]: IndexOutOfBoundsException: "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getLayoutHeight(I)I
    .locals 1
    .parameter "nOrientation"

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getLayoutHeight(I)I

    move-result v0

    return v0
.end method

.method public getPositionForSection(I)I
    .locals 2
    .parameter "section"

    .prologue
    .line 1036
    const/4 v0, 0x0

    .line 1037
    .local v0, position:I
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSIndexCollections:[I

    if-eqz v1, :cond_0

    .line 1038
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSIndexCollections:[I

    aget v0, v1, p1

    .line 1040
    :cond_0
    return v0
.end method

.method public getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
    .locals 1
    .parameter "id"

    .prologue
    .line 948
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrototype(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v0

    return-object v0
.end method

.method public getPrototypeByIndex(I)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 942
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getPrototypeByIndex(I)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrototypeByIndex(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->getPrototypeByIndex(I)Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v0

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 5
    .parameter "position"

    .prologue
    .line 1045
    const/4 v2, 0x0

    .line 1046
    .local v2, section:I
    const/4 v1, 0x0

    .line 1048
    .local v1, positionLimit:I
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSTimeSections:[Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSIndexCollections:[I

    if-eqz v4, :cond_0

    .line 1050
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSTimeSections:[Ljava/lang/String;

    array-length v3, v4

    .line 1052
    .local v3, sectionSize:I
    if-gtz p1, :cond_1

    .line 1053
    const/4 v2, 0x0

    .line 1066
    .end local v3           #sectionSize:I
    :cond_0
    :goto_0
    return v2

    .line 1054
    .restart local v3       #sectionSize:I
    :cond_1
    if-lt p1, v1, :cond_2

    .line 1055
    add-int/lit8 v2, v3, -0x1

    goto :goto_0

    .line 1058
    :cond_2
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 1059
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSIndexCollections:[I

    aget v4, v4, v0

    if-ge p1, v4, :cond_3

    .line 1060
    add-int/lit8 v2, v0, -0x1

    .line 1061
    goto :goto_0

    .line 1058
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1072
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSSeparatorlList:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNeedUpdateFSArrays:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSTimeSections:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSIndexCollections:[I

    if-nez v3, :cond_3

    .line 1073
    :cond_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSSeparatorlList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1074
    .local v0, count:I
    new-array v3, v0, [Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSTimeSections:[Ljava/lang/String;

    .line 1075
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSIndexCollections:[I

    .line 1077
    const/4 v2, 0x0

    .line 1078
    .local v2, separator:Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1079
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSSeparatorlList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #separator:Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;
    check-cast v2, Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;

    .line 1081
    .restart local v2       #separator:Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;
    if-eqz v2, :cond_1

    .line 1082
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSTimeSections:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;->getDateName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 1083
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSIndexCollections:[I

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;->getIndex()I

    move-result v4

    aput v4, v3, v1

    .line 1078
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1085
    :cond_1
    const-string v3, "SmartFolderAdapter"

    const-string v4, "[HTCAlbum][SmartFolderAdapter][getSections]: separator = null..."

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1088
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNeedUpdateFSArrays:Z

    .line 1090
    .end local v0           #count:I
    .end local v1           #index:I
    .end local v2           #separator:Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;
    :cond_3
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSTimeSections:[Ljava/lang/String;

    check-cast v3, [Ljava/lang/Object;

    return-object v3
.end method

.method public getSeparableIndicator(I)J
    .locals 2
    .parameter "nIndex"

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->getSeparableIndicator(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSmartType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFolderManager:Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->getSmartType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCacheExist()Z
    .locals 5

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const-string v2, "local"

    const-string v3, "event"

    const/16 v4, 0x8

    invoke-static {v1, v2, v3, v4}, Lcom/htc/album/ObjectWriter/AlbumCacher;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 159
    return v0
.end method

.method public isSeparable(I)Z
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 998
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->isSeparable(I)Z

    move-result v0

    return v0
.end method

.method public loadEvents()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->appendUpdateFlag(I)V

    .line 144
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->appendUpdateFlag(I)V

    .line 146
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->onLoadData()V

    .line 147
    return-void
.end method

.method public onLoadData()V
    .locals 0

    .prologue
    .line 737
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->onLoadData()V

    .line 738
    return-void
.end method

.method protected onLoadDataCancelled()V
    .locals 2

    .prologue
    .line 730
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFolderManager:Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->stopLoadData()V

    .line 731
    const-string v0, "SmartFolderAdapter"

    const-string v1, "[HTCAlbum][SmartFolderAdapter][onLoadDataCancelled] Stop loading"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    return-void
.end method

.method protected onLoadDataEnd(Ljava/lang/Integer;)V
    .locals 10
    .parameter "result"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 620
    const-string v5, "SmartFolderAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][SmartFolderAdapter][onLoadDataEnd]: Load state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v5, :cond_1

    .line 624
    sget-boolean v5, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "SmartFolderAdapter"

    const-string v6, "[HTCAlbum][SmartFolderAdapter][onLoadDataEnd]: skip...1"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 629
    .local v0, actvity:Landroid/app/Activity;
    if-nez v0, :cond_2

    .line 631
    sget-boolean v5, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "SmartFolderAdapter"

    const-string v6, "[HTCAlbum][SmartFolderAdapter][onLoadDataEnd]: skip...2"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 635
    :cond_2
    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mAdapterReleased:Z

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->isDestroyingAdapter()Z

    move-result v5

    if-ne v8, v5, :cond_4

    .line 637
    :cond_3
    sget-boolean v5, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "SmartFolderAdapter"

    const-string v6, "[HTCAlbum][SmartFolderAdapter][onLoadDataEnd]: skip...3"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 644
    :cond_4
    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mShowSeperator:Z

    if-eqz v5, :cond_5

    .line 646
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->onSynclist(Ljava/util/ArrayList;)V

    .line 652
    :cond_5
    const/4 v2, 0x0

    .line 653
    .local v2, bIsListItemChanged:Z
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewList:Ljava/util/ArrayList;

    if-eqz v5, :cond_7

    .line 655
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldList:Ljava/util/ArrayList;

    .line 656
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    .line 660
    :try_start_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    invoke-direct {p0, v5, v6}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->isAdapterItemChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 666
    :goto_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldList:Ljava/util/ArrayList;

    if-eqz v5, :cond_6

    .line 667
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 668
    :cond_6
    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldList:Ljava/util/ArrayList;

    .line 674
    :cond_7
    iget v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListCache:Ljava/util/ArrayList;

    if-eqz v5, :cond_9

    .line 676
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListCache:Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldListCache:Ljava/util/ArrayList;

    .line 677
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListCache:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListCache:Ljava/util/ArrayList;

    .line 679
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldListCache:Ljava/util/ArrayList;

    if-eqz v5, :cond_8

    .line 680
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldListCache:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 681
    :cond_8
    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldListCache:Ljava/util/ArrayList;

    .line 687
    :cond_9
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListNoSeparator:Ljava/util/ArrayList;

    if-eqz v5, :cond_b

    .line 689
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListNoSeparator:Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldListNoSeparator:Ljava/util/ArrayList;

    .line 690
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListNoSeparator:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListNoSeparator:Ljava/util/ArrayList;

    .line 692
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldListNoSeparator:Ljava/util/ArrayList;

    if-eqz v5, :cond_a

    .line 693
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldListNoSeparator:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 694
    :cond_a
    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mOldListNoSeparator:Ljava/util/ArrayList;

    .line 697
    :cond_b
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->onLoadDataEnd(Ljava/lang/Integer;)V

    .line 699
    iget v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    if-ne v5, v8, :cond_10

    .line 701
    const-string v5, "SmartFolderAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][SmartFolderAdapter][onLoadDataEnd]: updateMultiAddresses: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mIsNeedUpdateGeocode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mIsNeedUpdateGeocode:Z

    if-ne v8, v5, :cond_d

    if-eqz v0, :cond_d

    .line 704
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 705
    .local v1, appContext:Landroid/content/Context;
    const/4 v3, 0x0

    .line 706
    .local v3, bUpdateByNetwork:Z
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->getAutoRetrievePref(Landroid/content/Context;)Z

    move-result v5

    if-ne v8, v5, :cond_c

    .line 708
    const/4 v3, 0x1

    .line 710
    :cond_c
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->requestUpdateAddressInfo(Z)V

    .line 713
    .end local v1           #appContext:Landroid/content/Context;
    .end local v3           #bUpdateByNetwork:Z
    :cond_d
    invoke-virtual {p0, v8}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->requestUpdateEventCache(I)V

    .line 720
    :cond_e
    :goto_2
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mActivity:Landroid/app/Activity;

    if-eqz v5, :cond_f

    .line 721
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 723
    :cond_f
    if-eqz v2, :cond_0

    .line 724
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 662
    :catch_0
    move-exception v4

    .line 664
    .local v4, e:Ljava/lang/Exception;
    const-string v5, "SmartFolderAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][SmartFolderAdapter][onLoadDataEnd]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 715
    .end local v4           #e:Ljava/lang/Exception;
    :cond_10
    iget v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_e

    .line 717
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->loadEvents()V

    goto :goto_2
.end method

.method protected onLoadDataInBackground(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 24
    .parameter "params"

    .prologue
    .line 174
    const-string v20, "SmartFolderAdapter"

    const-string v21, "[HTCAlbum][SmartFolderAdapter][onLoadDataInBackground] +"

    invoke-static/range {v20 .. v21}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const/4 v11, 0x0

    .line 177
    .local v11, newCollections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isAllStorageReady()Z

    move-result v19

    .line 178
    .local v19, storageReady:Z
    if-nez v19, :cond_0

    .line 180
    new-instance v11, Ljava/util/ArrayList;

    .end local v11           #newCollections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .restart local v11       #newCollections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListNoSeparator:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewList:Ljava/util/ArrayList;

    .line 182
    const-string v20, "SmartFolderAdapter"

    const-string v21, "[SmartFolderAdapter][onLoadDataInBackground] Storage not ready, skip background load DB!!"

    invoke-static/range {v20 .. v21}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/16 v20, 0x4e46

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->onRemoveMessage(I)V

    .line 352
    :goto_0
    return-object p1

    .line 188
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    const/16 v17, 0x1

    .line 189
    .local v17, requestLoadFromCache:Z
    :goto_1
    const/16 v20, 0x2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v21

    and-int/lit8 v21, v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_14

    const/16 v16, 0x1

    .line 190
    .local v16, requestLoadFolders:Z
    :goto_2
    const/16 v20, 0x4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v21

    and-int/lit8 v21, v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    const/4 v15, 0x1

    .line 191
    .local v15, requestLoadEvents:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mExtras:Landroid/os/Bundle;

    move-object/from16 v20, v0

    if-eqz v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mExtras:Landroid/os/Bundle;

    move-object/from16 v20, v0

    const-string v21, "MimeTypeFilter"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 193
    .local v7, filter:Ljava/lang/String;
    :goto_4
    const-string v20, "SmartFolderAdapter"

    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "[HTCAlbum][SmartFolderAdapter][onLoadDataInBackground] Request flag to Load cache = "

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, " , Load folders = "

    aput-object v23, v21, v22

    const/16 v22, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x4

    const-string v23, " , Load events = "

    aput-object v23, v21, v22

    const/16 v22, 0x5

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    if-eqz v17, :cond_6

    .line 199
    const-string v20, "SmartFolderAdapter"

    const-string v21, "[HTCAlbum][SmartFolderAdapter][onLoadDataInBackground] Load Caches!!"

    invoke-static/range {v20 .. v21}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->isCacheExist()Z

    move-result v17

    .line 201
    if-eqz v17, :cond_1

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->readEventFileCache()Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListCache:Ljava/util/ArrayList;

    .line 206
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListCache:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListCache:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_17

    const/16 v17, 0x1

    .line 209
    :goto_5
    if-eqz v17, :cond_19

    .line 213
    :try_start_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v14, removedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListCache:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_2
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_18

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 217
    .local v4, collection:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getContainedMediaTypes()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    move/from16 v21, v0

    and-int v20, v20, v21

    if-nez v20, :cond_2

    .line 219
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 225
    .end local v4           #collection:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v14           #removedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    :catch_0
    move-exception v5

    .line 227
    .local v5, e:Ljava/lang/Exception;
    const-string v20, "SmartFolderAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[HTCAlbum][SmartFolderAdapter][onLoadDataInBackground] Exception: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .end local v5           #e:Ljava/lang/Exception;
    :cond_3
    :goto_7
    new-instance v11, Ljava/util/ArrayList;

    .end local v11           #newCollections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListCache:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 237
    .restart local v11       #newCollections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->isHiddenCacheExist()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->getHiddenCacheList()Ljava/util/List;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListHidden:Ljava/util/ArrayList;

    .line 242
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListHidden:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v11}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->removeHiddenFoldersInBackground(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 244
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-gtz v20, :cond_1a

    :cond_5
    const/16 v16, 0x1

    .line 246
    :goto_9
    const-string v20, "SmartFolderAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[HTCAlbum][SmartFolderAdapter][onLoadDataInBackground] Cache count = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    .line 251
    :cond_6
    const/4 v12, 0x0

    .line 256
    .local v12, preloadEvents:Z
    if-eqz v16, :cond_a

    .line 258
    const-string v20, "SmartFolderAdapter"

    const-string v21, "[HTCAlbum][SmartFolderAdapter][onLoadDataInBackground] Load Folders!!"

    invoke-static/range {v20 .. v21}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 260
    .local v10, loadExtras:Landroid/os/Bundle;
    const-string v20, "key_load_events"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFolderManager:Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v7, v10}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->getCollectionList(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v11

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListHidden:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v11}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->removeHiddenFoldersInBackground(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 265
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 266
    .local v8, folderSize:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->setPhysicalFolderCount(I)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListNoSeparator:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListNoSeparator:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-gtz v20, :cond_1b

    :cond_7
    const/4 v12, 0x1

    .line 270
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListNoSeparator:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v11}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->doMergeSmartLocalWithFileCache(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v11

    .line 272
    if-eqz v11, :cond_8

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-gtz v20, :cond_1c

    :cond_8
    const/4 v15, 0x1

    .line 273
    :goto_b
    if-eqz v15, :cond_9

    .line 274
    const/4 v12, 0x0

    .line 276
    :cond_9
    const-string v20, "SmartFolderAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[HTCAlbum][SmartFolderAdapter][onLoadDataInBackground] Normal folder count = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    .line 284
    .end local v8           #folderSize:I
    .end local v10           #loadExtras:Landroid/os/Bundle;
    :cond_a
    if-nez v12, :cond_b

    if-eqz v15, :cond_e

    .line 286
    :cond_b
    const-string v20, "SmartFolderAdapter"

    const-string v21, "[HTCAlbum][SmartFolderAdapter][onLoadDataInBackground] Load Events!!"

    invoke-static/range {v20 .. v21}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 288
    .restart local v10       #loadExtras:Landroid/os/Bundle;
    const-string v20, "key_load_events_only"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 291
    if-eqz v12, :cond_c

    .line 293
    const-string v20, "key_event_limits"

    const/16 v21, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 296
    :cond_c
    const/4 v6, 0x0

    .line 297
    .local v6, eventCollections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFolderManager:Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v7, v10}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->getCollectionList(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v6

    .line 299
    if-eqz v16, :cond_1d

    .line 300
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v6}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->doMergeEventsWithFileCache(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v11

    .line 304
    :goto_c
    const-string v20, "key_query_completed"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 306
    .local v13, queryCompleted:Z
    if-eqz v13, :cond_d

    .line 307
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    .line 309
    :cond_d
    const-string v20, "SmartFolderAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[HTCAlbum][SmartFolderAdapter][onLoadDataInBackground] Event count = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .end local v6           #eventCollections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    .end local v10           #loadExtras:Landroid/os/Bundle;
    .end local v13           #queryCompleted:Z
    :cond_e
    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 313
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewList:Ljava/util/ArrayList;

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_f

    .line 316
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListNoSeparator:Ljava/util/ArrayList;

    .line 322
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mShowSeperator:Z

    move/from16 v20, v0

    if-eqz v20, :cond_10

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->onRelayout(Ljava/util/ArrayList;)V

    .line 329
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1f

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSSeparatorlList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSSeparatorlList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 335
    :cond_11
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSSeparatorlList:Ljava/util/ArrayList;

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_12
    :goto_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .line 338
    .local v18, smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    if-eqz v18, :cond_12

    invoke-virtual/range {v18 .. v18}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->isSeparable()Z

    move-result v20

    if-eqz v20, :cond_12

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFSSeparatorlList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    check-cast v18, Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;

    .end local v18           #smartC:Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 188
    .end local v7           #filter:Ljava/lang/String;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v12           #preloadEvents:Z
    .end local v15           #requestLoadEvents:Z
    .end local v16           #requestLoadFolders:Z
    .end local v17           #requestLoadFromCache:Z
    :cond_13
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 189
    .restart local v17       #requestLoadFromCache:Z
    :cond_14
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 190
    .restart local v16       #requestLoadFolders:Z
    :cond_15
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 191
    .restart local v15       #requestLoadEvents:Z
    :cond_16
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 206
    .restart local v7       #filter:Ljava/lang/String;
    :cond_17
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 222
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v14       #removedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    :cond_18
    :try_start_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_3

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListCache:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    .line 233
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v14           #removedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    :cond_19
    new-instance v11, Ljava/util/ArrayList;

    .end local v11           #newCollections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .restart local v11       #newCollections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    const/16 v20, 0x4e46

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->onPostMessage(ILjava/lang/Object;I)V

    goto/16 :goto_8

    .line 244
    :cond_1a
    const/16 v16, 0x0

    goto/16 :goto_9

    .line 268
    .restart local v8       #folderSize:I
    .restart local v10       #loadExtras:Landroid/os/Bundle;
    .restart local v12       #preloadEvents:Z
    :cond_1b
    const/4 v12, 0x0

    goto/16 :goto_a

    .line 272
    :cond_1c
    const/4 v15, 0x0

    goto/16 :goto_b

    .line 302
    .end local v8           #folderSize:I
    .restart local v6       #eventCollections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNewListNoSeparator:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->doMergeEventsWithFileCache(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v11

    goto/16 :goto_c

    .line 343
    .end local v6           #eventCollections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    .end local v10           #loadExtras:Landroid/os/Bundle;
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_1e
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNeedUpdateFSArrays:Z

    .line 345
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v20

    and-int/lit8 v20, v20, 0x1

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_20

    .line 347
    const-string v20, "SmartFolderAdapter"

    const-string v21, "[HTCAlbum][SmartFolderAdapter][onLoadDataInBackground]: remove loading"

    invoke-static/range {v20 .. v21}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const/16 v20, 0x4e46

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->onRemoveMessage(I)V

    .line 351
    :cond_20
    const-string v20, "SmartFolderAdapter"

    const-string v21, "[HTCAlbum][SmartFolderAdapter][onLoadDataInBackground] -"

    invoke-static/range {v20 .. v21}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onNewCacheUpdateThread()Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;
    .locals 2

    .prologue
    .line 1183
    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onUnloadData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 750
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->onUnloadData()V

    .line 751
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mAdapterReleased:Z

    .line 753
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateCache:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;

    if-eqz v0, :cond_0

    .line 755
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->requestUpdateEventCache(I)V

    .line 757
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateCache:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->postQuit()V

    .line 758
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateCache:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateAddress:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;

    if-eqz v0, :cond_1

    .line 763
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateAddress:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->postQuit()V

    .line 764
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateAddress:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;

    .line 766
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 767
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 768
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListNoSeparator:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 769
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListNoSeparator:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 770
    :cond_3
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListCache:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 771
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 772
    :cond_4
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListHidden:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 773
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListHidden:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 775
    :cond_5
    const-string v0, "SmartFolderAdapter"

    const-string v1, "[HTCAlbum][SmartFolderAdapter][onUnloadData] Release adapter now!!"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    return-void
.end method

.method protected readEventFileCache()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, cacheCollection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const-string v2, "local"

    const-string v3, "event"

    const/16 v4, 0x8

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/htc/album/ObjectWriter/AlbumCacher;->readEventCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .end local v0           #cacheCollection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 363
    .restart local v0       #cacheCollection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    return-object v0
.end method

.method public releaseLayoutResource()V
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mLayoutHandler:Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/EventLayoutHandler;->releaseLayoutResource()V

    .line 1026
    return-void
.end method

.method public requestUpdateAddressInfo(Z)V
    .locals 4
    .parameter "bUpdateByNetwork"

    .prologue
    .line 1190
    const-string v1, "SmartFolderAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SmartFolderAdapter][requestUpdateAddressInfo]: update by network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    if-eqz v1, :cond_0

    .line 1193
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mIsNeedUpdateGeocode:Z

    .line 1194
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    .line 1195
    .local v0, addressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;
    invoke-interface {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->addressLookup(Z)V

    .line 1197
    .end local v0           #addressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;
    :cond_0
    return-void
.end method

.method public requestUpdateEventAddress(Z)V
    .locals 3
    .parameter "bForceUpdate"

    .prologue
    .line 1253
    const-string v0, "SmartFolderAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SmartFolderAdapter][requestUpdateEventAddress]: force: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->isValidEventUpdateRequest(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1256
    const-string v0, "SmartFolderAdapter"

    const-string v1, "[HTCAlbum][SmartFolderAdapter][requestUpdateEventAddress]: skip 1... "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    :goto_0
    return-void

    .line 1259
    :cond_0
    iget v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1261
    const-string v0, "SmartFolderAdapter"

    const-string v1, "[HTCAlbum][SmartFolderAdapter][requestUpdateEventAddress]: skip 2... "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1264
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateAddress:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;

    if-nez v0, :cond_3

    .line 1266
    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;-><init>(Lcom/htc/album/TabPluginDevice/smart/IAddressFinderRequest;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateAddress:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;

    .line 1267
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateAddress:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->start()V

    .line 1277
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateAddress:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListNoSeparator:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->postTask(Ljava/lang/Object;)V

    goto :goto_0

    .line 1271
    :cond_3
    sget-object v0, Lcom/htc/sunny2/common/SimpleThreadTask$Status;->RUNNING:Lcom/htc/sunny2/common/SimpleThreadTask$Status;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateAddress:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateAddress;->getStatus()Lcom/htc/sunny2/common/SimpleThreadTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 1273
    const-string v0, "SmartFolderAdapter"

    const-string v1, "[HTCAlbum][SmartFolderAdapter][requestUpdateEventAddress]: skip 3... "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestUpdateEventCache(I)V
    .locals 6
    .parameter "updateFlag"

    .prologue
    const/4 v4, 0x1

    .line 1126
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1128
    :cond_0
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "SmartFolderAdapter"

    const-string v4, "[HTCAlbum][SmartFolderAdapter][requestUpdateEventCache]: Activity - NG"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    :cond_1
    :goto_0
    return-void

    .line 1131
    :cond_2
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mAdapterReleased:Z

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->isDestroyingAdapter()Z

    move-result v3

    if-ne v4, v3, :cond_4

    .line 1133
    :cond_3
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "SmartFolderAdapter"

    const-string v4, "[HTCAlbum][SmartFolderAdapter][requestUpdateEventCache]: Adapter is destroying..."

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1136
    :cond_4
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mIsEnableUpdateCache:Z

    if-nez v3, :cond_5

    .line 1138
    const-string v3, "SmartFolderAdapter"

    const-string v4, "[HTCAlbum][SmartFolderAdapter][requestUpdateEventCache]: skip 1 "

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1141
    :cond_5
    iget v3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    if-eq v3, v4, :cond_6

    .line 1143
    const-string v3, "SmartFolderAdapter"

    const-string v4, "[HTCAlbum][SmartFolderAdapter][requestUpdateEventCache]: skip 2 "

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1146
    :cond_6
    const-string v3, "SmartFolderAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SmartFolderAdapter][requestUpdateEventCache]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    const/4 v3, 0x2

    if-ne p1, v3, :cond_8

    .line 1149
    const-string v3, "SmartFolderAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SmartFolderAdapter][requestUpdateEventCache]: need udpate location to file cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNeedForceWriteFileCache:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNeedForceWriteFileCache:Z

    if-nez v3, :cond_7

    .line 1152
    const-string v3, "SmartFolderAdapter"

    const-string v4, "[HTCAlbum][SmartFolderAdapter][requestUpdateEventCache]: No adapter Item Changed..."

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1155
    :cond_7
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mNeedForceWriteFileCache:Z

    .line 1158
    :cond_8
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateCache:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;

    if-nez v3, :cond_9

    .line 1160
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->onNewCacheUpdateThread()Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateCache:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;

    .line 1161
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateCache:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->start()V

    .line 1163
    :cond_9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1164
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "updateFlag"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1165
    const/4 v1, 0x0

    .line 1166
    .local v1, listA:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListNoSeparator:Ljava/util/ArrayList;

    if-eqz v3, :cond_a

    .line 1168
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListNoSeparator:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #listA:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    check-cast v1, Ljava/util/ArrayList;

    .line 1169
    .restart local v1       #listA:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    const-string v3, "listA"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1172
    :cond_a
    const/4 v2, 0x0

    .line 1173
    .local v2, listB:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListCache:Ljava/util/ArrayList;

    if-eqz v3, :cond_b

    .line 1175
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mListCache:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #listB:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    check-cast v2, Ljava/util/ArrayList;

    .line 1176
    .restart local v2       #listB:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;>;"
    const-string v3, "listB"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1178
    :cond_b
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mThreadReqUpdateCache:Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;

    invoke-virtual {v3, v0}, Lcom/htc/album/TabPluginDevice/smart/ThreadTaskReqUpdateCache;->postTask(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public setAddressDataMap(Ljava/util/HashMap;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/AddressFinderService/interfaces/AddressData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1200
    .local p1, dataMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/AddressFinderService/interfaces/AddressData;>;"
    const/4 v1, 0x0

    .line 1201
    .local v1, bResult:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    move v2, v1

    .line 1218
    .end local v1           #bResult:Z
    .local v2, bResult:I
    :goto_0
    return v2

    .line 1204
    .end local v2           #bResult:I
    .restart local v1       #bResult:Z
    :cond_1
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->isValidEventUpdateRequest(Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1206
    const-string v3, "SmartFolderAdapter"

    const-string v4, "[HTCAlbum][SmartFolderAdapter][setAddressDataMap]: skip... "

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 1207
    .restart local v2       #bResult:I
    goto :goto_0

    .line 1210
    .end local v2           #bResult:I
    :cond_2
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    if-eqz v3, :cond_3

    .line 1212
    const/4 v1, 0x1

    .line 1213
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mIsNeedUpdateGeocode:Z

    .line 1214
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    .line 1216
    .local v0, addressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;
    iget v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mCountToUpdate:I

    invoke-interface {v0, p1, v3}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->setAddressLookUpSource(Ljava/util/HashMap;I)V

    .end local v0           #addressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;
    :cond_3
    move v2, v1

    .line 1218
    .restart local v2       #bResult:I
    goto :goto_0
.end method

.method public setIntermediateDataBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 742
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->appendUpdateFlag(I)V

    .line 743
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->setIntermediateDataBundle(Landroid/os/Bundle;)V

    .line 744
    const-string v0, "SmartFolderAdapter"

    const-string v1, "[HTCAlbum][SmartFolderAdapter][setIntermediateDataBundle]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    return-void
.end method

.method public setSmartType(Ljava/lang/String;)V
    .locals 3
    .parameter "type"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->mFolderManager:Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderManager;->setSmartType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const/16 v0, 0x138f

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->onPostMessage(ILjava/lang/Object;I)V

    .line 129
    :cond_0
    return-void
.end method
