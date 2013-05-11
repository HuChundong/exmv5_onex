.class public final Lcom/google/android/mms/util/PduCache;
.super Lcom/google/android/mms/util/AbstractCache;
.source "PduCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/mms/util/AbstractCache",
        "<",
        "Ljava/lang/Long;",
        "Lcom/google/android/mms/pdu/GenericPdu;",
        ">;"
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x32

.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "PduCache"

.field private static sInstance:Lcom/google/android/mms/util/PduCache; = null

.field private static final serialVersionUID:J = -0x40c866a6eee1824cL


# instance fields
.field private final mUpdating:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 287
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/google/android/mms/util/AbstractCache;-><init>(I)V

    .line 288
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/util/PduCache;->mUpdating:Ljava/util/HashSet;

    .line 289
    return-void
.end method

.method public static final declared-synchronized getInstance()Lcom/google/android/mms/util/PduCache;
    .locals 2

    .prologue
    .line 342
    const-class v1, Lcom/google/android/mms/util/PduCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/mms/util/PduCache;->sInstance:Lcom/google/android/mms/util/PduCache;

    if-nez v0, :cond_0

    .line 346
    new-instance v0, Lcom/google/android/mms/util/PduCache;

    invoke-direct {v0}, Lcom/google/android/mms/util/PduCache;-><init>()V

    sput-object v0, Lcom/google/android/mms/util/PduCache;->sInstance:Lcom/google/android/mms/util/PduCache;

    .line 348
    :cond_0
    sget-object v0, Lcom/google/android/mms/util/PduCache;->sInstance:Lcom/google/android/mms/util/PduCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized isUpdating(Ljava/lang/Long;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/mms/util/PduCache;->mUpdating:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setUpdating(Ljava/lang/Long;Z)V
    .locals 1
    .parameter "key"
    .parameter "updating"

    .prologue
    .line 320
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/google/android/mms/util/PduCache;->mUpdating:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    :goto_0
    monitor-exit p0

    return-void

    .line 323
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/mms/util/PduCache;->mUpdating:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized get(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;
    .locals 1
    .parameter "uri"

    .prologue
    .line 356
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized invalidate(Ljava/lang/Long;)Lcom/google/android/mms/pdu/GenericPdu;
    .locals 1
    .parameter "key"

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/mms/util/PduCache;->mUpdating:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 301
    invoke-super {p0, p1}, Lcom/google/android/mms/util/AbstractCache;->invalidate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/GenericPdu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic invalidate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 275
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/mms/util/PduCache;->invalidate(Ljava/lang/Long;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized invalidateAll()V
    .locals 1

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/google/android/mms/util/AbstractCache;->invalidateAll()V

    .line 307
    iget-object v0, p0, Lcom/google/android/mms/util/PduCache;->mUpdating:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    monitor-exit p0

    return-void

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isUpdating(Landroid/net/Uri;)Z
    .locals 4
    .parameter "uri"

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 330
    .local v1, msgId:J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/mms/util/PduCache;->isUpdating(Ljava/lang/Long;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 333
    .end local v1           #msgId:J
    :goto_0
    monitor-exit p0

    return v3

    .line 331
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    goto :goto_0

    .line 329
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;
    .locals 1
    .parameter "uri"

    .prologue
    .line 352
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized put(Ljava/lang/Long;Lcom/google/android/mms/pdu/GenericPdu;)Lcom/google/android/mms/pdu/GenericPdu;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 293
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/google/android/mms/util/AbstractCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/GenericPdu;

    .line 294
    .local v0, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/google/android/mms/util/PduCache;->setUpdating(Ljava/lang/Long;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    monitor-exit p0

    return-object v0

    .line 293
    .end local v0           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 275
    check-cast p1, Ljava/lang/Long;

    .end local p1
    check-cast p2, Lcom/google/android/mms/pdu/GenericPdu;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/util/PduCache;->put(Ljava/lang/Long;Lcom/google/android/mms/pdu/GenericPdu;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized setUpdating(Landroid/net/Uri;Z)V
    .locals 3
    .parameter "uri"
    .parameter "updating"

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 313
    .local v0, msgId:J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/google/android/mms/util/PduCache;->setUpdating(Ljava/lang/Long;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .end local v0           #msgId:J
    :goto_0
    monitor-exit p0

    return-void

    .line 312
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 314
    :catch_0
    move-exception v2

    goto :goto_0
.end method
