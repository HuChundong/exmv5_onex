.class Lcom/htc/album/AlbumMain/LandingPageCacheThread$WriteCacheRunnable;
.super Ljava/lang/Object;
.source "LandingPageCacheThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/AlbumMain/LandingPageCacheThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WriteCacheRunnable"
.end annotation


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;",
            ">;"
        }
    .end annotation
.end field

.field private mUid:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;


# direct methods
.method public constructor <init>(Lcom/htc/album/AlbumMain/LandingPageCacheThread;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 384
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    iput-object p1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$WriteCacheRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$WriteCacheRunnable;->mList:Ljava/util/ArrayList;

    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$WriteCacheRunnable;->mUid:Ljava/lang/String;

    .line 385
    if-nez p2, :cond_0

    .line 387
    new-instance p2, Ljava/util/ArrayList;

    .end local p2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .restart local p2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    :cond_0
    iput-object p2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$WriteCacheRunnable;->mList:Ljava/util/ArrayList;

    .line 390
    iput-object p3, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$WriteCacheRunnable;->mUid:Ljava/lang/String;

    .line 391
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 395
    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$WriteCacheRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$WriteCacheRunnable;->mList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$WriteCacheRunnable;->mUid:Ljava/lang/String;

    #calls: Lcom/htc/album/AlbumMain/LandingPageCacheThread;->writeToFileCache(Ljava/util/List;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->access$600(Lcom/htc/album/AlbumMain/LandingPageCacheThread;Ljava/util/List;Ljava/lang/String;)V

    .line 396
    return-void
.end method
