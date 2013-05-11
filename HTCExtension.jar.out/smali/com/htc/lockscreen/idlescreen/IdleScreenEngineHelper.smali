.class public Lcom/htc/lockscreen/idlescreen/IdleScreenEngineHelper;
.super Ljava/lang/Object;
.source "IdleScreenEngineHelper.java"


# instance fields
.field private mActiveEngines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineHelper;->mActiveEngines:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addEngine(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V
    .locals 2
    .parameter "engine"

    .prologue
    .line 29
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineHelper;->mActiveEngines:Ljava/util/List;

    monitor-enter v1

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineHelper;->mActiveEngines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    monitor-exit v1

    .line 32
    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createEngine()Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public dispatchConfiguration(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "config"

    .prologue
    .line 49
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineHelper;->mActiveEngines:Ljava/util/List;

    monitor-enter v2

    .line 50
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineHelper;->mActiveEngines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineHelper;->mActiveEngines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v1, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    monitor-exit v2

    .line 54
    return-void

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAll()V
    .locals 3

    .prologue
    .line 61
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineHelper;->mActiveEngines:Ljava/util/List;

    monitor-enter v2

    .line 62
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineHelper;->mActiveEngines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineHelper;->mActiveEngines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->detach()V

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineHelper;->mActiveEngines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 66
    monitor-exit v2

    .line 67
    return-void

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeEngine(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V
    .locals 2
    .parameter "engine"

    .prologue
    .line 39
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineHelper;->mActiveEngines:Ljava/util/List;

    monitor-enter v1

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineHelper;->mActiveEngines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 41
    monitor-exit v1

    .line 42
    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
