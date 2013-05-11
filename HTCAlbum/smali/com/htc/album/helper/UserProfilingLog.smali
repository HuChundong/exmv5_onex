.class public Lcom/htc/album/helper/UserProfilingLog;
.super Ljava/lang/Object;
.source "UserProfilingLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/UserProfilingLog$4;,
        Lcom/htc/album/helper/UserProfilingLog$PROFILE;
    }
.end annotation


# static fields
.field private static final APPID:Ljava/lang/String; = "com.htc.album"

.field public static final BURST_BESTSHOT:Ljava/lang/String; = "best_shot"

.field public static final BURST_COVER:Ljava/lang/String; = "cover"

.field public static final BURST_DELETE:Ljava/lang/String; = "delete"

.field public static final BURST_ENTRY:Ljava/lang/String; = "entry_count"

.field public static final BURST_EXPAND:Ljava/lang/String; = "expand"

.field private static final CATEGORY_ALBUM_SHAREVIA:Ljava/lang/String; = "Share"

.field private static final CATEGORY_ALBUM_SLIDESHOW:Ljava/lang/String; = "Slideshow"

.field private static final CATEGORY_ALBUM_SRC:Ljava/lang/String; = "album_source"

.field private static final CATEGORY_BURST_AUTO_REVIEW:Ljava/lang/String; = "burst_auto_review"

.field private static final CATEGORY_BURST_SHOT:Ljava/lang/String; = "burst_shot"

.field private static final CATEGORY_DLNA:Ljava/lang/String; = "dlna"

.field private static final CATEGORY_FAVORITE:Ljava/lang/String; = "favorite"

.field private static final CATEGORY_SHOW_HIDE_ITEM:Ljava/lang/String; = "show_hide_item"

.field private static final CATEGORY_SOCIAL_SERVICE_FEATURES:Ljava/lang/String; = "social_service_features"

.field private static final CATEGORY_STORAGE:Ljava/lang/String; = "storage"

.field public static final DLNA_LOCAL_DMC:Ljava/lang/String; = "local_photo_dmc_count"

.field public static final DLNA_MEDIASERVER_DMC:Ljava/lang/String; = "mediaserver_photo_dmc_count"

.field private static final EFFECT_COUNT:Ljava/lang/String; = "count"

.field private static final EFFECT_NAME:Ljava/lang/String; = "effect"

.field public static final FAVORITE_COUNT:Ljava/lang/String; = "count"

.field private static final LOG_TAG:Ljava/lang/String; = "UserProfilingLog"

.field private static final SHARE_COUNT:Ljava/lang/String; = "count"

.field private static final SHARE_NAME:Ljava/lang/String; = "service"

.field public static final SHOWHIDE_ALBUM:Ljava/lang/String; = "local_album"

.field public static final SHOWHIDE_FRIEND:Ljava/lang/String; = "social_friend"

.field public static final SOCIALSERVICE_COMMENTS:Ljava/lang/String; = "comments"

.field public static final SOCIALSERVICE_LOCAL_UPLOADER:Ljava/lang/String; = "local_uploader"

.field public static final SOCIALSERVICE_ONLINE_UPLOADER:Ljava/lang/String; = "online_uploader"

.field private static final SRC_NAME:Ljava/lang/String; = "service_name"

.field private static final SRC_TYPE:Ljava/lang/String; = "service_type"

.field private static final STORAGE_ALLFOLDER:Ljava/lang/String; = "total_folder"

.field private static final STORAGE_ALLPHOTO:Ljava/lang/String; = "total_photo"

.field private static final STORAGE_ALLVIDEO:Ljava/lang/String; = "total_video"

