.class public Lcom/htc/sunnyCore/ObjectRecycler;
.super Ljava/lang/Object;
.source "ObjectRecycler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final locker:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field private recycledObjects:Lcom/htc/sunnyCore/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunnyCore/Queue",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 31
    .local p0, this:Lcom/htc/sunnyCore/ObjectRecycler;,"Lcom/htc/sunnyCore/ObjectRecycler<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "ObjectRecycler"

    iput-object v0, p0, Lcom/htc/sunnyCore/ObjectRecycler;->name:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunnyCore/ObjectRecycler;->recycledObjects:Lcom/htc/sunnyCore/Queue;

    .line 22
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunnyCore/ObjectRecycler;->locker:Ljava/lang/Integer;

    .line 32
    iput-object p1, p0, Lcom/htc/sunnyCore/ObjectRecycler;->name:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/htc/sunnyCore/Queue;

    invoke-direct {v0, p1}, Lcom/htc/sunnyCore/Queue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/ObjectRecycler;->recycledObjects:Lcom/htc/sunnyCore/Queue;

    .line 34
    return-void
.end method


# virtual methods
.method public obtain()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, this:Lcom/htc/sunnyCore/ObjectRecycler;,"Lcom/htc/sunnyCore/ObjectRecycler<TT;>;"
    const/4 v0, 0x0

    .line 46
    .local v0, object:Ljava/lang/Object;,"TT;"
    iget-object v2, p0, Lcom/htc/sunnyCore/ObjectRecycler;->locker:Ljava/lang/Integer;

    monitor-enter v2

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunnyCore/ObjectRecycler;->recycledObjects:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 49
    monitor-exit v2

    .line 51
    return-object v0

    .line 49
    .end local v0           #object:Ljava/lang/Object;,"TT;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recycle(Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Lcom/htc/sunnyCore/ObjectRecycler;,"Lcom/htc/sunnyCore/ObjectRecycler<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    if-nez p1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/htc/sunnyCore/ObjectRecycler;->locker:Ljava/lang/Integer;

    monitor-enter v1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunnyCore/ObjectRecycler;->recycledObjects:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/Queue;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/htc/sunnyCore/ObjectRecycler;->name:Ljava/lang/String;

    const-string v2, "recycledObjects.add() NG"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
