.class public Lcom/android/camera/component/ComponentManager;
.super Lcom/android/camera/ThreadDependencyObject;
.source "ComponentManager.java"


# static fields
.field private static final PRINT_ADD_REMOVE_LOGS:Z

.field private static final PRINT_INIT_LOGS:Z


# instance fields
.field public final componentAddedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/component/Component;",
            ">;>;"
        }
    .end annotation
.end field

.field public final componentRemovedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/component/Component;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m_Components:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/camera/component/Component;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsAutoInitEnabled:Z

.field private m_IsReleased:Z

.field private final m_Owner:Lcom/android/camera/component/IComponentOwner;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget v0, Lcom/android/camera/debug/Debugger;->GENERIC_DEBUG_LEVEL:I

    if-lt v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/camera/component/ComponentManager;->PRINT_INIT_LOGS:Z

    sget v0, Lcom/android/camera/debug/Debugger;->GENERIC_DEBUG_LEVEL:I

    if-lt v0, v1, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/camera/component/ComponentManager;->PRINT_ADD_REMOVE_LOGS:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/camera/component/IComponentOwner;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/camera/ThreadDependencyObject;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "owner is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "owner is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/camera/component/ComponentManager;->m_Owner:Lcom/android/camera/component/IComponentOwner;

    new-instance v0, Lcom/android/camera/event/Event;

    const-string v1, "ComponentManager.ComponentAdded"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/component/ComponentManager;->componentAddedEvent:Lcom/android/camera/event/Event;

    iget-object v0, p0, Lcom/android/camera/component/ComponentManager;->componentAddedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v0, v2}, Lcom/android/camera/event/Event;->disableLogs(I)V

    new-instance v0, Lcom/android/camera/event/Event;

    const-string v1, "ComponentManager.ComponentRemoved"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/component/ComponentManager;->componentRemovedEvent:Lcom/android/camera/event/Event;

    iget-object v0, p0, Lcom/android/camera/component/ComponentManager;->componentRemovedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v0, v2}, Lcom/android/camera/event/Event;->disableLogs(I)V

    return-void
.end method

.method private deinitializeComponent(Lcom/android/camera/component/Component;)V
    .locals 3

    sget-boolean v0, Lcom/android/camera/component/ComponentManager;->PRINT_INIT_LOGS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deinitializing component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/component/Component;->deinitialize()V

    return-void
.end method

.method private initializeComponent(Lcom/android/camera/component/Component;)V
    .locals 3

    sget-boolean v0, Lcom/android/camera/component/ComponentManager;->PRINT_INIT_LOGS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/component/Component;->initialize()V

    return-void
.end method


