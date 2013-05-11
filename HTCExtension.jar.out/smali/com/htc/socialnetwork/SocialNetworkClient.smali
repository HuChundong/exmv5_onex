.class public abstract Lcom/htc/socialnetwork/SocialNetworkClient;
.super Ljava/lang/Object;
.source "SocialNetworkClient.java"

# interfaces
.implements Lcom/htc/socialnetwork/Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/socialnetwork/SocialNetworkClient$SocialNetworkContentObserver;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SocialNetwork"

.field protected static mCache:Lcom/htc/socialnetwork/Cache;

.field protected static mHttpClient:Lorg/apache/http/client/HttpClient;

.field protected static mSmallCache:Lcom/htc/socialnetwork/Cache;


# instance fields
.field protected mApi_key:Ljava/lang/String;

.field protected mCacheSize:J

.field protected mCapability:I

.field protected mContext:Landroid/content/Context;

.field protected mDataHelper:Lcom/htc/socialnetwork/SocialNetworkDataHelper;

.field protected mDisplayHeight:I

.field protected mDisplayWidth:I

.field protected mLastUpdateTimeKey:Ljava/lang/String;

.field protected mObserver:Lcom/htc/socialnetwork/SocialNetworkClient$SocialNetworkContentObserver;

.field protected mPhotoLastUpdateTimeKey:Ljava/lang/String;

.field protected mPhotoPath:Ljava/lang/String;

.field protected mSecret:Ljava/lang/String;

.field protected mServiceName:Ljava/lang/String;

.field protected mSessionToken:Ljava/lang/String;

.field protected mSmallCacheSize:J

.field protected mSmallPhotoPath:Ljava/lang/String;

.field protected mSmallTaskManager:Lcom/htc/socialnetwork/SmallTaskManager;

