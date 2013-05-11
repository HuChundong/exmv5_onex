.class public Lcom/htc/opensense/social/PageOp;
.super Lcom/htc/opensense/social/DataOp;
.source "PageOp.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense/social/DataOp",
        "<",
        "Lcom/htc/opensense/social/data/Page;",
        ">;"
    }
.end annotation


# static fields
.field public static CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/opensense/social/DataOp$OpCreator",
            "<",
            "Lcom/htc/opensense/social/data/Page;",
            "Lcom/htc/opensense/social/PageOp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field asyncManager:Lcom/htc/opensense/social/AsyncManager;

.field mPage:Lcom/htc/opensense/social/data/Page;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/htc/opensense/social/PageOp$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/PageOp$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/PageOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    return-void
.end method

.method protected constructor <init>(Lcom/htc/opensense/social/ISocialService;Lcom/htc/opensense/social/data/Page;)V
    .locals 0
    .parameter "service"
    .parameter "page"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/htc/opensense/social/DataOp;-><init>(Lcom/htc/opensense/social/ISocialService;)V

    .line 56
    iput-object p2, p0, Lcom/htc/opensense/social/PageOp;->mPage:Lcom/htc/opensense/social/data/Page;

    .line 57
    return-void
.end method

.method private addGetFrinedsTask()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/htc/opensense/social/PageOp;->asyncManager:Lcom/htc/opensense/social/AsyncManager;

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    invoke-interface {v0}, Lcom/htc/opensense/social/ISocialService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/social/AsyncManager;->getFromCache(Landroid/os/IBinder;)Lcom/htc/opensense/social/AsyncManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/PageOp;->asyncManager:Lcom/htc/opensense/social/AsyncManager;

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/social/PageOp;->asyncManager:Lcom/htc/opensense/social/AsyncManager;

    iget-object v1, p0, Lcom/htc/opensense/social/PageOp;->asyncManager:Lcom/htc/opensense/social/AsyncManager;

    iget-object v1, v1, Lcom/htc/opensense/social/AsyncManager;->getFriendsTask:Lcom/htc/opensense/social/AsyncManager$AsyncTask;

    iget-object v2, p0, Lcom/htc/opensense/social/PageOp;->mPage:Lcom/htc/opensense/social/data/Page;

    iget-object v2, v2, Lcom/htc/opensense/social/data/Page;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/social/AsyncManager;->addNewTask(Lcom/htc/opensense/social/AsyncManager$AsyncTask;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public static readOpFromIntent(Landroid/content/Intent;)Lcom/htc/opensense/social/PageOp;
    .locals 2
    .parameter "intent"

    .prologue
    .line 321
    const-string v0, "com.htc.opensense.DATAININTENT"

    sget-object v1, Lcom/htc/opensense/social/PageOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {p0, v0, v1}, Lcom/htc/opensense/social/PageOp;->readOpFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp$OpCreator;)Lcom/htc/opensense/social/DataOp;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/PageOp;

    return-object v0
.end method

.method public static readOpFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/htc/opensense/social/PageOp;
    .locals 1
    .parameter "intent"
    .parameter "extra"

    .prologue
    .line 304
    sget-object v0, Lcom/htc/opensense/social/PageOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {p0, p1, v0}, Lcom/htc/opensense/social/DataOp;->readOpFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp$OpCreator;)Lcom/htc/opensense/social/DataOp;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/PageOp;

    return-object v0
.end method

