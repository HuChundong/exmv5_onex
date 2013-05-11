.class public Lcom/htc/tracker/ObjectTracker;
.super Ljava/lang/Object;
.source "ObjectTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/tracker/ObjectTracker$Visitor;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/htc/tracker/ObjectTracker;


# instance fields
.field private mKey:Ljava/lang/Object;

.field private final mTempVisitors:Ljava/util/WeakHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashSet",
            "<",
            "Lcom/htc/tracker/ObjectTracker$Visitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisitors:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/WeakHashSet",
            "<",
            "Lcom/htc/tracker/ObjectTracker$Visitor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/tracker/ObjectTracker;->sInstance:Lcom/htc/tracker/ObjectTracker;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    .line 113
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    .line 114
    new-instance v0, Ljava/util/WeakHashSet;

    invoke-direct {v0}, Ljava/util/WeakHashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/tracker/ObjectTracker;->mTempVisitors:Ljava/util/WeakHashSet;

    .line 115
    return-void
.end method

.method public static getInstance()Lcom/htc/tracker/ObjectTracker;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/htc/tracker/ObjectTracker;->sInstance:Lcom/htc/tracker/ObjectTracker;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/htc/tracker/ObjectTracker;

    invoke-direct {v0}, Lcom/htc/tracker/ObjectTracker;-><init>()V

    sput-object v0, Lcom/htc/tracker/ObjectTracker;->sInstance:Lcom/htc/tracker/ObjectTracker;

    .line 120
    :cond_0
    sget-object v0, Lcom/htc/tracker/ObjectTracker;->sInstance:Lcom/htc/tracker/ObjectTracker;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized remove(Lcom/htc/tracker/ObjectTracker$Visitor;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 102
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/WeakHashSet;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_2
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 99
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setKey(Ljava/lang/Object;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized track(Lcom/htc/tracker/ObjectTracker$Visitor;)V
    .locals 4
    .parameter "obj"

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 55
    const/4 v1, 0x0

    .line 57
    .local v1, visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    iget-object v2, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    iget-object v3, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 58
    new-instance v1, Ljava/util/WeakHashSet;

    .end local v1           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    invoke-direct {v1}, Ljava/util/WeakHashSet;-><init>()V

    .line 59
    .restart local v1       #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    iget-object v2, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    iget-object v3, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/WeakHashSet;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v2, p0, Lcom/htc/tracker/ObjectTracker;->mTempVisitors:Ljava/util/WeakHashSet;

    invoke-virtual {v2}, Ljava/util/WeakHashSet;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/htc/tracker/ObjectTracker;->mTempVisitors:Ljava/util/WeakHashSet;

    invoke-virtual {v1, v2}, Ljava/util/WeakHashSet;->addAll(Ljava/util/Collection;)Z

    .line 67
    iget-object v2, p0, Lcom/htc/tracker/ObjectTracker;->mTempVisitors:Ljava/util/WeakHashSet;

    invoke-virtual {v2}, Ljava/util/WeakHashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v1           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 61
    .restart local v1       #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    iget-object v3, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    check-cast v1, Ljava/util/WeakHashSet;

    .restart local v1       #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    goto :goto_0

    .line 70
    .end local v1           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :cond_2
    iget-object v2, p0, Lcom/htc/tracker/ObjectTracker;->mTempVisitors:Ljava/util/WeakHashSet;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_2
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 54
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized track(Ljava/lang/Object;Lcom/htc/tracker/ObjectTracker$Visitor;)V
    .locals 6
    .parameter "key"
    .parameter "obj"

    .prologue
    .line 33
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 34
    const/4 v2, 0x0

    .line 36
    .local v2, visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :try_start_0
    iget-object v4, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 37
    new-instance v3, Ljava/util/WeakHashSet;

    invoke-direct {v3}, Ljava/util/WeakHashSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .end local v2           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    .local v3, visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :try_start_1
    iget-object v4, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 42
    .end local v3           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    .restart local v2       #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :goto_0
    :try_start_2
    invoke-virtual {v2, p2}, Ljava/util/WeakHashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 49
    .end local v2           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 40
    .restart local v2       #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :cond_1
    :try_start_3
    iget-object v4, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    iget-object v5, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/WeakHashSet;

    move-object v2, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, e:Ljava/lang/RuntimeException;
    :goto_2
    :try_start_4
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

    .line 46
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 33
    .end local v1           #e:Ljava/lang/RuntimeException;
    .end local v2           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 44
    .restart local v3       #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    .restart local v2       #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    goto :goto_2
.end method

.method public declared-synchronized visit(Ljava/lang/Object;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 80
    monitor-enter p0

    if-nez p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 83
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    iget-object v3, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/WeakHashSet;

    .line 85
    .local v2, visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    invoke-virtual {v2}, Ljava/util/WeakHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 86
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/tracker/ObjectTracker$Visitor;

    invoke-interface {v3}, Lcom/htc/tracker/ObjectTracker$Visitor;->visit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 90
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    .end local v2           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_1
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