# virtual methods
.method public addComponent(Lcom/android/camera/component/Component;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/component/ComponentManager;->threadAccessCheck()V

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "component is NULL in addComponent()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "component is NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/component/Component;->getOwner()Lcom/android/camera/component/IComponentOwner;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "component is already owned"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "component is already owned"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/component/Component;->getDependencyThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/component/ComponentManager;->getDependencyThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "component is created from another thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "component is created from another thread"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/component/ComponentManager;->m_IsReleased:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Component manager is released"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_3
    iget-object v2, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Component \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' has been added before"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Component \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' has been added before"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_4
    :try_start_1
    sget-boolean v1, Lcom/android/camera/component/ComponentManager;->PRINT_ADD_REMOVE_LOGS:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/camera/component/ComponentManager;->m_Owner:Lcom/android/camera/component/IComponentOwner;

    invoke-virtual {p1, v1}, Lcom/android/camera/component/Component;->setOwner(Lcom/android/camera/component/IComponentOwner;)V

    iget-boolean v1, p0, Lcom/android/camera/component/ComponentManager;->m_IsAutoInitEnabled:Z

    if-eqz v1, :cond_6

    invoke-direct {p0, p1}, Lcom/android/camera/component/ComponentManager;->initializeComponent(Lcom/android/camera/component/Component;)V

    :cond_6
    iget-object v1, p0, Lcom/android/camera/component/ComponentManager;->componentAddedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1}, Lcom/android/camera/event/Event;->hasHandlers()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/component/ComponentManager;->componentAddedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/OneValueEventArgs;

    invoke-direct {v3, p1}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    :cond_7
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final containsComponent(Ljava/lang/String;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deinitializeComponents()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/component/ComponentManager;->threadAccessCheck()V

    iget-object v3, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/Component;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ComponentManager;->deinitializeComponent(Lcom/android/camera/component/Component;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public enableAutoInitialization(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/ComponentManager;->m_IsAutoInitEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera/component/ComponentManager;->m_IsAutoInitEnabled:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/ComponentManager;->initializeComponents()V

    :cond_0
    return-void
.end method

.method public getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/camera/component/Component;

    move-result-object v0

    return-object v0
.end method

.method public getComponent(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/camera/component/Component;
    .locals 5

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "name is NULL in getComponent()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "name is NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v3, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/Component;

    if-eqz v0, :cond_1

    monitor-exit v3

    move-object v2, v0

    :goto_0
    return-object v2

    :cond_1
    iget-boolean v4, p0, Lcom/android/camera/component/ComponentManager;->m_IsReleased:Z

    if-eqz v4, :cond_2

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/component/ComponentManager;->isDependencyThread()Z

    move-result v4

    if-nez v4, :cond_3

    monitor-exit v3

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/camera/component/ComponentManager;->m_Owner:Lcom/android/camera/component/IComponentOwner;

    invoke-interface {v4}, Lcom/android/camera/component/IComponentOwner;->getComponentFactory()Lcom/android/camera/component/ComponentFactory;

    move-result-object v1

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual {v1, p1}, Lcom/android/camera/component/ComponentFactory;->isOnDemandComponent(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    monitor-exit v3

    goto :goto_0

    :cond_5
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/camera/component/ComponentFactory;->createComponent(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/camera/component/Component;

    move-result-object v0

    if-nez v0, :cond_6

    monitor-exit v3

    goto :goto_0

    :cond_6
    iget-boolean v2, p0, Lcom/android/camera/component/ComponentManager;->m_IsAutoInitEnabled:Z

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lcom/android/camera/component/Component;->initialize()V

    :cond_7
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    goto :goto_0
.end method

.method public final getComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v2, "clazz"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_0
    iget-object v3, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/Component;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v3

    :goto_0
    return-object v0

    :cond_2
    monitor-exit v3

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final getComponents(Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v3, "clazz"

    invoke-static {v3}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/Component;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public getOwner()Lcom/android/camera/component/IComponentOwner;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ComponentManager;->m_Owner:Lcom/android/camera/component/IComponentOwner;

    return-object v0
.end method

.method public initializeComponents()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/component/ComponentManager;->threadAccessCheck()V

    iget-boolean v2, p0, Lcom/android/camera/component/ComponentManager;->m_IsReleased:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "initializeComponents() - Component manager is released"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/Component;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ComponentManager;->initializeComponent(Lcom/android/camera/component/Component;)V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/component/ComponentManager;->threadAccessCheck()V

    iget-boolean v0, p0, Lcom/android/camera/component/ComponentManager;->m_IsReleased:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/ComponentManager;->removeComponents()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/ComponentManager;->m_IsReleased:Z

    invoke-static {p0}, Lcom/android/camera/event/Event;->destroyAllEvents(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removeComponent(Lcom/android/camera/component/Component;)Z
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/ComponentManager;->threadAccessCheck()V

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "component is NULL in addComponent()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "component is NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-boolean v3, p0, Lcom/android/camera/component/ComponentManager;->m_IsReleased:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Component manager is released"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/Component;

    if-ne v0, p1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/camera/component/ComponentManager;->deinitializeComponent(Lcom/android/camera/component/Component;)V

    sget-boolean v2, Lcom/android/camera/component/ComponentManager;->PRINT_ADD_REMOVE_LOGS:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing component "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/camera/component/Component;->setOwner(Lcom/android/camera/component/IComponentOwner;)V

    iget-object v2, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/camera/component/ComponentManager;->componentRemovedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v2}, Lcom/android/camera/event/Event;->hasHandlers()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/component/ComponentManager;->componentRemovedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/OneValueEventArgs;

    invoke-direct {v4, p1}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    :cond_3
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public removeComponents()V
    .locals 10

    invoke-virtual {p0}, Lcom/android/camera/component/ComponentManager;->threadAccessCheck()V

    iget-boolean v6, p0, Lcom/android/camera/component/ComponentManager;->m_IsReleased:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v7, "Component manager is released"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    iget-object v6, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v0, v5

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    iget-object v6, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/component/Component;

    invoke-direct {p0, v1}, Lcom/android/camera/component/ComponentManager;->deinitializeComponent(Lcom/android/camera/component/Component;)V

    sget-boolean v6, Lcom/android/camera/component/ComponentManager;->PRINT_ADD_REMOVE_LOGS:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing component "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/camera/component/Component;->setOwner(Lcom/android/camera/component/IComponentOwner;)V

    iget-object v6, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/camera/component/ComponentManager;->componentRemovedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v6}, Lcom/android/camera/event/Event;->hasHandlers()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/camera/component/ComponentManager;->componentRemovedEvent:Lcom/android/camera/event/Event;

    new-instance v8, Lcom/android/camera/OneValueEventArgs;

    invoke-direct {v8, v1}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, p0, v8}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method
