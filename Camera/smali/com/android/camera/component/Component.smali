.class public abstract Lcom/android/camera/component/Component;
.super Lcom/android/camera/ThreadDependencyObject;
.source "Component.java"

# interfaces
.implements Lcom/android/camera/IAsyncOperationExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/Component$MonitoredComponentInfo;,
        Lcom/android/camera/component/Component$MessageHandler;
    }
.end annotation


# static fields
.field private static final MSG_INVOKE:I = -0xa

.field protected static final SHOW_MESSAGE_LOGS:Z = true

.field public static final STATE_DEINITIALIZED:I = 0x4

.field public static final STATE_DEINITIALIZING:I = 0x3

.field public static final STATE_INITIALIZING:I = 0x1

.field public static final STATE_NEW:I = 0x0

.field public static final STATE_RUNNING:I = 0x2


# instance fields
.field private final m_ComponentAddedEventHandler:Lcom/android/camera/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/EventHandler",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/component/Component;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m_ComponentRemovedEventHandler:Lcom/android/camera/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/EventHandler",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/component/Component;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m_Handler:Lcom/android/camera/component/Component$MessageHandler;

.field private m_MonitoredComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/component/Component$MonitoredComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final m_Name:Ljava/lang/String;

.field private m_Owner:Lcom/android/camera/component/IComponentOwner;

.field private m_PrintMessageLogs:Z

.field private m_State:I

.field protected final propertyOwnerKey:Ljava/lang/Object;

.field protected final triggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/trigger/TriggerBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/component/Component;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/ThreadDependencyObject;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/Component;->m_State:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/Component;->m_PrintMessageLogs:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/camera/component/Component$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/Component$1;-><init>(Lcom/android/camera/component/Component;)V

    iput-object v0, p0, Lcom/android/camera/component/Component;->m_ComponentAddedEventHandler:Lcom/android/camera/event/EventHandler;

    new-instance v0, Lcom/android/camera/component/Component$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/Component$2;-><init>(Lcom/android/camera/component/Component;)V

    iput-object v0, p0, Lcom/android/camera/component/Component;->m_ComponentRemovedEventHandler:Lcom/android/camera/event/EventHandler;

    iput-object p1, p0, Lcom/android/camera/component/Component;->m_Name:Ljava/lang/String;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "name == null in .ctor"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Lcom/android/camera/component/Component$MessageHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/component/Component$MessageHandler;-><init>(Lcom/android/camera/component/Component;)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/component/Component;->m_Handler:Lcom/android/camera/component/Component$MessageHandler;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/component/Component;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/Component;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/Component;->m_PrintMessageLogs:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/Component;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/Component;)Lcom/android/camera/component/IComponentOwner;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/Component;->m_Owner:Lcom/android/camera/component/IComponentOwner;

    return-object v0
.end method


# virtual methods
.method public final deinitialize()V
    .locals 6

    const/4 v5, 0x4

    invoke-virtual {p0}, Lcom/android/camera/component/Component;->threadAccessCheck()V

    iget v3, p0, Lcom/android/camera/component/Component;->m_State:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iput v5, p0, Lcom/android/camera/component/Component;->m_State:I

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/camera/component/Component;->m_State:I

    invoke-virtual {p0}, Lcom/android/camera/component/Component;->deinitializeOverride()V

    iget-object v3, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/trigger/TriggerBase;

    invoke-virtual {v2}, Lcom/android/camera/trigger/TriggerBase;->destroy()V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/component/Component;->m_Owner:Lcom/android/camera/component/IComponentOwner;

    invoke-interface {v3}, Lcom/android/camera/component/IComponentOwner;->getComponentManager()Lcom/android/camera/component/ComponentManager;

    move-result-object v0

    iget-object v3, v0, Lcom/android/camera/component/ComponentManager;->componentAddedEvent:Lcom/android/camera/event/Event;

    iget-object v4, p0, Lcom/android/camera/component/Component;->m_ComponentAddedEventHandler:Lcom/android/camera/event/EventHandler;

    invoke-virtual {v3, v4}, Lcom/android/camera/event/Event;->removeHandler(Lcom/android/camera/event/EventHandler;)Z

    iget-object v3, v0, Lcom/android/camera/component/ComponentManager;->componentRemovedEvent:Lcom/android/camera/event/Event;

    iget-object v4, p0, Lcom/android/camera/component/Component;->m_ComponentRemovedEventHandler:Lcom/android/camera/event/EventHandler;

    invoke-virtual {v3, v4}, Lcom/android/camera/event/Event;->removeHandler(Lcom/android/camera/event/EventHandler;)Z

    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;

    :cond_2
    iget-object v3, p0, Lcom/android/camera/component/Component;->m_Handler:Lcom/android/camera/component/Component$MessageHandler;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/component/Component;->m_Handler:Lcom/android/camera/component/Component$MessageHandler;

    invoke-virtual {v3}, Lcom/android/camera/component/Component$MessageHandler;->release()V

    :cond_3
    iput v5, p0, Lcom/android/camera/component/Component;->m_State:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected deinitializeOverride()V
    .locals 0

    return-void
