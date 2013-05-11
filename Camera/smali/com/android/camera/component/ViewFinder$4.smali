.class Lcom/android/camera/component/ViewFinder$4;
.super Ljava/lang/Object;
.source "ViewFinder.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ViewFinder;->setupCameraThreadEventHandlers()V
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
        "Lcom/android/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ViewFinder;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ViewFinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ViewFinder$4;->this$0:Lcom/android/camera/component/ViewFinder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/camera/component/ViewFinder$4;->this$0:Lcom/android/camera/component/ViewFinder;

    #getter for: Lcom/android/camera/component/ViewFinder;->m_CameraThreadTriggers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/camera/component/ViewFinder;->access$500(Lcom/android/camera/component/ViewFinder;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/trigger/TriggerBase;

    invoke-virtual {v1}, Lcom/android/camera/trigger/TriggerBase;->destroy()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/camera/component/ViewFinder$4;->this$0:Lcom/android/camera/component/ViewFinder;

    #getter for: Lcom/android/camera/component/ViewFinder;->m_CameraThreadTriggers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/camera/component/ViewFinder;->access$500(Lcom/android/camera/component/ViewFinder;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
