.class Lcom/android/camera/component/SmileCaptureController$2;
.super Ljava/lang/Object;
.source "SmileCaptureController.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/SmileCaptureController;->initializeOverride()V
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
.field final synthetic this$0:Lcom/android/camera/component/SmileCaptureController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/SmileCaptureController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/SmileCaptureController$2;->this$0:Lcom/android/camera/component/SmileCaptureController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/HtcCallbackEventArgs;)V
    .locals 4
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

    const/4 v3, 0x1

    iget v0, p3, Lcom/android/camera/HtcCallbackEventArgs;->type:I

    if-ne v0, v3, :cond_0

    iget v0, p3, Lcom/android/camera/HtcCallbackEventArgs;->arg1:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/SmileCaptureController$2;->this$0:Lcom/android/camera/component/SmileCaptureController;

    #getter for: Lcom/android/camera/component/SmileCaptureController;->m_IsEnabled:Z
    invoke-static {v0}, Lcom/android/camera/component/SmileCaptureController;->access$000(Lcom/android/camera/component/SmileCaptureController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/SmileCaptureController$2;->this$0:Lcom/android/camera/component/SmileCaptureController;

    #getter for: Lcom/android/camera/component/SmileCaptureController;->m_UI:Lcom/android/camera/component/SmileCaptureUI;
    invoke-static {v0}, Lcom/android/camera/component/SmileCaptureController;->access$200(Lcom/android/camera/component/SmileCaptureController;)Lcom/android/camera/component/SmileCaptureUI;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/SmileCaptureController$2;->this$0:Lcom/android/camera/component/SmileCaptureController;

    iget-object v1, p0, Lcom/android/camera/component/SmileCaptureController$2;->this$0:Lcom/android/camera/component/SmileCaptureController;

    #getter for: Lcom/android/camera/component/SmileCaptureController;->m_UI:Lcom/android/camera/component/SmileCaptureUI;
    invoke-static {v1}, Lcom/android/camera/component/SmileCaptureController;->access$200(Lcom/android/camera/component/SmileCaptureController;)Lcom/android/camera/component/SmileCaptureUI;

    move-result-object v1

    const/16 v2, 0x2711

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/component/SmileCaptureController;->sendMessage(Lcom/android/camera/component/Component;IZ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/SmileCaptureController$2;->this$0:Lcom/android/camera/component/SmileCaptureController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/SmileCaptureController;->access$300(Lcom/android/camera/component/SmileCaptureController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No UI to notify auto smile-capture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/HtcCallbackEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/SmileCaptureController$2;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/HtcCallbackEventArgs;)V

    return-void
.end method
