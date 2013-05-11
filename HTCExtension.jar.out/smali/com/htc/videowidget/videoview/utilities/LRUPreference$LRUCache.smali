.class public Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;
.super Ljava/lang/Object;
.source "LRUPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/utilities/LRUPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LRUCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final hashTableLoadFactor:F = 1.0f


# instance fields
.field public eldestEntry:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private maxEntries:I

.field final synthetic this$0:Lcom/htc/videowidget/videoview/utilities/LRUPreference;


# direct methods
.method public constructor <init>(Lcom/htc/videowidget/videoview/utilities/LRUPreference;I)V
    .locals 6
    .parameter
    .parameter "cacheSize"

    .prologue
    .line 209
    .local p0, this:Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;,"Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache<TK;TV;>;"
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;->this$0:Lcom/htc/videowidget/videoview/utilities/LRUPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;->eldestEntry:Ljava/lang/Object;

    .line 210
    iput p2, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;->maxEntries:I

    .line 219
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache$1;

    iget v1, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;->maxEntries:I

    add-int/lit8 v2, v1, 0x1

    const/high16 v3, 0x3f80

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache$1;-><init>(Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;IFZLcom/htc/videowidget/videoview/utilities/LRUPreference;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;->map:Ljava/util/LinkedHashMap;

    .line 238
    return-void
.end method

.method static synthetic access$000(Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 197
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;->maxEntries:I

    return v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 270
    .local p0, this:Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;,"Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    monitor-exit p0

    return-void

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, this:Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;,"Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAll()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, this:Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;,"Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p0, this:Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;,"Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized usedEntries()I
    .locals 1

    .prologue
    .line 280
    .local p0, this:Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;,"Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I
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
