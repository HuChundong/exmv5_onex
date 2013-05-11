.class public interface abstract Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;
.super Ljava/lang/Object;
.source "ICacheClientMgr.java"


# virtual methods
.method public abstract GetCacheFullPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;
.end method

.method public abstract GetCacheName(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;
.end method

.method public abstract asynAddCache(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Context;)V
.end method

.method public abstract asynUpdateCache(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
.end method

.method public abstract deInitCacheMgr(Landroid/content/Context;)V
.end method

.method public abstract initCacheMgr(Landroid/content/Context;)V
.end method

.method public abstract isStorageSpaceAvailable(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Z
.end method

.method public abstract updateExtraContent(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V
.end method
