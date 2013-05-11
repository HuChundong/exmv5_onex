.class Lcom/android/camera/component/AutoSceneController$1;
.super Ljava/lang/Object;
.source "AutoSceneController.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/AutoSceneController;->initializeOverride()V
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
        "Lcom/android/camera/HtcCallbackEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AutoSceneController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AutoSceneController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/AutoSceneController$1;->this$0:Lcom/android/camera/component/AutoSceneController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/HtcCallbackEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/HtcCallbackEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/HtcCallbackEventArgs;",
            ")V"
        }
    .end annotation

    iget v0, p3, Lcom/android/camera/HtcCallbackEventArgs;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneController$1;->this$0:Lcom/android/camera/component/AutoSceneController;

    iput-object p3, v0, Lcom/android/camera/component/AutoSceneController;->m_LatestEventArgs:Lcom/android/camera/HtcCallbackEventArgs;

    iget-object v0, p0, Lcom/android/camera/component/AutoSceneController$1;->this$0:Lcom/android/camera/component/AutoSceneController;

    #getter for: Lcom/android/camera/component/AutoSceneController;->m_AutoSceneUI:Lcom/android/camera/component/AutoSceneUI;
    invoke-static {v0}, Lcom/android/camera/component/AutoSceneController;->access$000(Lcom/android/camera/component/AutoSceneController;)Lcom/android/camera/component/AutoSceneUI;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/AutoSceneController$1;->this$0:Lcom/android/camera/component/AutoSceneController;

    #calls: Lcom/android/camera/component/AutoSceneController;->notifySmartSceneToUI()V
    invoke-static {v0}, Lcom/android/camera/component/AutoSceneController;->access$100(Lcom/android/camera/component/AutoSceneController;)V

    goto :goto_0
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/HtcCallbackEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/AutoSceneController$1;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/HtcCallbackEventArgs;)V

    return-void
.end method
