.class public Lcom/htc/socialnetwork/SocialNetworkDataHelper;
.super Ljava/lang/Object;
.source "SocialNetworkDataHelper.java"

# interfaces
.implements Lcom/htc/socialnetwork/Constants;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final LOG_TAG:Ljava/lang/String; = "SocialNetworkDataHelper"

.field public static final RAW_QUERY_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mClient:Lcom/htc/socialnetwork/SocialNetworkClient;

.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "content://com.htc.socialnetwork.snprovider/joins"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->CONTENT_URI:Landroid/net/Uri;

    .line 60
    const-string v0, "content://com.htc.socialnetwork.snprovider/rawquerys"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->RAW_QUERY_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/socialnetwork/SocialNetworkClient;)V
    .locals 1
    .parameter "context"
    .parameter "client"

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    .line 66
    iput-object p2, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mClient:Lcom/htc/socialnetwork/SocialNetworkClient;

    .line 67
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mClassName:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->getServiceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private updateEventValues(Ljava/lang/String;Lcom/htc/socialnetwork/Event;J)Landroid/content/ContentValues;
    .locals 10
    .parameter "uid"
    .parameter "event"
    .parameter "last_check_time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x7df

    .line 1559
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1560
    :cond_0
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mandatory fields not set at insertEvent. uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v9, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 1563
    :cond_1
    invoke-virtual {p2}, Lcom/htc/socialnetwork/Event;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1564
    .local v2, event_id:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/htc/socialnetwork/Event;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1565
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/htc/socialnetwork/Event;->getStartTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 1566
    .local v4, start_time:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/htc/socialnetwork/Event;->getEndTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 1567
    .local v1, end_time:Ljava/lang/String;
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    if-nez v1, :cond_3

    .line 1569
    :cond_2
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mandatory fields not set at insertEvent. event id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , start time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , end time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v9, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 1574
    :cond_3
    :try_start_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1575
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "name"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    const-string v6, "description"

    invoke-virtual {p2}, Lcom/htc/socialnetwork/Event;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    const-string v7, "creator"

    invoke-virtual {p2}, Lcom/htc/socialnetwork/Event;->getCreator()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    const-string v6, ""

    :goto_0
    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    const-string v6, "start_time"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    const-string v6, "end_time"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    const-string v6, "update_time"

    invoke-virtual {p2}, Lcom/htc/socialnetwork/Event;->getUpdateTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1582
    const-string v6, "last_check_time"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1584
    const-string v6, "sid"

    iget-object v7, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    const-string v6, "event_id"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    const-string v6, "uid"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    const-string v6, "is_read"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1589
    return-object v5

    .line 1577
    :cond_4
    invoke-virtual {p2}, Lcom/htc/socialnetwork/Event;->getCreator()Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    goto :goto_0

    .line 1591
    .end local v5           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 1592
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v9, v7, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1594
    .end local v0           #e:Landroid/database/sqlite/SQLiteConstraintException;
    :catch_1
    move-exception v0

    .line 1595
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v7, 0x7e4

    invoke-direct {v6, v7, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v6
.end method


# virtual methods
.method public batchInsert(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1253
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :try_start_0
    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "com.htc.socialnetwork.snprovider"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 1254
    :catch_0
    move-exception v0

    .line 1255
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7d0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1256
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1257
    .local v0, e:Landroid/content/OperationApplicationException;
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7df

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public cleanFriendInvite(J)Z
    .locals 6
    .parameter "checkTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 2383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accept_time < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2384
    .local v2, where:Ljava/lang/String;
    const/4 v1, -0x1

    .line 2386
    .local v1, res:I
    :try_start_0
    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/socialnetwork/FriendInvite;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2393
    if-lez v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    .line 2390
    :catch_0
    move-exception v0

    .line 2391
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7e4

    invoke-direct {v3, v4, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v3

    .line 2393
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public cleanGroupInvite(J)Z
    .locals 6
    .parameter "checkTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 2402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accept_time < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2403
    .local v2, where:Ljava/lang/String;
    const/4 v1, -0x1

    .line 2405
    .local v1, res:I
    :try_start_0
    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/socialnetwork/GroupInvite;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2412
    if-lez v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    .line 2409
    :catch_0
    move-exception v0

    .line 2410
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7e4

    invoke-direct {v3, v4, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v3

    .line 2412
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public cleanMsgUpdate(J)Z
    .locals 6
    .parameter "checkTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 2420
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "last_check_time < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2421
    .local v2, where:Ljava/lang/String;
    const/4 v1, -0x1

    .line 2423
    .local v1, res:I
    :try_start_0
    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/socialnetwork/Update;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2430
    if-lez v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    .line 2427
    :catch_0
    move-exception v0

    .line 2428
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7e4

    invoke-direct {v3, v4, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v3

    .line 2430
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public cleanPhotoUpdate(J)Z
    .locals 6
    .parameter "checkTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 2439
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "last_update_time < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2440
    .local v2, where:Ljava/lang/String;
    const/4 v1, -0x1

    .line 2442
    .local v1, res:I
    :try_start_0
    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/socialnetwork/Photo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2449
    if-lez v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    .line 2446
    :catch_0
    move-exception v0

    .line 2447
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7e4

    invoke-direct {v3, v4, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v3

    .line 2449
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public cleanProfileUpdate(J)Z
    .locals 6
    .parameter "checkTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 2458
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "last_check_time < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2459
    .local v2, where:Ljava/lang/String;
    const/4 v1, -0x1

    .line 2461
    .local v1, res:I
    :try_start_0
    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/socialnetwork/ProfileUpdate;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2468
    if-lez v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    .line 2465
    :catch_0
    move-exception v0

    .line 2466
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7e4

    invoke-direct {v3, v4, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v3

    .line 2468
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public clearData()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 872
    const/4 v1, 0x0

    .line 873
    .local v1, res:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 875
    .local v2, where:Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/socialnetwork/PhotoCache;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    move v5, v3

    :goto_0
    or-int/2addr v1, v5

    .line 876
    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/socialnetwork/ProfileUpdate;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    move v5, v3

    :goto_1
    or-int/2addr v1, v5

    .line 877
    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/socialnetwork/Photo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_2

    move v5, v3

    :goto_2
    or-int/2addr v1, v5

    .line 878
    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/socialnetwork/Update;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_3

    move v5, v3

    :goto_3
    or-int/2addr v1, v5

    .line 879
    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/socialnetwork/GroupInvite;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_4

    move v5, v3

    :goto_4
    or-int/2addr v1, v5

    .line 880
    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/socialnetwork/FriendInvite;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_5

    move v5, v3

    :goto_5
    or-int/2addr v1, v5

    .line 881
    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/socialnetwork/EventMember;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_6

    move v5, v3

    :goto_6
    or-int/2addr v1, v5

    .line 882
    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/socialnetwork/Event;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_7

    move v5, v3

    :goto_7
    or-int/2addr v1, v5

    .line 883
    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/socialnetwork/Album;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_8

    move v5, v3

    :goto_8
    or-int/2addr v1, v5

    .line 884
    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/socialnetwork/User;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_9

    :goto_9
    or-int/2addr v1, v3

    .line 889
    return v1

    :cond_0
    move v5, v4

    .line 875
    goto :goto_0

    :cond_1
    move v5, v4

    .line 876
    goto :goto_1

    :cond_2
    move v5, v4

    .line 877
    goto :goto_2

    :cond_3
    move v5, v4

    .line 878
    goto :goto_3

    :cond_4
    move v5, v4

    .line 879
    goto :goto_4

    :cond_5
    move v5, v4

    .line 880
    goto :goto_5

    :cond_6
    move v5, v4

    .line 881
    goto :goto_6

    :cond_7
    move v5, v4

    .line 882
    goto :goto_7

    :cond_8
    move v5, v4

    .line 883
    goto :goto_8

    :cond_9
    move v3, v4

    .line 884
    goto :goto_9

    .line 885
    :catch_0
    move-exception v0

    .line 886
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7e4

    invoke-direct {v3, v4, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v3
.end method

.method public deleteAlbum([Ljava/lang/String;)Z
    .locals 13
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1353
    const/4 v8, 0x0

    .line 1354
    .local v8, album_id:Ljava/lang/String;
    const/4 v12, 0x0

    .line 1355
    .local v12, uid:Ljava/lang/String;
    const/4 v7, -0x1

    .line 1356
    .local v7, albumRes:I
    if-eqz p1, :cond_3

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    aget-object v8, p1, v0

    if-eqz v8, :cond_3

    const/4 v0, 0x1

    aget-object v12, p1, v0

    if-eqz v12, :cond_3

    .line 1358
    const/4 v6, 0x0

    .line 1359
    .local v6, _id:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1361
    .local v3, where:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1363
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Album;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1365
    const/4 v11, 0x1

    .line 1366
    .local v11, res:Z
    if-eqz v9, :cond_1

    .line 1367
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1368
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1371
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1372
    if-nez v11, :cond_2

    move v0, v11

    .line 1386
    :goto_1
    return v0

    .line 1370
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 1375
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1376
    :cond_2
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Album;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 1386
    if-lez v7, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    .line 1380
    .end local v11           #res:Z
    :catch_0
    move-exception v10

    .line 1381
    .local v10, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v10}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 1384
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #_id:Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_3
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    const-string v2, "mandatory fields not set at deleteAlbum"

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1386
    .restart local v3       #where:Ljava/lang/String;
    .restart local v6       #_id:Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v11       #res:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public deleteAlbums(Ljava/lang/String;)Z
    .locals 6
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1396
    if-nez p1, :cond_0

    .line 1397
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7df

    const-string v5, "user row id not set at deleteAlbums"

    invoke-direct {v3, v4, v5}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1399
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1400
    .local v2, where:Ljava/lang/String;
    const/4 v1, -0x1

    .line 1402
    .local v1, res:I
    :try_start_0
    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/socialnetwork/Album;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1409
    if-lez v1, :cond_1

    const/4 v3, 0x1

    :goto_0
    return v3

    .line 1406
    :catch_0
    move-exception v0

    .line 1407
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7e4

    invoke-direct {v3, v4, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v3

    .line 1409
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public deleteEvents()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1693
    const/4 v1, -0x1

    .line 1695
    .local v1, res:I
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1696
    .local v2, where:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/socialnetwork/EventMember;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1697
    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/socialnetwork/Event;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1704
    if-lez v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    .line 1701
    .end local v2           #where:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1702
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7e4

    invoke-direct {v3, v4, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v3

    .line 1704
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    .restart local v2       #where:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public deleteEvents(Ljava/lang/String;)Z
    .locals 13
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 1528
    if-nez p1, :cond_0

    .line 1529
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    const-string v2, "user row id not set at deleteEvents"

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1531
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1532
    .local v3, where:Ljava/lang/String;
    const/4 v9, -0x1

    .line 1534
    .local v9, res:I
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Event;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1536
    .local v6, cursor:Landroid/database/Cursor;
    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1537
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1538
    .local v8, eid:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1539
    .local v10, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/EventMember;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v10, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 1544
    goto :goto_0

    .line 1545
    .end local v8           #eid:Ljava/lang/String;
    .end local v10           #selection:Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 1546
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1547
    :cond_2
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Event;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 1554
    if-lez v9, :cond_3

    move v0, v11

    :goto_1
    return v0

    .line 1551
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 1552
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_3
    move v0, v12

    .line 1554
    goto :goto_1
.end method

.method public deleteFriend(Ljava/lang/String;)Z
    .locals 4
    .parameter "friendUserId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1177
    if-nez p1, :cond_0

    .line 1178
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7df

    const-string v3, "friend user id not set at deleteFriend"

    invoke-direct {v1, v2, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1181
    :cond_0
    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->getActiveUserData()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->deleteUser(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1185
    .local v0, res:I
    if-lez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deletePhotoCaches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "aid"
    .parameter "sid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1441
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1442
    :cond_0
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7df

    const-string v5, "aid and sid not set at deletePhotoCaches"

    invoke-direct {v3, v4, v5}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1445
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "album_id = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1447
    .local v2, where:Ljava/lang/String;
    const/4 v1, -0x1

    .line 1449
    .local v1, res:I
    :try_start_0
    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/socialnetwork/PhotoCache;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1453
    if-lez v1, :cond_2

    const/4 v3, 0x1

    :goto_0
    return v3

    .line 1450
    :catch_0
    move-exception v0

    .line 1451
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7e4

    invoke-direct {v3, v4, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v3

    .line 1453
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public deletePhotoUpdate(Ljava/lang/String;)Z
    .locals 6
    .parameter "aid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 2014
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2015
    .local v2, where:Ljava/lang/String;
    const/4 v1, -0x1

    .line 2017
    .local v1, res:I
    :try_start_0
    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/socialnetwork/Photo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2023
    if-lez v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    .line 2020
    :catch_0
    move-exception v0

    .line 2021
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7e4

    invoke-direct {v3, v4, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v3

    .line 2023
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected deleteUser(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "user_id"
    .parameter "friendOf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1775
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 1776
    :cond_0
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7df

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mandatory fields not set at deleteUser. user_id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , service id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 1780
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "user_id = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "sid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1782
    .local v4, where:Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->getUserRowId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1783
    .local v3, uid:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 1784
    const/4 v0, 0x0

    .line 1798
    :goto_0
    return v0

    .line 1786
    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->deleteAlbums(Ljava/lang/String;)Z

    move-result v2

    .line 1789
    .local v2, res:Z
    invoke-virtual {p0, v3}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->deleteEvents(Ljava/lang/String;)Z

    move-result v2

    .line 1794
    :try_start_0
    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/socialnetwork/User;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, count:I
    goto :goto_0

    .line 1795
    .end local v0           #count:I
    :catch_0
    move-exception v1

    .line 1796
    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7e4

    invoke-direct {v5, v6, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v5
.end method

.method public doSync(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "serviceName"
    .parameter "type"
    .parameter "specificUser"

    .prologue
    .line 2495
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.socialnetwork.action.SYNC_NOW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2496
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2497
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "SYNC_SERVICE"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2498
    const-string v2, "SYNC_TYPE"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2499
    const-string v2, "SYNC_USER"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2500
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2504
    const-string v2, "htc.opensense.permission.USE_BROADCAST"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2505
    return-void
.end method

.method public getActiveUserData([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "projection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 198
    const/4 v6, 0x0

    .line 200
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "service"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 203
    .local v1, queryUri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user.sid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "active_account"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = \'Y\' AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "friend_of"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = 0 AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "service"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "session_token"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " IS NOT NULL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, where:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, p1

    if-ge v8, v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, p1, v8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v8

    .line 208
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 214
    return-object v6

    .line 211
    .end local v1           #queryUri:Landroid/net/Uri;
    .end local v3           #where:Ljava/lang/String;
    .end local v8           #i:I
    :catch_0
    move-exception v7

    .line 212
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7e4

    invoke-direct {v0, v2, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public getActiveUserData()Ljava/util/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .prologue
    .line 160
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 161
    .local v10, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 163
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "user"

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "service"

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 166
    .local v1, queryUri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user.sid = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "user"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "active_account"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " = \'Y\' AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "user"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "friend_of"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " = 0 AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "service"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "session_token"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " IS NOT NULL"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, where:Ljava/lang/String;
    sget-object v0, Lcom/htc/socialnetwork/User;->USER_PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    new-array v2, v0, [Ljava/lang/String;

    .line 172
    .local v2, projection:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, v2

    if-ge v8, v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/htc/socialnetwork/User;->USER_PROJECTION:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v8

    .line 172
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 177
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    const/4 v8, 0x0

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 179
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 186
    :cond_1
    if-eqz v6, :cond_2

    .line 187
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 189
    :cond_2
    return-object v10

    .line 181
    .end local v1           #queryUri:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v8           #i:I
    :catch_0
    move-exception v7

    .line 182
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7e4

    invoke-direct {v0, v4, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 187
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 183
    :catch_1
    move-exception v9

    .line 184
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7de

    invoke-direct {v0, v4, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getActiveUserId()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 121
    const/4 v10, 0x0

    .line 122
    .local v10, userId:Ljava/lang/String;
    const/4 v7, 0x0

    .line 124
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "service"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 127
    .local v1, queryUri:Landroid/net/Uri;
    const-string v6, "user.user_id"

    .line 128
    .local v6, USERID:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user.sid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "active_account"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = \'Y\' AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "friend_of"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = 0 AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "service"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "session_token"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " IS NOT NULL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "user.user_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 137
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "user_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 145
    :cond_0
    if-eqz v7, :cond_1

    .line 146
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 148
    :cond_1
    return-object v10

    .line 140
    .end local v1           #queryUri:Landroid/net/Uri;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #USERID:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 141
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7e4

    invoke-direct {v0, v2, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 146
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 142
    :catch_1
    move-exception v9

    .line 143
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7de

    invoke-direct {v0, v2, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getActiveUserName()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v10, 0x0

    .line 83
    .local v10, username:Ljava/lang/String;
    const/4 v7, 0x0

    .line 86
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "service"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 89
    .local v1, queryUri:Landroid/net/Uri;
    const-string v6, "user.user_name"

    .line 90
    .local v6, USERNAME:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user.sid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "active_account"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = \'Y\' AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "friend_of"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = 0 AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "service"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "session_token"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " IS NOT NULL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "user.user_name"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 99
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "user_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 107
    :cond_0
    if-eqz v7, :cond_1

    .line 108
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_1
    return-object v10

    .line 102
    .end local v1           #queryUri:Landroid/net/Uri;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #USERNAME:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 103
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7e4

    invoke-direct {v0, v2, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 108
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 104
    :catch_1
    move-exception v9

    .line 105
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7de

    invoke-direct {v0, v2, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getAlbumData([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "projection"
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 588
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 590
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Album;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 595
    return-object v6

    .line 592
    :catch_0
    move-exception v7

    .line 593
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public getAlbumData(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 605
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 606
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 607
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 609
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Album;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 611
    if-eqz v6, :cond_2

    .line 612
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 613
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 614
    .local v11, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 615
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 616
    :cond_0
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 619
    .end local v8           #i:I
    .end local v11           #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 620
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 624
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 625
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 624
    :cond_2
    if-eqz v6, :cond_3

    .line 625
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 627
    :cond_3
    return-object v10

    .line 621
    :catch_1
    move-exception v9

    .line 622
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getAlbumIds(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 12
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
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

    .prologue
    .line 303
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 305
    .local v8, albumIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "album"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 308
    .local v1, queryUri:Landroid/net/Uri;
    const-string v6, "album.album_id"

    .line 309
    .local v6, ALBUMID:Ljava/lang/String;
    const-string v7, "album._id"

    .line 310
    .local v7, _ID:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user.sid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "album"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "uid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, where:Ljava/lang/String;
    const/4 v9, 0x0

    .line 316
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "album.album_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "album._id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 318
    if-eqz v9, :cond_1

    .line 319
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 321
    :catch_0
    move-exception v10

    .line 322
    .local v10, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7e4

    invoke-direct {v0, v2, v10}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    .end local v10           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_0

    .line 327
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 326
    :cond_1
    if-eqz v9, :cond_2

    .line 327
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_2
    return-object v8

    .line 323
    :catch_1
    move-exception v11

    .line 324
    .local v11, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7de

    invoke-direct {v0, v2, v11}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getEventData(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 638
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 639
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 640
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 642
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Event;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 644
    if-eqz v6, :cond_2

    .line 645
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 646
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 647
    .local v11, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 648
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 649
    :cond_0
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 652
    .end local v8           #i:I
    .end local v11           #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 653
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 657
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 658
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 657
    :cond_2
    if-eqz v6, :cond_3

    .line 658
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 660
    :cond_3
    return-object v10

    .line 654
    :catch_1
    move-exception v9

    .line 655
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getEventMember(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 672
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 673
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 674
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 676
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/EventMember;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 678
    if-eqz v6, :cond_2

    .line 679
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 680
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 681
    .local v11, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 682
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 683
    :cond_0
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 686
    .end local v8           #i:I
    .end local v11           #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 687
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 691
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 692
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 691
    :cond_2
    if-eqz v6, :cond_3

    .line 692
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 694
    :cond_3
    return-object v10

    .line 688
    :catch_1
    move-exception v9

    .line 689
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getFriendData([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "projection"
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "friend"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'F\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "friend_of"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 513
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 515
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/User;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 520
    return-object v6

    .line 517
    :catch_0
    move-exception v7

    .line 518
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public getFriendData(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 551
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "friend_of"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 554
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 556
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/User;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 557
    if-eqz v6, :cond_2

    .line 558
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 559
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 560
    .local v11, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 561
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 562
    :cond_0
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 565
    .end local v8           #i:I
    .end local v11           #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 566
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 570
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 571
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 570
    :cond_2
    if-eqz v6, :cond_3

    .line 571
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 573
    :cond_3
    return-object v10

    .line 567
    :catch_1
    move-exception v9

    .line 568
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getFriendIds(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 10
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
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

    .prologue
    .line 262
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 263
    .local v8, friendIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "friend"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'F\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "friend_of"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 267
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/User;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "user_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 270
    if-eqz v6, :cond_1

    .line 271
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 282
    :catch_0
    move-exception v7

    .line 283
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 288
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 287
    :cond_1
    if-eqz v6, :cond_2

    .line 288
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 290
    :cond_2
    return-object v8

    .line 284
    :catch_1
    move-exception v9

    .line 285
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getFriendInvite(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 706
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 707
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 708
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 710
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/FriendInvite;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 712
    if-eqz v6, :cond_2

    .line 713
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 714
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 715
    .local v11, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 716
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 717
    :cond_0
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 720
    .end local v8           #i:I
    .end local v11           #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 721
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 725
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 726
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 725
    :cond_2
    if-eqz v6, :cond_3

    .line 726
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 728
    :cond_3
    return-object v10

    .line 722
    :catch_1
    move-exception v9

    .line 723
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getFriendInvites(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 10
    .parameter "uid"
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
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

    .prologue
    .line 342
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 344
    .local v8, friendInvites:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 345
    .local v3, where:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND status = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 348
    :cond_0
    const/4 v6, 0x0

    .line 350
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/FriendInvite;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "from_user_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "from_user_name"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 354
    if-eqz v6, :cond_2

    .line 355
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 363
    :catch_0
    move-exception v7

    .line 364
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 369
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 368
    :cond_2
    if-eqz v6, :cond_3

    .line 369
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 371
    :cond_3
    return-object v8

    .line 365
    :catch_1
    move-exception v9

    .line 366
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getGroupInvite(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 740
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 741
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 742
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 744
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/GroupInvite;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 746
    if-eqz v6, :cond_2

    .line 747
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 748
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 749
    .local v11, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 750
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 751
    :cond_0
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 754
    .end local v8           #i:I
    .end local v11           #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 755
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 759
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 760
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 759
    :cond_2
    if-eqz v6, :cond_3

    .line 760
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 762
    :cond_3
    return-object v10

    .line 756
    :catch_1
    move-exception v9

    .line 757
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getGroupInvites(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 10
    .parameter "uid"
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
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

    .prologue
    .line 383
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 384
    .local v8, groupInvites:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, where:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND status = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 387
    :cond_0
    const/4 v6, 0x0

    .line 389
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/GroupInvite;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "group_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "group_name"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 393
    if-eqz v6, :cond_2

    .line 394
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 404
    :catch_0
    move-exception v7

    .line 405
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 410
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 409
    :cond_2
    if-eqz v6, :cond_3

    .line 410
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 412
    :cond_3
    return-object v8

    .line 406
    :catch_1
    move-exception v9

    .line 407
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getInsertEventMemberOperation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .locals 5
    .parameter "uid"
    .parameter "member"
    .parameter "eid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1674
    invoke-virtual {p0, p2, p1}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->getUserRowId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1675
    .local v0, memberRowId:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1676
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1677
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "sid"

    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    const-string v2, "uid"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    sget-object v2, Lcom/htc/socialnetwork/EventMember;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "sid"

    iget-object v4, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "uid"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "eid"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 1684
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getInsertEventOperation(Ljava/lang/String;Lcom/htc/socialnetwork/Event;J)Landroid/content/ContentProviderOperation$Builder;
    .locals 5
    .parameter "uid"
    .parameter "event"
    .parameter "last_check_time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1655
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->updateEventValues(Ljava/lang/String;Lcom/htc/socialnetwork/Event;J)Landroid/content/ContentValues;

    move-result-object v1

    .line 1657
    .local v1, values:Landroid/content/ContentValues;
    sget-object v2, Lcom/htc/socialnetwork/Event;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 1659
    .end local v1           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 1660
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v3, 0x7df

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1662
    .end local v0           #e:Landroid/database/sqlite/SQLiteConstraintException;
    :catch_1
    move-exception v0

    .line 1663
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v3, 0x7e4

    invoke-direct {v2, v3, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v2
.end method

.method public getInsertFriendInviteOperation(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 9
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x7df

    .line 2071
    if-nez p1, :cond_0

    .line 2072
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v5, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v5

    .line 2074
    :cond_0
    const-string v5, "uid"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2075
    .local v4, uid:Ljava/lang/String;
    const-string v5, "from_user_id"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2076
    .local v1, from_user_id:Ljava/lang/String;
    const-string v5, "from_user_name"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2078
    .local v2, from_user_name:Ljava/lang/String;
    const-string v5, "request_time"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2080
    .local v3, request_time:Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    .line 2082
    :cond_1
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mandatory fields not set at insertFriendInvite. uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , from_user_id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , from_user_name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , request_time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 2088
    :cond_2
    :try_start_0
    const-string v5, "status"

    const-string v6, "W"

    invoke-virtual {p1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2089
    const-string v5, "sid"

    iget-object v6, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2090
    sget-object v5, Lcom/htc/socialnetwork/FriendInvite;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    return-object v5

    .line 2092
    :catch_0
    move-exception v0

    .line 2093
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7e4

    invoke-direct {v5, v6, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v5

    .line 2094
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    .line 2095
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getInsertFriendOperation(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 2
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1047
    if-nez p1, :cond_0

    .line 1048
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    invoke-direct {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    .line 1050
    :cond_0
    const-string v0, "active_account"

    const-string v1, "N"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    const-string v0, "friend"

    const-string v1, "F"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    const-string v0, "selected"

    const-string v1, "Y"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->getInsertUserOperation(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getInsertGroupInviteOperation(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 9
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x7df

    .line 2217
    if-nez p1, :cond_0

    .line 2218
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v5, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v5

    .line 2220
    :cond_0
    const-string v5, "uid"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2221
    .local v4, uid:Ljava/lang/String;
    const-string v5, "group_id"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2222
    .local v1, group_id:Ljava/lang/String;
    const-string v5, "group_name"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2223
    .local v2, group_name:Ljava/lang/String;
    const-string v5, "request_time"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2225
    .local v3, request_time:Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    .line 2227
    :cond_1
    :try_start_0
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7df

    const-string v7, "mandatory fields not set at insertGroupInvite"

    invoke-direct {v5, v6, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2233
    :catch_0
    move-exception v0

    .line 2234
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7e4

    invoke-direct {v5, v6, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v5

    .line 2229
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_2
    :try_start_1
    const-string v5, "status"

    const-string v6, "W"

    invoke-virtual {p1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2230
    const-string v5, "sid"

    iget-object v6, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2231
    sget-object v5, Lcom/htc/socialnetwork/GroupInvite;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    return-object v5

    .line 2235
    :catch_1
    move-exception v0

    .line 2236
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getInsertOrUpdateAlbumOperation(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 12
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x7df

    .line 1271
    if-nez p1, :cond_0

    .line 1272
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v0, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    .line 1274
    :cond_0
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1275
    .local v11, uid:Ljava/lang/String;
    const-string v0, "album_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1276
    .local v6, album_id:Ljava/lang/String;
    const-string v0, "album_name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1277
    .local v7, album_name:Ljava/lang/String;
    const-string v0, "photo_count"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1278
    .local v10, photo_count:Ljava/lang/String;
    if-eqz v11, :cond_1

    if-eqz v6, :cond_1

    if-eqz v7, :cond_1

    if-nez v10, :cond_2

    .line 1280
    :cond_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const-string v1, "mandatory fields not set at insertAlbum"

    invoke-direct {v0, v2, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1288
    :cond_2
    const-string v0, "visible"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1289
    const-string v0, "visible"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1290
    const-string v0, "SocialNetworkDataHelper"

    const-string v1, "insert Album without insert visible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    :cond_3
    const-string v0, "sid"

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "album_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1296
    .local v3, where:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1298
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Album;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1299
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1300
    sget-object v0, Lcom/htc/socialnetwork/Album;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1312
    if-eqz v8, :cond_4

    .line 1313
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_0
    return-object v0

    .line 1303
    :cond_5
    :try_start_1
    sget-object v0, Lcom/htc/socialnetwork/Album;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1312
    if-eqz v8, :cond_4

    .line 1313
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1306
    :catch_0
    move-exception v9

    .line 1307
    .local v9, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1312
    .end local v9           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    .line 1313
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 1308
    :catch_1
    move-exception v9

    .line 1309
    .local v9, e:Landroid/database/sqlite/SQLiteConstraintException;
    :try_start_3
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public getInsertOrUpdateMsgUpdateOperation(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 11
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x7df

    .line 2342
    if-nez p1, :cond_0

    .line 2343
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v0, v4}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    .line 2345
    :cond_0
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2346
    .local v9, type:Ljava/lang/String;
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2347
    .local v10, uid:Ljava/lang/String;
    const-string v0, "count"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2348
    .local v6, count:Ljava/lang/String;
    if-eqz v9, :cond_1

    if-eqz v10, :cond_1

    if-nez v6, :cond_2

    .line 2349
    :cond_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mandatory fields not set at insertMsgUpdate. type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2353
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2356
    .local v3, where:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Update;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 2359
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2360
    sget-object v0, Lcom/htc/socialnetwork/Update;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2369
    if-eqz v7, :cond_3

    .line 2370
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_0
    return-object v0

    .line 2364
    :cond_4
    :try_start_3
    const-string v0, "sid"

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2365
    sget-object v0, Lcom/htc/socialnetwork/Update;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 2369
    if-eqz v7, :cond_3

    .line 2370
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 2372
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 2373
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 2369
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 2370
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public getInsertPhotoUpdateOperation(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 8
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x7df

    .line 1983
    if-nez p1, :cond_0

    .line 1984
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v4, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v4

    .line 1986
    :cond_0
    const-string v4, "uid"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1987
    .local v3, uid:Ljava/lang/String;
    const-string v4, "photo_id"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1988
    .local v2, photo_id:Ljava/lang/String;
    const-string v4, "last_update_time"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1990
    .local v1, last_update_time:Ljava/lang/String;
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    .line 1991
    :cond_1
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mandatory fields not set at insertPhotoUpdate. uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,photo_id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,last_update_time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 1996
    :cond_2
    const-string v4, "is_read"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1997
    const-string v4, "sid"

    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    :try_start_0
    sget-object v4, Lcom/htc/socialnetwork/Photo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    return-object v4

    .line 2001
    :catch_0
    move-exception v0

    .line 2002
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v5, 0x7e4

    invoke-direct {v4, v5, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v4

    .line 2003
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    .line 2004
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getInsertProfileUpdateOperation(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 8
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x7df

    .line 1916
    if-nez p1, :cond_0

    .line 1917
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v4, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v4

    .line 1919
    :cond_0
    const-string v4, "uid"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1920
    .local v3, uid:Ljava/lang/String;
    const-string v4, "type"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1921
    .local v2, type:Ljava/lang/String;
    const-string v4, "last_check_time"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1923
    .local v1, last_update_time:Ljava/lang/String;
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    .line 1924
    :cond_1
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mandatory fields not set at insertProfileUpdate. uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , last_update_time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 1929
    :cond_2
    const-string v4, "is_read"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1930
    const-string v4, "sid"

    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    :try_start_0
    sget-object v4, Lcom/htc/socialnetwork/ProfileUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    return-object v4

    .line 1934
    :catch_0
    move-exception v0

    .line 1935
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v5, 0x7e4

    invoke-direct {v4, v5, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v4

    .line 1936
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    .line 1937
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getInsertUserOperation(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 8
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x7df

    .line 1091
    if-nez p1, :cond_0

    .line 1092
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    const-string v5, "values not set at insertUser"

    invoke-direct {v4, v7, v5}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 1095
    :cond_0
    const-string v4, "user_id"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1096
    .local v2, user_id:Ljava/lang/String;
    const-string v4, "user_name"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1097
    .local v3, user_name:Ljava/lang/String;
    const-string v4, "profile_url"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1098
    .local v1, profile_url:Ljava/lang/String;
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    if-nez v1, :cond_2

    .line 1100
    :cond_1
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mandatory fields not set at insertUser. user_id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , serviceId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , user_name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , profile_url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 1106
    :cond_2
    const-string v4, "sid"

    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    :try_start_0
    sget-object v4, Lcom/htc/socialnetwork/User;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    return-object v4

    .line 1110
    :catch_0
    move-exception v0

    .line 1111
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v5, 0x7e4

    invoke-direct {v4, v5, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v4

    .line 1112
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    .line 1113
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getLastCheckTime(Ljava/lang/String;)J
    .locals 11
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 424
    const-wide/16 v9, 0x0

    .line 425
    .local v9, lastCheckTime:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 427
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 429
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/User;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "last_check_time"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 431
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v9

    .line 438
    :cond_0
    if-eqz v6, :cond_1

    .line 439
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 441
    :cond_1
    return-wide v9

    .line 433
    :catch_0
    move-exception v7

    .line 434
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 439
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 435
    :catch_1
    move-exception v8

    .line 436
    .local v8, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getLastCheckTimeOfAlbum(Ljava/lang/String;)J
    .locals 11
    .parameter "aid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 453
    const-wide/16 v9, 0x0

    .line 454
    .local v9, lastCheckTime:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 455
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 457
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Album;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "last_check_time"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 460
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v9

    .line 467
    :cond_0
    if-eqz v6, :cond_1

    .line 468
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 470
    :cond_1
    return-wide v9

    .line 462
    :catch_0
    move-exception v7

    .line 463
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 468
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 464
    :catch_1
    move-exception v8

    .line 465
    .local v8, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getMsgUpdate(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 774
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 775
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 776
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 778
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Update;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 780
    if-eqz v6, :cond_2

    .line 781
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 782
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 783
    .local v11, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 784
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 785
    :cond_0
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 788
    .end local v8           #i:I
    .end local v11           #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 789
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 793
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 794
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 793
    :cond_2
    if-eqz v6, :cond_3

    .line 794
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 796
    :cond_3
    return-object v10

    .line 790
    :catch_1
    move-exception v9

    .line 791
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getPhotoCacheData([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "projection"
    .parameter "aid"
    .parameter "sid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1420
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1421
    :cond_0
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    const-string v2, "aid and sid not set at getPhotoCacheData"

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1423
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1425
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1427
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/PhotoCache;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1432
    return-object v6

    .line 1429
    :catch_0
    move-exception v7

    .line 1430
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public getPhotoLastUpdateTime(Ljava/lang/String;)J
    .locals 12
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 482
    const-wide/16 v9, 0x0

    .line 483
    .local v9, lastUpdateTime:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 484
    .local v3, where:Ljava/lang/String;
    const-string v11, "last_update_time DESC LIMIT 1"

    .line 485
    .local v11, order:Ljava/lang/String;
    const/4 v6, 0x0

    .line 487
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Photo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "last_update_time"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "last_update_time DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 489
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v9

    .line 496
    :cond_0
    if-eqz v6, :cond_1

    .line 497
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 499
    :cond_1
    return-wide v9

    .line 491
    :catch_0
    move-exception v7

    .line 492
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 496
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 497
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 493
    :catch_1
    move-exception v8

    .line 494
    .local v8, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getPhotoUpdate(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 808
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 809
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 810
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 812
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Photo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 814
    if-eqz v6, :cond_2

    .line 815
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 816
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 817
    .local v11, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 818
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 819
    :cond_0
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 822
    .end local v8           #i:I
    .end local v11           #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 823
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 827
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 828
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 827
    :cond_2
    if-eqz v6, :cond_3

    .line 828
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 830
    :cond_3
    return-object v10

    .line 824
    :catch_1
    move-exception v9

    .line 825
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getProfileUpdate(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 842
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 843
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 844
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 846
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/ProfileUpdate;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 848
    if-eqz v6, :cond_2

    .line 849
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 850
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 851
    .local v11, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 852
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 853
    :cond_0
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 856
    .end local v8           #i:I
    .end local v11           #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 857
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 861
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 862
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 861
    :cond_2
    if-eqz v6, :cond_3

    .line 862
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 864
    :cond_3
    return-object v10

    .line 858
    :catch_1
    move-exception v9

    .line 859
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 9

    .prologue
    .line 1806
    const/4 v6, 0x0

    .line 1807
    .local v6, SID:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "service_class = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1809
    .local v3, where:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Service;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1811
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1812
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1813
    :cond_0
    if-eqz v7, :cond_1

    .line 1814
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1819
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v6

    .line 1815
    :catch_0
    move-exception v8

    .line 1817
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v0, "SocialNetworkDataHelper"

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1854
    const/4 v9, 0x0

    .line 1855
    .local v9, session_token:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "service_class = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1856
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1858
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Service;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "session_token"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1860
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1861
    const-string v0, "session_token"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 1869
    :cond_0
    if-eqz v6, :cond_1

    .line 1870
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1872
    :cond_1
    return-object v9

    .line 1864
    :catch_0
    move-exception v7

    .line 1865
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1869
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1870
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 1866
    :catch_1
    move-exception v8

    .line 1867
    .local v8, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getUpdateFriendInviteOperation(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 10
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x7df

    .line 2106
    if-nez p1, :cond_0

    .line 2107
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v0, v4}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    .line 2109
    :cond_0
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2110
    .local v9, uid:Ljava/lang/String;
    const-string v0, "from_user_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2111
    .local v8, from_user_id:Ljava/lang/String;
    if-eqz v9, :cond_1

    if-nez v8, :cond_2

    .line 2112
    :cond_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mandatory fields not set at updateFriendInvite. uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , from_user_id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2116
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "friend_of"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2119
    .local v3, where:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/User;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2121
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2122
    const-string v0, "status"

    const-string v1, "A"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2126
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "from_user_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2128
    sget-object v0, Lcom/htc/socialnetwork/FriendInvite;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0

    .line 2124
    :cond_3
    const-string v0, "status"

    const-string v1, "R"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2130
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 2131
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public getUpdateFriendOperation(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 7
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x7df

    .line 1064
    if-nez p1, :cond_0

    .line 1065
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v3, v6}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v3

    .line 1067
    :cond_0
    const-string v3, "user_id"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1068
    .local v1, user_id:Ljava/lang/String;
    const-string v3, "friend_of"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1069
    .local v0, friendOf:Ljava/lang/String;
    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 1070
    :cond_1
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mandatory fields not set at updateFriend. user_id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , friendOf: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1074
    :cond_2
    const-string v3, "active_account"

    const-string v4, "N"

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    const-string v3, "friend"

    const-string v4, "F"

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user_id = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "friend_of"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1078
    .local v2, where:Ljava/lang/String;
    invoke-virtual {p0, p1, v2}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->getUpdateUserOperation(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    return-object v3
.end method

.method public getUpdateGroupInviteOperation(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 7
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x7df

    .line 2247
    if-nez p1, :cond_0

    .line 2248
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v3, v6}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v3

    .line 2250
    :cond_0
    const-string v3, "uid"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2251
    .local v2, uid:Ljava/lang/String;
    const-string v3, "group_id"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2252
    .local v1, group_id:Ljava/lang/String;
    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    .line 2253
    :cond_1
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mandatory fields not set at updateGroupInvite. uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , group_id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 2258
    :cond_2
    :try_start_0
    sget-object v3, Lcom/htc/socialnetwork/GroupInvite;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2259
    :catch_0
    move-exception v0

    .line 2260
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7e4

    invoke-direct {v3, v4, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v3
.end method

.method public getUpdateUserOperation(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .locals 4
    .parameter "values"
    .parameter "where"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x7df

    .line 1126
    if-nez p1, :cond_0

    .line 1127
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v1, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v1

    .line 1129
    :cond_0
    :try_start_0
    sget-object v1, Lcom/htc/socialnetwork/User;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 1131
    :catch_0
    move-exception v0

    .line 1132
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7e4

    invoke-direct {v1, v2, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 1133
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    .line 1134
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getUserData([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "projection"
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 531
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 533
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/User;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 538
    return-object v6

    .line 535
    :catch_0
    move-exception v7

    .line 536
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public getUserRowId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "user_id"
    .parameter "friendOf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 223
    if-nez p1, :cond_0

    .line 224
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    const-string v2, "user_id and friendOf should not be null at getUserRowId"

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    const/4 v9, 0x0

    .line 227
    .local v9, uid:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, where:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND friend_of = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 232
    :cond_1
    const/4 v6, 0x0

    .line 234
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/User;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 236
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 243
    :cond_2
    if-eqz v6, :cond_3

    .line 244
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 249
    :cond_3
    return-object v9

    .line 238
    :catch_0
    move-exception v7

    .line 239
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 244
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 240
    :catch_1
    move-exception v8

    .line 241
    .local v8, iae:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7de

    invoke-direct {v0, v1, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public insertAlbum(Landroid/content/ContentValues;)Z
    .locals 13
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1197
    if-nez p1, :cond_0

    .line 1198
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    invoke-direct {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    .line 1200
    :cond_0
    const/4 v11, 0x0

    .line 1201
    .local v11, res:Landroid/net/Uri;
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1202
    .local v12, uid:Ljava/lang/String;
    const-string v0, "album_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1203
    .local v6, album_id:Ljava/lang/String;
    const-string v0, "album_name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1204
    .local v7, album_name:Ljava/lang/String;
    const-string v0, "photo_count"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1205
    .local v10, photo_count:Ljava/lang/String;
    if-eqz v12, :cond_1

    if-eqz v6, :cond_1

    if-eqz v7, :cond_1

    if-nez v10, :cond_2

    .line 1207
    :cond_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    const-string v2, "mandatory fields not set at insertAlbum"

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1210
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "album_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1212
    .local v3, where:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1214
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Album;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1215
    if-eqz v8, :cond_4

    .line 1216
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1217
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1218
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(uid,album_id) = ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") already exist"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1236
    :catch_0
    move-exception v9

    .line 1237
    .local v9, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 1222
    .end local v9           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_3
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1229
    :cond_4
    const-string v0, "visible"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1230
    const-string v0, "visible"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1231
    const-string v0, "SocialNetworkDataHelper"

    const-string v1, "insert Album without insert visible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    :cond_5
    const-string v0, "sid"

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Album;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 1242
    if-eqz v11, :cond_6

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1238
    :catch_1
    move-exception v9

    .line 1239
    .local v9, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1242
    .end local v9           #e:Landroid/database/sqlite/SQLiteConstraintException;
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertEvent(Ljava/lang/String;Lcom/htc/socialnetwork/Event;J)Z
    .locals 13
    .parameter "uid"
    .parameter "event"
    .parameter "last_check_time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1605
    const/4 v1, 0x0

    .line 1607
    .local v1, insertRes:Landroid/net/Uri;
    :try_start_0
    invoke-direct/range {p0 .. p4}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->updateEventValues(Ljava/lang/String;Lcom/htc/socialnetwork/Event;J)Landroid/content/ContentValues;

    move-result-object v12

    .line 1609
    .local v12, values:Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/socialnetwork/Event;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1612
    if-eqz v1, :cond_2

    .line 1613
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1615
    .local v7, cursor2:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1616
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1617
    .local v6, EID:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/htc/socialnetwork/Event;->getEventMembers()Ljava/util/List;

    move-result-object v11

    .line 1618
    .local v11, members:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v11, :cond_1

    .line 1619
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 1620
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->getUserRowId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1622
    .local v10, memberRowId:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 1623
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 1624
    const-string v0, "sid"

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v12, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    const-string v0, "eid"

    invoke-virtual {v12, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    const-string v0, "uid"

    invoke-virtual {v12, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/socialnetwork/EventMember;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1619
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1636
    .end local v6           #EID:Ljava/lang/String;
    .end local v9           #i:I
    .end local v10           #memberRowId:Ljava/lang/String;
    .end local v11           #members:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    if-eqz v7, :cond_2

    .line 1637
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1645
    .end local v7           #cursor2:Landroid/database/Cursor;
    :cond_2
    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 1639
    .end local v12           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 1640
    .local v8, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7df

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1642
    .end local v8           #e:Landroid/database/sqlite/SQLiteConstraintException;
    :catch_1
    move-exception v8

    .line 1643
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7e4

    invoke-direct {v0, v2, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 1645
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    .restart local v12       #values:Landroid/content/ContentValues;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public insertFriend(Landroid/content/ContentValues;)Z
    .locals 3
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1027
    if-nez p1, :cond_0

    .line 1028
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7df

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v1

    .line 1030
    :cond_0
    const-string v1, "active_account"

    const-string v2, "N"

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    const-string v1, "friend"

    const-string v2, "F"

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    const-string v1, "selected"

    const-string v2, "Y"

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->insertUser(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1038
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public insertFriendInvite(Landroid/content/ContentValues;)Z
    .locals 10
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x7df

    .line 2032
    if-nez p1, :cond_0

    .line 2033
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v6, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v6

    .line 2035
    :cond_0
    const-string v6, "uid"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2036
    .local v4, uid:Ljava/lang/String;
    const-string v6, "from_user_id"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2037
    .local v1, from_user_id:Ljava/lang/String;
    const-string v6, "from_user_name"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2039
    .local v2, from_user_name:Ljava/lang/String;
    const-string v6, "request_time"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2041
    .local v3, request_time:Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    .line 2043
    :cond_1
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mandatory fields not set at insertFriendInvite. uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , from_user_id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , from_user_name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , request_time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v9, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 2049
    :cond_2
    const-string v6, "status"

    const-string v7, "W"

    invoke-virtual {p1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2050
    const-string v6, "sid"

    iget-object v7, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    const/4 v5, 0x0

    .line 2053
    .local v5, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v6, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/htc/socialnetwork/FriendInvite;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 2062
    if-eqz v5, :cond_3

    const/4 v6, 0x1

    :goto_0
    return v6

    .line 2054
    :catch_0
    move-exception v0

    .line 2055
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v7, 0x7e4

    invoke-direct {v6, v7, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v6

    .line 2056
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    .line 2057
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v9, v7, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 2062
    .end local v0           #e:Landroid/database/sqlite/SQLiteConstraintException;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public insertGroupInvite(Landroid/content/ContentValues;)Z
    .locals 9
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x7df

    .line 2183
    if-nez p1, :cond_0

    .line 2184
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v6, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v6

    .line 2186
    :cond_0
    const-string v6, "uid"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2187
    .local v4, uid:Ljava/lang/String;
    const-string v6, "group_id"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2188
    .local v1, group_id:Ljava/lang/String;
    const-string v6, "group_name"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2189
    .local v2, group_name:Ljava/lang/String;
    const-string v6, "request_time"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2190
    .local v3, request_time:Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    .line 2192
    :cond_1
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    const-string v7, "mandatory fields not set at insertGroupInvite"

    invoke-direct {v6, v8, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 2195
    :cond_2
    const-string v6, "status"

    const-string v7, "W"

    invoke-virtual {p1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    const-string v6, "sid"

    iget-object v7, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2197
    const/4 v5, 0x0

    .line 2199
    .local v5, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v6, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/htc/socialnetwork/GroupInvite;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 2208
    if-eqz v5, :cond_3

    const/4 v6, 0x1

    :goto_0
    return v6

    .line 2200
    :catch_0
    move-exception v0

    .line 2201
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v7, 0x7e4

    invoke-direct {v6, v7, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v6

    .line 2202
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    .line 2203
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v8, v7, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 2208
    .end local v0           #e:Landroid/database/sqlite/SQLiteConstraintException;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public insertOrUpdateMsgUpdate(Landroid/content/ContentValues;)Z
    .locals 13
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 2300
    if-nez p1, :cond_0

    .line 2301
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    invoke-direct {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    .line 2303
    :cond_0
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2304
    .local v10, type:Ljava/lang/String;
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2305
    .local v11, uid:Ljava/lang/String;
    const-string v0, "count"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2306
    .local v6, count:Ljava/lang/String;
    if-eqz v10, :cond_1

    if-eqz v11, :cond_1

    if-nez v6, :cond_2

    .line 2307
    :cond_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mandatory fields not set at insertMsgUpdate. type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " , uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " , count: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2311
    :cond_2
    const/4 v12, 0x0

    .line 2312
    .local v12, uri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 2313
    .local v9, res:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2316
    .local v3, where:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Update;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2318
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2319
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Update;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 2328
    :goto_0
    if-eqz v7, :cond_3

    .line 2329
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2333
    :cond_3
    if-nez v12, :cond_4

    if-lez v9, :cond_6

    :cond_4
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 2323
    :cond_5
    const-string v0, "sid"

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2324
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Update;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    goto :goto_0

    .line 2330
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 2331
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 2333
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public insertPhotoCache(Landroid/content/ContentValues;)Z
    .locals 14
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1462
    if-nez p1, :cond_0

    .line 1463
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    invoke-direct {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    .line 1465
    :cond_0
    const/4 v11, 0x0

    .line 1466
    .local v11, res:Landroid/net/Uri;
    const-string v0, "photo_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1467
    .local v10, pid:Ljava/lang/String;
    const-string v0, "sid"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1468
    .local v12, service_id:Ljava/lang/String;
    const-string v0, "album_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1469
    .local v6, album_id:Ljava/lang/String;
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1470
    .local v13, url:Ljava/lang/String;
    const-string v0, "create_time"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1471
    .local v8, create_time:Ljava/lang/String;
    if-eqz v10, :cond_1

    if-eqz v12, :cond_1

    if-eqz v6, :cond_1

    if-eqz v13, :cond_1

    if-nez v8, :cond_2

    .line 1473
    :cond_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    const-string v2, "mandatory fields not set at insertPhotoCache"

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1475
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "photo_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "album_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1478
    .local v3, where:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1480
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/PhotoCache;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "photo_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1482
    if-eqz v7, :cond_4

    .line 1483
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1484
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1485
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(pid,sid,aid) = ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") already exist"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1492
    :catch_0
    move-exception v9

    .line 1493
    .local v9, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 1489
    .end local v9           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1491
    :cond_4
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/PhotoCache;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 1498
    if-eqz v11, :cond_5

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1494
    :catch_1
    move-exception v9

    .line 1495
    .local v9, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7df

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1498
    .end local v9           #e:Landroid/database/sqlite/SQLiteConstraintException;
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertPhotoCache([Landroid/content/ContentValues;)Z
    .locals 5
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x7df

    .line 1507
    if-nez p1, :cond_0

    .line 1508
    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v2, v4}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v2

    .line 1509
    :cond_0
    const/4 v0, 0x0

    .line 1511
    .local v0, count:I
    :try_start_0
    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/socialnetwork/PhotoCache;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 1518
    array-length v2, p1

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    .line 1512
    :catch_0
    move-exception v1

    .line 1513
    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v3, 0x7e4

    invoke-direct {v2, v3, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v2

    .line 1514
    .end local v1           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    .line 1515
    .local v1, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1518
    .end local v1           #e:Landroid/database/sqlite/SQLiteConstraintException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public insertPhotoUpdate(Landroid/content/ContentValues;)Z
    .locals 9
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/16 v8, 0x7df

    .line 1948
    if-nez p1, :cond_0

    .line 1949
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v5, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v5

    .line 1951
    :cond_0
    const-string v6, "uid"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1952
    .local v3, uid:Ljava/lang/String;
    const-string v6, "photo_id"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1953
    .local v2, photo_id:Ljava/lang/String;
    const-string v6, "last_update_time"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1955
    .local v1, last_update_time:Ljava/lang/String;
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    .line 1956
    :cond_1
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mandatory fields not set at insertPhotoUpdate. uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,photo_id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,last_update_time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 1961
    :cond_2
    const-string v6, "is_read"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1962
    const-string v6, "sid"

    iget-object v7, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    const/4 v4, 0x0

    .line 1965
    .local v4, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v6, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/htc/socialnetwork/Photo;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 1974
    if-eqz v4, :cond_3

    const/4 v5, 0x1

    :cond_3
    return v5

    .line 1966
    :catch_0
    move-exception v0

    .line 1967
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7e4

    invoke-direct {v5, v6, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v5

    .line 1968
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    .line 1969
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public insertProfileUpdate(Landroid/content/ContentValues;)Z
    .locals 9
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/16 v8, 0x7df

    .line 1881
    if-nez p1, :cond_0

    .line 1882
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v5, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v5

    .line 1884
    :cond_0
    const-string v6, "uid"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1885
    .local v3, uid:Ljava/lang/String;
    const-string v6, "type"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1886
    .local v2, type:Ljava/lang/String;
    const-string v6, "last_check_time"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1888
    .local v1, last_update_time:Ljava/lang/String;
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    .line 1889
    :cond_1
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mandatory fields not set at insertProfileUpdate. uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , last_update_time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 1894
    :cond_2
    const-string v6, "is_read"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1895
    const-string v6, "sid"

    iget-object v7, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    const/4 v4, 0x0

    .line 1898
    .local v4, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v6, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/htc/socialnetwork/ProfileUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 1907
    if-eqz v4, :cond_3

    const/4 v5, 0x1

    :cond_3
    return v5

    .line 1901
    :catch_0
    move-exception v0

    .line 1902
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7e4

    invoke-direct {v5, v6, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v5

    .line 1903
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    .line 1904
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected insertUser(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x7df

    .line 1741
    if-nez p1, :cond_0

    .line 1742
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const-string v6, "values not set at insertUser"

    invoke-direct {v5, v8, v6}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 1745
    :cond_0
    const-string v5, "user_id"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1746
    .local v3, user_id:Ljava/lang/String;
    const-string v5, "user_name"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1747
    .local v4, user_name:Ljava/lang/String;
    const-string v5, "profile_url"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1748
    .local v1, profile_url:Ljava/lang/String;
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    if-nez v1, :cond_2

    .line 1750
    :cond_1
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mandatory fields not set at insertUser. user_id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , serviceId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , user_name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , profile_url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 1756
    :cond_2
    const/4 v2, 0x0

    .line 1757
    .local v2, res:Landroid/net/Uri;
    const-string v5, "sid"

    iget-object v6, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    :try_start_0
    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/socialnetwork/User;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1766
    return-object v2

    .line 1760
    :catch_0
    move-exception v0

    .line 1761
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7e4

    invoke-direct {v5, v6, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v5

    .line 1762
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    .line 1763
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public querySyncStatus(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "serviceName"
    .parameter "type"
    .parameter "specificUser"

    .prologue
    .line 2513
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.socialnetwork.action.QUERY_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2514
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2515
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "SYNC_SERVICE"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2516
    const-string v2, "SYNC_TYPE"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2517
    const-string v2, "SYNC_USER"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2518
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2522
    const-string v2, "htc.opensense.permission.USE_BROADCAST"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2523
    return-void
.end method

.method public rawQuery(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "query"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 2476
    sget-object v0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->RAW_QUERY_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2480
    .local v1, queryUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 2482
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 2486
    return-object v6

    .line 2483
    :catch_0
    move-exception v7

    .line 2484
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7e4

    invoke-direct {v0, v2, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public removeActiveAccount()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 899
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 900
    .local v7, start:J
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "_id"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "user_id"

    aput-object v13, v11, v12

    invoke-virtual {p0, v11}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->getActiveUserData([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 902
    .local v0, c1:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 903
    .local v10, userId:Ljava/lang/String;
    const/4 v9, 0x0

    .line 904
    .local v9, uid:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 905
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 907
    :try_start_0
    const-string v11, "_id"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 908
    const-string v11, "user_id"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 914
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 916
    :cond_1
    if-eqz v10, :cond_2

    if-nez v9, :cond_3

    .line 917
    :cond_2
    const/4 v11, 0x0

    .line 929
    :goto_0
    return v11

    .line 910
    :catch_0
    move-exception v3

    .line 911
    .local v3, e:Ljava/lang/IllegalArgumentException;
    new-instance v11, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v12, 0x7de

    invoke-direct {v11, v12, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v11

    .line 919
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :cond_3
    const-string v11, ""

    invoke-virtual {p0, v11}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->updateSessionToken(Ljava/lang/String;)I

    move-result v6

    .line 920
    .local v6, session:I
    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->clearData()Z

    move-result v5

    .line 923
    .local v5, res:Z
    new-instance v4, Landroid/content/Intent;

    const-string v11, "com.htc.socialnetwork.action.ACTION_LOGOUT"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 924
    .local v4, intent:Landroid/content/Intent;
    const-string v11, "LOGOUT_USER"

    invoke-virtual {v4, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 925
    const-string v11, "LOGOUT_SERVICE"

    iget-object v12, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mClient:Lcom/htc/socialnetwork/SocialNetworkClient;

    invoke-virtual {v12}, Lcom/htc/socialnetwork/SocialNetworkClient;->getServiceName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 926
    iget-object v11, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mContext:Landroid/content/Context;

    const-string v12, "htc.opensense.permission.USE_BROADCAST"

    invoke-virtual {v11, v4, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 927
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v1, v11, v7

    .line 928
    .local v1, duration:J
    const-string v11, "SocialNetworkDataHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "removeActiveAccount duration: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    if-eqz v5, :cond_4

    if-lez v6, :cond_4

    const/4 v11, 0x1

    goto :goto_0

    :cond_4
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public setActiveAccount()Z
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 940
    const/4 v12, 0x0

    .line 942
    .local v12, loginUser:Lcom/htc/socialnetwork/User;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mClient:Lcom/htc/socialnetwork/SocialNetworkClient;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/socialnetwork/SocialNetworkClient;->getLoginUser()Lcom/htc/socialnetwork/User;
    :try_end_0
    .catch Lcom/htc/socialnetwork/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mClient:Lcom/htc/socialnetwork/SocialNetworkClient;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/socialnetwork/SocialNetworkClient;->getSessionToken()Ljava/lang/String;

    move-result-object v14

    .line 947
    .local v14, session_token:Ljava/lang/String;
    if-eqz v12, :cond_0

    if-nez v14, :cond_2

    .line 948
    :cond_0
    const-string v24, "SocialNetworkDataHelper"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "loginUser = null ? "

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    if-nez v12, :cond_1

    const/16 v23, 0x1

    :goto_0
    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, " , session_token: "

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    new-instance v23, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v24, 0x7df

    invoke-direct/range {v23 .. v24}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v23

    .line 943
    .end local v14           #session_token:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 944
    .local v4, ae:Lcom/htc/socialnetwork/AuthenticationException;
    new-instance v23, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v24, 0x7d0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v0, v1, v4}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v23

    .line 948
    .end local v4           #ae:Lcom/htc/socialnetwork/AuthenticationException;
    .restart local v14       #session_token:Ljava/lang/String;
    :cond_1
    const/16 v23, 0x0

    goto :goto_0

    .line 953
    :cond_2
    invoke-virtual {v12}, Lcom/htc/socialnetwork/User;->getId()Ljava/lang/String;

    move-result-object v17

    .line 954
    .local v17, user_id:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/htc/socialnetwork/User;->getUserName()Ljava/lang/String;

    move-result-object v18

    .line 955
    .local v18, user_name:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/htc/socialnetwork/User;->getFullName()Ljava/lang/String;

    move-result-object v10

    .line 956
    .local v10, full_name:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/htc/socialnetwork/User;->getFirstName()Ljava/lang/String;

    move-result-object v9

    .line 957
    .local v9, first_name:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/htc/socialnetwork/User;->getLastName()Ljava/lang/String;

    move-result-object v11

    .line 958
    .local v11, last_name:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/htc/socialnetwork/User;->getProfileUrl()Ljava/lang/String;

    move-result-object v13

    .line 959
    .local v13, profile_url:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/htc/socialnetwork/User;->getStatus()Ljava/lang/String;

    move-result-object v15

    .line 960
    .local v15, status:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/htc/socialnetwork/User;->getBuddyIconURL()Ljava/lang/String;

    move-result-object v7

    .line 961
    .local v7, buddyIconUrl:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/htc/socialnetwork/User;->getCurrentLocation()Ljava/lang/String;

    move-result-object v8

    .line 962
    .local v8, currentLocation:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/htc/socialnetwork/User;->getWorkLocation()Ljava/lang/String;

    move-result-object v22

    .line 963
    .local v22, workLocation:Ljava/lang/String;
    if-eqz v17, :cond_3

    if-eqz v18, :cond_3

    if-nez v13, :cond_4

    .line 964
    :cond_3
    new-instance v23, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v24, 0x7df

    invoke-direct/range {v23 .. v24}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v23

    .line 966
    :cond_4
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 967
    .local v19, values:Landroid/content/ContentValues;
    const-string v23, "user_id"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    const-string v23, "user_name"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    const-string v23, "full_name"

    if-nez v10, :cond_5

    const-string v10, ""

    .end local v10           #full_name:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    const-string v23, "first_name"

    if-nez v9, :cond_6

    const-string v9, ""

    .end local v9           #first_name:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    const-string v23, "last_name"

    if-nez v11, :cond_7

    const-string v11, ""

    .end local v11           #last_name:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    const-string v23, "profile_url"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    const-string v23, "friend_of"

    const-string v24, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    const-string v23, "active_account"

    const-string v24, "Y"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    const-string v23, "friend"

    const-string v24, "M"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const-string v23, "selected"

    const-string v24, "Y"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    const-string v23, "status"

    if-nez v15, :cond_8

    const-string v15, ""

    .end local v15           #status:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    const-string v23, "status_update_time"

    invoke-virtual {v12}, Lcom/htc/socialnetwork/User;->getStatusUpdateTime()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 979
    const-string v23, "current_location"

    if-nez v8, :cond_9

    const-string v8, ""

    .end local v8           #currentLocation:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    const-string v23, "work_location"

    if-nez v22, :cond_a

    const-string v22, ""

    .end local v22           #workLocation:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const-wide/16 v5, 0x0

    .line 983
    .local v5, buddyIconUpdateTime:J
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    const-string v24, "http"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_c

    .line 984
    :cond_b
    const-string v7, ""

    .line 986
    :cond_c
    const-string v23, "buddy_icon_url"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    const-string v23, "icon_update_time"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 988
    const-string v23, "profile_update_time"

    invoke-virtual {v12}, Lcom/htc/socialnetwork/User;->getProfileUpdateTime()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 989
    const-string v23, "last_check_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 991
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "sid = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mSid:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " AND "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "active_account"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " = \'Y\'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 994
    .local v20, where2:Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 995
    .local v3, activeAccountN:Landroid/content/ContentValues;
    const-string v23, "active_account"

    const-string v24, "N"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->updateUser(Landroid/content/ContentValues;Ljava/lang/String;)I

    .line 1002
    const-string v23, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->getUserRowId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1006
    .local v16, uid:Ljava/lang/String;
    if-eqz v16, :cond_d

    .line 1007
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "_id = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1008
    .local v21, where3:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->updateUser(Landroid/content/ContentValues;Ljava/lang/String;)I

    .line 1017
    .end local v21           #where3:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->updateSessionToken(Ljava/lang/String;)I

    .line 1018
    const/16 v23, 0x1

    return v23

    .line 1012
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->insertUser(Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1
.end method

.method public updateAlbum(Landroid/content/ContentValues;)Z
    .locals 8
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x7df

    .line 1326
    if-nez p1, :cond_0

    .line 1327
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v5, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v5

    .line 1329
    :cond_0
    const-string v5, "uid"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1330
    .local v3, uid:Ljava/lang/String;
    const-string v5, "album_id"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1331
    .local v0, album_id:Ljava/lang/String;
    if-eqz v3, :cond_1

    if-nez v0, :cond_2

    .line 1332
    :cond_1
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const-string v6, "mandatory fields not set at updateAlbum"

    invoke-direct {v5, v7, v6}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 1334
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "album_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1336
    .local v4, where:Ljava/lang/String;
    const/4 v2, -0x1

    .line 1338
    .local v2, res:I
    :try_start_0
    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/socialnetwork/Album;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p1, v4, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1342
    if-lez v2, :cond_3

    const/4 v5, 0x1

    :goto_0
    return v5

    .line 1339
    :catch_0
    move-exception v1

    .line 1340
    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7e4

    invoke-direct {v5, v6, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v5

    .line 1342
    .end local v1           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public updateFriend(Landroid/content/ContentValues;)Z
    .locals 8
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x7df

    .line 1146
    if-nez p1, :cond_0

    .line 1147
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v4, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v4

    .line 1149
    :cond_0
    const-string v4, "user_id"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1150
    .local v2, user_id:Ljava/lang/String;
    const-string v4, "friend_of"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1151
    .local v0, friendOf:Ljava/lang/String;
    if-eqz v2, :cond_1

    if-nez v0, :cond_2

    .line 1152
    :cond_1
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mandatory fields not set at updateFriend. user_id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , friendOf: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 1156
    :cond_2
    const-string v4, "active_account"

    const-string v5, "N"

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    const-string v4, "friend"

    const-string v5, "F"

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user_id = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "friend_of"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1160
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0, p1, v3}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->updateUser(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v1

    .line 1164
    .local v1, url:I
    if-lez v1, :cond_3

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public updateFriendInvite(Landroid/content/ContentValues;)Z
    .locals 13
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x7df

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 2142
    if-nez p1, :cond_0

    .line 2143
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v0, v4}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    .line 2145
    :cond_0
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2146
    .local v9, uid:Ljava/lang/String;
    const-string v0, "from_user_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2147
    .local v8, from_user_id:Ljava/lang/String;
    if-eqz v9, :cond_1

    if-nez v8, :cond_2

    .line 2148
    :cond_1
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mandatory fields not set at updateFriendInvite. uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , from_user_id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2152
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "friend_of"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2154
    .local v3, where:Ljava/lang/String;
    const/4 v10, -0x1

    .line 2156
    .local v10, url:I
    :try_start_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/User;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2158
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2159
    const-string v0, "status"

    const-string v1, "A"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2163
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "from_user_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2165
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/FriendInvite;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 2169
    if-eqz v6, :cond_3

    .line 2170
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2174
    :cond_3
    if-lez v10, :cond_5

    move v0, v11

    :goto_1
    return v0

    .line 2161
    :cond_4
    const-string v0, "status"

    const-string v1, "R"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2171
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 2172
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7e4

    invoke-direct {v0, v1, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_5
    move v0, v12

    .line 2174
    goto :goto_1
.end method

.method public updateGroupInvite(Landroid/content/ContentValues;)Z
    .locals 9
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x7df

    .line 2270
    if-nez p1, :cond_0

    .line 2271
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v5, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v5

    .line 2273
    :cond_0
    const-string v5, "uid"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2274
    .local v2, uid:Ljava/lang/String;
    const-string v5, "group_id"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2275
    .local v1, group_id:Ljava/lang/String;
    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    .line 2276
    :cond_1
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mandatory fields not set at updateGroupInvite. uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , group_id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 2280
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "group_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2282
    .local v4, where:Ljava/lang/String;
    const/4 v3, -0x1

    .line 2284
    .local v3, url:I
    :try_start_0
    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/socialnetwork/GroupInvite;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p1, v4, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2291
    if-lez v3, :cond_3

    const/4 v5, 0x1

    :goto_0
    return v5

    .line 2288
    :catch_0
    move-exception v0

    .line 2289
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7e4

    invoke-direct {v5, v6, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v5

    .line 2291
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized updateSessionToken(Ljava/lang/String;)I
    .locals 7
    .parameter "session_token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1831
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "service_class = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1832
    .local v3, where:Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1833
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "session_token"

    invoke-virtual {v2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1836
    :try_start_1
    iget-object v4, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/htc/socialnetwork/Service;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 1842
    .local v1, res:I
    monitor-exit p0

    return v1

    .line 1839
    .end local v1           #res:I
    :catch_0
    move-exception v0

    .line 1840
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_2
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v5, 0x7e4

    invoke-direct {v4, v5, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1831
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    .end local v2           #values:Landroid/content/ContentValues;
    .end local v3           #where:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized updateUser(Landroid/content/ContentValues;Ljava/lang/String;)I
    .locals 5
    .parameter "values"
    .parameter "where"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1715
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1716
    :try_start_0
    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v3, 0x7df

    invoke-direct {v2, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1715
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1717
    :cond_0
    const/4 v1, 0x0

    .line 1719
    .local v1, res:I
    :try_start_1
    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/socialnetwork/User;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, p2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    .line 1728
    monitor-exit p0

    return v1

    .line 1720
    :catch_0
    move-exception v0

    .line 1721
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_2
    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v3, 0x7e4

    invoke-direct {v2, v3, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v2

    .line 1722
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    .line 1723
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v3, 0x7df

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1725
    .end local v0           #e:Landroid/database/sqlite/SQLiteConstraintException;
    :catch_2
    move-exception v0

    .line 1726
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v3, 0x7e6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
