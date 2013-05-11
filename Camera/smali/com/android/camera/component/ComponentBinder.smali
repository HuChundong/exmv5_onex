.class public abstract Lcom/android/camera/component/ComponentBinder;
.super Ljava/lang/Object;
.source "ComponentBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/ComponentBinder$BindingInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TSourceComponent:",
        "Ljava/lang/Object;",
        "TTargetComponent:",
        "Lcom/android/camera/component/Component;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ComponentBinder"


# instance fields
.field private m_EventBindingInfo:[Lcom/android/camera/component/ComponentBinder$BindingInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/android/camera/component/ComponentBinder$BindingInfo",
            "<",
            "Lcom/android/camera/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m_IsReleased:Z

.field private m_PropertyBindingInfo:[Lcom/android/camera/component/ComponentBinder$BindingInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/android/camera/component/ComponentBinder$BindingInfo",
            "<",
            "Lcom/android/camera/property/Property;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SourceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTSourceComponent;>;"
        }
    .end annotation
.end field

.field private m_SourceComponent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTSourceComponent;"
        }
    .end annotation
.end field

.field private m_SourceComponentManager:Lcom/android/camera/component/ComponentManager;

.field private final m_SourceComponentOwner:Lcom/android/camera/component/IComponentOwner;

.field private final m_SourceEventHandler:Lcom/android/camera/event/EventHandler;

.field private final m_SourcePropertyChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;

.field private final m_TargetComponent:Lcom/android/camera/component/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTTargetComponent;"
        }
    .end annotation
.end field