.field protected mTaskManager:Lcom/htc/socialnetwork/TaskManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "api_key"
    .parameter "secret"

    .prologue
    const/4 v0, -0x1

    .line 418
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mDisplayWidth:I

    .line 71
    iput v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mDisplayHeight:I

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mCapability:I

    .line 419
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    .line 420
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 421
    iput-object p1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    .line 423
    :cond_0
    iput-object p2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mApi_key:Ljava/lang/String;

    .line 424
    iput-object p3, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSecret:Ljava/lang/String;

    .line 425
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;

    invoke-direct {v0, p1, p0}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;-><init>(Landroid/content/Context;Lcom/htc/socialnetwork/SocialNetworkClient;)V

    iput-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mDataHelper:Lcom/htc/socialnetwork/SocialNetworkDataHelper;

    .line 426
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkClient$SocialNetworkContentObserver;

    invoke-direct {v0, p0, p1}, Lcom/htc/socialnetwork/SocialNetworkClient$SocialNetworkContentObserver;-><init>(Lcom/htc/socialnetwork/SocialNetworkClient;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mObserver:Lcom/htc/socialnetwork/SocialNetworkClient$SocialNetworkContentObserver;

    .line 427
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/socialnetwork/Service;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mObserver:Lcom/htc/socialnetwork/SocialNetworkClient$SocialNetworkContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 430
    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->initHttpClient()V

    .line 431
    invoke-static {}, Lcom/htc/socialnetwork/TaskManager;->obtain()Lcom/htc/socialnetwork/TaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mTaskManager:Lcom/htc/socialnetwork/TaskManager;

    .line 432
    invoke-static {}, Lcom/htc/socialnetwork/SmallTaskManager;->obtain()Lcom/htc/socialnetwork/SmallTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallTaskManager:Lcom/htc/socialnetwork/SmallTaskManager;

    .line 433
    return-void
.end method


# virtual methods
.method public Logout()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1140
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7da

    invoke-direct {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    .line 1142
    :cond_0
    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->logout()Z

    move-result v0

    return v0
.end method

.method public abstract addPhotoComment(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method public addPhotoToCache(Landroid/graphics/Bitmap;ILjava/lang/String;)Z
    .locals 4
    .parameter "bitmap"
    .parameter "ratio"
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x7d4

    .line 674
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 675
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v0, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    .line 676
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 677
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7d2

    invoke-direct {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    .line 678
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_2

    .line 679
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7d3

    invoke-direct {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    .line 680
    :cond_2
    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 681
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const-string v1, "Please pass filename only"

    invoke-direct {v0, v2, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 683
    :cond_3
    iget-wide v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mCacheSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    .line 684
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7d1

    invoke-direct {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    .line 686
    :cond_4
    sget-object v0, Lcom/htc/socialnetwork/SocialNetworkClient;->mCache:Lcom/htc/socialnetwork/Cache;

    if-nez v0, :cond_5

    .line 687
    new-instance v0, Lcom/htc/socialnetwork/Cache;

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    iget-wide v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mCacheSize:J

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/socialnetwork/Cache;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/htc/socialnetwork/SocialNetworkClient;->mCache:Lcom/htc/socialnetwork/Cache;

    .line 689
    :cond_5
    sget-object v0, Lcom/htc/socialnetwork/SocialNetworkClient;->mCache:Lcom/htc/socialnetwork/Cache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/htc/socialnetwork/Cache;->addPhotoToCache(Landroid/graphics/Bitmap;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addSmallPhotoToCache(Landroid/graphics/Bitmap;ILjava/lang/String;)Z
    .locals 4
    .parameter "bitmap"
    .parameter "ratio"
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x7d4

    .line 700
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallPhotoPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 701
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v0, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    .line 702
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallPhotoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 703
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7d2

    invoke-direct {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    .line 704
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallPhotoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_2

    .line 705
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7d3

    invoke-direct {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    .line 706
    :cond_2
    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 707
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const-string v1, "Please pass filename only"

    invoke-direct {v0, v2, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 709
    :cond_3
    iget-wide v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallCacheSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    .line 710
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7d1

    invoke-direct {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    .line 712
    :cond_4
    sget-object v0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallCache:Lcom/htc/socialnetwork/Cache;

    if-nez v0, :cond_5

    .line 713
    new-instance v0, Lcom/htc/socialnetwork/Cache;

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallPhotoPath:Ljava/lang/String;

    iget-wide v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallCacheSize:J

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/socialnetwork/Cache;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallCache:Lcom/htc/socialnetwork/Cache;

    .line 715
    :cond_5
    sget-object v0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallCache:Lcom/htc/socialnetwork/Cache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallPhotoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/htc/socialnetwork/Cache;->addPhotoToCache(Landroid/graphics/Bitmap;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public abstract addToAlbum(Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected abstract checkLogin()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method public clearCache()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 771
    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 772
    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v3, 0x7d4

    invoke-direct {v2, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v2

    .line 774
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 775
    .local v0, cacheDir:Ljava/io/File;
    invoke-virtual {p0, v0}, Lcom/htc/socialnetwork/SocialNetworkClient;->deleteFiles(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 777
    .local v1, res:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 775
    .end local v1           #res:Ljava/lang/Boolean;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public abstract createAlbum(Ljava/util/HashMap;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method public abstract createAlbum(Ljava/util/HashMap;ZI)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZI)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method public abstract deepLink(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method protected deleteFiles(Ljava/io/File;)Z
    .locals 7
    .parameter "target"

    .prologue
    .line 786
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 787
    const/4 v0, 0x0

    .line 800
    :goto_0
    return v0

    .line 789
    :cond_0
    const/4 v0, 0x0

    .line 791
    .local v0, OK:Z
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 792
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 793
    .local v2, children:[Ljava/io/File;
    move-object v1, v2

    .local v1, arr$:[Ljava/io/File;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v3, v1, v4

    .line 794
    .local v3, currentFile:Ljava/io/File;
    invoke-virtual {p0, v3}, Lcom/htc/socialnetwork/SocialNetworkClient;->deleteFiles(Ljava/io/File;)Z

    .line 793
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 796
    .end local v3           #currentFile:Ljava/io/File;
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 797
    goto :goto_0

    .line 798
    .end local v1           #arr$:[Ljava/io/File;
    .end local v2           #children:[Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0
.end method

.method public abstract doAuth()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method public abstract doAuth(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method public downloadPhotoById(Ljava/lang/String;ZLcom/htc/socialnetwork/PhotoCallback;Landroid/os/Bundle;)J
    .locals 6
    .parameter "pid"
    .parameter "thumbnail"
    .parameter "callback"
    .parameter "bundle"

    .prologue
    .line 1060
    const-wide/16 v3, -0x1

    .line 1062
    .local v3, threadId:J
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/SocialNetworkClient;->findPhotoById(Ljava/lang/String;)Lcom/htc/socialnetwork/Photo;

    move-result-object v1

    .line 1063
    .local v1, photo:Lcom/htc/socialnetwork/Photo;
    if-eqz p2, :cond_0

    invoke-virtual {v1}, Lcom/htc/socialnetwork/Photo;->getThumbUrl()Ljava/net/URL;

    move-result-object v5

    .line 1064
    .local v5, url:Ljava/net/URL;
    :goto_0
    invoke-virtual {p0, v5, p3, p4}, Lcom/htc/socialnetwork/SocialNetworkClient;->downloadPhotoByUrl(Ljava/net/URL;Lcom/htc/socialnetwork/PhotoCallback;Landroid/os/Bundle;)J

    move-result-wide v3

    .line 1072
    .end local v1           #photo:Lcom/htc/socialnetwork/Photo;
    .end local v5           #url:Ljava/net/URL;
    :goto_1
    return-wide v3

    .line 1063
    .restart local v1       #photo:Lcom/htc/socialnetwork/Photo;
    :cond_0
    invoke-virtual {v1}, Lcom/htc/socialnetwork/Photo;->getUrl()Ljava/net/URL;
    :try_end_0
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/htc/socialnetwork/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    goto :goto_0

    .line 1066
    .end local v1           #photo:Lcom/htc/socialnetwork/Photo;
    :catch_0
    move-exception v2

    .line 1067
    .local v2, sne:Lcom/htc/socialnetwork/SocialNetworkException;
    invoke-interface {p3, v2, p4}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    goto :goto_1

    .line 1068
    .end local v2           #sne:Lcom/htc/socialnetwork/SocialNetworkException;
    :catch_1
    move-exception v0

    .line 1069
    .local v0, e:Lcom/htc/socialnetwork/AuthenticationException;
    invoke-interface {p3, v0, p4}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public downloadPhotoByUrl(Ljava/net/URL;Lcom/htc/socialnetwork/PhotoCallback;Landroid/os/Bundle;)J
    .locals 10
    .parameter "url"
    .parameter "callback"
    .parameter "bundle"

    .prologue
    .line 1005
    const-wide/16 v6, -0x1

    .line 1006
    .local v6, threadId:J
    if-eqz p3, :cond_0

    .line 1007
    const-string v1, "low_resolution"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1008
    :cond_0
    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1009
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7d4

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    invoke-interface {p2, v1, p3}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    move-wide v8, v6

    .line 1051
    .end local v6           #threadId:J
    .local v8, threadId:J
    :goto_0
    return-wide v8

    .line 1012
    .end local v8           #threadId:J
    .restart local v6       #threadId:J
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1013
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7d2

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    invoke-interface {p2, v1, p3}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    move-wide v8, v6

    .line 1017
    .end local v6           #threadId:J
    .restart local v8       #threadId:J
    goto :goto_0

    .line 1018
    .end local v8           #threadId:J
    .restart local v6       #threadId:J
    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1020
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7d3

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    invoke-interface {p2, v1, p3}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    move-wide v8, v6

    .line 1022
    .end local v6           #threadId:J
    .restart local v8       #threadId:J
    goto :goto_0

    .line 1023
    .end local v8           #threadId:J
    .restart local v6       #threadId:J
    :cond_3
    iget-wide v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mCacheSize:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_4

    .line 1024
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7d1

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    invoke-interface {p2, v1, p3}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    move-wide v8, v6

    .line 1026
    .end local v6           #threadId:J
    .restart local v8       #threadId:J
    goto :goto_0

    .line 1030
    .end local v8           #threadId:J
    .restart local v6       #threadId:J
    :cond_4
    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1031
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7da

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    invoke-interface {p2, v1, p3}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    move-wide v8, v6

    .line 1033
    .end local v6           #threadId:J
    .restart local v8       #threadId:J
    goto :goto_0

    .line 1036
    .end local v8           #threadId:J
    .restart local v6       #threadId:J
    :cond_5
    sget-object v1, Lcom/htc/socialnetwork/SocialNetworkClient;->mCache:Lcom/htc/socialnetwork/Cache;

    if-nez v1, :cond_6

    .line 1037
    new-instance v1, Lcom/htc/socialnetwork/Cache;

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    iget-wide v3, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mCacheSize:J

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/socialnetwork/Cache;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lcom/htc/socialnetwork/SocialNetworkClient;->mCache:Lcom/htc/socialnetwork/Cache;

    .line 1038
    :cond_6
    new-instance v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/htc/socialnetwork/SocialNetworkClient;->mCache:Lcom/htc/socialnetwork/Cache;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/socialnetwork/ImageDownloadRunnable;-><init>(Landroid/content/Context;Ljava/net/URL;Lcom/htc/socialnetwork/PhotoCallback;Landroid/os/Bundle;Lcom/htc/socialnetwork/Cache;)V

    .line 1040
    .local v0, runnable:Lcom/htc/socialnetwork/ImageDownloadRunnable;
    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    iget-wide v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mCacheSize:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/socialnetwork/ImageDownloadRunnable;->setPhotoCache(Ljava/lang/String;J)V

    .line 1041
    invoke-virtual {v0}, Lcom/htc/socialnetwork/ImageDownloadRunnable;->getId()J

    move-result-wide v6

    .line 1042
    const-wide/16 v1, -0x1

    cmp-long v1, v6, v1

    if-eqz v1, :cond_7

    .line 1043
    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mTaskManager:Lcom/htc/socialnetwork/TaskManager;

    invoke-virtual {v1, v0}, Lcom/htc/socialnetwork/TaskManager;->execute(Ljava/lang/Runnable;)V

    :goto_1
    move-wide v8, v6

    .line 1051
    .end local v6           #threadId:J
    .restart local v8       #threadId:J
    goto/16 :goto_0

    .line 1045
    .end local v8           #threadId:J
    .restart local v6       #threadId:J
    :cond_7
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7e2

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    invoke-interface {p2, v1, p3}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public downloadSmallPhotoByUrl(Ljava/net/URL;Lcom/htc/socialnetwork/PhotoCallback;Landroid/os/Bundle;)J
    .locals 10
    .parameter "url"
    .parameter "callback"
    .parameter "bundle"

    .prologue
    .line 954
    const-wide/16 v6, -0x1

    .line 955
    .local v6, threadId:J
    if-eqz p3, :cond_0

    .line 956
    const-string v1, "low_resolution"

    const/4 v2, 0x1

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 957
    :cond_0
    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallPhotoPath:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 958
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7d4

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    invoke-interface {p2, v1, p3}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    move-wide v8, v6

    .line 996
    .end local v6           #threadId:J
    .local v8, threadId:J
    :goto_0
    return-wide v8

    .line 960
    .end local v8           #threadId:J
    .restart local v6       #threadId:J
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallPhotoPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 961
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7d2

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    invoke-interface {p2, v1, p3}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    move-wide v8, v6

    .line 963
    .end local v6           #threadId:J
    .restart local v8       #threadId:J
    goto :goto_0

    .line 964
    .end local v8           #threadId:J
    .restart local v6       #threadId:J
    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallPhotoPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_3

    .line 965
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7d3

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    invoke-interface {p2, v1, p3}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    move-wide v8, v6

    .line 967
    .end local v6           #threadId:J
    .restart local v8       #threadId:J
    goto :goto_0

    .line 968
    .end local v8           #threadId:J
    .restart local v6       #threadId:J
    :cond_3
    iget-wide v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallCacheSize:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_4

    .line 969
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7d1

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    invoke-interface {p2, v1, p3}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    move-wide v8, v6

    .line 971
    .end local v6           #threadId:J
    .restart local v8       #threadId:J
    goto :goto_0

    .line 975
    .end local v8           #threadId:J
    .restart local v6       #threadId:J
    :cond_4
    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_5

    .line 976
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7da

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    invoke-interface {p2, v1, p3}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    move-wide v8, v6

    .line 978
    .end local v6           #threadId:J
    .restart local v8       #threadId:J
    goto :goto_0

    .line 981
    .end local v8           #threadId:J
    .restart local v6       #threadId:J
    :cond_5
    sget-object v1, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallCache:Lcom/htc/socialnetwork/Cache;

    if-nez v1, :cond_6

    .line 982
    new-instance v1, Lcom/htc/socialnetwork/Cache;

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallPhotoPath:Ljava/lang/String;

    iget-wide v3, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallCacheSize:J

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/socialnetwork/Cache;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallCache:Lcom/htc/socialnetwork/Cache;

    .line 983
    :cond_6
    new-instance v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallCache:Lcom/htc/socialnetwork/Cache;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/socialnetwork/ImageDownloadRunnable;-><init>(Landroid/content/Context;Ljava/net/URL;Lcom/htc/socialnetwork/PhotoCallback;Landroid/os/Bundle;Lcom/htc/socialnetwork/Cache;)V

    .line 985
    .local v0, runnable:Lcom/htc/socialnetwork/ImageDownloadRunnable;
    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallPhotoPath:Ljava/lang/String;

    iget-wide v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallCacheSize:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/socialnetwork/ImageDownloadRunnable;->setPhotoCache(Ljava/lang/String;J)V

    .line 986
    invoke-virtual {v0}, Lcom/htc/socialnetwork/ImageDownloadRunnable;->getId()J

    move-result-wide v6

    .line 987
    const-wide/16 v1, -0x1

    cmp-long v1, v6, v1

    if-eqz v1, :cond_7

    .line 988
    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallTaskManager:Lcom/htc/socialnetwork/SmallTaskManager;

    invoke-virtual {v1, v0}, Lcom/htc/socialnetwork/SmallTaskManager;->execute(Ljava/lang/Runnable;)V

    :goto_1
    move-wide v8, v6

    .line 996
    .end local v6           #threadId:J
    .restart local v8       #threadId:J
    goto/16 :goto_0

    .line 990
    .end local v8           #threadId:J
    .restart local v6       #threadId:J
    :cond_7
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7e2

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    invoke-interface {p2, v1, p3}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method protected abstract findAlbumById(Ljava/lang/String;)Lcom/htc/socialnetwork/Album;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method protected abstract findAlbumList(Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected abstract findEventById(J)Lcom/htc/socialnetwork/Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method protected abstract findEvents(Ljava/lang/String;Ljava/util/Collection;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/Event;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected abstract findFriendIdList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected abstract findFriendIds(Ljava/lang/String;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected abstract findFriendInvites(Ljava/lang/String;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected abstract findFriends(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected abstract findFriendsWithContactData(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected abstract findGroupIdList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected abstract findGroupInviteList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/GroupInvite;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected abstract findMsgUpdate(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Update;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected abstract findPhotoById(Ljava/lang/String;)Lcom/htc/socialnetwork/Photo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method protected abstract findPhotoList(Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected abstract findStatusList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected abstract findUpdatePhoto(Ljava/lang/String;J)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method protected abstract findUpdatePhotos(Ljava/util/Collection;J)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;J)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Photo;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected abstract findUserById(Ljava/lang/String;)Lcom/htc/socialnetwork/User;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method protected abstract findUserByIds(Ljava/util/Collection;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/User;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method protected abstract findUserByName(Ljava/lang/String;)Lcom/htc/socialnetwork/User;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method protected abstract getAccountType()Ljava/lang/String;
.end method

.method public getAlbumById(Ljava/lang/String;)Lcom/htc/socialnetwork/Album;
    .locals 3
    .parameter "aid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 928
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7da

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v1

    .line 930
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/SocialNetworkClient;->findAlbumById(Ljava/lang/String;)Lcom/htc/socialnetwork/Album;

    move-result-object v0

    .line 931
    .local v0, album:Lcom/htc/socialnetwork/Album;
    return-object v0
.end method

.method protected getAlbumIdList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 584
    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/SocialNetworkClient;->findAlbumList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, idlist:[Ljava/lang/String;
    return-object v0
.end method

.method public abstract getAlbums(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Album;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method public getApi_key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mApi_key:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheSize()J
    .locals 2

    .prologue
    .line 1323
    iget-wide v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mCacheSize:J

    return-wide v0
.end method

.method public getCapability()I
    .locals 1

    .prologue
    .line 1479
    iget v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mCapability:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDataHelper()Lcom/htc/socialnetwork/SocialNetworkDataHelper;
    .locals 1

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mDataHelper:Lcom/htc/socialnetwork/SocialNetworkDataHelper;

    return-object v0
.end method

.method public getDisplayHeight()I
    .locals 1

    .prologue
    .line 1291
    iget v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mDisplayHeight:I

    return v0
.end method

.method public getDisplayWidth()I
    .locals 1

    .prologue
    .line 1275
    iget v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mDisplayWidth:I

    return v0
.end method

.method public getEventById(J)Lcom/htc/socialnetwork/Event;
    .locals 3
    .parameter "eid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 848
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7da

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v1

    .line 850
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/socialnetwork/SocialNetworkClient;->findEventById(J)Lcom/htc/socialnetwork/Event;

    move-result-object v0

    .line 851
    .local v0, event:Lcom/htc/socialnetwork/Event;
    return-object v0
.end method

.method protected getEvents(Ljava/lang/String;Ljava/util/Collection;J)V
    .locals 0
    .parameter "uid"
    .parameter
    .parameter "start_time"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/Event;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 655
    .local p2, events:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/socialnetwork/Event;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/socialnetwork/SocialNetworkClient;->findEvents(Ljava/lang/String;Ljava/util/Collection;J)V

    .line 656
    return-void
.end method

.method public abstract getFilePartName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method protected getFriendIdList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 604
    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/SocialNetworkClient;->findFriendIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 605
    .local v0, idlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    return-object v0
.end method

.method protected getFriendInvites(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .parameter "userId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 625
    .local p2, invites:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Lcom/htc/socialnetwork/SocialNetworkClient;->findFriendInvites(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 626
    return-void
.end method

.method protected getGroupIdList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/SocialNetworkClient;->findGroupIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 615
    .local v0, idlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    return-object v0
.end method

.method protected getGroupInviteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/GroupInvite;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->findGroupInviteList()Ljava/util/List;

    move-result-object v0

    .line 635
    .local v0, invitelist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/GroupInvite;>;"
    return-object v0
.end method

.method public getLastUpdateTime()J
    .locals 5

    .prologue
    .line 1187
    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mLastUpdateTimeKey:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SOCIAL_NETWORK_LAST_UPDATE_TIME_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mServiceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mLastUpdateTimeKey:Ljava/lang/String;

    .line 1189
    :cond_0
    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mLastUpdateTimeKey:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1192
    .local v1, lastUpdateTime:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1194
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1199
    :goto_0
    return-wide v2

    .line 1195
    :catch_0
    move-exception v0

    .line 1196
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "SocialNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid lastUpdateTime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1199
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getLastUpdateTimeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mLastUpdateTimeKey:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getLoginURL()Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method public abstract getLoginUser()Lcom/htc/socialnetwork/User;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected getMsgUpdate(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Update;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 644
    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/SocialNetworkClient;->findMsgUpdate(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 645
    .local v0, updatelist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Update;>;"
    return-object v0
.end method

.method public getObserver()Lcom/htc/socialnetwork/SocialNetworkClient$SocialNetworkContentObserver;
    .locals 1

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mObserver:Lcom/htc/socialnetwork/SocialNetworkClient$SocialNetworkContentObserver;

    return-object v0
.end method

.method public getPhotoById(Ljava/lang/String;)Lcom/htc/socialnetwork/Photo;
    .locals 3
    .parameter "pid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 941
    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 942
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7da

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v1

    .line 944
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/SocialNetworkClient;->findPhotoById(Ljava/lang/String;)Lcom/htc/socialnetwork/Photo;

    move-result-object v0

    .line 945
    .local v0, photo:Lcom/htc/socialnetwork/Photo;
    return-object v0
.end method

.method public abstract getPhotoComments(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Comment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method public abstract getPhotoFavoriteList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected getPhotoIdList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "aid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 594
    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/SocialNetworkClient;->findPhotoList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, pidList:[Ljava/lang/String;
    return-object v0
.end method

.method public getPhotoLastUpdateTime()J
    .locals 5

    .prologue
    .line 1219
    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoLastUpdateTimeKey:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SOCIAL_NETWORK_PHOTO_LAST_UPDATE_TIME_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mServiceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoLastUpdateTimeKey:Ljava/lang/String;

    .line 1223
    :cond_0
    const/4 v1, 0x0

    .line 1226
    .local v1, lastUpdateTime:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoLastUpdateTimeKey:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1232
    :goto_0
    if-eqz v1, :cond_1

    .line 1234
    :try_start_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    .line 1239
    :goto_1
    return-wide v2

    .line 1228
    :catch_0
    move-exception v0

    .line 1229
    .local v0, e:Ljava/lang/Throwable;
    const-string v2, "SocialNetwork"

    const-string v3, "something wrong in getPhotoLastUpdateTime"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1235
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 1236
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "SocialNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid lastUpdateTime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1239
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method public getPhotoLastUpdateTimeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoLastUpdateTimeKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getPhotos(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method public abstract getRecentPhotos(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getSessionToken()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method public getSmallCacheSize()J
    .locals 2

    .prologue
    .line 1355
    iget-wide v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallCacheSize:J

    return-wide v0
.end method

.method public getSmallPhotoPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallPhotoPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallTaskManager()Lcom/htc/socialnetwork/SmallTaskManager;
    .locals 1

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallTaskManager:Lcom/htc/socialnetwork/SmallTaskManager;

    return-object v0
.end method

.method protected getStatusList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 664
    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/SocialNetworkClient;->findStatusList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTaskManager()Lcom/htc/socialnetwork/TaskManager;
    .locals 1

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mTaskManager:Lcom/htc/socialnetwork/TaskManager;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatePhoto(Ljava/lang/String;J)[Ljava/lang/String;
    .locals 2
    .parameter "uid"
    .parameter "startTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 902
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7da

    invoke-direct {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    .line 904
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/socialnetwork/SocialNetworkClient;->findUpdatePhoto(Ljava/lang/String;J)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdatePhotos(Ljava/util/Collection;J)Ljava/util/HashMap;
    .locals 2
    .parameter
    .parameter "startTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;J)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Photo;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 914
    .local p1, uids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 915
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7da

    invoke-direct {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    .line 917
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/socialnetwork/SocialNetworkClient;->findUpdatePhotos(Ljava/util/Collection;J)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public abstract getUploadParameters(Ljava/util/HashMap;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method public abstract getUploadResponseMsg(Ljava/io/InputStream;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method public abstract getUploadUrl()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method public getUserById(Ljava/lang/String;)Lcom/htc/socialnetwork/User;
    .locals 3
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 862
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7da

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v1

    .line 864
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/SocialNetworkClient;->findUserById(Ljava/lang/String;)Lcom/htc/socialnetwork/User;

    move-result-object v0

    .line 865
    .local v0, user:Lcom/htc/socialnetwork/User;
    return-object v0
.end method

.method public getUserByIds(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/User;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 874
    .local p1, uids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, users:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/socialnetwork/User;>;"
    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 875
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7da

    invoke-direct {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    .line 877
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/socialnetwork/SocialNetworkClient;->findUserByIds(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 878
    return-void
.end method

.method public getUserByName(Ljava/lang/String;)Lcom/htc/socialnetwork/User;
    .locals 3
    .parameter "username"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 887
    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 888
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7da

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v1

    .line 890
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/SocialNetworkClient;->findUserByName(Ljava/lang/String;)Lcom/htc/socialnetwork/User;

    move-result-object v0

    .line 891
    .local v0, user:Lcom/htc/socialnetwork/User;
    return-object v0
.end method

.method protected initHttpClient()V
    .locals 8

    .prologue
    const v5, 0xea60

    .line 454
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 455
    .local v1, params:Lorg/apache/http/params/HttpParams;
    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 456
    const/4 v4, 0x1

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 457
    const-string v4, "HTC-Android/1.0"

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 459
    invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 460
    invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 462
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 463
    .local v2, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    const/16 v7, 0x50

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 465
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    .line 466
    .local v3, sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    new-instance v4, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;

    invoke-direct {v4}, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 467
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    const/16 v6, 0x1bb

    invoke-direct {v4, v5, v3, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 468
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 471
    .local v0, manager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v4, Lcom/htc/socialnetwork/SocialNetworkClient;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 472
    return-void
.end method

.method public isLogin()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1127
    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1128
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7da

    invoke-direct {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    .line 1130
    :cond_0
    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->checkLogin()Z

    move-result v0

    return v0
.end method

.method public isNetworkAvailable()Z
    .locals 4

    .prologue
    .line 825
    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 827
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 829
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    .line 831
    const/4 v2, 0x1

    .line 837
    .end local v1           #info:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public launchAccountManager()V
    .locals 0

    .prologue
    .line 807
    return-void
.end method

.method public launchAccountManager(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    const/4 v0, 0x0

    .line 810
    invoke-virtual {p0, p1, v0, v0}, Lcom/htc/socialnetwork/SocialNetworkClient;->launchAccountManager(Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    .line 811
    return-void
.end method

.method public launchAccountManager(Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V
    .locals 8
    .parameter "activity"
    .parameter "handler"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Handler;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/4 v2, 0x0

    .line 815
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->getAccountType()Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, p1

    move-object v6, p3

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 817
    return-void
.end method

.method protected abstract logout()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method protected abstract refreshData()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 440
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mObserver:Lcom/htc/socialnetwork/SocialNetworkClient$SocialNetworkContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mObserver:Lcom/htc/socialnetwork/SocialNetworkClient$SocialNetworkContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 442
    :cond_0
    iput-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mObserver:Lcom/htc/socialnetwork/SocialNetworkClient$SocialNetworkContentObserver;

    .line 443
    iput-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mDataHelper:Lcom/htc/socialnetwork/SocialNetworkDataHelper;

    .line 444
    iput-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    .line 446
    return-void
.end method

.method public setApi_key(Ljava/lang/String;)V
    .locals 0
    .parameter "mApi_key"

    .prologue
    .line 1395
    iput-object p1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mApi_key:Ljava/lang/String;

    .line 1396
    return-void
.end method

.method public setCacheSize(J)V
    .locals 0
    .parameter "mCacheSize"

    .prologue
    .line 1331
    iput-wide p1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mCacheSize:J

    .line 1332
    return-void
.end method

.method public setCapability(I)V
    .locals 0
    .parameter "mCapability"

    .prologue
    .line 1487
    iput p1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mCapability:I

    .line 1488
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "mContext"

    .prologue
    .line 1379
    iput-object p1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    .line 1380
    return-void
.end method

.method public setDataHelper(Lcom/htc/socialnetwork/SocialNetworkDataHelper;)V
    .locals 0
    .parameter "mDataHelper"

    .prologue
    .line 1439
    iput-object p1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mDataHelper:Lcom/htc/socialnetwork/SocialNetworkDataHelper;

    .line 1440
    return-void
.end method

.method public setDisplayHeight(I)V
    .locals 0
    .parameter "mDisplayHeight"

    .prologue
    .line 1299
    iput p1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mDisplayHeight:I

    .line 1300
    return-void
.end method

.method public setDisplaySize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 414
    iput p1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mDisplayWidth:I

    .line 415
    iput p2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mDisplayHeight:I

    .line 416
    return-void
.end method

.method public setDisplayWidth(I)V
    .locals 0
    .parameter "mDisplayWidth"

    .prologue
    .line 1283
    iput p1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mDisplayWidth:I

    .line 1284
    return-void
.end method

.method public setLastUpdateTime(J)V
    .locals 3
    .parameter "lastUpdateTime"

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mLastUpdateTimeKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SOCIAL_NETWORK_LAST_UPDATE_TIME_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mLastUpdateTimeKey:Ljava/lang/String;

    .line 1178
    :cond_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mLastUpdateTimeKey:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1180
    return-void
.end method

.method public setLastUpdateTimeKey(Ljava/lang/String;)V
    .locals 0
    .parameter "mLastUpdateTimeKey"

    .prologue
    .line 1503
    iput-object p1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mLastUpdateTimeKey:Ljava/lang/String;

    .line 1504
    return-void
.end method

.method public setObserver(Lcom/htc/socialnetwork/SocialNetworkClient$SocialNetworkContentObserver;)V
    .locals 0
    .parameter "mObserver"

    .prologue
    .line 1455
    iput-object p1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mObserver:Lcom/htc/socialnetwork/SocialNetworkClient$SocialNetworkContentObserver;

    .line 1456
    return-void
.end method

.method public setPhotoCache(Ljava/lang/String;JZ)V
    .locals 3
    .parameter "path"
    .parameter "cacheSize"
    .parameter "createFolder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 729
    iput-object p1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    .line 730
    iput-wide p2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mCacheSize:J

    .line 731
    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 732
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7d4

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v1

    .line 733
    :cond_0
    if-eqz p4, :cond_1

    .line 734
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 735
    .local v0, cachePath:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_1

    .line 736
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7d3

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v1

    .line 738
    .end local v0           #cachePath:Ljava/io/File;
    :cond_1
    return-void
.end method

.method public abstract setPhotoFavorite(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method public setPhotoLastUpdateTime(J)V
    .locals 3
    .parameter "lastUpdateTime"

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoLastUpdateTimeKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SOCIAL_NETWORK_PHOTO_LAST_UPDATE_TIME_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoLastUpdateTimeKey:Ljava/lang/String;

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoLastUpdateTimeKey:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1212
    return-void
.end method

.method public setPhotoLastUpdateTimeKey(Ljava/lang/String;)V
    .locals 0
    .parameter "mPhotoLastUpdateTimeKey"

    .prologue
    .line 1519
    iput-object p1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoLastUpdateTimeKey:Ljava/lang/String;

    .line 1520
    return-void
.end method

.method public setPhotoPath(Ljava/lang/String;)V
    .locals 0
    .parameter "mPhotoPath"

    .prologue
    .line 1315
    iput-object p1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    .line 1316
    return-void
.end method

.method public setSecret(Ljava/lang/String;)V
    .locals 0
    .parameter "mSecret"

    .prologue
    .line 1411
    iput-object p1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSecret:Ljava/lang/String;

    .line 1412
    return-void
.end method

.method protected setService(Ljava/lang/String;I)V
    .locals 0
    .parameter "name"
    .parameter "capability"

    .prologue
    .line 479
    iput-object p1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mServiceName:Ljava/lang/String;

    .line 480
    iput p2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mCapability:I

    .line 481
    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0
    .parameter "mServiceName"

    .prologue
    .line 1471
    iput-object p1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mServiceName:Ljava/lang/String;

    .line 1472
    return-void
.end method

.method public setSessionToken(Ljava/lang/String;)V
    .locals 0
    .parameter "mSessionToken"

    .prologue
    .line 1427
    iput-object p1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSessionToken:Ljava/lang/String;

    .line 1428
    return-void
.end method

.method public setSmallCacheSize(J)V
    .locals 0
    .parameter "mSmallCacheSize"

    .prologue
    .line 1363
    iput-wide p1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallCacheSize:J

    .line 1364
    return-void
.end method

.method public setSmallPhotoCache(Ljava/lang/String;JZ)V
    .locals 4
    .parameter "path"
    .parameter "cacheSize"
    .parameter "createFolder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x7d4

    .line 750
    iput-object p1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallPhotoPath:Ljava/lang/String;

    .line 751
    iput-wide p2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallCacheSize:J

    .line 752
    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallPhotoPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 753
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v1, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v1

    .line 754
    :cond_0
    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallPhotoPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 755
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v1, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v1

    .line 756
    :cond_1
    if-eqz p4, :cond_2

    .line 757
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallPhotoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 758
    .local v0, cachePath:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_2

    .line 759
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7d3

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v1

    .line 761
    .end local v0           #cachePath:Ljava/io/File;
    :cond_2
    return-void
.end method

.method public setSmallPhotoPath(Ljava/lang/String;)V
    .locals 0
    .parameter "mSmallPhotoPath"

    .prologue
    .line 1347
    iput-object p1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallPhotoPath:Ljava/lang/String;

    .line 1348
    return-void
.end method

.method public setSmallTaskManager(Lcom/htc/socialnetwork/SmallTaskManager;)V
    .locals 0
    .parameter "mSmallTaskManager"

    .prologue
    .line 1551
    iput-object p1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallTaskManager:Lcom/htc/socialnetwork/SmallTaskManager;

    .line 1552
    return-void
.end method

.method public setTaskManager(Lcom/htc/socialnetwork/TaskManager;)V
    .locals 0
    .parameter "mTaskManager"

    .prologue
    .line 1535
    iput-object p1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mTaskManager:Lcom/htc/socialnetwork/TaskManager;

    .line 1536
    return-void
.end method

.method public stopDownloadAll(Z)V
    .locals 1
    .parameter "small"

    .prologue
    .line 1096
    if-eqz p1, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallTaskManager:Lcom/htc/socialnetwork/SmallTaskManager;

    invoke-virtual {v0}, Lcom/htc/socialnetwork/SmallTaskManager;->cancelAll()V

    .line 1100
    :goto_0
    return-void

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mTaskManager:Lcom/htc/socialnetwork/TaskManager;

    invoke-virtual {v0}, Lcom/htc/socialnetwork/TaskManager;->cancelAll()V

    goto :goto_0
.end method

.method public stopDownloadPhoto(J)Z
    .locals 1
    .parameter "threadId"

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mTaskManager:Lcom/htc/socialnetwork/TaskManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/socialnetwork/TaskManager;->cancel(J)Z

    move-result v0

    return v0
.end method

.method public stopDownloadSmallPhoto(J)Z
    .locals 1
    .parameter "threadId"

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallTaskManager:Lcom/htc/socialnetwork/SmallTaskManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/socialnetwork/SmallTaskManager;->cancel(J)Z

    move-result v0

    return v0
.end method

.method protected abstract updateStatus(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method public updateUserStatus(Ljava/lang/String;)Z
    .locals 3
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1112
    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1113
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7da

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v1

    .line 1115
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/SocialNetworkClient;->updateStatus(Ljava/lang/String;)Z

    move-result v0

    .line 1116
    .local v0, res:Z
    return v0
.end method
