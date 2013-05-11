.class public Lcom/android/camera/event/Event;
.super Lcom/android/camera/ThreadDependencyObject;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TEventArgs:",
        "Lcom/android/camera/event/EventArgs;",
        ">",
        "Lcom/android/camera/ThreadDependencyObject;"
    }
.end annotation


# static fields
.field public static final LOG_HANDLERS:I = 0x2

.field public static final LOG_RAISING:I = 0x1

.field private static m_DefaultLogFlags:I = 0x0

.field private static final m_EventMap:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/event/Event",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private static final printEventRaisingLogs:Z = true

.field private static final printHandlerLogs:Z


# instance fields
.field private m_BindingTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/event/Event",
            "<TTEventArgs;>;>;"
        }
    .end annotation
.end field

.field private final m_Handlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/event/EventHandler",
            "<TTEventArgs;>;>;"
        }
    .end annotation
.end field

.field private m_IsDestroyed:Z

.field private m_LogFlags:I

.field public final mode:Lcom/android/camera/event/EventMode;

.field public final name:Ljava/lang/String;

.field public final owner:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/camera/event/Event;->m_EventMap:Ljava/util/Hashtable;

    sget v0, Lcom/android/camera/event/Event;->m_DefaultLogFlags:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/camera/event/Event;->m_DefaultLogFlags:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/camera/event/EventMode;->Normal:Lcom/android/camera/event/EventMode;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/ThreadDependencyObject;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    sget v1, Lcom/android/camera/event/Event;->m_DefaultLogFlags:I

    iput v1, p0, Lcom/android/camera/event/Event;->m_LogFlags:I

    if-nez p1, :cond_0

    const-string v1, "owner"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    if-nez p2, :cond_1

    const-string v1, "name"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    if-nez p3, :cond_2

    const-string v1, "mode"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_2
    iput-object p3, p0, Lcom/android/camera/event/Event;->mode:Lcom/android/camera/event/EventMode;

    iput-object p2, p0, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/event/Event;->owner:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/event/Event;->m_EventMap:Ljava/util/Hashtable;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/camera/event/Event;->m_EventMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/camera/event/Event;->m_EventMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private bindToTarget(Lcom/android/camera/event/Event;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<TTEventArgs;>;)V"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "bindToTarget() - Cannot bind to self"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/event/Event;->getDependencyThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera/event/Event;->getDependencyThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "bindToTarget() - Cross-thread binding"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/event/Event;->m_IsDestroyed:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindToTarget() - Event \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is destroyed, cannot bind to target event"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] -----> ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/event/Event;->m_BindingTargets:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/event/Event;->m_BindingTargets:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Lcom/android/camera/event/Event;->m_BindingTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEventArgs:",
            "Lcom/android/camera/event/EventArgs;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/camera/event/Event",
            "<TTEventArgs;>;"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/event/EventMode;->Normal:Lcom/android/camera/event/EventMode;

    invoke-static {p0, p1, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEventArgs:",
            "Lcom/android/camera/event/EventArgs;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/android/camera/event/EventMode;",
            ")",
            "Lcom/android/camera/event/Event",
            "<TTEventArgs;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/camera/event/Event;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)V

    return-object v0
.end method

.method private destroy()V
    .locals 5

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/event/Event;->m_IsDestroyed:Z

    iget-object v2, p0, Lcom/android/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/camera/event/Event;->m_BindingTargets:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/event/Event;->m_BindingTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/android/camera/event/Event;->m_BindingTargets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/event/Event;

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] --/--> ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/event/Event;->m_BindingTargets:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public static destroyAllEvents(Ljava/lang/Object;)V
    .locals 4

    if-nez p0, :cond_0

    const-string v2, "owner"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_0
    sget-object v3, Lcom/android/camera/event/Event;->m_EventMap:Ljava/util/Hashtable;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/camera/event/Event;->m_EventMap:Ljava/util/Hashtable;

    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/event/Event;

    invoke-direct {v2}, Lcom/android/camera/event/Event;->destroy()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/camera/event/Event;->m_EventMap:Ljava/util/Hashtable;

    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static printStatusLogs()V
    .locals 7

    sget-object v5, Lcom/android/camera/event/Event;->m_EventMap:Ljava/util/Hashtable;

    monitor-enter v5

    const/4 v0, 0x0

    :try_start_0
    sget-object v4, Lcom/android/camera/event/Event;->m_EventMap:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    :cond_0
    const-string v3, "Event"

    const-string v4, "***** Event Status *****"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event owners : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcom/android/camera/event/Event;->m_EventMap:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Events       : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "************************"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private unbindFromTarget(Lcom/android/camera/event/Event;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<TTEventArgs;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/event/Event;->m_IsDestroyed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindFromTarget() - Event \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is destroyed, no need to unbind from target event"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] --/--> ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/event/Event;->m_BindingTargets:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/event/Event;->m_BindingTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public addHandler(Lcom/android/camera/event/EventHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/EventHandler",
            "<-TTEventArgs;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, "handler"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/event/Event;->threadAccessCheck()V

    iget-boolean v0, p0, Lcom/android/camera/event/Event;->m_IsDestroyed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is destroyed, cannot add handler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/event/Event;->m_LogFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] add handler \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final bind(Lcom/android/camera/event/Event;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<TTEventArgs;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, "sourceEvent"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/event/Event;->m_IsDestroyed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind() - Event \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is destroyed, cannot bind to source event"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-direct {p1, p0}, Lcom/android/camera/event/Event;->bindToTarget(Lcom/android/camera/event/Event;)V

    goto :goto_0
.end method

.method public final disableLogs(I)V
    .locals 2

    iget v0, p0, Lcom/android/camera/event/Event;->m_LogFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/event/Event;->m_LogFlags:I

    return-void
.end method

.method public final enableLogs(I)V
    .locals 1

    iget v0, p0, Lcom/android/camera/event/Event;->m_LogFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/event/Event;->m_LogFlags:I

    return-void
.end method

.method public final hasHandlers()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TTEventArgs;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/event/Event;->threadAccessCheck()V

    iget v4, p0, Lcom/android/camera/event/Event;->m_LogFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] rasing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v4, p0, Lcom/android/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/event/EventHandler;

    iget v4, p0, Lcom/android/camera/event/Event;->m_LogFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] call handler["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v1, p0, p1, p2}, Lcom/android/camera/event/EventHandler;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    iget-object v4, p0, Lcom/android/camera/event/Event;->mode:Lcom/android/camera/event/EventMode;

    sget-object v5, Lcom/android/camera/event/EventMode;->SingleHandler:Lcom/android/camera/event/EventMode;

    if-ne v4, v5, :cond_3

    instance-of v4, p2, Lcom/android/camera/event/ISingleHandlerEventArgs;

    if-eqz v4, :cond_3

    move-object v4, p2

    check-cast v4, Lcom/android/camera/event/ISingleHandlerEventArgs;

    invoke-interface {v4}, Lcom/android/camera/event/ISingleHandlerEventArgs;->isHandled()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/camera/event/Event;->m_LogFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    add-int/lit8 v4, v0, -0x1

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] interrupted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v4, p0, Lcom/android/camera/event/Event;->m_BindingTargets:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/camera/event/Event;->m_BindingTargets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_1
    if-ltz v2, :cond_5

    iget-object v4, p0, Lcom/android/camera/event/Event;->m_BindingTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/event/Event;

    iget-boolean v4, v3, Lcom/android/camera/event/Event;->m_IsDestroyed:Z

    if-nez v4, :cond_4

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/camera/event/Event;->m_BindingTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    iget v4, p0, Lcom/android/camera/event/Event;->m_LogFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] raised"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method public removeHandler(Lcom/android/camera/event/EventHandler;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/EventHandler",
            "<-TTEventArgs;>;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string v2, "handler"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/event/Event;->threadAccessCheck()V

    iget-boolean v3, p0, Lcom/android/camera/event/Event;->m_IsDestroyed:Z

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v3, p0, Lcom/android/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/android/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/event/EventHandler;

    if-ne v0, p1, :cond_4

    iget v2, p0, Lcom/android/camera/event/Event;->m_LogFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] remove handler \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' (index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lcom/android/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public final unbind(Lcom/android/camera/event/Event;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<TTEventArgs;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, "sourceEvent"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/event/Event;->m_IsDestroyed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbind() - Event \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is destroyed, no need to unbind from source event"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-direct {p1, p0}, Lcom/android/camera/event/Event;->unbindFromTarget(Lcom/android/camera/event/Event;)V

    goto :goto_0
.end method
