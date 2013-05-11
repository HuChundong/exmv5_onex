.class public Lcom/htc/opensense2/album/cache/InkStrokeCachePool;
.super Lcom/htc/opensense2/album/cache/InkCachePoolBase;
.source "InkStrokeCachePool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense2/album/cache/InkCachePoolBase",
        "<",
        "Lcom/htc/opensense2/album/cache/InkCacheTask;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/cache/InkCachePoolBase;-><init>(I)V

    .line 20
    return-void
.end method
