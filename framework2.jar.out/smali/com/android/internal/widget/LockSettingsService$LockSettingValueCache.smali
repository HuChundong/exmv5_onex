.class Lcom/android/internal/widget/LockSettingsService$LockSettingValueCache;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LockSettingValueCache"
.end annotation


# instance fields
.field private final mValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 418
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 420
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/LockSettingsService$LockSettingValueCache;->mValues:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/LockSettingsService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/android/internal/widget/LockSettingsService$LockSettingValueCache;-><init>()V

    return-void
.end method


# virtual methods
.method public readFromCache(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "key"
    .parameter "userId"

    .prologue
    .line 423
    monitor-enter p0

    .line 425
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, cacheKeyForRead:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/widget/LockSettingsService$LockSettingValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    iget-object v1, p0, Lcom/android/internal/widget/LockSettingsService$LockSettingValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit p0

    .line 429
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "no.contain.key"

    monitor-exit p0

    goto :goto_0

    .line 431
    .end local v0           #cacheKeyForRead:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public writeToCache(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "key"
    .parameter "value"
    .parameter "userId"

    .prologue
    .line 435
    monitor-enter p0

    .line 437
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, cacheKeyForWrite:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/widget/LockSettingsService$LockSettingValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    monitor-exit p0

    .line 440
    return-void

    .line 439
    .end local v0           #cacheKeyForWrite:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