.method public static readOpListFromIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/PageOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    const-string v0, "com.htc.opensense.DATALISTINTENT"

    sget-object v1, Lcom/htc/opensense/social/PageOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {p0, v0, v1}, Lcom/htc/opensense/social/PageOp;->readOpListFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readOpListFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "intent"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/PageOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    sget-object v0, Lcom/htc/opensense/social/PageOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {p0, p1, v0}, Lcom/htc/opensense/social/DataOp;->readOpListFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addFeed(Ljava/lang/String;)Z
    .locals 9
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 220
    const-string v6, "DataService"

    const-string v7, "feed content is null or empty"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :goto_0
    return v5

    .line 224
    :cond_0
    const/4 v3, 0x0

    .line 225
    .local v3, feed:Lcom/htc/opensense/social/data/Feed;
    new-instance v2, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v2}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 226
    .local v2, error:Lcom/htc/opensense/social/RemoteError;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 227
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 228
    .local v4, result:Z
    const-string v7, "add feed type"

    const/16 v8, 0x101

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 229
    const-string v7, "add feed content"

    invoke-virtual {v0, v7, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :try_start_0
    iget-object v7, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    iget-object v8, p0, Lcom/htc/opensense/social/PageOp;->mPage:Lcom/htc/opensense/social/data/Page;

    iget-object v8, v8, Lcom/htc/opensense/social/data/Page;->uid:Ljava/lang/String;

    invoke-interface {v7, v8, v0, v2}, Lcom/htc/opensense/social/ISocialService;->addFeed(Ljava/lang/String;Landroid/os/Bundle;Lcom/htc/opensense/social/RemoteError;)Lcom/htc/opensense/social/data/Feed;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 238
    :goto_1
    if-nez v3, :cond_1

    move v4, v5

    .line 240
    :goto_2
    invoke-virtual {v2}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    move v5, v4

    .line 241
    goto :goto_0

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, e:Landroid/os/RemoteException;
    iput-boolean v6, v2, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 235
    const-string v7, "DataService"

    const-string v8, "add feed error"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    move v4, v6

    .line 238
    goto :goto_2
.end method

.method public addGetAlbumsTask()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/htc/opensense/social/PageOp;->asyncManager:Lcom/htc/opensense/social/AsyncManager;

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    invoke-interface {v0}, Lcom/htc/opensense/social/ISocialService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/social/AsyncManager;->getFromCache(Landroid/os/IBinder;)Lcom/htc/opensense/social/AsyncManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/PageOp;->asyncManager:Lcom/htc/opensense/social/AsyncManager;

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/social/PageOp;->asyncManager:Lcom/htc/opensense/social/AsyncManager;

    iget-object v1, p0, Lcom/htc/opensense/social/PageOp;->asyncManager:Lcom/htc/opensense/social/AsyncManager;

    iget-object v1, v1, Lcom/htc/opensense/social/AsyncManager;->getAlbumsTask:Lcom/htc/opensense/social/AsyncManager$AsyncTask;

    iget-object v2, p0, Lcom/htc/opensense/social/PageOp;->mPage:Lcom/htc/opensense/social/data/Page;

    iget-object v2, v2, Lcom/htc/opensense/social/data/Page;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/social/AsyncManager;->addNewTask(Lcom/htc/opensense/social/AsyncManager$AsyncTask;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public addGetFeedsTask()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/htc/opensense/social/PageOp;->asyncManager:Lcom/htc/opensense/social/AsyncManager;

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    invoke-interface {v0}, Lcom/htc/opensense/social/ISocialService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/social/AsyncManager;->getFromCache(Landroid/os/IBinder;)Lcom/htc/opensense/social/AsyncManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/PageOp;->asyncManager:Lcom/htc/opensense/social/AsyncManager;

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/social/PageOp;->asyncManager:Lcom/htc/opensense/social/AsyncManager;

    iget-object v1, p0, Lcom/htc/opensense/social/PageOp;->asyncManager:Lcom/htc/opensense/social/AsyncManager;

    iget-object v1, v1, Lcom/htc/opensense/social/AsyncManager;->getFeedsTask:Lcom/htc/opensense/social/AsyncManager$AsyncTask;

    iget-object v2, p0, Lcom/htc/opensense/social/PageOp;->mPage:Lcom/htc/opensense/social/data/Page;

    iget-object v2, v2, Lcom/htc/opensense/social/data/Page;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/social/AsyncManager;->addNewTask(Lcom/htc/opensense/social/AsyncManager$AsyncTask;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public addLike()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 180
    new-instance v1, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v1}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 181
    .local v1, error:Lcom/htc/opensense/social/RemoteError;
    const/4 v2, 0x0

    .line 183
    .local v2, result:Z
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    iget-object v4, p0, Lcom/htc/opensense/social/PageOp;->mPage:Lcom/htc/opensense/social/data/Page;

    iget-object v4, v4, Lcom/htc/opensense/social/data/Page;->uid:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Lcom/htc/opensense/social/ISocialService;->likePage(Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 188
    :goto_0
    invoke-virtual {v1}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    .line 189
    return v2

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Landroid/os/RemoteException;
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 186
    const-string v3, "DataService"

    const-string v4, "like page error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAlbumsOf()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/AlbumOp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v2, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v2}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 74
    .local v2, error:Lcom/htc/opensense/social/RemoteError;
    const/4 v0, 0x0

    .line 76
    .local v0, albumList:[Lcom/htc/opensense/social/data/Album;
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    iget-object v4, p0, Lcom/htc/opensense/social/PageOp;->mPage:Lcom/htc/opensense/social/data/Page;

    iget-object v4, v4, Lcom/htc/opensense/social/data/Page;->uid:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/htc/opensense/social/ISocialService;->getAlbumsOf(Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Album;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 81
    :goto_0
    invoke-virtual {v2}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    .line 82
    iget-object v3, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    sget-object v4, Lcom/htc/opensense/social/AlbumOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {v3, v0, v4}, Lcom/htc/opensense/social/AlbumOp;->convertToDataOpList(Lcom/htc/opensense/social/ISocialService;[Landroid/os/Parcelable;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, e:Landroid/os/RemoteException;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 79
    const-string v3, "DataService"

    const-string v4, "get albums error"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bridge synthetic getData()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/htc/opensense/social/PageOp;->getData()Lcom/htc/opensense/social/data/Page;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/htc/opensense/social/data/Page;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/opensense/social/PageOp;->mPage:Lcom/htc/opensense/social/data/Page;

    return-object v0
.end method

.method public getFeedsOf(ZIJJ)Ljava/util/List;
    .locals 11
    .parameter "onlyUserFeed"
    .parameter "count"
    .parameter "startTime"
    .parameter "endTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIJJ)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/FeedOp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v8, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v8}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 111
    .local v8, error:Lcom/htc/opensense/social/RemoteError;
    const/4 v10, 0x0

    .line 113
    .local v10, feed:[Lcom/htc/opensense/social/data/Feed;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    iget-object v1, p0, Lcom/htc/opensense/social/PageOp;->mPage:Lcom/htc/opensense/social/data/Page;

    iget-object v1, v1, Lcom/htc/opensense/social/data/Page;->uid:Ljava/lang/String;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-interface/range {v0 .. v8}, Lcom/htc/opensense/social/ISocialService;->getAllFeeds(Ljava/lang/String;ZIJJLcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Feed;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 118
    :goto_0
    invoke-virtual {v8}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    .line 119
    iget-object v0, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    sget-object v1, Lcom/htc/opensense/social/FeedOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {v0, v10, v1}, Lcom/htc/opensense/social/FeedOp;->convertToDataOpList(Lcom/htc/opensense/social/ISocialService;[Landroid/os/Parcelable;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 114
    :catch_0
    move-exception v9

    .line 115
    .local v9, e:Landroid/os/RemoteException;
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 116
    const-string v0, "DataService"

    const-string v1, "get feed error"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getMediaTagOf(IIII)Ljava/util/List;
    .locals 9
    .parameter "maxNum"
    .parameter "medium_type"
    .parameter "maxWidth"
    .parameter "maxHeight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/MediumOp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 158
    new-instance v6, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v6}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 159
    .local v6, error:Lcom/htc/opensense/social/RemoteError;
    const/4 v8, 0x0

    .line 161
    .local v8, media:[Lcom/htc/opensense/social/data/Medium;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    iget-object v1, p0, Lcom/htc/opensense/social/PageOp;->mPage:Lcom/htc/opensense/social/data/Page;

    iget-object v1, v1, Lcom/htc/opensense/social/data/Page;->uid:Ljava/lang/String;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/htc/opensense/social/ISocialService;->getMediaTagOf(Ljava/lang/String;IIIILcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Medium;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 166
    :goto_0
    invoke-virtual {v6}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    .line 167
    iget-object v0, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    sget-object v1, Lcom/htc/opensense/social/MediumOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {v0, v8, v1}, Lcom/htc/opensense/social/MediumOp;->convertToDataOpList(Lcom/htc/opensense/social/ISocialService;[Landroid/os/Parcelable;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 163
    :catch_0
    move-exception v7

    .line 164
    .local v7, e:Landroid/os/RemoteException;
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/htc/opensense/social/RemoteError;->failed:Z

    goto :goto_0
.end method

.method public getRecentMedia(IIII)Ljava/util/List;
    .locals 9
    .parameter "maxNum"
    .parameter "medium_type"
    .parameter "maxWidth"
    .parameter "maxHeight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/MediumOp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v6, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v6}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 140
    .local v6, error:Lcom/htc/opensense/social/RemoteError;
    const/4 v8, 0x0

    .line 142
    .local v8, media:[Lcom/htc/opensense/social/data/Medium;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    iget-object v1, p0, Lcom/htc/opensense/social/PageOp;->mPage:Lcom/htc/opensense/social/data/Page;

    iget-object v1, v1, Lcom/htc/opensense/social/data/Page;->uid:Ljava/lang/String;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/htc/opensense/social/ISocialService;->getRecentMedia(Ljava/lang/String;IIIILcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Medium;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 147
    :goto_0
    invoke-virtual {v6}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    .line 148
    iget-object v0, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    sget-object v1, Lcom/htc/opensense/social/MediumOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {v0, v8, v1}, Lcom/htc/opensense/social/MediumOp;->convertToDataOpList(Lcom/htc/opensense/social/ISocialService;[Landroid/os/Parcelable;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 144
    :catch_0
    move-exception v7

    .line 145
    .local v7, e:Landroid/os/RemoteException;
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/htc/opensense/social/RemoteError;->failed:Z

    goto :goto_0
.end method

.method public getVideosOf(I)Ljava/util/List;
    .locals 2
    .parameter "maxNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/MediumOp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/htc/opensense/social/PageOp;->getRecentMedia(IIII)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWhoOfMyFriendLikePage()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/PersonOp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 253
    const/4 v2, 0x0

    .line 254
    .local v2, person:[Lcom/htc/opensense/social/data/Person;
    new-instance v1, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v1}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 255
    .local v1, error:Lcom/htc/opensense/social/RemoteError;
    const-string v3, "Page"

    iput-object v3, v1, Lcom/htc/opensense/social/RemoteError;->detailMsg:Ljava/lang/String;

    .line 258
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    iget-object v4, p0, Lcom/htc/opensense/social/PageOp;->mPage:Lcom/htc/opensense/social/data/Page;

    iget-object v4, v4, Lcom/htc/opensense/social/data/Page;->uid:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Lcom/htc/opensense/social/ISocialService;->getFriendList(Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Person;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 263
    :goto_0
    invoke-virtual {v1}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    .line 264
    iget-object v3, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    sget-object v4, Lcom/htc/opensense/social/PersonOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {v3, v2, v4}, Lcom/htc/opensense/social/PersonOp;->convertToDataOpList(Lcom/htc/opensense/social/ISocialService;[Landroid/os/Parcelable;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, e:Landroid/os/RemoteException;
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 261
    const-string v3, "DataService"

    const-string v4, "getWhoOfMyFriendLikePage error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isFan()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 199
    new-instance v1, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v1}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 200
    .local v1, error:Lcom/htc/opensense/social/RemoteError;
    const/4 v2, 0x0

    .line 202
    .local v2, result:Z
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    iget-object v4, p0, Lcom/htc/opensense/social/PageOp;->mPage:Lcom/htc/opensense/social/data/Page;

    iget-object v4, v4, Lcom/htc/opensense/social/data/Page;->uid:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Lcom/htc/opensense/social/ISocialService;->isFanForPage(Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 207
    :goto_0
    invoke-virtual {v1}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    .line 208
    return v2

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Landroid/os/RemoteException;
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 205
    const-string v3, "DataService"

    const-string v4, "check fan for page error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