.end method

.method public final disableMessageLogs()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/Component;->m_PrintMessageLogs:Z

    return-void
.end method

.method public final enableMessageLogs()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/Component;->m_PrintMessageLogs:Z

    return-void
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/Component;->m_Handler:Lcom/android/camera/component/Component$MessageHandler;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/Component;->m_Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOwner()Lcom/android/camera/component/IComponentOwner;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/Component;->m_Owner:Lcom/android/camera/component/IComponentOwner;

    return-object v0
.end method

.method public final getState()I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/Component;->m_State:I

    return v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, -0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final hasHandler()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/Component;->m_Handler:Lcom/android/camera/component/Component$MessageHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final hasMessages(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/Component;->m_Handler:Lcom/android/camera/component/Component$MessageHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/Component;->m_Handler:Lcom/android/camera/component/Component$MessageHandler;

    invoke-virtual {v0, p1}, Lcom/android/camera/component/Component$MessageHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final hasMessages(Lcom/android/camera/component/Component;I)Z
    .locals 3

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "target == null in hasMessages()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "target is NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/component/Component;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final initialize()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/component/Component;->threadAccessCheck()V

    iget v0, p0, Lcom/android/camera/component/Component;->m_State:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/component/Component;->m_State:I

    invoke-virtual {p0}, Lcom/android/camera/component/Component;->initializeOverride()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/component/Component;->m_State:I

    invoke-virtual {p0}, Lcom/android/camera/component/Component;->onInitialized()V

    goto :goto_0
.end method

.method protected initializeOverride()V
    .locals 0

    return-void
.end method

.method public final invokeAsync(Lcom/android/camera/component/Component;Ljava/lang/Runnable;)Z
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/camera/component/Component;->invokeAsync(Lcom/android/camera/component/Component;Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public final invokeAsync(Lcom/android/camera/component/Component;Ljava/lang/Runnable;J)Z
    .locals 4

    if-nez p1, :cond_0

    const-string v2, "target"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_0
    if-nez p2, :cond_1

    const-string v2, "r"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/component/Component;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v2, -0xa

    invoke-static {v0, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-gtz v2, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    :goto_0
    return v2

    :cond_2
    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "invokeAsync() - No target handler"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final invokeAsync(Ljava/lang/Runnable;)Z
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p0, p1, v0, v1}, Lcom/android/camera/component/Component;->invokeAsync(Lcom/android/camera/component/Component;Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public final invokeAsync(Ljava/lang/Runnable;J)Z
    .locals 1

    invoke-virtual {p0, p0, p1, p2, p3}, Lcom/android/camera/component/Component;->invokeAsync(Lcom/android/camera/component/Component;Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public final isMessageLogsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/Component;->m_PrintMessageLogs:Z

    return v0
.end method

.method public final isRunning()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/component/Component;->m_State:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onInitialized()V
    .locals 0

    return-void
.end method

.method protected onMonitoredComponentAdded(Lcom/android/camera/component/Component;)V
    .locals 0

    return-void
.end method

.method protected onMonitoredComponentRemoved(Lcom/android/camera/component/Component;)V
    .locals 0

    return-void
.end method

.method protected final removeMessages(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/Component;->m_Handler:Lcom/android/camera/component/Component$MessageHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/Component;->m_Handler:Lcom/android/camera/component/Component$MessageHandler;

    invoke-virtual {v0, p1}, Lcom/android/camera/component/Component$MessageHandler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method protected final removeMessages(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/Component;->m_Handler:Lcom/android/camera/component/Component$MessageHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/Component;->m_Handler:Lcom/android/camera/component/Component$MessageHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/component/Component$MessageHandler;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected final removeMessages(Lcom/android/camera/component/Component;I)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "target == null in removeMessages()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "target is NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/component/Component;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method protected final sendMessage(Lcom/android/camera/component/Component;I)Z
    .locals 9

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move v8, v3

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/Component;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method

.method protected final sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z
    .locals 9

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/Component;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method

.method protected final sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;J)Z
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/Component;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method

.method protected final sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z
    .locals 6

    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "target == null in sendMessage()"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "target is NULL"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/component/Component;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "there is not handler belongs to target component ("

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

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    if-eqz p8, :cond_2

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    const-wide/16 v3, 0x0

    cmp-long v3, p6, v3

    if-gtz v3, :cond_4

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    :goto_0
    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot send message to target component ("

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

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v2

    :cond_4
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3, p6, p7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    goto :goto_0
.end method

.method protected final sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;Z)Z
    .locals 9

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/Component;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method

.method protected final sendMessage(Lcom/android/camera/component/Component;IJ)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/component/Component;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method protected final sendMessage(Lcom/android/camera/component/Component;IJZ)Z
    .locals 9

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move-wide v6, p3

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/Component;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method

.method protected final sendMessage(Lcom/android/camera/component/Component;IZ)Z
    .locals 9

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/Component;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method

.method final setOwner(Lcom/android/camera/component/IComponentOwner;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/Component;->m_Owner:Lcom/android/camera/component/IComponentOwner;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/camera/component/Component;->m_Owner:Lcom/android/camera/component/IComponentOwner;

    return-void
.end method

.method protected final startMonitoringComponent(Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v7, 0x1

    if-nez p1, :cond_0

    const-string v4, "componentClass"

    invoke-static {v4}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/Component;->threadAccessCheck()V

    invoke-virtual {p0}, Lcom/android/camera/component/Component;->isRunning()Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/camera/component/Component;->m_State:I

    if-eq v4, v7, :cond_2

    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "startMonitoringComponent() - Component is not running"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;

    if-nez v4, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;

    :cond_3
    iget-object v4, p0, Lcom/android/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/component/Component$MonitoredComponentInfo;

    iget-object v4, v3, Lcom/android/camera/component/Component$MonitoredComponentInfo;->componentClass:Ljava/lang/Class;

    if-ne v4, p1, :cond_4

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "startMonitoringComponent() - Target : "

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/camera/component/Component;->m_Owner:Lcom/android/camera/component/IComponentOwner;

    invoke-interface {v4}, Lcom/android/camera/component/IComponentOwner;->getComponentManager()Lcom/android/camera/component/ComponentManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/Component;

    iget-object v4, p0, Lcom/android/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/camera/component/Component$MonitoredComponentInfo;

    invoke-direct {v5, p1, v0}, Lcom/android/camera/component/Component$MonitoredComponentInfo;-><init>(Ljava/lang/Class;Lcom/android/camera/component/Component;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_6

    invoke-virtual {p0, v0}, Lcom/android/camera/component/Component;->onMonitoredComponentAdded(Lcom/android/camera/component/Component;)V

    :cond_6
    iget-object v4, p0, Lcom/android/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v7, :cond_1

    iget-object v4, v1, Lcom/android/camera/component/ComponentManager;->componentAddedEvent:Lcom/android/camera/event/Event;

    iget-object v5, p0, Lcom/android/camera/component/Component;->m_ComponentAddedEventHandler:Lcom/android/camera/event/EventHandler;

    invoke-virtual {v4, v5}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v4, v1, Lcom/android/camera/component/ComponentManager;->componentRemovedEvent:Lcom/android/camera/event/Event;

    iget-object v5, p0, Lcom/android/camera/component/Component;->m_ComponentRemovedEventHandler:Lcom/android/camera/event/EventHandler;

    invoke-virtual {v4, v5}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    goto :goto_0
.end method

.method protected final stopMonitoringComponent(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v3, "componentClass"

    invoke-static {v3}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/Component;->threadAccessCheck()V

    invoke-virtual {p0}, Lcom/android/camera/component/Component;->isRunning()Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/camera/component/Component;->m_State:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "stopMonitoringComponent() - Component is not running"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/android/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/component/Component$MonitoredComponentInfo;

    iget-object v3, v2, Lcom/android/camera/component/Component$MonitoredComponentInfo;->componentClass:Ljava/lang/Class;

    if-ne v3, p1, :cond_3

    iget-object v3, p0, Lcom/android/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/component/Component;->m_MonitoredComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/component/Component;->m_Owner:Lcom/android/camera/component/IComponentOwner;

    invoke-interface {v3}, Lcom/android/camera/component/IComponentOwner;->getComponentManager()Lcom/android/camera/component/ComponentManager;

    move-result-object v0

    iget-object v3, v0, Lcom/android/camera/component/ComponentManager;->componentAddedEvent:Lcom/android/camera/event/Event;

    iget-object v4, p0, Lcom/android/camera/component/Component;->m_ComponentAddedEventHandler:Lcom/android/camera/event/EventHandler;

    invoke-virtual {v3, v4}, Lcom/android/camera/event/Event;->removeHandler(Lcom/android/camera/event/EventHandler;)Z

    iget-object v3, v0, Lcom/android/camera/component/ComponentManager;->componentRemovedEvent:Lcom/android/camera/event/Event;

    iget-object v4, p0, Lcom/android/camera/component/Component;->m_ComponentRemovedEventHandler:Lcom/android/camera/event/EventHandler;

    invoke-virtual {v3, v4}, Lcom/android/camera/event/Event;->removeHandler(Lcom/android/camera/event/EventHandler;)Z

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method