.field private static sLogBurstAutoReview:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sLogBurstShot:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sLogDlna:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sLogFavorite:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sLogShareVia:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sLogShowHideItem:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sLogSlideShow:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sLogSocialServiceFeatures:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogShareVia:Ljava/util/concurrent/ConcurrentHashMap;

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogSlideShow:Ljava/util/concurrent/ConcurrentHashMap;

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogBurstShot:Ljava/util/concurrent/ConcurrentHashMap;

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogBurstAutoReview:Ljava/util/concurrent/ConcurrentHashMap;

    .line 87
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogDlna:Ljava/util/concurrent/ConcurrentHashMap;

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogFavorite:Ljava/util/concurrent/ConcurrentHashMap;

    .line 103
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogShowHideItem:Ljava/util/concurrent/ConcurrentHashMap;

    .line 112
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogSocialServiceFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogShareVia:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogSlideShow:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogBurstShot:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/Set;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-static {p0, p1}, Lcom/htc/album/helper/UserProfilingLog;->onLogData(Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogBurstAutoReview:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogDlna:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogFavorite:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogShowHideItem:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/htc/album/helper/UserProfilingLog;->sLogSocialServiceFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static dumpUserAccessCount()V
    .locals 2

    .prologue
    .line 160
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnableUserProfiling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/album/helper/UserProfilingLog$1;

    invoke-direct {v1}, Lcom/htc/album/helper/UserProfilingLog$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static logSourceSwitch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "szSrcType"
    .parameter "szSrcName"

    .prologue
    .line 278
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnableUserProfiling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    :goto_0
    return-void

    .line 281
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/album/helper/UserProfilingLog$2;

    invoke-direct {v1, p0, p1}, Lcom/htc/album/helper/UserProfilingLog$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private static logStorageContent(III)V
    .locals 2
    .parameter "nCountFolder"
    .parameter "nCountAllPhoto"
    .parameter "nCountAllVideo"

    .prologue
    .line 350
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/album/helper/UserProfilingLog$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/album/helper/UserProfilingLog$3;-><init>(III)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 379
    return-void
.end method

.method public static logStorageContent(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, collection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnableUserProfiling()Z

    move-result v7

    if-nez v7, :cond_0

    .line 347
    :goto_0
    return-void

    .line 328
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, nAllFolder:I
    move v5, v1

    .line 329
    .local v5, nMaxLoop:I
    const/4 v2, 0x0

    .local v2, nAllPhoto:I
    const/4 v3, 0x0

    .line 331
    .local v3, nAllVideo:I
    const/4 v0, 0x0

    .line 332
    .local v0, anAblum:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    const/4 v6, 0x0

    .line 334
    .local v6, szFolderType:Ljava/lang/String;
    const/4 v7, 0x4

    if-ge v7, v1, :cond_1

    .line 335
    const/4 v5, 0x4

    .line 336
    :cond_1
    const/4 v4, 0x0

    .local v4, nIndex:I
    :goto_1
    if-le v5, v4, :cond_5

    .line 338
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #anAblum:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .restart local v0       #anAblum:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-nez v0, :cond_3

    .line 336
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 340
    :cond_3
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getFolderType()Ljava/lang/String;

    move-result-object v6

    .line 341
    const-string v7, "com.htc.HTCAlbum.ALL_PHOTOS"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 342
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getPhotoCount()I

    move-result v2

    goto :goto_2

    .line 343
    :cond_4
    const-string v7, "com.htc.HTCAlbum.ALL_VIDEOS"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 344
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getPhotoCount()I

    move-result v3

    goto :goto_2

    .line 346
    :cond_5
    invoke-static {v1, v2, v3}, Lcom/htc/album/helper/UserProfilingLog;->logStorageContent(III)V

    goto :goto_0
.end method

.method public static logUserAccessCount(Lcom/htc/album/helper/UserProfilingLog$PROFILE;Ljava/lang/Object;)V
    .locals 3
    .parameter "profile"
    .parameter "szKey"

    .prologue
    .line 121
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isEnableUserProfiling()Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    .end local p1
    :goto_0
    return-void

    .line 124
    .restart local p1
    :cond_0
    if-nez p1, :cond_1

    .line 126
    const-string v1, "UserProfilingLog"

    const-string v2, "[HTCAlbum][UserProfilingLog][logUserAccessCount]: no key..."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_1
    const/4 v0, 0x0

    .line 130
    .local v0, nCount:I
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog$4;->$SwitchMap$com$htc$album$helper$UserProfilingLog$PROFILE:[I

    invoke-virtual {p0}, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 133
    :pswitch_0
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {p1}, Lcom/htc/album/helper/UserProfilingLog;->onLogShareVia(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    .restart local p1
    :pswitch_1
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {p1}, Lcom/htc/album/helper/UserProfilingLog;->onLogSlideShow(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    .restart local p1
    :pswitch_2
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {p1}, Lcom/htc/album/helper/UserProfilingLog;->onLogBurstShot(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    .restart local p1
    :pswitch_3
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {p1}, Lcom/htc/album/helper/UserProfilingLog;->onLogBurstAutoReview(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    .restart local p1
    :pswitch_4
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {p1}, Lcom/htc/album/helper/UserProfilingLog;->onLogDlna(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    .restart local p1
    :pswitch_5
    invoke-static {}, Lcom/htc/album/helper/UserProfilingLog;->onLogFavorite()V

    goto :goto_0

    .line 151
    :pswitch_6
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {p1}, Lcom/htc/album/helper/UserProfilingLog;->onLogShowHideItem(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    .restart local p1
    :pswitch_7
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {p1}, Lcom/htc/album/helper/UserProfilingLog;->onLogSocialServiceFeatures(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static onLogBurstAutoReview(Ljava/lang/String;)V
    .locals 3
    .parameter "szKey"

    .prologue
    .line 415
    const/4 v0, 0x0

    .line 416
    .local v0, nCount:I
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogBurstAutoReview:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 417
    const/4 v0, 0x0

    .line 421
    :goto_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogBurstAutoReview:Ljava/util/concurrent/ConcurrentHashMap;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    return-void

    .line 419
    :cond_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogBurstAutoReview:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static onLogBurstShot(Ljava/lang/String;)V
    .locals 3
    .parameter "szKey"

    .prologue
    .line 404
    const/4 v0, 0x0

    .line 405
    .local v0, nCount:I
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogBurstShot:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 406
    const/4 v0, 0x0

    .line 410
    :goto_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogBurstShot:Ljava/util/concurrent/ConcurrentHashMap;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    return-void

    .line 408
    :cond_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogBurstShot:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static onLogData(Ljava/util/Set;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter "szCategory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/4 v1, 0x0

    .line 256
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/4 v0, 0x0

    .line 258
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 259
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 261
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/Map$Entry;

    .line 263
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v2

    .line 264
    .local v2, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v3, "com.htc.album"

    invoke-virtual {v2, v3}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 268
    invoke-static {v2}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 269
    invoke-virtual {v2}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 273
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 275
    .end local v2           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :cond_0
    return-void
.end method

.method private static onLogDlna(Ljava/lang/String;)V
    .locals 3
    .parameter "szKey"

    .prologue
    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, nCount:I
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogDlna:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 428
    const/4 v0, 0x0

    .line 432
    :goto_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogDlna:Ljava/util/concurrent/ConcurrentHashMap;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    return-void

    .line 430
    :cond_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogDlna:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static onLogFavorite()V
    .locals 4

    .prologue
    .line 437
    const/4 v0, 0x0

    .line 438
    .local v0, nCount:I
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogFavorite:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "count"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 439
    const/4 v0, 0x0

    .line 443
    :goto_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogFavorite:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "count"

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    const-string v1, "UserProfilingLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][UserProfilingLog][onLogFavorite]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    return-void

    .line 441
    :cond_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogFavorite:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "count"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static onLogShareVia(Ljava/lang/String;)V
    .locals 3
    .parameter "szKey"

    .prologue
    .line 382
    const/4 v0, 0x0

    .line 383
    .local v0, nCount:I
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogShareVia:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 384
    const/4 v0, 0x0

    .line 388
    :goto_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogShareVia:Ljava/util/concurrent/ConcurrentHashMap;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    return-void

    .line 386
    :cond_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogShareVia:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static onLogShowHideItem(Ljava/lang/String;)V
    .locals 3
    .parameter "szKey"

    .prologue
    .line 448
    const/4 v0, 0x0

    .line 449
    .local v0, nCount:I
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogShowHideItem:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    const/4 v0, 0x0

    .line 454
    :goto_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogShowHideItem:Ljava/util/concurrent/ConcurrentHashMap;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    return-void

    .line 452
    :cond_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogShowHideItem:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static onLogSlideShow(Ljava/lang/String;)V
    .locals 3
    .parameter "szKey"

    .prologue
    .line 393
    const/4 v0, 0x0

    .line 394
    .local v0, nCount:I
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogSlideShow:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 395
    const/4 v0, 0x0

    .line 399
    :goto_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogSlideShow:Ljava/util/concurrent/ConcurrentHashMap;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    return-void

    .line 397
    :cond_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogSlideShow:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static onLogSocialServiceFeatures(Ljava/lang/String;)V
    .locals 3
    .parameter "szKey"

    .prologue
    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, nCount:I
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogSocialServiceFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 461
    const/4 v0, 0x0

    .line 465
    :goto_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogSocialServiceFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    return-void

    .line 463
    :cond_0
    sget-object v1, Lcom/htc/album/helper/UserProfilingLog;->sLogSocialServiceFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method
