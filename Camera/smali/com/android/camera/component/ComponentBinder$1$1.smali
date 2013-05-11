.class Lcom/android/camera/component/ComponentBinder$1$1;
.super Ljava/lang/Object;
.source "ComponentBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ComponentBinder$1;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/ComponentBinder$1;

.field final synthetic val$e:Lcom/android/camera/event/EventArgs;

.field final synthetic val$event:Lcom/android/camera/event/Event;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ComponentBinder$1;Lcom/android/camera/event/Event;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ComponentBinder$1$1;->this$1:Lcom/android/camera/component/ComponentBinder$1;

    iput-object p2, p0, Lcom/android/camera/component/ComponentBinder$1$1;->val$event:Lcom/android/camera/event/Event;

    iput-object p3, p0, Lcom/android/camera/component/ComponentBinder$1$1;->val$e:Lcom/android/camera/event/EventArgs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/component/ComponentBinder$1$1;->this$1:Lcom/android/camera/component/ComponentBinder$1;

    iget-object v0, v0, Lcom/android/camera/component/ComponentBinder$1;->this$0:Lcom/android/camera/component/ComponentBinder;

    #getter for: Lcom/android/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/camera/component/ComponentBinder;->access$000(Lcom/android/camera/component/ComponentBinder;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ComponentBinder$1$1;->this$1:Lcom/android/camera/component/ComponentBinder$1;

    iget-object v0, v0, Lcom/android/camera/component/ComponentBinder$1;->this$0:Lcom/android/camera/component/ComponentBinder;

    iget-object v1, p0, Lcom/android/camera/component/ComponentBinder$1$1;->this$1:Lcom/android/camera/component/ComponentBinder$1;

    iget-object v1, v1, Lcom/android/camera/component/ComponentBinder$1;->this$0:Lcom/android/camera/component/ComponentBinder;

    #getter for: Lcom/android/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/camera/component/ComponentBinder;->access$000(Lcom/android/camera/component/ComponentBinder;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/ComponentBinder$1$1;->val$event:Lcom/android/camera/event/Event;

    iget-object v3, p0, Lcom/android/camera/component/ComponentBinder$1$1;->val$e:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/component/ComponentBinder;->onSourceEventReceived(Ljava/lang/Object;Lcom/android/camera/event/Event;Lcom/android/camera/event/EventArgs;)V

    :cond_0
    return-void
.end method