.field private final m_TargetPropertyOwnerKey:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/camera/component/IComponentOwner;Ljava/lang/Class;Lcom/android/camera/component/Component;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/component/IComponentOwner;",
            "Ljava/lang/Class",
            "<TTSourceComponent;>;TTTargetComponent;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/camera/component/ComponentBinder$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ComponentBinder$1;-><init>(Lcom/android/camera/component/ComponentBinder;)V

    iput-object v0, p0, Lcom/android/camera/component/ComponentBinder;->m_SourceEventHandler:Lcom/android/camera/event/EventHandler;

    new-instance v0, Lcom/android/camera/component/ComponentBinder$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ComponentBinder$2;-><init>(Lcom/android/camera/component/ComponentBinder;)V

    iput-object v0, p0, Lcom/android/camera/component/ComponentBinder;->m_SourcePropertyChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;

    if-nez p1, :cond_0

    const-string v0, "srcComponentOwner"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    const-string v0, "srcClass"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    const-string v0, "targetComponent"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    iput-object p2, p0, Lcom/android/camera/component/ComponentBinder;->m_SourceClass:Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/camera/component/ComponentBinder;->m_SourceComponentOwner:Lcom/android/camera/component/IComponentOwner;

    iput-object p3, p0, Lcom/android/camera/component/ComponentBinder;->m_TargetComponent:Lcom/android/camera/component/Component;

    iput-object p4, p0, Lcom/android/camera/component/ComponentBinder;->m_TargetPropertyOwnerKey:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ComponentBinder;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/ComponentBinder;)Lcom/android/camera/component/Component;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ComponentBinder;->m_TargetComponent:Lcom/android/camera/component/Component;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/ComponentBinder;Ljava/lang/Object;Lcom/android/camera/component/Component;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/ComponentBinder;->bindToSourceComponent(Ljava/lang/Object;Lcom/android/camera/component/Component;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/component/ComponentBinder;Ljava/lang/Object;[Lcom/android/camera/component/ComponentBinder$BindingInfo;[Lcom/android/camera/component/ComponentBinder$BindingInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/component/ComponentBinder;->unbindFromSourceComponent(Ljava/lang/Object;[Lcom/android/camera/component/ComponentBinder$BindingInfo;[Lcom/android/camera/component/ComponentBinder$BindingInfo;)V

    return-void
.end method

.method private declared-synchronized bindToSourceComponent(Ljava/lang/Object;Lcom/android/camera/component/Component;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTSourceComponent;TTTargetComponent;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/component/ComponentBinder;->getPropertyBindingInfo(Ljava/lang/Object;Lcom/android/camera/component/Component;)[Lcom/android/camera/component/ComponentBinder$BindingInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/component/ComponentBinder;->m_PropertyBindingInfo:[Lcom/android/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p0, Lcom/android/camera/component/ComponentBinder;->m_PropertyBindingInfo:[Lcom/android/camera/component/ComponentBinder$BindingInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/component/ComponentBinder;->m_PropertyBindingInfo:[Lcom/android/camera/component/ComponentBinder$BindingInfo;

    array-length v3, v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/component/ComponentBinder;->m_PropertyBindingInfo:[Lcom/android/camera/component/ComponentBinder$BindingInfo;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/android/camera/component/ComponentBinder;->m_PropertyBindingInfo:[Lcom/android/camera/component/ComponentBinder$BindingInfo;

    aget-object v2, v3, v0

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/camera/component/ComponentBinder$BindingInfo;->source:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/camera/component/ComponentBinder$BindingInfo;->source:Ljava/lang/Object;

    check-cast v3, Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/component/ComponentBinder;->m_SourcePropertyChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/component/ComponentBinder;->getEventBindingInfo(Ljava/lang/Object;Lcom/android/camera/component/Component;)[Lcom/android/camera/component/ComponentBinder$BindingInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/component/ComponentBinder;->m_EventBindingInfo:[Lcom/android/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p0, Lcom/android/camera/component/ComponentBinder;->m_EventBindingInfo:[Lcom/android/camera/component/ComponentBinder$BindingInfo;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/component/ComponentBinder;->m_EventBindingInfo:[Lcom/android/camera/component/ComponentBinder$BindingInfo;

    array-length v3, v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/component/ComponentBinder;->m_EventBindingInfo:[Lcom/android/camera/component/ComponentBinder$BindingInfo;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v3, p0, Lcom/android/camera/component/ComponentBinder;->m_EventBindingInfo:[Lcom/android/camera/component/ComponentBinder$BindingInfo;

    aget-object v1, v3, v0

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/android/camera/component/ComponentBinder$BindingInfo;->source:Ljava/lang/Object;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/camera/component/ComponentBinder$BindingInfo;->source:Ljava/lang/Object;

    check-cast v3, Lcom/android/camera/event/Event;

    iget-object v4, p0, Lcom/android/camera/component/ComponentBinder;->m_SourceEventHandler:Lcom/android/camera/event/EventHandler;

    invoke-virtual {v3, v4}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private unbindFromSourceComponent(Ljava/lang/Object;[Lcom/android/camera/component/ComponentBinder$BindingInfo;[Lcom/android/camera/component/ComponentBinder$BindingInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTSourceComponent;[",
            "Lcom/android/camera/component/ComponentBinder$BindingInfo",
            "<",
            "Lcom/android/camera/event/Event;",
            ">;[",
            "Lcom/android/camera/component/ComponentBinder$BindingInfo",
            "<",
            "Lcom/android/camera/property/Property;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_1

    array-length v3, p3

    if-lez v3, :cond_1

    array-length v3, p3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget-object v2, p3, v0

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/camera/component/ComponentBinder$BindingInfo;->source:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/camera/component/ComponentBinder$BindingInfo;->source:Ljava/lang/Object;

    check-cast v3, Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/component/ComponentBinder;->m_SourcePropertyChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->removeChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    array-length v3, p2

    if-lez v3, :cond_3

    array-length v3, p2

    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-ltz v0, :cond_3

    aget-object v1, p2, v0

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/android/camera/component/ComponentBinder$BindingInfo;->source:Ljava/lang/Object;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/camera/component/ComponentBinder$BindingInfo;->source:Ljava/lang/Object;

    check-cast v3, Lcom/android/camera/event/Event;

    iget-object v4, p0, Lcom/android/camera/component/ComponentBinder;->m_SourceEventHandler:Lcom/android/camera/event/EventHandler;

    invoke-virtual {v3, v4}, Lcom/android/camera/event/Event;->removeHandler(Lcom/android/camera/event/EventHandler;)Z

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public final declared-synchronized bindToSourceComponent()Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/component/ComponentBinder;->m_TargetComponent:Lcom/android/camera/component/Component;

    invoke-virtual {v1}, Lcom/android/camera/component/Component;->isDependencyThread()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalAccessError;

    const-string v2, "Cross-thread access"

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/android/camera/component/ComponentBinder;->m_IsReleased:Z

    if-eqz v1, :cond_1

    const-string v1, "ComponentBinder"

    const-string v3, "bindToSourceComponent() - Binder is released"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    const-string v1, "ComponentBinder"

    const-string v4, "bindToSourceComponent()"

    invoke-static {v1, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/component/ComponentBinder;->m_TargetComponent:Lcom/android/camera/component/Component;

    invoke-virtual {v1}, Lcom/android/camera/component/Component;->hasHandler()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ComponentBinder"

    const-string v3, "bindToSourceComponent() - No handler for target component"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/camera/component/ComponentBinder;->m_SourceComponentManager:Lcom/android/camera/component/ComponentManager;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/component/ComponentBinder;->m_SourceComponentOwner:Lcom/android/camera/component/IComponentOwner;

    invoke-interface {v1}, Lcom/android/camera/component/IComponentOwner;->getComponentManager()Lcom/android/camera/component/ComponentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/ComponentBinder;->m_SourceComponentManager:Lcom/android/camera/component/ComponentManager;

    iget-object v1, p0, Lcom/android/camera/component/ComponentBinder;->m_SourceComponentManager:Lcom/android/camera/component/ComponentManager;

    if-nez v1, :cond_4

    const-string v1, "ComponentBinder"

    const-string v3, "bindToSourceComponent() - Cannot get source component manager"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/camera/component/ComponentBinder;->m_SourceComponentManager:Lcom/android/camera/component/ComponentManager;

    iget-object v4, p0, Lcom/android/camera/component/ComponentBinder;->m_SourceClass:Ljava/lang/Class;

    invoke-virtual {v1, v4}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;

    if-nez v1, :cond_5

    const-string v1, "ComponentBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindToSourceComponent() - Cannot find component : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/component/ComponentBinder;->m_SourceClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/component/Component;

    new-instance v4, Lcom/android/camera/component/ComponentBinder$3;

    invoke-direct {v4, p0, v0}, Lcom/android/camera/component/ComponentBinder$3;-><init>(Lcom/android/camera/component/ComponentBinder;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Lcom/android/camera/component/Component;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "ComponentBinder"

    const-string v3, "bindToSourceComponent() - Cannot bind to source component"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v2

    goto/16 :goto_0

    :cond_6
    move v1, v3

    goto/16 :goto_0
.end method

.method protected abstract getEventBindingInfo(Ljava/lang/Object;Lcom/android/camera/component/Component;)[Lcom/android/camera/component/ComponentBinder$BindingInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTSourceComponent;TTTargetComponent;)[",
            "Lcom/android/camera/component/ComponentBinder$BindingInfo",
            "<",
            "Lcom/android/camera/event/Event;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getPropertyBindingInfo(Ljava/lang/Object;Lcom/android/camera/component/Component;)[Lcom/android/camera/component/ComponentBinder$BindingInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTSourceComponent;TTTargetComponent;)[",
            "Lcom/android/camera/component/ComponentBinder$BindingInfo",
            "<",
            "Lcom/android/camera/property/Property;",
            ">;"
        }
    .end annotation
.end method

.method public getSourceComponent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTSourceComponent;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;

    return-object v0
.end method

.method protected onSourceEventReceived(Ljava/lang/Object;Lcom/android/camera/event/Event;Lcom/android/camera/event/EventArgs;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTSourceComponent;",
            "Lcom/android/camera/event/Event",
            "<*>;",
            "Lcom/android/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/camera/component/ComponentBinder;->m_EventBindingInfo:[Lcom/android/camera/component/ComponentBinder$BindingInfo;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "ComponentBinder"

    const-string v3, "onSourceEventReceived() - Event : "

    iget-object v4, p2, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/camera/component/ComponentBinder;->m_EventBindingInfo:[Lcom/android/camera/component/ComponentBinder$BindingInfo;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/android/camera/component/ComponentBinder;->m_EventBindingInfo:[Lcom/android/camera/component/ComponentBinder$BindingInfo;

    aget-object v1, v2, v0

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/camera/component/ComponentBinder$BindingInfo;->source:Ljava/lang/Object;

    if-ne v2, p2, :cond_2

    iget-object v2, v1, Lcom/android/camera/component/ComponentBinder$BindingInfo;->target:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/camera/component/ComponentBinder$BindingInfo;->target:Ljava/lang/Object;

    check-cast v2, Lcom/android/camera/event/Event;

    invoke-virtual {v2, p0, p3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method protected onSourcePropertyChanged(Ljava/lang/Object;Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTSourceComponent;",
            "Lcom/android/camera/property/Property;",
            "Lcom/android/camera/property/PropertyChangedEventArgs;",
            ")V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/camera/component/ComponentBinder;->m_PropertyBindingInfo:[Lcom/android/camera/component/ComponentBinder$BindingInfo;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "ComponentBinder"

    const-string v3, "onSourcePropertyChanged() - Property : "

    iget-object v4, p2, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/camera/component/ComponentBinder;->m_PropertyBindingInfo:[Lcom/android/camera/component/ComponentBinder$BindingInfo;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/android/camera/component/ComponentBinder;->m_PropertyBindingInfo:[Lcom/android/camera/component/ComponentBinder$BindingInfo;

    aget-object v1, v2, v0

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/camera/component/ComponentBinder$BindingInfo;->source:Ljava/lang/Object;

    if-ne v2, p2, :cond_2

    iget-object v2, v1, Lcom/android/camera/component/ComponentBinder$BindingInfo;->target:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/camera/component/ComponentBinder$BindingInfo;->target:Ljava/lang/Object;

    check-cast v2, Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/component/ComponentBinder;->m_TargetPropertyOwnerKey:Ljava/lang/Object;

    iget-object v4, p3, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public final declared-synchronized release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ComponentBinder;->m_TargetComponent:Lcom/android/camera/component/Component;

    invoke-virtual {v0}, Lcom/android/camera/component/Component;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Cross-thread access"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/component/ComponentBinder;->m_IsReleased:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/camera/component/ComponentBinder;->unbindFromSourceComponent()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/ComponentBinder;->m_IsReleased:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized unbindFromSourceComponent()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/camera/component/ComponentBinder;->m_TargetComponent:Lcom/android/camera/component/Component;

    invoke-virtual {v3}, Lcom/android/camera/component/Component;->isDependencyThread()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalAccessError;

    const-string v4, "Cross-thread access"

    invoke-direct {v3, v4}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_0
    :try_start_1
    iget-boolean v3, p0, Lcom/android/camera/component/ComponentBinder;->m_IsReleased:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;

    if-eqz v3, :cond_1

    const-string v3, "ComponentBinder"

    const-string v4, "unbindFromSourceComponent()"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/component/ComponentBinder;->m_EventBindingInfo:[Lcom/android/camera/component/ComponentBinder$BindingInfo;

    iget-object v1, p0, Lcom/android/camera/component/ComponentBinder;->m_PropertyBindingInfo:[Lcom/android/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p0, Lcom/android/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;

    check-cast v3, Lcom/android/camera/component/Component;

    new-instance v4, Lcom/android/camera/component/ComponentBinder$4;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/android/camera/component/ComponentBinder$4;-><init>(Lcom/android/camera/component/ComponentBinder;Ljava/lang/Object;[Lcom/android/camera/component/ComponentBinder$BindingInfo;[Lcom/android/camera/component/ComponentBinder$BindingInfo;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/component/Component;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "ComponentBinder"

    const-string v4, "unbindFromSourceComponent() - Cannot unbind from source component"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/component/ComponentBinder;->m_EventBindingInfo:[Lcom/android/camera/component/ComponentBinder$BindingInfo;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/component/ComponentBinder;->m_PropertyBindingInfo:[Lcom/android/camera/component/ComponentBinder$BindingInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
