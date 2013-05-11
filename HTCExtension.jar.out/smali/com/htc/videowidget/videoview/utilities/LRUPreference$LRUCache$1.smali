.class Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache$1;
.super Ljava/util/LinkedHashMap;
.source "LRUPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;-><init>(Lcom/htc/videowidget/videoview/utilities/LRUPreference;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$1:Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;

.field final synthetic val$this$0:Lcom/htc/videowidget/videoview/utilities/LRUPreference;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;IFZLcom/htc/videowidget/videoview/utilities/LRUPreference;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter

    .prologue
    .line 221
    .local p0, this:Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache$1;,"Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache.1;"
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache$1;->this$1:Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;

    iput-object p5, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache$1;->val$this$0:Lcom/htc/videowidget/videoview/utilities/LRUPreference;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, this:Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache$1;,"Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache.1;"
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache$1;->size()I

    move-result v1

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache$1;->this$1:Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;

    #getter for: Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;->maxEntries:I
    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;->access$000(Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;)I

    move-result v2

    if-le v1, v2, :cond_1

    const/4 v0, 0x1

    .line 231
    .local v0, bRemove:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 233
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache$1;->this$1:Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;->eldestEntry:Ljava/lang/Object;

    .line 235
    :cond_0
    return v0

    .line 230
    .end local v0           #bRemove:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
