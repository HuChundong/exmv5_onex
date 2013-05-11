.class Lcom/android/camera/component/Component$2;
.super Ljava/lang/Object;
.source "Component.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/Component;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/event/EventHandler",
        "<",
        "Lcom/android/camera/OneValueEventArgs",
        "<",
        "Lcom/android/camera/component/Component;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/Component;


# direct methods
.method constructor <init>(Lcom/android/camera/component/Component;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/Component$2;->this$0:Lcom/android/camera/component/Component;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/OneValueEventArgs;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/component/Component;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/component/Component;",
            ">;)V"
        }
    .end annotation

    iget-object v4, p0, Lcom/android/camera/component/Component$2;->this$0:Lcom/android/camera/component/Component;

    #getter for: Lcom/android/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/camera/component/Component;->access$200(Lcom/android/camera/component/Component;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p3, Lcom/android/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/component/Component;

    iget-object v4, p0, Lcom/android/camera/component/Component$2;->this$0:Lcom/android/camera/component/Component;

    #getter for: Lcom/android/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/camera/component/Component;->access$200(Lcom/android/camera/component/Component;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/component/Component$MonitoredComponentInfo;

    iget-object v4, v3, Lcom/android/camera/component/Component$MonitoredComponentInfo;->component:Lcom/android/camera/component/Component;

    if-ne v4, v1, :cond_2

    iget-object v4, p0, Lcom/android/camera/component/Component$2;->this$0:Lcom/android/camera/component/Component;

    invoke-virtual {v4, v1}, Lcom/android/camera/component/Component;->onMonitoredComponentRemoved(Lcom/android/camera/component/Component;)V

    iget-object v4, p0, Lcom/android/camera/component/Component$2;->this$0:Lcom/android/camera/component/Component;

    #getter for: Lcom/android/camera/component/Component;->m_Owner:Lcom/android/camera/component/IComponentOwner;
    invoke-static {v4}, Lcom/android/camera/component/Component;->access$300(Lcom/android/camera/component/Component;)Lcom/android/camera/component/IComponentOwner;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/component/IComponentOwner;->getComponentManager()Lcom/android/camera/component/ComponentManager;

    move-result-object v4

    iget-object v5, v3, Lcom/android/camera/component/Component$MonitoredComponentInfo;->componentClass:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/Component;

    if-nez v0, :cond_3

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/camera/component/Component$MonitoredComponentInfo;->component:Lcom/android/camera/component/Component;

    goto :goto_0

    :cond_3
    iput-object v0, v3, Lcom/android/camera/component/Component$MonitoredComponentInfo;->component:Lcom/android/camera/component/Component;

    iget-object v4, p0, Lcom/android/camera/component/Component$2;->this$0:Lcom/android/camera/component/Component;

    invoke-virtual {v4, v0}, Lcom/android/camera/component/Component;->onMonitoredComponentAdded(Lcom/android/camera/component/Component;)V

    goto :goto_0
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/OneValueEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/Component$2;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/OneValueEventArgs;)V

    return-void
.end method
